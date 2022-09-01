# Public iPerf3 Servers

**Test date: 01-09-2022**   
Please create a [new issue](https://github.com/R0GGER/public-iperf3-servers/issues) if you have or know a public iperf3 server which isn't on this list.

### iPerf3
```
apt update && apt install -y iperf3 
```
### Command examples:
```
iperf3 -c lon.speedtest.clouvider.net -p 5203
```

**Bash - random port between 5200-5210:**
```
for((i=0;i<10;i++)) ; do iperf3 -p $((5200+(RANDOM%10))) -c ams.speedtest.clouvider.net && break ; sleep 1 || break ; done
```
**Docker - random port between 5200-5210:** 
```
docker run -it --rm -p 5201:5201 -p 5201:5201/udp r0gger/iperf3-speedtest -c ams.speedtest.clouvider.net -p $((5200+(RANDOM%10)))
```
### iPerf3 options

`-c`  host  
`-p, --port` server port to listen on/connect to    
`-P, --parallel` number of parallel client streams to run    
`-i, --interval` seconds between periodic throughput reports   
`-t, --time` time in seconds to transmit for (default 10 secs)    
`-R, --reverse` run in reverse mode (server sends, client receives)    
`-4, --version4` only use IPv4   
`-6, --version6` only use IPv6    

### Servers per continent
* [AFRICA](#africa)
* [AMERICA](#america)
* [ASIA](#asia)
* [EUROPE](#europe)
* [OCEANIA](#oceania)

### AFRICA

| COMMAND                               | \-R | GB/s | COUNTRY | SITE         | TESTED |
| :------------------------------------ | --- | ---- | ------- | :----------- | ------ |
| iperf3 -c 196.249.224.30 -p 5201      |     |      | AO      |              | yes    |
| iperf3 -c 197.155.149.134 -p 5201     |     |      | ML      |              | yes    |
| iperf3 -c 102.35.43.208 -p 5201       |     |      | RE      |              | yes    |
| iperf3 -c 41.213.138.11 -p 5201       |     |      | RE      |              | yes    |
| iperf3 -c 13.244.123.229 -p 5201-5203 |     |      | SA      | Cape Town    | yes    |
| iperf3 -c 154.0.5.20 -p 5201          |     |      | SA      | Cape Town    | yes    |
| iperf3 -c 41.168.5.158 -p 5201        |     |      | SA      | Johannesburg | yes    |
| iperf3 -c 102.165.60.112 -p 5201      |     |      | SA      | Johannesburg | yes    |
| iperf3 -c 102.134.120.74 -p 5201      |     |      | SA      | Johannesburg | yes    |
| iperf3 -c 169.255.0.134 -p 5201       |     |      | SA      | Johannesburg | yes    |
| iperf3 -c 156.251.131.8 -p 5201       |     |      | SC      |              | yes    |
| iperf3 -c 154.73.174.30 -p 5201       |     |      | SN      | Dakar        | yes    |
| iperf3 -c 154.70.95.2 -p 5201         |     |      | TG      | Lomé         | yes    |
| iperf3 -c 102.176.252.66 -p 5201      |     |      | TG      | Lomé         | yes    |

### AMERICA

| COMMAND                                            | \-R | GB/s | COUNTRY | SITE            | TESTED |
| :------------------------------------------------- | --- | ---- | ------- | :-------------- | ------ |
| iperf3 -c speedtest.iveloz.net.br -p 5201-5209     |     | 2    | BR      | Sao Paolo       | yes    |
| iperf3 -c 128.1.240.146 -p 5201                    | \-R | 1    | BR      | Sao Paolo       | yes    |
| iperf3 -c la.speedtest.clouvider.net -p 5200-5209  |     | 10   | US      | Los Angeles     | yes    |
| iperf3 -c atl.speedtest.clouvider.net -p 5200-5209 |     | 10   | US      | Atlanta         | yes    |
| iperf3 -c nyc.speedtest.clouvider.net -p 5200-5209 |     | 10   | US      | New York City   | yes    |
| iperf3 -c dal.speedtest.clouvider.net -p 5200-5209 |     | 10   | US      | Dallas          | yes    |
| iperf3 -c ash.speedtest.clouvider.net -p 5200-5209 |     | 10   | US      | Ashburn         | yes    |
| iperf3 -c speedtest.lv.buyvm.net -p 5201           |     | 1    | US      | Las Vegas       | yes    |
| iperf3 -c 23.251.106.210                           |     | 1    | US      | Chicago         | yes    |
| iperf3 -c 23.251.111.238                           |     | 1    | US      | Dallas          | yes    |
| iperf3 -c 107.151.178.254                          |     | 1    | US      | Los Angeles     | yes    |
| iperf3 -c 128.1.151.156                            |     | 1    | US      | Miami           | yes    |
| iperf3 -c 169.197.127.197                          |     | 1    | US      | San Jose        | yes    |
| iperf3 -c 23.236.123.190                           |     | 1    | US      | Washington D.C. | yes    |

### ASIA

| COMMAND                                         | \-R | GB/s | COUNTRY | SITE          | TESTED |
| :---------------------------------------------- | --- | ---- | ------- | :------------ | ------ |
| iperf3 -c 107.151.142.227 -p 5201               | \-R | 1    | AE      | Dubai         |        |
| iperf3 -c 128.14.190.130 -p 5201                | \-R | 1    | AE      | Fujairah City |        |
| iperf3 -c 156.59.152.66 -p 5201                 | \-R | 1    | CN      | Hong Kong     | yes    |
| iperf3 -c 156.59.103.69 -p 5201                 | \-R | 1    | CN      | HongKong      | yes    |
| iperf3 -c iperf.biznetnetworks.com -p 5201-5203 |     | 1    | ID      | Jakarta       | yes    |
| iperf3 -c 129.227.44.98 -p 5201                 | \-R | 1    | ID      | Jakarta       | yes    |
| iperf3 -c 156.59.121.194 -p 5201                | \-R | 1    | IN      | Chennai       | yes    |
| iperf3 -c 129.227.223.66 -p 5201                | \-R | 1    | IN      | Mumbai        | yes    |
| iperf3  -c 156.59.29.2 -p 5201                  | \-R | 1    | JAP     | Tokyo         | yes    |
| iperf3 -c 192.169.126.4  -p 5201                | \-R | 1    | JAP     | Tokyo         | yes    |
| iperf3 -c 162.221.193.194 -p 5201               | \-R | 1    | MY      | Kuala Lumpur  | yes    |
| iperf3 -c 156.59.169.4 -p 5201                  | \-R | 1    | PH      | Manila        | yes    |
| iperf3 -c 129.227.231.194 -p 5201               | \-R | 1    | TH      | Bangkok       | yes    |
| iperf3 -c 23.90.175.130 -p 5201                 | \-R | 1    | TR      | Istanbul      |        |
| iperf3 -c 156.59.143.226 -p 5201                | \-R | 1    | VN      | Hanoi         | yes    |

### EUROPE

| COMMAND                                            | \-R | GB/s | COUNTRY  | SITE         | TESTED |
| :------------------------------------------------- | --- | ---- | -------- | :----------- | ------ |
| iperf3 -c lg.vie.alwyzon.net                       |     |      | AUT      | Vienna       | yes    |
| iperf3 -c speedtest.shinternet.ch -p 5204          | \-R |      | CH       | Schaffhausen | yes    |
| iperf3 -c iperf.quickline.ch                       | \-R |      | CH       | Zürich       | yes    |
| iperf3 -c iperf.quickline.ch -6                    | \-R |      | CH       | Zürich       | yes    |
| iperf3 -c iperf3.privatelayer.com -p 5201          |     | 40   | CH       |              | yes    |
| iperf3 -c fra.speedtest.clouvider.net -p 5200-5209 |     | 10   | DE       | Frankfurt    | yes    |
| iperf3 -c lg.ip-projects.de -p 5201                |     |      | DE       | Frankfurt    | yes    |
| iperf3 -c 178.215.228.109 -p 9210                  | \-R |      | DE       | Frankfurt    | yes    |
| iperf3 -c speedtest.wtnet.de -p 5200-5209          | \-R | 40   | DE       | Norderstedt  | yes    |
| iperf3 -c speedtest.wtnet.de -p 5200-5209 -6       | \-R | 40   | DE       | Norderstedt  |        |
| iperf3 -c iperf.deic.dk                            |     | 10   | DK       | Copenhagen   | yes    |
| iperf3 -c bordeaux.testdebit.info -p 9240          |     | 10   | FR       | Bordeaux     | yes    |
| iperf3 -c lille.testdebit.info -p 9240             |     | 10   | FR       | Lille        | yes    |
| iperf3 -c lyon.testdebit.info -p 9240              |     | 10   | FR       | Lyon         | yes    |
| iperf3 -c aix-marseille.testdebit.info -p 9240     |     | 10   | FR       | Marseille    | yes    |
| iperf3 -c iperf.par2.as49434.net -p 9202           | \-R | 40   | FR       | Paris        | yes    |
| iperf3 -c paris.testdebit.info -p 9240             |     | 10   | FR       | Paris        | yes    |
| iperf3 -c proof.ovh.net -p 5201-5210               | \-R |      | FR       | Paris        | yes    |
| iperf3 -c iperf.online.net -p 5204                 |     | 10   | FR       |              | yes    |
| iperf3 -c ping-90ms.online.net -p 5200-5209        |     | 10   | FR       |              | yes    |
| iperf3 -c ping6-90ms.online.net -p 5200-5209 -6    |     | 10   | FR       |              |        |
| iperf3 -c ping6.online.net -p 5200-5209 -6         |     | 10   | FR       |              |        |
| iperf3 -c speedtest.lu.buyvm.net -p 5201           |     |      | LU       | Bissen       | yes    |
| iperf3 -c speedtest.novoserve.com -p 5201          | \-R | 40   | NL       | Amsterdam    | yes    |
| iperf3 -c speedtest.novoserve.com -p 5206 -6       | \-R | 40   | NL       | Amsterdam    | yes    |
| iperf3 -c speedtest.serverius.net -p 5002          | \-R | 10   | NL       | Amsterdam    | yes    |
| iperf3 -c speedtest.serverius.net -p 5002 -6       | \-R | 10   | NL       | Amsterdam    |        |
| iperf3 -c speedtest-nl-oum.hybula.net              | \-R |      | NL       | Amsterdam    | yes    |
| iperf3 -c speedtest.yisp.nl                        | \-R | 10   | NL       | Amsterdam    | yes    |
| iperf3 -c ams.speedtest.clouvider.net -p 5200-5209 |     | 10   | NL       | Amsterdam    | yes    |
| iperf3 -c ping-ams1.online.net 5200-5209           |     | 10   | NL       | Amsterdam    | yes    |
| iperf3 -c nl.iperf.014.fr -p 10420                 | \-R | 1    | NL       | Amsterdam    | yes    |
| iperf3 -c 208.81.200.98 -p 5201                    | \-R | 1    | NL       | Amsterdam    | yes    |
| iperf3 -c iperf.worldstream.nl                     |     | 10   | NL       | Naaldwijk    | yes    |
| iperf3 -c lg.terrahost.com -p 9200                 |     | 10   | NO       | Sandefjord   | yes    |
| iperf3 -c 23.90.131.2 -p 5201                      | \-R | 1    | RU       | Moscow       | yes    |
| iperf3 -c 23.90.191.146 -p 5201                    | \-R | 1    | SP       | Madrid       | yes    |
| iperf3 -c iperf.volia.net -p 5201                  | \-R |      | UA       | Kyiv         | yes    |
| iperf3 -c iperf.astra.in.ua -p 5201-5206           | \-R | 10   | UA       | Lviv         | yes    |
| iperf3 -c lon.speedtest.clouvider.net -p 5200-5209 |     | 10   | UK       | London       | yes    |
| iperf3 -c iperf.as42831.net -p 5300-5400           |     |      | UK       | London       | yes    |
| iperf3 -c 23.90.177.66 -p 5201                     | \-R | 1    | UK       | London       | yes    |

### OCEANIA

| COMMAND                                               | \-R | GB/s | COUNTRY | SITE   | TESTED |
| :---------------------------------------------------- | --- | ---- | ------- | :----- | ------ |
| iperf3 -c speed.tpgi.com.au                           |     |      | AU      | Perth  | yes    |
| iperf3 -c 198.142.237.64                              |     |      | AU      | Sydney | yes    |
| iperf3 -c 198.142.237.65                              |     |      | AU      | Sydney | yes    |
| iperf3 -c 198.142.237.67                              |     |      | AU      | Sydney | yes    |
| iperf3 -c 198.142.237.69                              |     |      | AU      | Sydney | yes    |
| iperf3 -c 198.142.237.70                              |     |      | AU      | Sydney | yes    |
| iperf3 -c 198.142.237.72                              |     |      | AU      | Sydney | yes    |
| iperf3 -c 198.142.237.73                              |     |      | AU      | Sydney | yes    |
| iperf3 -c 198.142.237.97                              |     |      | AU      | Sydney | yes    |
| iperf3 -c 198.142.237.132                             |     |      | AU      | Sydney | yes    |
| iperf3 -c 198.142.237.192                             |     |      | AU      | Sydney | yes    |
| iperf3 -c 198.142.237.194                             |     |      | AU      | Sydney | yes    |
| iperf3 -c limestonecoast.sa.speedtest.optusnet.com.au |     |      | AU      | Sydney | yes    |
| iperf3 -c ooklaspeedtest01.adl.optusnet.com.au        |     |      | AU      | Sydney | yes    |
| iperf3 -c ooklaspeedtest01.bla.optusnet.com.au        |     |      | AU      | Sydney | yes    |
| iperf3 -c ooklaspeedtest01.bri.optusnet.com.au        |     |      | AU      | Sydney | yes    |
| iperf3 -c ooklaspeedtest01.ebw.optusnet.com.au        |     |      | AU      | Sydney | yes    |
| iperf3 -c rockingham.wa.speedtest.optusnet.com.au     |     |      | AU      | Sydney | yes    |
| iperf3 -c speedtest.adl.optusnet.com.au               |     |      | AU      | Sydney | yes    |
| iperf3 -c speedtest.bla.optusnet.com.au               |     |      | AU      | Sydney | yes    |
| iperf3 -c speedtest.ebw.optusnet.com.au               |     |      | AU      | Sydney | yes    |
| iperf3 -c speedtest.tas.optusnet.com.au               |     |      | AU      | Sydney | yes    |
| iperf3 -c techspeedtest.bla.optusnet.com.au           |     |      | AU      | Sydney | yes    |
| iperf3 -c townsville.qld.speedtest.optusnet.com.au    |     |      | AU      | Sydney | yes    |
