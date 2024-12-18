#!/bin/bash

# Find and Test 
# curl -s https://raw.githubusercontent.com/R0GGER/public-iperf3-servers/refs/heads/main/findtest.sh | bash

install_packages() {
    if [ -f /etc/debian_version ]; then
        echo "Detected Ubuntu/Debian. Installing required packages..."
        sudo apt update
        sudo apt install -y iperf3 jq curl
    elif [ -f /etc/redhat-release ]; then
        echo "Detected CentOS/Rocky Linux. Installing required packages..."
        sudo yum update -y
        sudo yum install -y epel-release
        sudo yum install -y iperf3 jq curl
    else
        echo "Unsupported Linux distribution. Please install iPerf3 and jq manually."
        exit 1
    fi
}

if ! command -v iperf3 &>/dev/null; then
    echo "iPerf3 not found. Installing..."
    install_packages
fi

if ! command -v jq &>/dev/null; then
    echo "jq not found. Installing..."
    install_packages
fi

if ! command -v curl &>/dev/null; then
    echo "curl not found. Installing..."
    install_packages
fi

MY_IP=$(curl -s https://api.ipify.org)
if [ -z "$MY_IP" ]; then
    echo "Error: Unable to retrieve my public IP address."
    exit 1
fi

echo -e "\nMy public IP: $MY_IP"

MY_CITY=$(curl -s "https://ipinfo.io/$MY_IP/json" | jq -r '.city')
MY_COUNTRY=$(curl -s "https://ipinfo.io/$MY_IP/json" | jq -r '.country')

if [ -z "$MY_CITY" ] || [ -z "$MY_COUNTRY" ]; then
    echo "Error: Unable to determine my location."
    exit 1
fi

echo -e "My location: $MY_CITY, $MY_COUNTRY \n"

SERVER_JSON="all_servers-export.json"
curl -s "https://export.iperf3serverlist.net/json/all_servers-export.json" -o "$SERVER_JSON"

if [ ! -f "$SERVER_JSON" ]; then
    echo "Error: Unable to download the server list."
    exit 1
fi

NEAREST_SERVER=$(jq -r \
    --arg MY_CITY "$MY_CITY" \
    --arg MY_COUNTRY "$MY_COUNTRY" \
    '.[] | select(.SITE==$MY_CITY and .COUNTRY==$MY_COUNTRY) | .IP_HOST' "$SERVER_JSON")

if [ -z "$NEAREST_SERVER" ]; then
    echo "No exact match found for $MY_CITY, $MY_COUNTRY."
    NEAREST_SERVER=$(jq -r \
        --arg MY_COUNTRY "$MY_COUNTRY" \
        '.[] | select(.COUNTRY==$MY_COUNTRY) | .IP_HOST' "$SERVER_JSON" | head -n 1)

    if [ -z "$NEAREST_SERVER" ]; then
        echo "No servers found in the country $MY_COUNTRY."
        exit 1
    fi
fi

echo -e "Nearest server: $NEAREST_SERVER \n"

echo "Starting iPerf3 test with server $NEAREST_SERVER..."
iperf3 -c $NEAREST_SERVER
