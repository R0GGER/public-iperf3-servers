#!/bin/bash

# Find and Test 
# Unstable!
# curl -s https://raw.githubusercontent.com/R0GGER/public-iperf3-servers/refs/heads/main/findtest.sh | bash

install_jq() {
    if [[ -f /etc/debian_version ]]; then
        # Debian/Ubuntu
        echo "Detected Debian/Ubuntu. Installing jq and bc with apt."
        sudo apt-get update && sudo apt-get install -y jq bc
    elif [[ -f /etc/rocky-release ]] || [[ -f /etc/redhat-release ]]; then
        # Rocky Linux/Red Hat/CentOS
        echo "Detected Rocky Linux or RHEL-based system. Installing jq and bc with dnf."
        sudo dnf install -y jq bc
    else
        echo "Unsupported operating system. Please install jq and bc manually."
        exit 1
    fi
}

# Check if jq is installed, if not, install it
if ! command -v jq &> /dev/null; then
    echo "jq is not installed. Installing jq..."
    install_jq
    if [[ $? -ne 0 ]]; then
        echo "Failed to install jq. Exiting."
        exit 1
    fi
else
    echo "jq is already installed."
fi


# Function to calculate the Haversine distance between two sets of coordinates
haversine() {
    lat1=$1
    lon1=$2
    lat2=$3
    lon2=$4
    # Convert degrees to radians
    dlat=$(echo "$lat2 - $lat1" | bc -l)
    dlon=$(echo "$lon2 - $lon1" | bc -l)
    lat1=$(echo "$lat1 * 0.017453292519943295" | bc -l)
    lat2=$(echo "$lat2 * 0.017453292519943295" | bc -l)
    dlat=$(echo "$dlat * 0.017453292519943295" | bc -l)
    dlon=$(echo "$dlon * 0.017453292519943295" | bc -l)

    a=$(echo "s($dlat/2)^2 + c($lat1) * c($lat2) * s($dlon/2)^2" | bc -l)
    c=$(echo "2 * a(sqrt($a) / sqrt(1-$a))" | bc -l)
    # Earth's radius in kilometers (6371)
    distance=$(echo "6371 * $c" | bc -l)
    echo $distance
}

# Step 1: Find the location of the client (your own IP)
CLIENT_INFO=$(curl -s ipinfo.io)
CLIENT_LAT=$(echo $CLIENT_INFO | jq -r '.loc' | cut -d',' -f1)
CLIENT_LON=$(echo $CLIENT_INFO | jq -r '.loc' | cut -d',' -f2)

echo "Client location: Latitude $CLIENT_LAT, Longitude $CLIENT_LON"

# Step 2: Download the list of iperf3 servers
SERVER_LIST_URL="https://iperf3serverlist.net"
SERVER_LIST_FILE="/tmp/iperf3_servers.html"
curl -s $SERVER_LIST_URL -o $SERVER_LIST_FILE

# Step 3: Find the IP addresses of the servers in the list
SERVER_IPS=$(grep -Eo '(([0-9]{1,3}\.){3}[0-9]{1,3})' $SERVER_LIST_FILE)

# Step 4: Find the location of each server
closest_server=""
closest_distance=""

for ip in $SERVER_IPS; do
    # Find the geolocation of the server
    SERVER_INFO=$(curl -s ipinfo.io/$ip)
    SERVER_LAT=$(echo $SERVER_INFO | jq -r '.loc' | cut -d',' -f1)
    SERVER_LON=$(echo $SERVER_INFO | jq -r '.loc' | cut -d',' -f2)

    # Calculate the distance between the client and the server
    distance=$(haversine $CLIENT_LAT $CLIENT_LON $SERVER_LAT $SERVER_LON)

    echo "Server $ip is $distance km away"

    # Compare distances to find the closest server
    if [[ -z "$closest_distance" || $(echo "$distance < $closest_distance" | bc -l) -eq 1 ]]; then
        closest_distance=$distance
        closest_server=$ip
    fi
done

# Step 5: Run the iperf3 test with the closest server
if [[ -n "$closest_server" ]]; then
    echo "The closest server is $closest_server at a distance of $closest_distance km"
    iperf3 -c $closest_server
else
    echo "No closest server found."
fi
