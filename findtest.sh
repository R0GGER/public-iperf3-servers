#!/bin/bash

# Find and Test 
# curl -s https://raw.githubusercontent.com/R0GGER/public-iperf3-servers/refs/heads/main/findtest.sh | bash

install_packages() {
    if [ -f /etc/debian_version ]; then
        echo "Detected Ubuntu/Debian. Installing required packages..."
        sudo apt update
        sudo apt install -y iperf3 jq curl bc
    elif [ -f /etc/redhat-release ]; then
        echo "Detected CentOS/Rocky Linux. Installing required packages..."
        sudo yum update -y
        sudo yum install -y epel-release
        sudo yum install -y iperf3 jq curl bc
    else
        echo "Unsupported Linux distribution. Please install iPerf3, jq, and bc manually."
        exit 1
    fi
}

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

for cmd in iperf3 jq curl bc; do
    if ! command -v $cmd &>/dev/null; then
        echo "$cmd not found. Installing..."
        install_packages
    fi
done

MY_IP=$(curl -s https://api.ipify.org)

if [ -z "$MY_IP" ]; then
    echo "Error: Unable to retrieve public IP address."
    exit 1
fi

echo -e "\nMy public IP: $MY_IP"

LOCATION_INFO=$(curl -s "https://ipinfo.io/$MY_IP/json")
MY_CITY=$(echo "$LOCATION_INFO" | jq -r '.city')
MY_COUNTRY=$(echo "$LOCATION_INFO" | jq -r '.country')
MY_LOC=$(echo "$LOCATION_INFO" | jq -r '.loc')

if [ -z "$MY_CITY" ] || [ -z "$MY_COUNTRY" ] || [ -z "$MY_LOC" ]; then
    echo "Error: Unable to determine location."
    exit 1
fi

MY_LAT=$(echo "$MY_LOC" | cut -d',' -f1)
MY_LON=$(echo "$MY_LOC" | cut -d',' -f2)

echo -e "My location: $MY_CITY, $MY_COUNTRY ($MY_LAT, $MY_LON)\n"

SERVER_JSON="all_servers-export.json"
curl -s "https://export.iperf3serverlist.net/json/all_servers-export.json" -o "$SERVER_JSON"
if [ ! -f "$SERVER_JSON" ]; then
    echo "Error: Unable to download server list."
    exit 1
fi

NEAREST_SERVER=$(jq -r \
    --arg MY_CITY "$MY_CITY" \
    --arg MY_COUNTRY "$MY_COUNTRY" \
    '.[] | select(.SITE==$MY_CITY and .COUNTRY==$MY_COUNTRY) | .IP_HOST' "$SERVER_JSON")

if [ -z "$NEAREST_SERVER" ]; then
    echo "No exact match found for $MY_CITY, $MY_COUNTRY. Searching for servers in $MY_COUNTRY..."
    NEAREST_SERVER=$(jq -r \
        --arg MY_COUNTRY "$MY_COUNTRY" \
        '.[] | select(.COUNTRY==$MY_COUNTRY) | .IP_HOST' "$SERVER_JSON" | head -n 1)

    if [ -z "$NEAREST_SERVER" ]; then
        echo "No servers found in $MY_COUNTRY. Calculating closest server by distance..."
        SERVER_IPS=$(jq -r '.[] | .IP_HOST' "$SERVER_JSON")

        closest_server=""
        closest_distance=""

        for ip in $SERVER_IPS; do
            SERVER_INFO=$(curl -s "https://ipinfo.io/$ip/json")
            SERVER_LOC=$(echo "$SERVER_INFO" | jq -r '.loc')

            if [ -n "$SERVER_LOC" ]; then
                SERVER_LAT=$(echo "$SERVER_LOC" | cut -d',' -f1)
                SERVER_LON=$(echo "$SERVER_LOC" | cut -d',' -f2)
                distance=$(haversine $MY_LAT $MY_LON $SERVER_LAT $SERVER_LON)

                if [[ -z "$closest_distance" || $(echo "$distance < $closest_distance" | bc -l) -eq 1 ]]; then
                    closest_distance=$distance
                    closest_server=$ip
                fi
            fi
        done

        if [ -n "$closest_server" ]; then
            echo "The closest server is $closest_server at a distance of $closest_distance km."
            iperf3 -c $closest_server
        else
            echo "No closest server found."
            exit 1
        fi
    fi
fi

if [ -n "$NEAREST_SERVER" ]; then
    echo -e "Nearest server: $NEAREST_SERVER\n"
    echo "Starting iPerf3 test with server $NEAREST_SERVER..."
    iperf3 -c $NEAREST_SERVER
else
    echo "No servers available for testing."
    exit 1
fi

