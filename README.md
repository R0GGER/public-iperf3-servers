# Public iPerf3 Serverlist
   
<p align="center"><br/>
  <a href="https://iperf3serverlist.net" target="_blank"><img src="https://iperf3serverlist.net/assets/img/logo_256.png" width="150"></a><br/>  
  <b><a href="https://iperf3serverlist.net" target="_blank">iperf3serverlist.net</a></b><br/>
  <br/>
  <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-green.svg?color=0066ff&style=for-the-badge&label=License&logoColor=000000&labelColor=ececec" alt="License: MIT"></a>
<h3 align="center">A list of public iPERF3 servers to perform bandwidth and speedtests across different geographical regions.</h3>  
  </a><br/> 
</p>

## Content
* [How to use iperf3](#how-to-use-iperf3)
* [Documentation](#documentation)
* [Servers per continent](#servers-per-continent)
* [serverlist.json](#serverlistjson)
* [Contact](#contact)

## How to use iperf3
```bash
apt update && apt install -y iperf3
```
```bash
iperf3 -c ams.speedtest.clouvider.net -p 5203 --bidir
``` 
```bash
docker run -it --rm -p 5201:5201 -p 5201:5201/udp r0gger/iperf3-speedtest -c ams.speedtest.clouvider.net -p $((5201+(RANDOM%10)))
```
**Options**    
`-c` host  
`--bidir` run in bidirectional mode. Client and server send and receive data.    
`-p, --port` server port to listen on/connect to (default: 5201)   
`-R, --reverse` run in reverse mode (server sends, client receives)(download)    
`-4, --version4` only use IPv4   
`-6, --version6` only use IPv6 

## Documentation
In our documentation you can find more command examples, all iperf3 options and how to install iperf3 on Linux, macOS and Windows at: https://iperf3serverlist.net/iperf3.html
  
## Servers per continent
Do you want to add/remove an IP or HOST to this list? Please create a [new issue](https://github.com/R0GGER/public-iperf3-servers/issues).

* [AFRICA](#africa)
* [AMERICA](#america)
* [ASIA](#asia)
* [EUROPE](#europe)
* [OCEANIA](#oceania)
   
:sparkles: Servers with an uptime of 90% or less in 30 days will be removed.

### AFRICA
|COMMAND                                             |OPTIONS|GB/S|COUNTRY|SITE                |
|:---------------------------------------------------|:-----:|:--:|:-----:|:-------------------|
|iperf3 -c 105.235.237.2 -p 5201-5209                |-R     |    |GQ     |Bata                |
|iperf3 -c speedtestfl.telecom.mu -p 5201-5209       |-R     |    |MU     |Floreal             |
|iperf3 -c speedtest.telecom.mu -p 5201-5209         |-R     |    |MU     |Port Louis          |
|iperf3 -c speedtestrh.telecom.mu -p 5201-5209       |-R     |    |MU     |Rose Hill           |
|iperf3 -c sl-01-kgl.rw.seacomnet.com -p 5201-5209   |-R     |    |RW     |Kigali              |
|iperf3 -c 154.73.174.30                             |       |    |SN     |Dakar               |
|iperf3 -c 41.226.22.119 -p 9202-9240                |-R     |    |TN     |Tunis               |
|iperf3 -c 196.179.245.2 -p 9200-9240                |-R     |    |TN     |Tunis               |
|iperf3 -c 13.244.123.229 -p 5201-5203               |       |    |ZA     |Cape Town           |
|iperf3 -c 154.0.5.20                                |       |    |ZA     |Cape Town           |
|iperf3 -c 41.168.5.158                              |       |    |ZA     |Johannesburg        |
|iperf3 -c speedtest.rocketnet.co.za                 |       |    |ZA     |Johannesburg        |
|iperf3 -c speedtest1.bitco.co.za                    |-R     |    |ZA     |Johannesburg        |

### AMERICA
|COMMAND                                             |OPTIONS|GB/S|COUNTRY|SITE                |
|:---------------------------------------------------|:-----:|:--:|:-----:|:-------------------|
|iperf3 -c 168.195.96.44 -p 5201-5204                |       |    |BR     |Joinville           |
|iperf3 -c speedtest.sao1.edgoo.net -p 9201-9240     |-R     |    |BR     |São Paulo           |
|iperf3 -c vern.cc                                   |-R     |1   |CA     |Beauharnois         |
|iperf3 -c speedtest3.sasknet.sk.ca                  |-R     |    |CA     |Saskatoon           |
|iperf3 -c sp11.wom.cl                               |       |    |CL     |Santiago            |
|iperf3 -c speedtest.masnet.ec -p 5201-5209          |-R     |1   |EC     |Santa Ana           |
|iperf3 -c cdjspeedtest.axtel.mx                     |-R     |    |MX     |Mexico City         |
|iperf3 -c speedgauge2.optonline.net                 |-R     |    |US     |                    |
|iperf3 -c charlotte02.speedtest.windstream.net      |-R,-6  |    |US     |                    |
|iperf3 -c ash.speedtest.clouvider.net -p 5200-5209  |-R     |10  |US     |Ashburn             |
|iperf3 -c lists.vern.cc                             |-R     |1   |US     |Atlanta             |
|iperf3 -c atl.speedtest.clouvider.net -p 5200-5209  |-R     |10  |US     |Atlanta             |
|iperf3 -c speedtest13.suddenlink.net                |-R     |10  |US     |Charleston          |
|iperf3 -c speedtest15.suddenlink.net                |-R     |10  |US     |Charleston          |
|iperf3 -c charlottesville.speedtest.ting.com        |-R     |    |US     |Charlottesville     |
|iperf3 -c dal.speedtest.clouvider.net -p 5200-5209  |-R     |10  |US     |Dallas              |
|iperf3 -c la.speedtest.clouvider.net -p 5200-5209   |-R     |10  |US     |Los Angeles         |
|iperf3 -c speedtest.tds.net                         |-R     |    |US     |Madison             |
|iperf3 -c nyfiosspeed1.west.verizon.net             |-R     |    |US     |New York            |
|iperf3 -c nyfiosspeed2.west.verizon.net             |-R     |    |US     |New York            |
|iperf3 -c nyfiosspeed3.west.verizon.net             |-R     |    |US     |New York            |
|iperf3 -c nyfiosspeed4.west.verizon.net             |-R     |    |US     |New York            |
|iperf3 -c nyc.speedtest.clouvider.net -p 5200-5209  |-R     |10  |US     |New York City       |

### ASIA
|COMMAND                                             |OPTIONS|GB/S|COUNTRY|SITE                |
|:---------------------------------------------------|:-----:|:--:|:-----:|:-------------------|
|iperf3 -c speedtest.beeonline.az                    |-R     |    |AZ     |Baku                |
|iperf3 -c speedtest.izone.az -p 5201-5208           |-R     |    |AZ     |Baku                |
|iperf3 -c 2.58.65.127                               |-R     |    |HK     |Hong Kong           |
|iperf3 -c iperf.biznetnetworks.com -p 5201-5203     |-R     |1   |ID     |Jakarta             |
|iperf3 -c maritimeai.msngroup.id -p 9200-9240       |-R     |    |ID     |Jakarta             |
|iperf3 -c speedtest.myrepublic.net.id -p 9200-9240  |-R     |    |ID     |Jakarta             |
|iperf3 -c speed.netfiber.net.il                     |-R     |1   |IL     |Jerusalem           |
|iperf3 -c speed.rimon.net.il                        |-R     |1   |IL     |Jerusalem           |
|iperf3 -c in-speedtest.host-palace.com              |-R     |1   |IN     |Suri                |
|iperf3 -c 91.185.23.98                              |-R     |    |KZ     |Aktau               |
|iperf3 -c iperf.myren.net.my -p 5201-5210           |-R     |    |MY     |Kuala Lumpur        |
|iperf3 -c speedtest.uztelecom.uz -p 5200-5209       |-R -6  |10  |UZ     |Tashkent            |

### EUROPE
|COMMAND                                             |OPTIONS|GB/S|COUNTRY|SITE                |
|:---------------------------------------------------|:-----:|:--:|:-----:|:-------------------|
|iperf3 -c speedtest.neterra.net                     |       |10  |BG     |Sofia               |
|iperf3 -c speedtest.shinternet.ch -p 5200-5209      |-R,-6  |10  |CH     |Schaffhausen        |
|iperf3 -c speedtest.init7.net                       |-R,-6  |20  |CH     |Winterthur          |
|iperf3 -c speedtest.iway.ch                         |-R     |10  |CH     |Zurich              |
|iperf3 -c rychlost.poda.cz                          |-R     |    |CZ     |Mikulov             |
|iperf3 -c a209.speedtest.wobcom.de                  |-R,-6  |    |DE     |Berlin              |
|iperf3 -c a110.speedtest.wobcom.de                  |-R,-6  |    |DE     |Berlin              |
|iperf3 -c a208.speedtest.wobcom.de                  |-R,-6  |    |DE     |Dusseldorf          |
|iperf3 -c 178.215.228.109 -p 9210                   |-R     |    |DE     |Frankfurt           |
|iperf3 -c fra.speedtest.clouvider.net -p 5200-5209  |-R     |10  |DE     |Frankfurt           |
|iperf3 -c speedtest.ip-projects.de                  |       |    |DE     |Frankfurt           |
|iperf3 -c a210.speedtest.wobcom.de                  |-R,-6  |    |DE     |Frankfurt           |
|iperf3 -c a205.speedtest.wobcom.de                  |-R,-6  |    |DE     |Frankfurt           |
|iperf3 -c speedtest.studiofunk.de -p 5200 / 5209    |-R,-6  |    |DE     |Hamburg             |
|iperf3 -c speedtest.wtnet.de -p 5200-5209           |-R,-6  |40  |DE     |Norderstedt         |
|iperf3 -c speedtest.wobcom.de :small_blue_diamond:  |-R,-6  |    |DE     |Wolfsburg           |
|iperf3 -c a400.speedtest.wobcom.de                  |-R,-6  |    |DE     |Wolfsburg           |
|iperf3 -c iperf.deic.dk                             |-R     |10  |DK     |Copenhagen          |
|iperf3 -c speed.fiberby.dk -p 9201-9240             |-R,-6  |10  |DK     |Copenhagen          |
|iperf3 -c speedtest.hiper.dk -p 5201-5203           |-R     |    |DK     |Copenhagen          |
|iperf3 -c speedtest-hki.netplaza.fi                 |-R     |    |FI     |Helsinki            |
|iperf3 -c speedtest.extra.telia.fi                  |       |    |FI     |Helsinki            |
|iperf3 -c speedtest.cinia.fi                        |       |    |FI     |Oulu                |
|iperf3 -c aix-marseille.testdebit.info -p 9200-9240 |-R,-6  |10  |FR     |Aix-en-Provence     |
|iperf3 -c bordeaux.testdebit.info -p 9200-9240      |-R,-6  |10  |FR     |Bordeaux            |
|iperf3 -c lille.testdebit.info -p 9200-9240         |-R,-6  |10  |FR     |Lille               |
|iperf3 -c lyon.testdebit.info -p 9200-9240          |-R,-6  |10  |FR     |Lyon                |
|iperf3 -c iperf.par2.as49434.net -p 9202            |-R     |40  |FR     |Paris               |
|iperf3 -c bouygues.testdebit.info -p 9200-9240      |-R,-6  |10  |FR     |Paris               |
|iperf3 -c paris.testdebit.info -p 9200-9240         |-R,-6  |10  |FR     |Paris               |
|iperf3 -c proof.ovh.net -p 5201-5210                |-R     |10  |FR     |Paris               |
|iperf3 -c iperf.online.net -p 5204                  |-R     |10  |FR     |Vienna              |
|iperf3 -c scaleway.testdebit.info -p 5200-5209      |-R,-6  |10  |FR     |Vitry-sur-Seine     |
|iperf3 -c ping-90ms.online.net -p 5200-5209         |-R     |10  |FR     |Vitry-sur-Seine     |
|iperf3 -c ping6-90ms.online.net -p 5200-5209        |-R,-6  |10  |FR     |Vitry-sur-Seine     |
|iperf3 -c ping.online.net -p 5200-5209              |-R     |10  |FR     |Vitry-sur-Seine     |
|iperf3 -c ping6.online.net -p 5200-5209             |-R,-6  |10  |FR     |Vitry-sur-Seine     |
|iperf3 -c iperf.as42831.net -p 5300-5400            |-R     |    |GB     |London              |
|iperf3 -c lon.speedtest.clouvider.net -p 5200-5209  |-R     |10  |GB     |London              |
|iperf3 -c speedtest1.vodafone.hu                    |-R     |    |HU     |Budapest            |
|iperf3 -c it1.speedtest.aruba.it                    |-R     |    |IT     |Arezzo              |
|iperf3 -c speed.itgate.net -p 5201-5202             |-R     |    |IT     |Gerbido             |
|iperf3 -c 217.61.40.96                              |-R     |    |IT     |Ponte San Pietro    |
|iperf3 -c 80.92.72.3                                |-R     |    |LU     |Bettembourg         |
|iperf3 -c speedtest.lu.buyvm.net                    |-R     |    |LU     |Bissen              |
|iperf3 -c speedtest.airstream.md                    |-R,-6  |    |MD     |Chisinau            |
|iperf3 -c ams.speedtest.clouvider.net -p 5200-5209  |-R     |10  |NL     |Amsterdam           |
|iperf3 -c nl.iperf.014.fr -p 10420                  |-R     |1   |NL     |Amsterdam           |
|iperf3 -c ping-ams1.online.net -p 5200-5209         |-R     |10  |NL     |Amsterdam           |
|iperf3 -c a204.speedtest.wobcom.de                  |-R,-6  |    |NL     |Amsterdam           |
|iperf3 -c speedtest-nl-oum.hybula.net -p 5202-5206  |-R,-6  |40  |NL     |Amsterdam           |
|iperf3 -c speedtest.ams1.novogara.net -p 5200-5209  |-R,-6  |20  |NL     |Amsterdam           |
|iperf3 -c speedtest.novoserve.com -p 5201-5206      |-R,-6  |40  |NL     |Amsterdam           |
|iperf3 -c speedtest.serverius.net -p 5002           |-R,-6  |10  |NL     |Amsterdam           |
|iperf3 -c spt01.sdhd.hosting                        |-R     |10  |NL     |Dronten             |
|iperf3 -c lg-drn.liteserver.nl -p 5200-5240         |-R     |1   |NL     |Dronten             |
|iperf3 -c iperf.worldstream.nl                      |-R,-6  |10  |NL     |Naaldwijk           |
|iperf3 -c lg.terrahost.com -p 9200                  |       |10  |NO     |Sandefjord          |
|iperf3 -c speedtest.snt.net.pl                      |-R     |    |PL     |Warsaw              |
|iperf3 -c speedtest-w5-rnp.play.pl                  |-R     |    |PL     |Warsaw              |
|iperf3 -c 95.95.252.87 -p 5201-5209                 |-R     |    |PT     |Lissabon            |
|iperf3 -c 31.148.48.5                               |-R     |    |RU     |Angarsk             |
|iperf3 -c speedtest.kamel.network -p 5201-5205      |-R     |1   |SE     |Kista               |
|iperf3 -c speedtest.ownit.se                        |-R     |1   |SE     |Stockholm           |
|iperf3 -c speedtestv6.ownit.se                      |-R,-6  |1   |SE     |Stockholm           |
|iperf3 -c se-speedt01.fre.nis.telia.net -p 5201-5210|-R,-6  |1   |SE     |Viken               |
|iperf3 -c speed.cosmonova.net -p 5202               |-R     |    |UA     |Kyiv                |
|iperf3 -c speedtest.pol.volia.net                   |-R     |    |UA     |Poltava             |
|iperf3 -c speedtest.solver.net.ua                   |-R     |    |UA     |Poltava             |
|iperf3 -c v4.speedtest.cfn.ltd                      |-R     |    |UK     |Cambridge           |
|iperf3 -c speedtest-london.its-tg.net               |-R     |    |UK     |London              |

:small_blue_diamond: speedtest.wobcom.de connects to the nearest *.speedtest.wobcom.de server.

### OCEANIA
|COMMAND                                             |OPTIONS|GB/S|COUNTRY|SITE                |
|:---------------------------------------------------|:-----:|:--:|:-----:|:-------------------|
|iperf3 -c speedtest.optusnet.com.au -p 5201-5203    |-R     |    |AU     |                    |
|iperf3 -c speedtest4.kiska.pw                       |-R,-6  |    |AU     |Brisbane            |
|iperf3 -c speedtest.tas.optusnet.com.au             |-R     |    |AU     |Hobart              |
|iperf3 -c speedtest.optitel.com.au                  |-R     |10  |AU     |Perth               |
|iperf3 -c rockingham.wa.speedtest.optusnet.com.au   |-R     |    |AU     |Perth               |
|iperf3 -c 198.142.237.65                            |-R     |    |AU     |Sydney              |
|iperf3 -c 198.142.237.72                            |-R     |    |AU     |Sydney              |
|iperf3 -c 198.142.237.97                            |-R     |    |AU     |Sydney              |
|iperf3 -c 198.142.237.132                           |-R     |    |AU     |Sydney              |
|iperf3 -c speedtest2.kiska.pw                       |-R     |    |AU     |Sydney              |
|iperf3 -c mirror.lagoon.nc                          |-R     |1   |NC     |                    |
|iperf3 -c 202.137.240.193                           |-R     |    |NZ     |Auckland            |
|iperf3 -c speedtest4.nownz.co.nz                    |-R     |10  |NZ     |Auckland            |
|iperf3 -c speedtest5.nownz.co.nz                    |-R     |10  |NZ     |Auckland            |
|iperf3 -c auckland.speedtest.vodafone.co.nz         |-R     |    |NZ     |Auckland            |

## serverlist.json
[https://iperf3serverlist.net/serverlist.json](https://iperf3serverlist.net/serverlist.json) (daily updated)

## Contact
Contact me via e-mail - r0gger[at]iperf3serverlist.net
