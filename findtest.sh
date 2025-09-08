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
        export DEBIAN_FRONTEND=noninteractive
        sudo apt-get update -qq
        sudo apt-get install -y iperf3 jq curl bc sudo || {
            echo -e "${RED}Failed to install packages on Debian/Ubuntu${NC}"
            exit 1
        }
    elif [ -f /etc/redhat-release ]; then
        sudo yum update -y -q
        sudo yum install -y epel-release -q
        sudo yum install -y iperf3 jq curl bc sudo -q || {
            echo -e "${RED}Failed to install packages on CentOS/Rocky Linux${NC}"
            exit 1
        }
    else
        echo -e "${RED}Unsupported Linux distribution. Please install iPerf3, jq, bc and sudo manually.${NC}"
        exit 1
    fi
    
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

    deg_to_radian=0.017453292519943295
    dlat=$(echo "$lat2 - $lat1" | bc -l)
    dlon=$(echo "$lon2 - $lon1" | bc -l)
    lat1=$(echo "$lat1 * $deg_to_radian" | bc -l)
    lat2=$(echo "$lat2 * $deg_to_radian" | bc -l)
    dlat=$(echo "$dlat * $deg_to_radian" | bc -l)
    dlon=$(echo "$dlon * $deg_to_radian" | bc -l)

    a=$(echo "s($dlat/2)^2 + c($lat1) * c($lat2) * s($dlon/2)^2" | bc -l)
    c=$(echo "2 * a(sqrt($a) / sqrt(1 - $a))" | bc -l)

    distance=$(echo "6371 * $c" | bc -l)
    echo $distance
}

construct_iperf_command() {
    local host=$1
    local port=$2
    local command="iperf3 -c $host"
    if [ -n "$port" ]; then
        command="$command -p $port"
    fi
    echo "$command"
}

run_iperf_test() {
    local host=$1
    local port_spec=$2
    local output

    # Default command if no port spec
    if [ -z "$port_spec" ]; then
        iperf3 -c "$host"
        return
    fi

    local ports_to_try=()
    if [[ "$port_spec" =~ ([0-9]+)-([0-9]+) ]]; then
        local start_port=${BASH_REMATCH[1]}
        local end_port=${BASH_REMATCH[2]}
        # Add first port as preferred
        ports_to_try+=($start_port)
        # Add a random port from the rest of the range if available
        if [ "$start_port" -lt "$end_port" ]; then
            if command -v shuf &> /dev/null; then
                ports_to_try+=($(shuf -i $((start_port + 1))-$end_port -n 1))
            else
                # Fallback for systems without shuf
                ports_to_try+=($((RANDOM % (end_port - start_port) + start_port + 1)))
            fi
        fi
    else
        # Single port
        ports_to_try+=($port_spec)
    fi

    for port in "${ports_to_try[@]}"; do
        echo "Testing $host on port $port..."
        output=$(iperf3 -c "$host" -p "$port" 2>&1)
        echo "$output"

        # If it's NOT busy, we're done.
        if ! echo "$output" | grep -q "the server is busy"; then
            return 0
        fi

        # If it was busy and there are more ports to try...
        if [ ${#ports_to_try[@]} -gt 1 ] && [ "$port" == "${ports_to_try[0]}" ]; then
             echo -e "${YELLOW}Server is busy. Trying another port...${NC}"
        fi
    done

    echo -e "${RED}All attempted ports were busy.${NC}"
    return 1
}

show_top_3_servers() {
    local current_server=$1
    local current_distance=$2

    echo -e "\n${YELLOW}Top 3 closest servers:${NC}"

    local temp_file=$(mktemp)
    echo "$current_server $current_distance" > "$temp_file"

    while read -r server_info; do
        local ip_host=$(echo "$server_info" | jq -r '.["IP/HOST"]')
        local port=$(echo "$server_info" | jq -r '.PORT')
        local site=$(echo "$server_info" | jq -r '.SITE')
        local country=$(echo "$server_info" | jq -r '.COUNTRY')
        local ip_host_cmd=$(construct_iperf_command "$ip_host" "$port")

        [ "$ip_host" = "$current_server" ] && continue

        if [[ $ip_host =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
            SERVER_INFO=$(curl -s "https://ipinfo.io/$ip_host/json")
            SERVER_LOC=$(echo "$SERVER_INFO" | jq -r '.loc')
        else
            resolved_ip=$(dig +short "$ip_host" | grep -E '^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$' | head -n1)
            if [ -n "$resolved_ip" ]; then
                SERVER_INFO=$(curl -s "https://ipinfo.io/$resolved_ip/json")
                SERVER_LOC=$(echo "$SERVER_INFO" | jq -r '.loc')
            fi
        fi

        if [ -n "$SERVER_LOC" ]; then
            SERVER_LAT=$(echo "$SERVER_LOC" | cut -d',' -f1)
            SERVER_LON=$(echo "$SERVER_LOC" | cut -d',' -f2)
            distance=$(haversine $MY_LAT $MY_LON $SERVER_LAT $SERVER_LON)
            printf "%s\t%s\t%s\t%.2f\n" "$ip_host_cmd" "$site" "$country" "$distance" >> "$temp_file"
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
        break 
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

SERVER_JSON="listed_iperf3_servers.json"
curl -s "https://export.iperf3serverlist.net/listed_iperf3_servers.json" -o "$SERVER_JSON"
if [ ! -f "$SERVER_JSON" ]; then
    echo -e "${RED}Error: Unable to download server list.${NC}"
    exit 1
fi

echo -e "${ORANGE}Finding closest servers by city name...${NC}"

NEAREST_SERVER_OBJ=$(jq \
    --arg MY_CITY "$MY_CITY" \
    --arg MY_COUNTRY "$MY_COUNTRY" \
    '.[] | select(.SITE==$MY_CITY and .COUNTRY==$MY_COUNTRY)' "$SERVER_JSON" | jq -s '.[0]')

if [ -z "$NEAREST_SERVER_OBJ" ] || [ "$NEAREST_SERVER_OBJ" == "null" ]; then
    echo -e "${ORANGE}No exact match found for $MY_CITY, $MY_COUNTRY. Searching for servers in $MY_COUNTRY...${NC}"
    NEAREST_SERVER_OBJ=$(jq \
        --arg MY_COUNTRY "$MY_COUNTRY" \
        '.[] | select(.COUNTRY==$MY_COUNTRY)' "$SERVER_JSON" | jq -s '.[0]')

    if [ -z "$NEAREST_SERVER_OBJ" ] || [ "$NEAREST_SERVER_OBJ" == "null" ]; then
        echo -e "${ORANGE}No servers found in $MY_COUNTRY. Finding closest city...${NC}"

        SIMILARITY_FILE=$(mktemp)
        jq -r '.[] | "\(.SITE)\t\(.COUNTRY)\t\(.["IP/HOST"])\t\(.PORT)"' "$SERVER_JSON" | \
        while IFS=$'\t' read -r site country ip_host port; do
            if [ -z "$site" ] || [ "$site" == "null" ]; then
                continue
            fi
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
            echo -e "$similarity\t$site\t$country\t$ip_host\t$port" >> "$SIMILARITY_FILE"
        done

        CANDIDATES_FILE=$(mktemp)
        sort -nr "$SIMILARITY_FILE" | head -n 20 > "$CANDIDATES_FILE"
        rm -f "$SIMILARITY_FILE"

        DISTANCE_FILE=$(mktemp)
        while IFS=$'\t' read -r sim site country ip_host port; do
            distance="999999"
            server_loc=""
            if [[ $ip_host =~ ^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
                server_info_json=$(curl -s "https://ipinfo.io/$ip_host/json")
                server_loc=$(echo "$server_info_json" | jq -r '.loc')
            else
                resolved_ip=$(dig +short "$ip_host" | grep -E '^[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+$' | head -n1)
                if [ -n "$resolved_ip" ]; then
                    server_info_json=$(curl -s "https://ipinfo.io/$resolved_ip/json")
                    server_loc=$(echo "$server_info_json" | jq -r '.loc')
                fi
            fi

            if [ -n "$server_loc" ] && [ "$server_loc" != "null" ]; then
                server_lat=$(echo "$server_loc" | cut -d',' -f1)
                server_lon=$(echo "$server_loc" | cut -d',' -f2)
                distance=$(haversine "$MY_LAT" "$MY_LON" "$server_lat" "$server_lon")
            fi
            echo -e "$distance\t$sim\t$site\t$country\t$ip_host\t$port" >> "$DISTANCE_FILE"
        done < "$CANDIDATES_FILE"
        rm -f "$CANDIDATES_FILE"

        closest_match=$(sort -n "$DISTANCE_FILE" | head -n 1)

        if [ -n "$closest_match" ]; then
            distance=$(echo "$closest_match" | cut -f1)
            similarity=$(echo "$closest_match" | cut -f2)
            site=$(echo "$closest_match" | cut -f3)
            country=$(echo "$closest_match" | cut -f4)
            ip_host=$(echo "$closest_match" | cut -f5)
            port=$(echo "$closest_match" | cut -f6)
            ip_host_cmd=$(construct_iperf_command "$ip_host" "$port")

            echo -e "\n${GREEN}Found closest city: $site, $country${NC}\n"
            echo -e "Starting iPerf3 test with server from $site...\n"

            run_iperf_test "$ip_host" "$port"

            # Display top 3 based on original similarity sort, but with calculated distances
            echo -e "\n${YELLOW}Top 3 closest iperf3-servers by geographical distance:${NC}"
            echo -e "${YELLOW}----------------------------------------------------${NC}"
            sort -n "$DISTANCE_FILE" | head -n 3 | while IFS=$'\t' read -r dist sim site country server port; do
                cmd=$(construct_iperf_command "$server" "$port")
                echo -e "\nCity: $site, $country"
                printf "Distance: %.2f km (Match score: %d%%)\n" "$dist" "$sim"
                echo "Command: $cmd"
                if [ "$cmd" = "$ip_host_cmd" ]; then
                    echo -e "${GREEN}Status: Just tested${NC}"
                fi
            done
            rm -f "$DISTANCE_FILE"
        else
             rm -f "$DISTANCE_FILE"
        fi
    fi
fi

if [ -n "$NEAREST_SERVER_OBJ" ] && [ "$NEAREST_SERVER_OBJ" != "null" ]; then
    server=$(echo "$NEAREST_SERVER_OBJ" | jq -r '.["IP/HOST"]')
    port=$(echo "$NEAREST_SERVER_OBJ" | jq -r '.PORT')
    NEAREST_SERVER_CMD=$(construct_iperf_command "$server" "$port")
    echo -e "\n${GREEN}Nearest iperf3-server: $server${NC}\n"
    echo -e "Starting iPerf3 test with server $server...\n"
    run_iperf_test "$server" "$port"

    echo -e "\n${YELLOW}Top 3 closest iperf3-servers:${NC}"
    echo -e "${YELLOW}-----------------------------${NC}"
    jq -c --arg COUNTRY "$MY_COUNTRY" \
       '.[] | select(.COUNTRY==$COUNTRY)' "$SERVER_JSON" | \
    head -n 3 | while read -r server_info; do
        site=$(echo "$server_info" | jq -r '.SITE')
        country=$(echo "$server_info" | jq -r '.COUNTRY')
        host=$(echo "$server_info" | jq -r '.["IP/HOST"]')
        port=$(echo "$server_info" | jq -r '.PORT')
        cmd=$(construct_iperf_command "$host" "$port")
        echo -e "\nCity: $site, $country"
        echo "Command: $cmd"
        if [ "$cmd" = "$NEAREST_SERVER_CMD" ]; then
            echo -e "${GREEN}Status: Just tested${NC}"
        fi
    done
fi
