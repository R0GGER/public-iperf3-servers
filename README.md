# Public iPerf3 Serverlist

<p align="center"><br/>
  <a href="https://iperf3serverlist.net" target="_blank"><img src="iperf3serverlist_256.png" width="150"></a><br/>  
  <b><a href="https://iperf3serverlist.net" target="_blank">iperf3serverlist.net</a></b><br/>
  <br/>
  <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-green.svg?color=0066ff&style=for-the-badge&label=License&logoColor=000000&labelColor=ececec" alt="License: MIT"></a> <br/>
   <a href="https://stand-with-ukraine.pp.ua"><img src="https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/badges/StandWithUkraineFlat.svg" alt="#StandWithUkraine" /></a>
<h3 align="center">A list of public iPERF3 servers to perform bandwidth and speedtests across different geographical regions.</h3>  
  </a><br/> 
</p>

## Content
* [Install iperf3](#install-iperf3)
* [Commands](#commands)
* [Documentation](#documentation)
* [Servers per continent](#servers-per-continent)
* [Export (CSV)](#export)
* [Contact](#contact)

## Install iperf3
**Debian:**
```bash
apt update && apt install -y iperf3
```
**CentOS/RockyLinux:**
```bash
yum install epel-release && yum install iperf3
```
**Windows**    
Download and extract [iperf-3.*-win64.zip](https://github.com/ar51an/iperf3-win-builds)

## Commands:
```bash
iperf3 -c speedtest.novoserve.com -p 5201 -P 20
```
```bash
docker run -it --rm -p 5201:5201 -p 5201:5201/udp r0gger/iperf3 -c ams.speedtest.clouvider.net -p $((5201+(RANDOM%10)))
```
**Options**    
`-c` host  
`--bidir` run in bidirectional mode. Client and server send and receive data.    
`-p, --port` server port to listen on/connect to (default: 5201)    
`-P, --parallel`  number of parallel client streams to run (default =10)    
`-R, --reverse` run in reverse mode (server sends, client receives)(download)    
`-4, --version4` only use IPv4 (default)   
`-6, --version6` only use IPv6 

## Documentation
For more information about iperf3, visit our documentation webpage: https://iperf3serverlist.net/iperf3.html

## Servers per continent
Do you want to add/remove an IP or HOST to this list? Please create a [new issue](https://github.com/R0GGER/public-iperf3-servers/issues).

* [AFRICA](#africa)
* [ASIA](#asia)
* [EUROPE](#europe)
* [LATIN AMERICA](#latin-america)
* [NORTH AMERICA](#north-america)
* [OCEANIA](#oceania)
  

:sparkles: Servers with an uptime of 90% or less in 30 days will be removed.

### AFRICA
| **COMMAND**                                       | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE**    |
| :------------------------------------------------ | :---------: | :------: | :---------: | :----------- |
| iperf3 -c cust-fgt.maxnet.ao -p 9200--9240        |     -R      |          |     AO      | Luanda       |
| iperf3 -c monitor.ita.ao -p 9201-9240             |     -R      |          |     AO      | Luanda       |
| iperf3 -c 105.235.237.2 -p 5201-5209              |     -R      |          |     GQ      | Bata         |
| iperf3 -c speedtestfl.telecom.mu -p 5201-5209     |     -R      |          |     MU      | Floreal      |
| iperf3 -c speedtest.telecom.mu -p 5201-5209       |     -R      |          |     MU      | Port Louis   |
| iperf3 -c  iperf3.ddng.isnet.net -p 5202-5203     |     -R      |          |     NG      | Lagos        |
| iperf3 -c sl-01-kgl.rw.seacomnet.com -p 5201-5209 |     -R      |          |     RW      | Kigali       |
| iperf3 -c 41.226.22.119 -p 9202-9240              |     -R      |          |     TN      | Tunis        |
| iperf3 -c 196.179.245.2 -p 9200-9240              |     -R      |          |     TN      | Tunis        |
| iperf3 -c  197.26.19.243 -p 9200-9240             |     -R      |          |     TN      | Tunis        |
| iperf3 -c 154.0.5.20                              |     -R      |          |     ZA      | Cape Town    |
| iperf3 -c 169.150.238.161                         |     -R      |    10    |     ZA      | Johannesburg |
| iperf3 -c speedtest.rocketnet.co.za               |             |          |     ZA      | Johannesburg |
| iperf3 -c speedtest1.bitco.co.za                  |     -R      |          |     ZA      | Johannesburg |

### ASIA
| **COMMAND**                                            | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE**     |
| :----------------------------------------------------- | :---------: | :------: | :---------: | :----------- |
| iperf3 -c 84.17.57.129                                 |     -R      |    10    |     HK      | Hong Kong    |
| iperf3 -c speedtest.hkg12.hk.leaseweb.net -p 5201-5210 |   -R, -6    |    10    |     HK      | Hong Kong    |
| iperf3 -c speedtest.myrepublic.net.id -p 9200-9240     |     -R      |          |     ID      | Jakarta      |
| iperf3 -c bom.proof.ovh.net -p 5201-5210               |   -R, -6    |    10    |     IN      | Mumbai       |
| iperf3 -c  shahriar.iperf3.ir -p 5201-5208             |   -R, -6    |    10    |     IR      | Teheran      |
| iperf3 -c simin.iperf3.ir -p 5201-5208                 |   -R, -6    |    10    |     IR      | Teheran      |
| iperf3 -c bamdad.iperf3.ir -p 5201-5209                |   -R, -6    |    10    |     IR      | Teheran      |
| iperf3 -c 89.187.160.1                                 |     -R      |    10    |     JP      | Tokyo        |
| iperf3 -c speedtest.tyo11.jp.leaseweb.net -p 5201-5210 |   -R, -6    |    10    |     JP      | Tokyo        |
| iperf3 -c lg-jp-tyo.webhorizon.net -p 5201             |   -R, -6    |    10    |     JP      | Tokyo        |
| iperf3 -c speed.netfiber.net.il                        |     -R      |    1     |     IL      | Jerusalem    |
| iperf3 -c speed.rimon.net.il                           |     -R      |    1     |     IL      | Jerusalem    |
| iperf3 -c 169.150.202.193                              |     -R      |    10    |     IL      | Tel Aviv     |
| iperf3 -c 91.185.23.98                                 |     -R      |          |     KZ      | Aktau        |
| iperf3 -c iperf.myren.net.my -p 5203-5210              |     -R      |          |     MY      | Kuala Lumpur |
| iperf3 -c 89.187.162.1                                 |     -R      |    10    |     SG      | Singapore    |
| iperf3 -c lg-sg-sin.webhorizon.net -p 5201             |   -R, -6    |    10    |     SG      | Singapore    |
| iperf3 -c sgp.proof.ovh.net -p 5201-5210               |   -R, -6    |    1     |     SG      | Singapore    |
| iperf3 -c speedtest.singnet.com.sg -p 5201-5210        |     -R      |          |     SG      | Singapore    |
| iperf3 -c speedtest.sin1.sg.leaseweb.net -p 5201-5210  |   -R, -6    |    10    |     SG      | Singapore    |
| iperf3 -c 202.29.80.9 -p 9200-9240                     |     -R      |          |     TH      | Phitsanulok  |
| iperf3 -c 58.64.45.56 -p 9200-9240                     |     -R      |          |     TH      | Phitsanulok  |
| iperf3 -c 156.146.52.1                                 |     -R      |    10    |     TR      | Istanbul     |
| iperf3 -c speedtest.uztelecom.uz -p 5200-5209          |   -R, -6    |    10    |     UZ      | Tashkent     |

### EUROPE
| **COMMAND**                                            | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE**         |
| :----------------------------------------------------- | :---------: | :------: | :---------: | :--------------- |
| iperf3 -c speedtest.shinternet.ch -p 5200-5209         |   -R, -6    |    10    |     CH      | Schaffhausen     |
| iperf3 -c speedtest.init7.net                          |   -R, -6    |    20    |     CH      | Winterthur       |
| iperf3 -c speedtest.iway.ch                            |   -R, -6    |    10    |     CH      | Zurich           |
| iperf3 -c rychlost.poda.cz                             |     -R      |          |     CZ      | Mikulov          |
| iperf3 -c a209.speedtest.wobcom.de                     |   -R, -6    |          |     DE      | Berlin           |
| iperf3 -c a110.speedtest.wobcom.de                     |   -R, -6    |          |     DE      | Berlin           |
| iperf3 -c a208.speedtest.wobcom.de                     |   -R, -6    |          |     DE      | Düsseldorf       |
| iperf3 -c speedtest.fra1.de.leaseweb.net -p 5201-5210  |   -R, -6    |    10    |     DE      | Frankfurt        |
| iperf3 -c 178.215.228.109 -p 9201-9240                 |     -R      |          |     DE      | Frankfurt        |
| iperf3 -c fra.speedtest.clouvider.net -p 5200-5209     |   -R, -6    |    10    |     DE      | Frankfurt        |
| iperf3 -c speedtest.ip-projects.de                     |   -R, -6    |    10    |     DE      | Frankfurt        |
| iperf3 -c a210.speedtest.wobcom.de                     |   -R, -6    |          |     DE      | Frankfurt        |
| iperf3 -c a205.speedtest.wobcom.de                     |   -R, -6    |          |     DE      | Frankfurt        |
| iperf3 -c spd-desrv.hostkey.com -p 5201                |     -R      |    10    |     DE      | Frankfurt        |
| iperf3 -c speedtest.studiofunk.de -p 5209              |   -R, -6    |          |     DE      | Hamburg          |
| iperf3 -c speedtest.wtnet.de -p 5200-5209              |   -R, -6    |    40    |     DE      | Norderstedt      |
| iperf3 -c speedtest.wobcom.de :small_blue_diamond:     |   -R, -6    |          |     DE      | Wolfsburg        |
| iperf3 -c a400.speedtest.wobcom.de                     |   -R, -6    |          |     DE      | Wolfsburg        |
| iperf3 -c iperf.deic.dk                                |     -R      |    10    |     DK      | Copenhagen       |
| iperf3 -c speed.fiberby.dk -p 9201-9240                |   -R, -6    |    10    |     DK      | Copenhagen       |
| iperf3 -c speedtest.hiper.dk -p 5201-5203              |   -R, -6    |          |     DK      | Copenhagen       |
| iperf3 -c speedtest-hki.netplaza.fi                    |     -R      |          |     FI      | Helsinki         |
| iperf3 -c spd-fisrv.hostkey.com -p 5201                |     -R      |    10    |     FI      | Helsinki         |
| iperf3 -c speedtest.cinia.fi                           |     -R      |          |     FI      | Oulu             |
| iperf3 -c aix-marseille.testdebit.info -p 9200-9240    |   -R, -6    |    10    |     FR      | Aix-en-Provence  |
| iperf3 -c iperf.par2.as49434.net -p 9200-9240          |   -R, -6    |    40    |     FR      | Paris            |
| iperf3 -c iperf3.moji.fr -p 5200-5240                  |   -R, -6    |   100    |     FR      | Paris            |
| iperf3 -c bouygues.testdebit.info -p 9200-9240         |   -R, -6    |    10    |     FR      | Paris            |
| iperf3 -c paris.testdebit.info -p 9200-9240            |   -R, -6    |    10    |     FR      | Paris            |
| iperf3 -c ping-90ms.online.net -p 5200-5209            |   -R, -6    |   100    |     FR      | Paris            |
| iperf3 -c proof.ovh.net -p 5201-5210                   |   -R, -6    |    10    |     FR      | Paris            |
| iperf3 -c iperf.online.net -p 5201-5209                |   -R, -6    |   100    |     FR      | Vienna           |
| iperf3 -c scaleway.testdebit.info -p 5200-5209         |   -R, -6    |    10    |     FR      | Vitry-sur-Seine  |
| iperf3 -c ping.online.net -p 5200-5209                 |     -R      |   100    |     FR      | Vitry-sur-Seine  |
| iperf3 -c ping6.online.net -p 5200-5209                |   -R, -6    |   100    |     FR      | Vitry-sur-Seine  |
| iperf3 -c speedtest.lon1.uk.leaseweb.net -p 5201-5210  |   -R, -6    |    10    |     GB      | London           |
| iperf3 -c speedtest.lon12.uk.leaseweb.net -p 5201-5210 |   -R, -6    |    10    |     GB      | London           |
| iperf3 -c iperf.as42831.net -p 5300-5400               |     -R      |          |     GB      | London           |
| iperf3 -c lon.speedtest.clouvider.net -p 5200-5209     |   -R, -6    |    10    |     GB      | London           |
| iperf3 -c speedtest-london.its-tg.net                  |     -R      |          |     GB      | London           |
| iperf3 -c speedtest1.vodafone.hu                       |     -R      |          |     HU      | Budapest         |
| iperf3 -c spd-icsrv.hostkey.com -p 5201                |     -R      |    10    |     IS      | Reykjavik        |
| iperf3 -c it1.speedtest.aruba.it                       |     -R      |          |     IT      | Arezzo           |
| iperf3 -c speed.itgate.net -p 5201-5202                |   -R, -6    |          |     IT      | Gerbido          |
| iperf3 -c 217.61.40.96                                 |     -R      |          |     IT      | Ponte San Pietro |
| iperf3 -c 80.92.72.3                                   |     -R      |          |     LU      | Bettembourg      |
| iperf3 -c speedtest.lu.buyvm.net                       |   -R, -6    |          |     LU      | Bissen           |
| iperf3 -c speedtest.ams1.nl.leaseweb.net -p 5201-5210  |   -R, -6    |    10    |     NL      | Amsterdam        |
| iperf3 -c speedtest.ams2.nl.leaseweb.net -p 5201-5210  |   -R, -6    |    10    |     NL      | Amsterdam        |
| iperf3 -c ams.speedtest.clouvider.net -p 5200-5209     |   -R, -6    |    10    |     NL      | Amsterdam        |
| iperf3 -c ping-ams1.online.net -p 5200-5209            |   -R, -6    |    10    |     NL      | Amsterdam        |
| iperf3 -c a204.speedtest.wobcom.de                     |   -R, -6    |          |     NL      | Amsterdam        |
| iperf3 -c speedtest.novoserve.com -p 5201-5206         |   -R, -6    |    40    |     NL      | Amsterdam        |
| iperf3 -c speedtest.ams1.novogara.net -p 5200-5209     |   -R, -6    |    20    |     NL      | Amsterdam        |
| iperf3 -c spd-nlsrv.hostkey.com -p 5201                |     -R      |    10    |     NL      | Amsterdam        |
| iperf3 -c lg.ams-nl.terrahost.com -p 9201-9240         |   -R, -6    |    10    |     NL      | Amsterdam        |
| iperf3 -c spt01.sdhd.hosting                           |     -R      |    10    |     NL      | Dronten          |
| iperf3 -c lg-drn.liteserver.nl -p 5201-5240            |     -R      |    1     |     NL      | Dronten          |
| iperf3 -c iperf.worldstream.nl                         |   -R, -6    |    10    |     NL      | Naaldwijk        |
| iperf3 -c lg.terrahost.com -p 9200-9240                |   -R, -6    |    10    |     NO      | Sandefjord       |
| iperf3 -c speedtest-w5-rnp.play.pl                     |     -R      |          |     PL      | Warsaw           |
| iperf3 -c 95.95.252.87 -p 5201-5209                    |     -R      |          |     PT      | Lissabon         |
| iperf3 -c speedtest.kamel.network -p 5201-5205         |   -R, -6    |    1     |     SE      | Kista            |
| iperf3 -c speedtest.ownit.se                           |     -R      |    1     |     SE      | Stockholm        |
| iperf3 -c speedtestv6.ownit.se                         |   -R, -6    |    1     |     SE      | Stockholm        |
| iperf3 -c se-speedt01.fre.nis.telia.net -p 5201-5210   |   -R, -6    |    1     |     SE      | Viken            |
| iperf3 -c speedtest.solver.net.ua                      |     -R      |          |     UA      | Poltava          |

:small_blue_diamond: speedtest.wobcom.de connects to the nearest *.speedtest.wobcom.de server.

### LATIN AMERICA
| **COMMAND**                                        | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE**   |
| :------------------------------------------------- | :---------: | :------: | :---------: | :--------- |
| iperf3 -c 138.199.4.1                              |     -R      |    10    |     BR      | São Paulo  |
| iperf3 -c speedtest.sao1.edgoo.net -p 9204-9240    |   -R, -6    |          |     BR      | São Paulo  |
| iperf3 -c sp11.wom.cl                              |             |          |     CL      | Santiago   |
| iperf3 -c 79.127.209.1                             |     -R      |          |     CL      | Santiago   |
| iperf3 -c speedtest-cncp.grupogtd.com -p 5201-5205 |   -R, -6    |    10    |     CL      | Valdivia   |
| iperf3 -c 169.150.228.129                          |     -R      |    10    |     CO      | Bogotá     |
| iperf3 -c 156.146.53.53                            |     -R      |    10    |     CR      | San Jose   |
| iperf3 -c speedtest.masnet.ec -p 5201-5209         |   -R, -6    |    1     |     EC      | Santa Ana  |
| iperf3 -c 121.127.43.65                            |     -R      |    10    |     MX      | Querétaro  |
| iperf3 -c speedtest.tigo.com.py                    |   -R, -6    |          |     PY      | Asuncion   |
| iperf3 -c 200.2.166.166 -p 5201-5213               |     -R      |          |     SR      | Paramaribo |

### NORTH AMERICA
| **COMMAND**                                            | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE**      |
| :----------------------------------------------------- | :---------: | :------: | :---------: | :------------ |
| iperf3 -c speedtest.mtl2.ca.leaseweb.net -p 5201-5210  |   -R, -6    |    10    |     CA      | Montreal      |
| iperf3 -c speedtest-west.eastlink.ca -p 5201           |   -R, -6    |          |     CA      | Wetaskiwin    |
| iperf3 -c charlotte02.speedtest.windstream.net         |   -R, -6    |          |     US      |               |
| iperf3 -c ash.speedtest.clouvider.net -p 5200-5209     |   -R, -6    |    10    |     US      | Ashburn       |
| iperf3 -c fiosspeed1.west.verizon.net                  |     -R      |          |     US      | Ashburn       |
| iperf3 -c fiosspeed2.west.verizon.net                  |     -R      |          |     US      | Ashburn       |
| iperf3 -c fiosspeed3.west.verizon.net                  |     -R      |          |     US      | Ashburn       |
| iperf3 -c fiosspeed4.west.verizon.net                  |     -R      |          |     US      | Ashburn       |
| iperf3 -c atl.speedtest.clouvider.net -p 5200-5209     |   -R, -6    |    10    |     US      | Atlanta       |
| iperf3 -c speedtest13.suddenlink.net                   |     -R      |    10    |     US      | Charleston    |
| iperf3 -c speedtest15.suddenlink.net                   |     -R      |    10    |     US      | Charleston    |
| iperf3 -c speedtest.chi11.us.leaseweb.net -p 5201-5210 |   -R, -6    |    10    |     US      | Chicago       |
| iperf3 -c speedtest.dal13.us.leaseweb.net -p 5201-5210 |   -R, -6    |    10    |     US      | Dallas        |
| iperf3 -c dal.speedtest.clouvider.net -p 5200-5209     |     -R      |    10    |     US      | Dallas        |
| iperf3 -c la.speedtest.clouvider.net -p 5200-5209      |     -R      |    10    |     US      | Los Angeles   |
| iperf3 -c speedtest.lax12.us.leaseweb.net -p 5201-5210 |   -R, -6    |    10    |     US      | Los Angeles   |
| iperf3 -c speedtest.mia11.us.leaseweb.net -p 5201-5210 |   -R, -6    |    10    |     US      | Miami         |
| iperf3 -c speedtest.tds.net                            |     -R      |          |     US      | Madison       |
| iperf3 -c speedtest.nyc1.us.leaseweb.net -p 5201-5210  |   -R, -6    |    10    |     US      | New York      |
| iperf3 -c spd-uswb.hostkey.com -p 5201-5202            |     -R      |    10    |     US      | New York      |
| iperf3 -c nyc.speedtest.clouvider.net -p 5200-5209     |     -R      |    10    |     US      | New York City |
| iperf3 -c speedtest.phx1.us.leaseweb.net -p 5201-5210  |   -R, -6    |    10    |     US      | Phoenix       |
| iperf3 -c speedtest.sfo12.us.leaseweb.net -p 5201-5210 |   -R, -6    |    10    |     US      | San Francisco |
| iperf3 -c speedtest.sea11.us.leaseweb.net -p 5201-5210 |   -R, -6    |    10    |     US      | Seattle       |
| iperf3 -c speedtest.wdc2.us.leaseweb.net -p 5201-5210  |   -R, -6    |    10    |     US      | Washington    |

### OCEANIA
| **COMMAND**                                            | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE**     |
| :----------------------------------------------------- | :---------: | :------: | :---------: | :----------- |
| iperf3 -c speedtest.optusnet.com.au -p 5201-5203       |     -R      |          |     AU      |              |
| iperf3 -c speed.per.swoop.com.au                       |     -R      |    10    |     AU      | Perth        |
| iperf3 -c rockingham.wa.speedtest.optusnet.com.au      |     -R      |          |     AU      | Perth        |
| iperf3 -c speed.syd.swoop.com.au                       |     -R      |    10    |     AU      | Sydney       |
| iperf3 -c 143.244.63.144                               |     -R      |    10    |     AU      | Sydney       |
| iperf3 -c speedtest.syd12.au.leaseweb.net -p 5201-5210 |   -R, -6    |    10    |     AU      | Sydney       |
| iperf3 -c 198.142.237.72                               |     -R      |          |     AU      | Sydney       |
| iperf3 -c 198.142.237.97                               |     -R      |          |     AU      | Sydney       |
| iperf3 -c speedtest2.kiska.pw                          |     -R      |          |     AU      | Sydney       |
| iperf3 -c speedtest.lagoon.nc -p 5202-5210             |   -R, -6    |    10    |     NC      | Noumea       |
| iperf3 -c akl.linetest.nz -p 5300-5309                 |     -R      |    10    |     NZ      | Auckland     |
| iperf3 -c  chch.linetest.nz -p 5300-5309               |     -R      |    10    |     NZ      | Christchurch |
| iperf3 -c 154.81.51.4                                  |     -R      |          |     PG      | Port Moresby |

## Export
| CONTINENT     | .CSV                                                          | NocoDB        |
| :------------ | :------------------------------------------------------------ | :----------- |
| AFRICA        | [AFRICA-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/87b6c8dc-6f9e-4c90-bb7e-ef1c1259fc48/rows/export/csv) | [DB](https://db.iperf3serverlist.net/dashboard/#/nc/view/87b6c8dc-6f9e-4c90-bb7e-ef1c1259fc48) |
| ASIA          | [ASIA-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/82110281-21c3-47ce-b96a-7d6bcecb51c3/rows/export/csv) | [DB](https://db.iperf3serverlist.net/dashboard/#/nc/view/82110281-21c3-47ce-b96a-7d6bcecb51c3) |
| EUROPE        | [EUROPE-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/3c231f8c-ea62-42ce-84a0-cf05af10720d/rows/export/csv) | [DB](https://db.iperf3serverlist.net/dashboard/#/nc/view/3c231f8c-ea62-42ce-84a0-cf05af10720d) |
| LATIN AMERICA | [LATIN AMERICA-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/fda8bba6-da07-48f9-a1ea-2f8d6195ba42/rows/export/csv) | [DB](https://db.iperf3serverlist.net/dashboard/#/nc/view/fda8bba6-da07-48f9-a1ea-2f8d6195ba42) |
| NORTH AMERICA | [NORTH AMERICA-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/23cf33ca-3e09-4487-ac57-3de09aae6e6b/rows/export/csv) | [DB](https://db.iperf3serverlist.net/dashboard/#/nc/view/23cf33ca-3e09-4487-ac57-3de09aae6e6b) |
| OCEANIA       | [OCEANIA-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/4606c864-71f8-4c53-9d55-cf9c38ddb0a5/rows/export/csv) | [DB](https://db.iperf3serverlist.net/dashboard/#/nc/view/4606c864-71f8-4c53-9d55-cf9c38ddb0a5) |
| ALL SERVERS   | [ALL SERVERS-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/e4c7de35-dd8f-42d3-82f8-0a855f937e10/rows/export/csv) | [DB](https://db.iperf3serverlist.net/dashboard/#/nc/view/e4c7de35-dd8f-42d3-82f8-0a855f937e10) |

## Contact
Contact me via e-mail - r0gger[at]iperf3serverlist.net
