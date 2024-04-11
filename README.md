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
iperf3 -c spd-uswb.hostkey.com -p 5201 -P 20
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
| **COMMAND**                                       | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE**     | **PROVIDER**      |
| :------------------------------------------------ | :---------: | :------: | :---------: | :----------- | :---------------- |
| iperf3 -c monitor.ita.ao -p 9201-9240             |     -R      |          |     AO      | Luanda       | ITA               |
| iperf3 -c 105.235.237.2 -p 5201-5209              |     -R      |          |     GQ      | Bata         | Guiananet         |
| iperf3 -c speedtestfl.telecom.mu -p 5201-5209     |     -R      |          |     MU      | Floreal      | Mauritius Telecom |
| iperf3 -c speedtest.telecom.mu -p 5201-5209       |     -R      |          |     MU      | Port Louis   | Mauritius Telecom |
| iperf3 -c speedtestrh.telecom.mu -p 5201-5209     |     -R      |          |     MU      | Rose Hill    | Mauritius Telecom |
| iperf3 -c sl-01-kgl.rw.seacomnet.com -p 5201-5209 |     -R      |          |     RW      | Kigali       | SEACOM            |
| iperf3 -c 41.226.22.119 -p 9202-9240              |     -R      |          |     TN      | Tunis        | TOPNET            |
| iperf3 -c 196.179.245.2 -p 9200-9240              |     -R      |          |     TN      | Tunis        | Ooredoo Tunisia   |
| iperf3 -c 154.0.5.20                              |     -R      |          |     ZA      | Cape Town    | Cool Ideas        |
| iperf3 -c 169.150.238.161                         |     -R      |    10    |     ZA      | Johannesburg | DataPacket        |
| iperf3 -c speedtest.rocketnet.co.za               |             |          |     ZA      | Johannesburg | RocketNet         |
| iperf3 -c speedtest1.bitco.co.za                  |     -R      |          |     ZA      | Johannesburg | BitCoTelecoms     |

### ASIA
| **COMMAND**                                            | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE**     | **PROVIDER** |
| :----------------------------------------------------- | :---------: | :------: | :---------: | :----------- | :----------- |
| iperf3 -c 84.17.57.129                                 |     -R      |    10    |     HK      | Hong Kong    | DataPacket   |
| iperf3 -c speedtest.hkg12.hk.leaseweb.net -p 5201-5210 |   -R, -6    |    10    |     HK      | Hong Kong    | Leaseweb     |
| iperf3 -c speedtest.myrepublic.net.id -p 9200-9240     |     -R      |          |     ID      | Jakarta      | MyRepublic   |
| iperf3 -c 89.187.160.1                                 |     -R      |    10    |     JP      | Tokyo        | DataPacket   |
| iperf3 -c speedtest.tyo11.jp.leaseweb.net -p 5201-5210 |   -R, -6    |    10    |     JP      | Tokyo        | Leaseweb     |
| iperf3 -c lg-jp-tyo.webhorizon.net -p 5201             |   -R, -6    |    10    |     JP      | Tokyo        | WebHorizon   |
| iperf3 -c speed.netfiber.net.il                        |     -R      |    1     |     IL      | Jerusalem    | Netfiber     |
| iperf3 -c speed.rimon.net.il                           |     -R      |    1     |     IL      | Jerusalem    | Rimon        |
| iperf3 -c 91.185.23.98                                 |     -R      |          |     KZ      | Aktau        | Transtelecom |
| iperf3 -c iperf.myren.net.my -p 5201-5210              |     -R      |          |     MY      | Kuala Lumpur | MYREN        |
| iperf3 -c 89.187.162.1                                 |     -R      |    10    |     SG      | Singapore    | DataPacket   |
| iperf3 -c lg-sg-sin.webhorizon.net -p 9201-9209        |   -R, -6    |    10    |     SG      | Singapore    | WebHorizon   |
| iperf3 -c speedtest.singnet.com.sg -p 5201-5210        |     -R      |          |     SG      | Singapore    | Singtel      |
| iperf3 -c speedtest.sin1.sg.leaseweb.net -p 5201-5210  |   -R, -6    |    10    |     SG      | Singapore    | Leaseweb     |
| iperf3 -c 156.146.52.1                                 |     -R      |    10    |     TR      | Istanbul     | DataPacket   |
| iperf3 -c speedtest.uztelecom.uz -p 5200-5209          |   -R, -6    |    10    |     UZ      | Tashkent     | Uztelecom    |

### EUROPE
| **COMMAND**                                            | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE**         | **PROVIDER**         |
| :----------------------------------------------------- | :---------: | :------: | :---------: | :--------------- | :------------------- |
| iperf3 -c speedtest.shinternet.ch -p 5200-5209         |   -R, -6    |    10    |     CH      | Schaffhausen     | sasag                |
| iperf3 -c speedtest.init7.net                          |   -R, -6    |    20    |     CH      | Winterthur       | Init7                |
| iperf3 -c speedtest.iway.ch                            |   -R, -6    |    10    |     CH      | Zurich           | iWay                 |
| iperf3 -c rychlost.poda.cz                             |     -R      |          |     CZ      | Mikulov          | PODA                 |
| iperf3 -c a209.speedtest.wobcom.de                     |   -R, -6    |          |     DE      | Berlin           | WOBCOM               |
| iperf3 -c a110.speedtest.wobcom.de                     |   -R, -6    |          |     DE      | Berlin           | WOBCOM               |
| iperf3 -c a208.speedtest.wobcom.de                     |   -R, -6    |          |     DE      | Düsseldorf       | WOBCOM               |
| iperf3 -c speedtest.fra1.de.leaseweb.net -p 5201-5210  |   -R, -6    |    10    |     DE      | Frankfurt        | Leaseweb             |
| iperf3 -c 178.215.228.109 -p 9201-9240                 |     -R      |          |     DE      | Frankfurt        | ESEVEN               |
| iperf3 -c fra.speedtest.clouvider.net -p 5200-5209     |   -R, -6    |    10    |     DE      | Frankfurt        | Clouvider            |
| iperf3 -c speedtest.ip-projects.de                     |   -R, -6    |    10    |     DE      | Frankfurt        | IP-Projects          |
| iperf3 -c a210.speedtest.wobcom.de                     |   -R, -6    |          |     DE      | Frankfurt        | WOBCOM               |
| iperf3 -c a205.speedtest.wobcom.de                     |   -R, -6    |          |     DE      | Frankfurt        | WOBCOM               |
| iperf3 -c spd-desrv.hostkey.com -p 5201                |     -R      |    10    |     DE      | Frankfurt        | Hostkey              |
| iperf3 -c speedtest.studiofunk.de -p 5209              |   -R, -6    |          |     DE      | Hamburg          | Studio Funk          |
| iperf3 -c speedtest.wtnet.de -p 5200-5209              |   -R, -6    |    40    |     DE      | Norderstedt      | wilhelm.tel          |
| iperf3 -c speedtest.wobcom.de :small_blue_diamond:     |   -R, -6    |          |     DE      | Wolfsburg        | WOBCOM               |
| iperf3 -c a400.speedtest.wobcom.de                     |   -R, -6    |          |     DE      | Wolfsburg        | WOBCOM               |
| iperf3 -c iperf.deic.dk                                |     -R      |    10    |     DK      | Copenhagen       | DeiC                 |
| iperf3 -c speed.fiberby.dk -p 9201-9240                |   -R, -6    |    10    |     DK      | Copenhagen       | Fiberby              |
| iperf3 -c speedtest.hiper.dk -p 5201-5203              |   -R, -6    |          |     DK      | Copenhagen       | Hiper                |
| iperf3 -c speedtest-hki.netplaza.fi                    |     -R      |          |     FI      | Helsinki         | Netplaza             |
| iperf3 -c speedtest.extra.telia.fi                     |     -R      |    10    |     FI      | Helsinki         | Telia                |
| iperf3 -c spd-fisrv.hostkey.com -p 5201                |     -R      |    10    |     FI      | Helsinki         | Hostkey              |
| iperf3 -c speedtest.cinia.fi                           |     -R      |          |     FI      | Oulu             | Cinia                |
| iperf3 -c aix-marseille.testdebit.info -p 9200-9240    |   -R, -6    |    10    |     FR      | Aix-en-Provence  | TestDebit.info       |
| iperf3 -c lyon.testdebit.info -p 9200-9240             |   -R, -6    |    10    |     FR      | Lyon             | TestDebit.info       |
| iperf3 -c iperf.par2.as49434.net -p 9202               |     -R      |    40    |     FR      | Paris            | Harmony Hosting      |
| iperf3 -c bouygues.testdebit.info -p 9200-9240         |   -R, -6    |    10    |     FR      | Paris            | TestDebit.info       |
| iperf3 -c paris.testdebit.info -p 9200-9240            |   -R, -6    |    10    |     FR      | Paris            | TestDebit.info       |
| iperf3 -c proof.ovh.net -p 5201-5210                   |   -R, -6    |    10    |     FR      | Paris            | OVH                  |
| iperf3 -c iperf.online.net -p 5209                     |     -R      |    10    |     FR      | Vienna           | Scaleway             |
| iperf3 -c scaleway.testdebit.info -p 5200-5209         |   -R, -6    |    10    |     FR      | Vitry-sur-Seine  | TestDebit.info       |
| iperf3 -c ping.online.net -p 5200-5209                 |     -R      |    10    |     FR      | Vitry-sur-Seine  | Scaleway             |
| iperf3 -c ping6.online.net -p 5200-5209                |   -R, -6    |    10    |     FR      | Vitry-sur-Seine  | Scaleway             |
| iperf3 -c speedtest.lon1.uk.leaseweb.net -p 5201-5210  |   -R, -6    |    10    |     GB      | London           | Leaseweb             |
| iperf3 -c speedtest.lon12.uk.leaseweb.net -p 5201-5210 |   -R, -6    |    10    |     GB      | London           | Leaseweb             |
| iperf3 -c iperf.as42831.net -p 5300-5400               |     -R      |          |     GB      | London           | UK Servers           |
| iperf3 -c lon.speedtest.clouvider.net -p 5200-5209     |   -R, -6    |    10    |     GB      | London           | Clouvider            |
| iperf3 -c speedtest-london.its-tg.net                  |     -R      |          |     GB      | London           | ITS Technology Group |
| iperf3 -c speedtest1.vodafone.hu                       |     -R      |          |     HU      | Budapest         | Vodafone             |
| iperf3 -c spd-icsrv.hostkey.com -p 5201                |     -R      |    10    |     IS      | Reykjavik        | Hostkey              |
| iperf3 -c it1.speedtest.aruba.it                       |     -R      |          |     IT      | Arezzo           | Aruba.it             |
| iperf3 -c speed.itgate.net -p 5201-5202                |   -R, -6    |          |     IT      | Gerbido          | IT.Gate              |
| iperf3 -c 217.61.40.96                                 |     -R      |          |     IT      | Ponte San Pietro | Aruba.it             |
| iperf3 -c 80.92.72.3                                   |     -R      |          |     LU      | Bettembourg      | Datacenter.eu        |
| iperf3 -c speedtest.lu.buyvm.net                       |   -R, -6    |          |     LU      | Bissen           | FranTech             |
| iperf3 -c speedtest.ams1.nl.leaseweb.net -p 5201-5210  |   -R, -6    |    10    |     NL      | Amsterdam        | Leaseweb             |
| iperf3 -c speedtest.ams2.nl.leaseweb.net -p 5201-5210  |   -R, -6    |    10    |     NL      | Amsterdam        | Leaseweb             |
| iperf3 -c ams.speedtest.clouvider.net -p 5200-5209     |   -R, -6    |    10    |     NL      | Amsterdam        | Clouvider            |
| iperf3 -c ping-ams1.online.net -p 5200-5209            |     -R      |    10    |     NL      | Amsterdam        | Scaleway             |
| iperf3 -c a204.speedtest.wobcom.de                     |   -R, -6    |          |     NL      | Amsterdam        | WOBCOM               |
| iperf3 -c speedtest.novoserve.com -p 5201-5206         |   -R, -6    |    40    |     NL      | Amsterdam        | NovoServe            |
| iperf3 -c speedtest.ams1.novogara.net -p 5200-5209     |   -R, -6    |    20    |     NL      | Amsterdam        | Novogara             |
| iperf3 -c spd-nlsrv.hostkey.com -p 5201                |     -R      |    10    |     NL      | Amsterdam        | Hostkey              |
| iperf3 -c lg.ams-nl.terrahost.com -p 9201-9240         |   -R, -6    |    10    |     NL      | Amsterdam        | Terrahost            |
| iperf3 -c spt01.sdhd.hosting                           |     -R      |    10    |     NL      | Dronten          | SDHD Hosts           |
| iperf3 -c lg-drn.liteserver.nl -p 5200-5240            |     -R      |    1     |     NL      | Dronten          | LiteServer           |
| iperf3 -c iperf.worldstream.nl                         |   -R, -6    |    10    |     NL      | Naaldwijk        | Worldstream          |
| iperf3 -c lg.terrahost.com -p 9200-9240                |   -R, -6    |    10    |     NO      | Sandefjord       | Terrahost            |
| iperf3 -c speedtest-w5-rnp.play.pl                     |     -R      |          |     PL      | Warsaw           | Play                 |
| iperf3 -c 95.95.252.87 -p 5201-5209                    |     -R      |          |     PT      | Lissabon         | NOS                  |
| iperf3 -c speedtest.kamel.network -p 5201-5205         |   -R, -6    |    1     |     SE      | Kista            | Kamel Networks       |
| iperf3 -c speedtest.ownit.se                           |     -R      |    1     |     SE      | Stockholm        | Ownit                |
| iperf3 -c speedtestv6.ownit.se                         |   -R, -6    |    1     |     SE      | Stockholm        | Ownit                |
| iperf3 -c se-speedt01.fre.nis.telia.net -p 5201-5210   |   -R, -6    |    1     |     SE      | Viken            | Telia                |
| iperf3 -c speedtest.solver.net.ua                      |     -R      |          |     UA      | Poltava          | Optinet              |

:small_blue_diamond: speedtest.wobcom.de connects to the nearest *.speedtest.wobcom.de server.

### LATIN AMERICA
| **COMMAND**                                        | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE**   | **PROVIDER**  |
| :------------------------------------------------- | :---------: | :------: | :---------: | :--------- | :------------ |
| iperf3 -c speedtest.net-rosas.com.br -p 5201-5220  |     -R      |          |     BR      | Barbacena  | netRosas      |
| iperf3 -c 138.199.4.1                              |     -R      |    10    |     BR      | São Paulo  | DataPacket    |
| iperf3 -c speedtest.sao1.edgoo.net -p 9204-9240    |   -R, -6    |          |     BR      | São Paulo  | Edgoo         |
| iperf3 -c sp11.wom.cl                              |             |          |     CL      | Santiago   | WOM           |
| iperf3 -c speedtest-cncp.grupogtd.com -p 5201-5205 |   -R, -6    |    10    |     CL      | Valdivia   | GTD Chile     |
| iperf3 -c 169.150.228.129                          |     -R      |    10    |     CO      | Bogotá     | DataPacket    |
| iperf3 -c speedtest.masnet.ec -p 5201-5209         |   -R, -6    |    1     |     EC      | Santa Ana  | MásNet        |
| iperf3 -c 121.127.43.65                            |     -R      |    10    |     MX      | Querétaro  | DataPacket    |
| iperf3 -c speedtest.tigo.com.py                    |   -R, -6    |          |     PY      | Asuncion   | Tigo Paraguay |
| iperf3 -c 200.2.166.166 -p 5201-5213               |     -R      |          |     SR      | Paramaribo | Telesur       |

### NORTH AMERICA
| **COMMAND**                                            | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE**      | **PROVIDER** |
| :----------------------------------------------------- | :---------: | :------: | :---------: | :------------ | :----------- |
| iperf3 -c speedtest.mtl2.ca.leaseweb.net -p 5201-5210  |   -R, -6    |    10    |     CA      | Montreal      | Leaseweb     |
| iperf3 -c speedtest3.sasknet.sk.ca                     |     -R      |          |     CA      | Saskatoon     | SaskTel      |
| iperf3 -c speedtest-west.eastlink.ca -p 5201           |   -R, -6    |          |     CA      | Wetaskiwin    | Eastlink     |
| iperf3 -c charlotte02.speedtest.windstream.net         |   -R, -6    |          |     US      | Charlotte     | Windstream   |
| iperf3 -c ash.speedtest.clouvider.net -p 5200-5209     |   -R, -6    |    10    |     US      | Ashburn       | Clouvider    |
| iperf3 -c fiosspeed1.west.verizon.net                  |     -R      |          |     US      | Ashburn       | Verizon      |
| iperf3 -c fiosspeed2.west.verizon.net                  |     -R      |          |     US      | Ashburn       | Verizon      |
| iperf3 -c fiosspeed3.west.verizon.net                  |     -R      |          |     US      | Ashburn       | Verizon      |
| iperf3 -c fiosspeed4.west.verizon.net                  |     -R      |          |     US      | Ashburn       | Verizon      |
| iperf3 -c atl.speedtest.clouvider.net -p 5200-5209     |   -R, -6    |    10    |     US      | Atlanta       | Clouvider    |
| iperf3 -c speedtest13.suddenlink.net                   |     -R      |    10    |     US      | Charleston    | Optimum      |
| iperf3 -c speedtest15.suddenlink.net                   |     -R      |    10    |     US      | Charleston    | Optimum      |
| iperf3 -c speedtest.chi11.us.leaseweb.net -p 5201-5210 |   -R, -6    |    10    |     US      | Chicago       | Leaseweb     |
| iperf3 -c speedtest.dal13.us.leaseweb.net -p 5201-5210 |   -R, -6    |    10    |     US      | Dallas        | Leaseweb     |
| iperf3 -c dal.speedtest.clouvider.net -p 5200-5209     |     -R      |    10    |     US      | Dallas        | Clouvider    |
| iperf3 -c la.speedtest.clouvider.net -p 5200-5209      |     -R      |    10    |     US      | Los Angeles   | Cloudvider   |
| iperf3 -c speedtest.lax12.us.leaseweb.net -p 5201-5210 |   -R, -6    |    10    |     US      | Los Angeles   | Leaseweb     |
| iperf3 -c speedtest.mia11.us.leaseweb.net -p 5201-5210 |   -R, -6    |    10    |     US      | Miami         | Leaseweb     |
| iperf3 -c speedtest.tds.net                            |     -R      |          |     US      | Madison       | TDS          |
| iperf3 -c speedtest.nyc1.us.leaseweb.net -p 5201-5210  |   -R, -6    |    10    |     US      | New York      | Leaseweb     |
| iperf3 -c spd-uswb.hostkey.com -p 5201-5202            |     -R      |    10    |     US      | New York      | Hostkey      |
| iperf3 -c nyc.speedtest.clouvider.net -p 5200-5209     |     -R      |    10    |     US      | New York City | Clouvider    |
| iperf3 -c speedtest.phx1.us.leaseweb.net -p 5201-5210  |   -R, -6    |    10    |     US      | Phoenix       | Leaseweb     |
| iperf3 -c speedtest.sfo12.us.leaseweb.net -p 5201-5210 |   -R, -6    |    10    |     US      | San Francisco | Leaseweb     |
| iperf3 -c speedtest.sea11.us.leaseweb.net -p 5201-5210 |   -R, -6    |    10    |     US      | Seattle       | Leaseweb     |
| iperf3 -c speedtest.wdc2.us.leaseweb.net -p 5201-5210  |   -R, -6    |    10    |     US      | Washington    | Leaseweb     |

### OCEANIA
| **COMMAND**                                            | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE** | **PROVIDER** |
| :----------------------------------------------------- | :---------: | :------: | :---------: | :------- | :----------- |
| iperf3 -c speedtest.optusnet.com.au -p 5201-5203       |     -R      |          |     AU      |          | Optus        |
| iperf3 -c rockingham.wa.speedtest.optusnet.com.au      |     -R      |          |     AU      | Perth    | Optus        |
| iperf3 -c 143.244.63.144                               |     -R      |    10    |     AU      | Sydney   | DataPacket   |
| iperf3 -c speedtest.syd12.au.leaseweb.net -p 5201-5210 |   -R, -6    |    10    |     AU      | Sydney   | Leaseweb     |
| iperf3 -c 198.142.237.72                               |     -R      |          |     AU      | Sydney   | Optus        |
| iperf3 -c 198.142.237.97                               |     -R      |          |     AU      | Sydney   | Optus        |
| iperf3 -c speedtest2.kiska.pw                          |     -R      |          |     AU      | Sydney   | Vultr        |
| iperf3 -c speedtest.lagoon.nc -p 5202-5210             |   -R, -6    |    10    |     NC      | Noumea   | Lagoon       |
| iperf3 -c speedtest5.nownz.co.nz                       |     -R      |    10    |     NZ      | Auckland | NOW NZ       |

## Export
* Nocodb: [ALL SERVERS](https://db.iperf3serverlist.net/dashboard/#/nc/view/e4c7de35-dd8f-42d3-82f8-0a855f937e10) - Export to [csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/e4c7de35-dd8f-42d3-82f8-0a855f937e10/rows/export/csv)
* Nocodb: [AFRICA](https://db.iperf3serverlist.net/dashboard/#/nc/view/87b6c8dc-6f9e-4c90-bb7e-ef1c1259fc48) - Export to [csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/87b6c8dc-6f9e-4c90-bb7e-ef1c1259fc48/rows/export/csv)
* Nocodb: [ASIA](https://db.iperf3serverlist.net/dashboard/#/nc/view/82110281-21c3-47ce-b96a-7d6bcecb51c3) - Export to [csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/82110281-21c3-47ce-b96a-7d6bcecb51c3/rows/export/csv)
* Nocodb: [EUROPE](https://db.iperf3serverlist.net/dashboard/#/nc/view/3c231f8c-ea62-42ce-84a0-cf05af10720d) - Export to [csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/3c231f8c-ea62-42ce-84a0-cf05af10720d/rows/export/csv)
* Nocodb: [LATIN AMERICA](https://db.iperf3serverlist.net/dashboard/#/nc/view/fda8bba6-da07-48f9-a1ea-2f8d6195ba42) - Export to [csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/fda8bba6-da07-48f9-a1ea-2f8d6195ba42/rows/export/csv)
* Nocodb: [NORTH AMERICA](https://db.iperf3serverlist.net/dashboard/#/nc/view/23cf33ca-3e09-4487-ac57-3de09aae6e6b) - Export to [csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/23cf33ca-3e09-4487-ac57-3de09aae6e6b/rows/export/csv)
* Nocodb: [OCEANIA](https://db.iperf3serverlist.net/dashboard/#/nc/view/4606c864-71f8-4c53-9d55-cf9c38ddb0a5) - Export to [csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/4606c864-71f8-4c53-9d55-cf9c38ddb0a5/rows/export/csv)

## Contact
Contact me via e-mail - r0gger[at]iperf3serverlist.net
