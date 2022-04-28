# Public iPerf3 Servers

**Test date: 14-04-2022**   
Please create a [new issue](https://github.com/R0GGER/public-iperf3-servers/issues) if you have or know a public iperf3 server which isn't on this list.

#### iPerf3
```
apt update && apt install -y iperf3 
```
### Command example:
`iperf3 -c lon.speedtest.clouvider.net -p 5203`

#### Multi-port command:
```
for((i=0;i<10;i++)) ; do iperf3 -p $((5200+(RANDOM%10))) -c ams.speedtest.clouvider.net && break ; sleep 1 || break ; done
```
or in Docker:
```
docker run -it --rm -p 5201:5201 -p 5201:5201/udp r0gger/iperf3-speedtest -c ams.speedtest.clouvider.net -p $((5200+(RANDOM%10)))
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


### EUROPE

| **COMMAND** | **RM*** | **GB/s** | **LOC** | **TESTED** |
| :-- | --- | --- | --- | --- |
| iperf3 -c lg.vie.alwyzon.net |     |  | AUT  | yes |
| iperf3 -c iperf3.privatelayer.com -p 5201 |     | 40  | CH  | yes |
| iperf3 -c iperf.quickline.ch | -R |  | CH  | yes |
| iperf3 -c iperf.quickline.ch -6 | -R |  | CH  | yes |
| iperf3 -c speedtest.shinternet.ch -p 5204 | -R |  | CH  | yes |
| iperf3 -c speedtest.wtnet.de -p 5200-5209 | -R  | 10  | DE  | yes |
| iperf3 -c speedtest.wtnet.de -p 5200-5209 -6 | -R  | 10  | DE  |     |
| iperf3 -c fra.speedtest.clouvider.net -p 5200-5209 |     | 10  | DE  | yes |
| iperf3 -c lg.ip-projects.de -p 5201 |     |  | DE  | yes |
| iperf3 -c 178.215.228.109 -p 9210 | -R |  | DE  | yes |
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
| iperf3 -c speedtest.lu.buyvm.net -p 5201 |  |  | LU  | yes |
| iperf3 -c speedtest.novoserve.com -p 5201 | -R  | 40  | NL  | yes |
| iperf3 -c speedtest.novoserve.com -p 5206 -6 | -R | 40  | NL  | yes |
| iperf3 -c speedtest.serverius.net -p 5002 | -R  | 10  | NL  | yes |
| iperf3 -c speedtest.serverius.net -p 5002 -6 | -R  | 10  | NL  |     |
| iperf3 -c speedtest-nl-oum.hybula.net | -R |  | NL  | yes |
| iperf3 -c iperf.worldstream.nl |     | 10  | NL  | yes |
| iperf3 -c speedtest.yisp.nl | -R | 10  | NL  | yes |
| iperf3 -c ams.speedtest.clouvider.net -p 5200-5209 |     | 10  | NL  | yes |
| iperf3 -c ping-ams1.online.net 5200-5209 |     | 10  | NL  | yes |
| iperf3 -c lg.terrahost.com -p 9200 |     | 10  | NO  | yes |
| iperf3 -c lon.speedtest.clouvider.net -p 5200-5209 |     | 10  | UK  | yes |
| iperf3 -c iperf.as42831.net -p 5300-5400 |     |  | UK  | yes |

*\* RM = Reverse Mode (optional)*

### US

| **COMMAND** | **RM*** | **GB/s** | **LOC** | **TESTED** |
| :-- | --- | --- | --- | --- |
| iperf3 -c la.speedtest.clouvider.net -p 5200-5209 |     | 10  | US  | yes |
| iperf3 -c atl.speedtest.clouvider.net -p 5200-5209 |     | 10  | US  | yes |
| iperf3 -c nyc.speedtest.clouvider.net -p 5200-5209 |     | 10  | US  | yes |
| iperf3 -c dal.speedtest.clouvider.net -p 5200-5209 |     | 10  | US  | yes |
| iperf3 -c ash.speedtest.clouvider.net -p 5200-5209 |     | 10  | US  | yes |
| iperf3 -c speedtest.lv.buyvm.net -p 5201 |   |  | US  | yes |

### South America

| **COMMAND** | **RM*** | **GB/s** | **LOC** | **TESTED** |
| :-- | --- | --- | --- | --- |
| iperf3 -c speedtest.iveloz.net.br -p 5201-5209 |     | 2  | BR  | yes |

### Asia

| **COMMAND** | **RM*** | **GB/s** | **LOC** | **TESTED** |
| :-- | --- | --- | --- | --- |
| iperf3 -c iperf.biznetnetworks.com -p 5201-5203 |     | 1 | ID | yes |

