# `iperf3`

**`iperf3`** is a widely used command-line utility designed for actively measuring the maximum achievable network throughput between two endpoints. In short, it's a powerful tool for testing and analyzing network performance. It facilitates testing using both **TCP** and **UDP** protocols, offering valuable insights into bandwidth, latency, jitter, and packet loss. While commonly employed by network and system administrators for diagnosing bottlenecks and verifying link performance, `iperf3` is also an effective tool for general network speed testing.

------

## How `iperf3` Works

`iperf3` operates using a simple **client-server model**:

1.  **Server:** One machine runs `iperf3` in server mode using the `-s` flag. It listens for incoming connections from an `iperf3` client on a specific network port (defaulting to 5201).
    ```bash
    # Start a server on the default port 5201
    iperf3 -s
    ```
2.  **Client:** Another machine runs `iperf3` in client mode using the `-c` flag, followed by the hostname or IP address of the server it needs to connect to.
    ```bash
    # Connect to a server running on 'server.example.com'
    iperf3 -c server.example.com
    ```

Once connected, the client initiates the test by sending data to the server (default direction). `iperf3` then measures performance metrics like throughput, and depending on the protocol (TCP or UDP), it can also report retransmissions (TCP), jitter, and packet loss (UDP).

------

## Installation

`iperf3` is available for most common operating systems.

**Debian / Ubuntu:**
```bash
sudo apt update && sudo apt install -y iperf3
```

**CentOS / RHEL / Rocky Linux:**
*(Requires the EPEL repository)*
```bash
sudo yum install epel-release -y
sudo yum install iperf3 -y
```

**Fedora:**
```bash
sudo dnf install iperf3 -y
```

**Windows:**
Download the latest pre-compiled Windows binaries from a reliable source, such as builds linked from the official [iperf.fr](https://iperf.fr/iperf-download.php) or directly from: [ar51an/iperf3-win-builds](https://github.com/ar51an/iperf3-win-builds/releases) **recommended**.

Extract the archive. You need to run `iperf3.exe` from the Command Prompt (`cmd`) or PowerShell. Either navigate (`cd`) to the directory containing the `.exe` file or add the directory to your system's PATH environment variable for easier access.

**macOS (using Homebrew):**
If you have [Homebrew](https://brew.sh/) installed:

```bash
brew install iperf3
```

------

## Basic Usage

### Connecting a Client

To run a default 10-second TCP test connecting to a server:
```bash
iperf3 -c iperf-ams-nl.eranium.net
```

To connect to a server running on a non-default port:
```bash
iperf3 -c iperf-ams-nl.eranium.net -p 5205
```
To connect to a server on a random port between 5201 and 5210:
```bash
iperf3 -c iperf-ams-nl.eranium.net -p $((5201+(RANDOM%10)))
```

### Common Command-Line Options

Here are some frequently used options for both client (`-c`) and server (`-s`) modes, although some are specific to one mode:

*   `-s, --server`: Run in server mode.
*   `-c, --client <host>`: Run in client mode, connecting to `<host>` (IP or hostname).
*   `-p, --port <port>`: Set the server port to listen on (`-s`) or connect to (`-c`). Default is 5201.
*   `-i, --interval <sec>`: Set the interval time in seconds between periodic bandwidth, jitter, and loss reports. Default is 1 second. Set to 0 to disable periodic reports.
*   `-t, --time <sec>`: Set the duration of the test in seconds. Default is 10 seconds.
*   `-P, --parallel <num>`: *Client only.* Number of parallel client streams to run. Default is 1.
*   `-R, --reverse`: *Client only.* Reverse the direction of the test (server sends, client receives). Useful for testing download speed from the client's perspective.
*   `-u, --udp`: Use UDP protocol instead of the default TCP.
*   `-b, --bitrate <bits/s>`: *Client only.* Set the target bitrate in bits per second. Supports K, M, G suffixes (e.g., `100M`, `1G`). **Crucial for UDP tests.** Default is 1 Mbps for UDP, unlimited for TCP.
*   `--bidir`: *Client only.* Run the test in both directions simultaneously.
*   `-4, --version4`: Use IPv4 only.
*   `-6, --version6`: Use IPv6 only.
*   `-J, --json`: Output results in JSON format.
*   `-V, --verbose`: Provide more detailed output.

**Example: 30-second TCP test with 5 parallel streams**
```bash
iperf3 -c ams.speedtest.clouvider.net -t 30 -P 5
```

**Example: 20-second UDP test targeting 500 Mbps bitrate**
```bash
iperf3 -c ams.speedtest.clouvider.net -t 20 -u -b 500M
```

------

## Test Scenarios & Protocol Differences

Choosing between TCP and UDP depends on what aspect of network performance you want to measure.

### TCP Testing (Default)

TCP provides reliable, ordered, and error-checked delivery. It's the foundation for most common internet traffic like web browsing (HTTP/S), file transfers (FTP, SMB), and email.

*   **When to Use:** To measure the realistic, usable throughput for applications that rely on reliable data transfer. It reflects how actual applications might perform under current network conditions (latency, loss, congestion).
*   **Pros:** Simulates common application traffic, measures effective throughput considering TCP's behavior (congestion control, retransmissions).
*   **Cons:** Throughput can be significantly impacted by network latency and packet loss due to TCP's congestion control mechanisms. It might not reveal the absolute maximum raw bandwidth of the link.

### UDP Testing (`-u`)

UDP is a connectionless protocol that prioritizes speed over reliability. It doesn't guarantee delivery or order. Used for real-time applications like VoIP, online gaming, and video streaming.

*   **When to Use:** To estimate the maximum raw link capacity, or to measure network jitter and packet loss, which are critical for real-time applications.
*   **Pros:** Minimal protocol overhead, allows direct measurement of jitter and packet loss, can potentially saturate the link to find its maximum capacity (if hardware allows).
*   **Cons:** Unreliable by nature. **Requires setting a target bitrate (`-b`)**; without it, `iperf3` defaults to ~1 Mbps, making results useless for capacity testing. Setting `-b` too high can overwhelm the network or devices, leading to artificial packet loss.

:+1: ​**Rule of Thumb:**

*   For a **realistic view** of application performance → Use **TCP**.
*   To test **maximum raw capacity** or analyze **real-time** traffic characteristics (jitter, loss) → Use **UDP** (with an appropriate `-b` value).

### Reverse Mode (`-R`)

By default, the client sends data to the server. The `-R` flag reverses this.

*   **When to Use:** To specifically test the **download speed** from the client's perspective (server sends, client receives).
    ```bash
    # Test download speed from server for 15 seconds
    iperf3 -c ams.speedtest.clouvider.net -t 15 -R
    ```

### Bidirectional Mode (`--bidir`)

Runs tests simultaneously in both directions (client sends to server AND server sends to client).

*   **When to Use:** To simulate full-duplex traffic and see how the network performs under load in both directions, like during a video conference or P2P file sharing.
    ```bash
    # Run a 10-second bidirectional TCP test
    iperf3 -c ams.speedtest.clouvider.net --bidir
    ```
    *Note: Output will show separate results for transmit (client->server) and receive (server->client) legs.*

###  TCP vs. UDP Summary

| Protocol | Reliability | Best for           | Pros                              | Cons                                    |
| -------- | ----------- | ------------------ | --------------------------------- | --------------------------------------- |
| TCP      | Yes         | Web, file transfer | Realistic, error correction       | Lower peaks, affected by TCP behavior   |
| UDP      | No          | VoIP, games, video | Measures jitter/packet loss, fast | Unreliable, must set bandwidth manually |

------

## Advanced Usage & Tips

### Find & Test (`findtest.sh`)

Find & Test is a script that automatically locates the geographically closest server to the client's location from a list and runs a test against it.

```bash
curl -s https://raw.githubusercontent.com/R0GGER/public-iperf3-servers/main/findtest.sh | bash
```
*Note: Requires `curl`, `bash`, `jq`, and `iperf3` to be installed.*

### Using Docker

Running `iperf3` via Docker avoids local installation dependencies.

**Run as Client:**
```bash
# Example: Connect to a known public server using TCP
docker run -it --rm --name iperf3-client ghcr.io/r0gger/public-iperf3-servers:main -c iperf-ams-nl.eranium.net -p 5208
```
```bash
# Example: UDP test, mapping local UDP port if needed
docker run -it --rm --name iperf3-udp-client ghcr.io/r0gger/public-iperf3-servers:main -c iperf-ams-nl.eranium.net -p 5209 -u -b 1G
```

**Run as Server:**
```bash
# Run a server listening on default TCP/UDP port 5201
docker run -it --rm --name iperf3-server -p 5201:5201 -p 5201:5201/udp ghcr.io/r0gger/public-iperf3-servers:main -s
```

### Understanding Output (Brief)

*   **[ ID] Interval:** Time window for the measurement line.
*   **Transfer:** Amount of data moved during the interval.
*   **Bitrate:** Throughput achieved during the interval (Mbps or Gbps).
*   **Retr (TCP):** Number of TCP segments retransmitted; a high number indicates packet loss or congestion.
*   **Jitter (UDP):** Variation in packet arrival times; crucial for real-time applications (lower is better).
*   **Lost/Total Datagrams (UDP):** Number and percentage of lost UDP packets.
*   **Sender/Receiver:** Summary lines showing total results for the entire test duration.

------

## More Information

For the most comprehensive details, consult the official `iperf3` resources:

*   **Official `iperf3` Documentation:** [https://iperf.fr](https://iperf.fr)
*   **Public Server List Project:** [https://iperf3serverlist.net/](https://iperf3serverlist.net/)

------

## Cool Projects

*   [iperf3-webui](https://github.com/MaddyDev-glitch/iperf3-webui) - A modern, lightweight, web-based iPerf3 GUI built with Python 3 and Flask. `Python` `Docker`
*   [iPERF3 Speedtest](https://github.com/R0GGER/iperf3-speedtest) - A simple Python tool and web app to measure your internet speed using public iperf3 servers. `cli` `Python`
*   [iperf3-tui](https://github.com/dmdmdm/iperf3-tui) - Draw a moving speed test graph in your terminal `Rust`
*   ...

## Thank you

This project is sponsored and supported by [**HostHatch** ](https://cloud.hosthatch.com/a/772)and [**Censys**](https://censys.com/).
