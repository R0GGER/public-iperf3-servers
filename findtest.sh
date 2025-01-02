#!/bin/bash

# Find and Test
# curl -s https://raw.githubusercontent.com/R0GGER/public-iperf3-servers/refs/heads/main/findtest.sh | bash

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
ORANGE='\033[0;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

install_packages() {
    echo "Installing required packages..."
    if [ -f /etc/debian_version ]; then
        # Force non-interactive mode for apt
        export DEBIAN_FRONTEND=noninteractive
        apt-get update -qq
        apt-get install -y iperf3 jq curl bc || {
            echo -e "${RED}Failed to install packages on Debian/Ubuntu${NC}"
            exit 1
        }
    elif [ -f /etc/redhat-release ]; then
        yum update -y -q
        yum install -y epel-release -q
        yum install -y iperf3 jq curl bc -q || {
            echo -e "${RED}Failed to install packages on CentOS/Rocky Linux${NC}"
            exit 1
        }
    else
        echo -e "${RED}Unsupported Linux distribution. Please install iPerf3, jq, and bc manually.${NC}"
        exit 1
    fi
    
    # Verify installations
    for cmd in iperf3 jq curl bc; do
        if ! command -v $cmd &>/dev/null; then
            echo -e "${RED}Failed to install $cmd. Please install it manually.${NC}"
            exit 1
        fi
    done
}

clear

haversine() {
    lat1=$1
    lon1=$2
    lat2=$3
    lon2=$4

    dlat=$(echo "$lat2 - $lat1" | bc -l)
    dlon=$(echo "$lon2 - $lon1" | bc -l)
    lat1=$(echo "$lat1 * 0.017453292519943295" | bc -l)
    lat2=$(echo "$lat2 * 0.017453292519943295" | bc -l)
    dlat=$(echo "$dlat * 0.017453292519943295" | bc -l)
    dlon=$(echo "$dlon * 0.017453292519943295" | bc -l)

    a=$(echo "s($dlat/2)^2 + c($lat1) * c($lat2) * s($dlon/2)^2" | bc -l)
    c=$(echo "2 * a(sqrt($a) / sqrt(1 - $a))" | bc -l)

    distance=$(echo "6371 * $c" | bc -l)
    echo $distance
}

show_top_3_servers() {
    local current_server=$1
    local current_distance=$2

    echo -e "\n${YELLOW}Top 3 closest servers:${NC}"

    local temp_file=$(mktemp)
    echo "$current_server $current_distance" > "$temp_file"

    while read -r server_info; do
        local ip_host=$(echo "$server_info" | jq -r '.IP_HOST')
        if [[ $ip_host =~ iperf3[[:space:]]+-c[[:space:]]+([^[:space:]]+) ]]; then
            local ip="${BASH_REMATCH[1]}"
            local site=$(echo "$server_info" | jq -r '.SITE')
            local country=$(echo "$server_info" | jq -r '.COUNTRY')

            [ "$ip" = "$current_server" ] && continue

            if [[ $ip =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
                SERVER_INFO=$(curl -s "https://ipinfo.io/$ip/json")
                SERVER_LOC=$(echo "$SERVER_INFO" | jq -r '.loc')
            else
                resolved_ip=$(dig +short "$ip" | grep -E '^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$' | head -n1)
                if [ -n "$resolved_ip" ]; then
                    SERVER_INFO=$(curl -s "https://ipinfo.io/$resolved_ip/json")
                    SERVER_LOC=$(echo "$SERVER_INFO" | jq -r '.loc')
                fi
            fi

            if [ -n "$SERVER_LOC" ]; then
                SERVER_LAT=$(echo "$SERVER_LOC" | cut -d',' -f1)
                SERVER_LON=$(echo "$SERVER_LOC" | cut -d',' -f2)
                distance=$(haversine $MY_LAT $MY_LON $SERVER_LAT $SERVER_LON)
                printf "%s\t%s\t%s\t%.2f\n" "$ip_host" "$site" "$country" "$distance" >> "$temp_file"
            fi
        fi
    done < <(jq -c '.[]' "$SERVER_JSON")

    sort -k4 -n "$temp_file" | head -n 3 | while IFS=$'\t' read -r cmd site country distance; do
        echo -e "\nServer: $site, $country"
        printf "Distance: %.2f km\n" "$distance"
        echo "Command: $cmd"
        if [[ "$cmd" =~ $current_server ]]; then
            echo -e "${GREEN}Status: Just tested${NC}"
        fi
        echo -e "\n--------------------------------"
    done

    rm -f "$temp_file"
}

for cmd in iperf3 jq curl bc; do
    if ! command -v $cmd &>/dev/null; then
        echo -e "${YELLOW}$cmd not found. Installing required packages...${NC}"
        install_packages
        break  # Only need to run install_packages once
    fi
done

MY_IP=$(curl -s https://api.ipify.org)

if [ -z "$MY_IP" ]; then
    echo -e "${RED}Error: Unable to retrieve public IP address.${NC}"
    exit 1
fi

echo -e "\n${YELLOW}My public IP: $MY_IP${NC}"

LOCATION_INFO=$(curl -s "https://ipinfo.io/$MY_IP/json")
MY_CITY=$(echo "$LOCATION_INFO" | jq -r '.city')
MY_COUNTRY=$(echo "$LOCATION_INFO" | jq -r '.country')
MY_LOC=$(echo "$LOCATION_INFO" | jq -r '.loc')

if [ -z "$MY_CITY" ] || [ -z "$MY_COUNTRY" ] || [ -z "$MY_LOC" ]; then
    echo -e "${RED}Error: Unable to determine location.${NC}"
    exit 1
fi

MY_LAT=$(echo "$MY_LOC" | cut -d',' -f1)
MY_LON=$(echo "$MY_LOC" | cut -d',' -f2)

echo -e "${YELLOW}My location: $MY_CITY, $MY_COUNTRY ($MY_LAT, $MY_LON)${NC}\n"

SERVER_JSON="all_servers-export.json"
curl -s "https://export.iperf3serverlist.net/json/all_servers-export.json" -o "$SERVER_JSON"
if [ ! -f "$SERVER_JSON" ]; then
    echo -e "${RED}Error: Unable to download server list.${NC}"
    exit 1
fi

echo -e "${ORANGE}Finding closest servers by city name...${NC}"

NEAREST_SERVER=$(jq -r \
    --arg MY_CITY "$MY_CITY" \
    --arg MY_COUNTRY "$MY_COUNTRY" \
    '.[] | select(.SITE==$MY_CITY and .COUNTRY==$MY_COUNTRY) | .IP_HOST' "$SERVER_JSON")

if [ -z "$NEAREST_SERVER" ]; then
    echo -e "${ORANGE}No exact match found for $MY_CITY, $MY_COUNTRY. Searching for servers in $MY_COUNTRY...${NC}"
    NEAREST_SERVER=$(jq -r \
        --arg MY_COUNTRY "$MY_COUNTRY" \
        '.[] | select(.COUNTRY==$MY_COUNTRY) | .IP_HOST' "$SERVER_JSON" | head -n 1)

    if [ -z "$NEAREST_SERVER" ]; then
        echo -e "${ORANGE}No servers found in $MY_COUNTRY. Finding closest city...${NC}"

        TEMP_FILE=$(mktemp)

        jq -r --arg CITY "$MY_CITY" '.[] | "\(.SITE)\t\(.COUNTRY)\t\(.IP_HOST)"' "$SERVER_JSON" | \
        while IFS=$'\t' read -r site country ip_host; do
            similarity=$(echo "$MY_CITY $site" | tr '[:upper:]' '[:lower:]' | \
                awk '{
                    a=$1; b=$2;
                    if (length(a) > length(b)) {
                        t=a; a=b; b=t;
                    }
                    if (length(a) == 0) {
                        print 0;
                        exit;
                    }
                    matches = 0;
                    for (i=1; i<=length(a); i++) {
                        if (substr(a,i,1) == substr(b,i,1)) matches++;
                    }
                    print int((matches/length(b))*100);
                }')
            echo -e "$similarity\t$site\t$country\t$ip_host" >> "$TEMP_FILE"
        done

        closest_match=$(sort -nr "$TEMP_FILE" | head -n 1)
        if [ -n "$closest_match" ]; then
            similarity=$(echo "$closest_match" | cut -f1)
            site=$(echo "$closest_match" | cut -f2)
            country=$(echo "$closest_match" | cut -f3)
            ip_host=$(echo "$closest_match" | cut -f4)

            echo -e "\n${GREEN}Found closest city: $site, $country $distance${NC}\n"
            echo -e "Starting iPerf3 test with server from $site...\n"

            if [[ $ip_host =~ iperf3[[:space:]]+-c[[:space:]]+([^[:space:]]+) ]]; then
                server="${BASH_REMATCH[1]}"
                iperf3 -c "$server"

                echo -e "\n${YELLOW}Top 3 closest iperf3-servers by name match:${NC}"
                echo -e "${YELLOW}-------------------------------------------${NC}"
                sort -nr "$TEMP_FILE" | head -n 3 | while IFS=$'\t' read -r sim site country cmd; do
                    echo -e "\nCity: $site, $country"

                    if [[ $cmd =~ iperf3[[:space:]]+-c[[:space:]]+([^[:space:]]+) ]]; then
                        server="${BASH_REMATCH[1]}"
                        if [[ $server =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
                            SERVER_INFO=$(curl -s "https://ipinfo.io/$server/json")
                        else
                            resolved_ip=$(dig +short "$server" | grep -E '^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$' | head -n1)
                            if [ -n "$resolved_ip" ]; then
                                SERVER_INFO=$(curl -s "https://ipinfo.io/$resolved_ip/json")
                            fi
                        fi

                        SERVER_LOC=$(echo "$SERVER_INFO" | jq -r '.loc')
                        if [ -n "$SERVER_LOC" ]; then
                            SERVER_LAT=$(echo "$SERVER_LOC" | cut -d',' -f1)
                            SERVER_LON=$(echo "$SERVER_LOC" | cut -d',' -f2)
                            distance=$(haversine $MY_LAT $MY_LON $SERVER_LAT $SERVER_LON)
                            printf "Distance: %.2f km (Match score: %d%%)\n" "$distance" "$sim"
                        else
                            echo "Distance: unavailable (Match score: ${sim}%)"
                        fi
                    fi

                    echo "Command: $cmd"
                    if [ "$cmd" = "$ip_host" ]; then
                        echo -e "${GREEN}Status: Just tested${NC}"
                    fi
                done
            fi
        fi

        rm -f "$TEMP_FILE"
    fi
fi

if [ -n "$NEAREST_SERVER" ]; then
    if [[ $NEAREST_SERVER =~ iperf3[[:space:]]+-c[[:space:]]+([^[:space:]]+) ]]; then
        server="${BASH_REMATCH[1]}"
        echo -e "\n${GREEN}Nearest iperf3-server: $server${NC}\n"
        echo -e "Starting iPerf3 test with server $server...\n"
        iperf3 -c "$server"

        echo -e "\n${YELLOW}Top 3 closest iperf3-servers:${NC}"
        echo -e "${YELLOW}-----------------------------${NC}"
        jq -r --arg COUNTRY "$MY_COUNTRY" \
           '.[] | select(.COUNTRY==$COUNTRY) | "\(.SITE)\t\(.COUNTRY)\t\(.IP_HOST)"' "$SERVER_JSON" | \
        head -n 3 | while IFS=$'\t' read -r site country cmd; do
            echo -e "\nCity: $site, $country"
            echo "Command: $cmd"
            if [ "$cmd" = "$NEAREST_SERVER" ]; then
                echo -e "${GREEN}Status: Just tested${NC}"
            fi
        done
    fi
fi
