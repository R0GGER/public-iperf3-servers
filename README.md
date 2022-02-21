# Public iPerf3 Servers

#### Install iPerf3
```
apt update && apt install -y iperf3 
```
#### Docker
```
docker run -it --rm -p 5201:5201 -p 5201:5201/udp r0gger/iperf3-speedtest -c <host> -p <port>
```

#### iPerf3 options

`-c`  host  
`-p, --port` server port to listen on/connect to    
`-P, --parallel` number of parallel client streams to run    
`-i, --interval` seconds between periodic throughput reports   
`-t, --time` time in seconds to transmit for (default 10 secs)    
`-R, --reverse` run in reverse mode (server sends, client receives)    
`-4, --version4` only use IPv4   
`-6, --version6` only use IPv6    

**Test date: 21-02-2022** 

### EUROPE

| **COMMAND** | **RM*** | **GB/s** | **LOC** | **TESTED** |
| :-- | --- | --- | --- | --- |
| iperf3 -c speedtest.wtnet.de -p 5200-5209 | -R  | 10  | DE  | yes |
| iperf3 -c speedtest.wtnet.de -p 5200-5209 -6 | -R  | 10  | DE  |     |
| iperf3 -c fra.speedtest.clouvider.net -p 5200-5209 |     | 10  | DE  | yes |
| iperf3 -c iperf.deic.dk |     | 10  | IS  | yes |
| iperf3 -c iperf.par2.as49434.net -p 9202 | -R  | 40  | FR  | yes |
| iperf3 -c iperf.online.net -p 5204 |     | 10  | FR  | yes |
| iperf3 -c paris.testdebit.info -p 9240 |     | 10  | FR  | yes |
| iperf3 -c lille.testdebit.info -p 9240 |     | 10  | FR  | yes |
| iperf3 -c lyon.testdebit.info -p 9240 |     | 10  | FR  | yes |
| iperf3 -c aix-marseille.testdebit.info -p 9240 |     | 10  | FR  | yes |
| iperf3 -c bordeaux.testdebit.info -p 9240 |     | 10  | FR  | yes |
| iperf3 -c ping-90ms.online.net -p 5200-5209 |     | 10  | FR  | yes |
| iperf3 -c ping6-90ms.online.net -p 5200-5209 -6 |     | 10  | FR  |     |
| iperf3 -c ping6.online.net -p 5200-5209 -6 |     | 10  | FR  |     |
| iperf3 -c proof.ovh.net -p 5201-5210 |     |     |     | yes |
| iperf3 -c speedtest.serverius.net -p 5002 | -R  | 10  | NL  | yes |
| iperf3 -c speedtest.serverius.net -p 5002 -6 | -R  | 10  | NL  |     |
| iperf3 -c iperf.worldstream.nl |     | 10  | NL  | yes |
| iperf3 -c ams.speedtest.clouvider.net -p 5200-5209 |     | 10  | NL  | yes |
| iperf3 -c ping-ams1.online.net 5200-5209 |     | 10  | NL  | yes |
| iperf3 -c lon.speedtest.clouvider.net -p 5200-5209 |     | 10  | UK  | yes |

*\* RM = Reverse Mode (optional)*

### US

| **COMMAND** | **RM*** | **GB/s** | **LOC** | **TESTED** |
| :-- | --- | --- | --- | --- |
| iperf3 -c la.speedtest.clouvider.net -p 5200-5209 |     | 10  | US  | yes |
| iperf3 -c atl.speedtest.clouvider.net -p 5200-5209 |     | 10  | US  | yes |
| iperf3 -c nyc.speedtest.clouvider.net -p 5200-5209 |     | 10  | US  | yes |
| iperf3 -c dal.speedtest.clouvider.net -p 5200-5209 |     | 10  | US  | yes |
| iperf3 -c ash.speedtest.clouvider.net -p 5200-5209 |     | 10  | US  | yes |
| iperf3 -c phx.speedtest.clouvider.net -p 5200-5209 |     | 10  | US  | yes |

*\* RM = Reverse Mode (optional)*

### South America

| **COMMAND** | **RM*** | **GB/s** | **LOC** | **TESTED** |
| :-- | --- | --- | --- | --- |
| iperf3 -c speedtest.iveloz.net.br -p 5201-5209 |     | 2  | BR  | yes |

