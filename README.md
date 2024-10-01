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
| **COMMAND**                                        | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE**     |
| :------------------------------------------------- | :---------: | :------: | :---------: | :----------- |
| iperf3 -c 160.242.19.254 -p 9201-9240              |     -R      |          |     AO      | Luanda       |
| iperf3 -c 105.235.237.2 -p 5201-5209               |     -R      |          |     GQ      | Bata         |
| iperf3 -c speedtestfl.telecom.mu -p 5201-5209      |     -R      |          |     MU      | Floreal      |
| iperf3 -c speedtest.telecom.mu -p 5201-5209        |     -R      |          |     MU      | Port Louis   |
| iperf3 -c sl-01-kgl.rw.seacomnet.com -p 5201-5209  |     -R      |          |     RW      | Kigali       |
| iperf3 -c sl-01-kgl.rw.seacomnet.com  -p 5201-5209 |     -R      |          |     RW      | Kigali       |
| iperf3 -c 41.226.22.119 -p 9202-9240               |     -R      |          |     TN      | Tunis        |
| iperf3 -c 196.179.245.2 -p 9200-9240               |     -R      |          |     TN      | Tunis        |
| iperf3 -c  197.26.19.243 -p 9200-9240              |     -R      |          |     TN      | Tunis        |
| iperf3 -c speedtest.rocketnet.co.za                |             |          |     ZA      | Johannesburg |
| iperf3 -c speedtest1.bitco.co.za                   |     -R      |          |     ZA      | Johannesburg |
| iperf3 -c 169.150.238.161                          |     -R      |   2x10   |     ZA      | Johannesburg |

### ASIA
| **COMMAND**                                            | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE**     |
| :----------------------------------------------------- | :---------: | :------: | :---------: | :----------- |
| iperf3 -c speedtest.hkg12.hk.leaseweb.net -p 5201-5210 |    -R,-6    |    10    |     HK      | Hong Kong    |
| iperf3 -c 84.17.57.129                                 |     -R      |   2x10   |     HK      | Hong Kong    |
| iperf3 -c speedtest.myrepublic.net.id -p 9200-9240     |     -R      |          |     ID      | Jakarta      |
| iperf3 -c speed.netfiber.net.il                        |     -R      |    1     |     IL      | Jerusalem    |
| iperf3 -c speed.rimon.net.il                           |     -R      |    1     |     IL      | Jerusalem    |
| iperf3 -c 169.150.202.193                              |     -R      |   2x10   |     IL      | Tel Aviv     |
| iperf3 -c bom.proof.ovh.net -p 5201-5210               |    -R,-6    |    10    |     IN      | Mumbai       |
| iperf3 -c  shahriar.iperf3.ir -p 5201-5208             |    -R,-6    |    10    |     IR      | Teheran      |
| iperf3 -c simin.iperf3.ir -p 5201-5208                 |    -R,-6    |    10    |     IR      | Teheran      |
| iperf3 -c bamdad.iperf3.ir -p 5201-5209                |    -R,-6    |    10    |     IR      | Teheran      |
| iperf3 -c speedtest.tyo11.jp.leaseweb.net -p 5201-5210 |    -R,-6    |    10    |     JP      | Tokyo        |
| iperf3 -c 89.187.160.1                                 |     -R      |   2x10   |     JP      | Tokyo        |
| iperf3 -c lg-jp-tyo.webhorizon.net                     |    -R,-6    |    10    |     JP      | Tokyo        |
| iperf3 -c 91.185.23.98                                 |     -R      |          |     KZ      | Aktau        |
| iperf3 -c iperf.myren.net.my -p 5201-5210              |     -R      |          |     MY      | Kuala Lumpur |
| iperf3 -c speedtest.sin1.sg.leaseweb.net -p 5201-5210  |    -R,-6    |    10    |     SG      | Singapore    |
| iperf3 -c 89.187.162.1                                 |     -R      |   2x10   |     SG      | Singapore    |
| iperf3 -c speedtest.singnet.com.sg -p 5201-5210        |     -R      |          |     SG      | Singapore    |
| iperf3 -c sgp.proof.ovh.net -p 5201-5210               |    -R,-6    |    1     |     SG      | Singapore    |
| iperf3 -c  202.29.80.9  -p 9200-9240                   |     -R      |          |     TH      | Phitsanulok  |
| iperf3 -c 58.64.45.56 -p 9200-9240                     |     -R      |          |     TH      | Phitsanulok  |
| iperf3 -c 156.146.52.1                                 |     -R      |   2x10   |     TR      | Istanbul     |
| iperf3 -c speedtest.uztelecom.uz -p 5200-5209          |    -R,-6    |    10    |     UZ      | Tashkent     |

### EUROPE

| **COMMAND**                                            | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE**         |
| :----------------------------------------------------- | :---------: | :------: | :---------: | :--------------- |
| iperf3 -c lg.vie.alwyzon.net -p 5202-5203              |     -R      |          |     AT      | Vienna           |
| iperf3 -c 185.180.12.40                                |     -R      |   2x10   |     AT      | Vienna           |
| iperf3 -c 207.211.214.65                               |     -R      |   2x10   |     BE      | Brussels         |
| iperf3 -c 37.19.203.1                                  |     -R      |   2x10   |     BG      | Sofia            |
| iperf3 -c speedtest.shinternet.ch -p 5200-5209         |    -R,-6    |    10    |     CH      | Schaffhausen     |
| iperf3 -c speedtest.init7.net                          |    -R,-6    |    20    |     CH      | Winterthur       |
| iperf3 -c speedtest.iway.ch                            |    -R,-6    |    10    |     CH      | Zürich           |
| iperf3 -c 89.187.165.1                                 |     -R      |   2x10   |     CH      | Zürich           |
| iperf3 -c rychlost.poda.cz                             |     -R      |          |     CZ      | Mikulov          |
| iperf3 -c 185.152.65.113                               |     -R      |   2x10   |     CZ      | Prague           |
| iperf3 -c a209.speedtest.wobcom.de                     |    -R,-6    |   2x25   |     DE      | Berlin           |
| iperf3 -c a110.speedtest.wobcom.de                     |    -R,-6    |   2x25   |     DE      | Berlin           |
| iperf3 -c a208.speedtest.wobcom.de                     |    -R,-6    |   2x25   |     DE      | Düsseldorf       |
| iperf3 -c 178.215.228.109 -p 9201-9240                 |     -R      |          |     DE      | Frankfurt        |
| iperf3 -c fra.speedtest.clouvider.net -p 5200-5209     |    -R,-6    |    10    |     DE      | Frankfurt        |
| iperf3 -c speedtest.ip-projects.de                     |    -R,-6    |    10    |     DE      | Frankfurt        |
| iperf3 -c speedtest.fra1.de.leaseweb.net -p 5201-5210  |    -R,-6    |    10    |     DE      | Frankfurt        |
| iperf3 -c spd-desrv.hostkey.com -p 5201                |     -R      |    10    |     DE      | Frankfurt        |
| iperf3 -c a210.speedtest.wobcom.de                     |    -R,-6    |   2x25   |     DE      | Frankfurt        |
| iperf3 -c a205.speedtest.wobcom.de                     |    -R,-6    |   2x25   |     DE      | Frankfurt        |
| iperf3 -c 185.102.219.93                               |     -R      |   2x10   |     DE      | Frankfurt        |
| iperf3 -c speedtest.studiofunk.de -p 5209              |    -R,-6    |          |     DE      | Hamburg          |
| iperf3 -c speedtest.wtnet.de -p 5200-5209              |    -R,-6    |    40    |     DE      | Norderstedt      |
| iperf3 -c speedtest.wobcom.de                          |    -R,-6    |   2x25   |     DE      | Wolfsburg        |
| iperf3 -c a400.speedtest.wobcom.de                     |    -R,-6    |   2x25   |     DE      | Wolfsburg        |
| iperf3 -c iperf.deic.dk                                |     -R      |    10    |     DK      | Copenhagen       |
| iperf3 -c speed.fiberby.dk -p 9201-9240                |    -R,-6    |    10    |     DK      | Copenhagen       |
| iperf3 -c speedtest.hiper.dk -p 5201-5203              |    -R,-6    |          |     DK      | Copenhagen       |
| iperf3 -c 121.127.45.65                                |     -R      |   2x10   |     DK      | Copenhagen       |
| iperf3 -c 185.93.3.50                                  |     -R      |   2x10   |     ES      | Madrid           |
| iperf3 -c speedtest-hki.netplaza.fi                    |     -R      |          |     FI      | Helsinki         |
| iperf3 -c spd-fisrv.hostkey.com -p 5201                |     -R      |    10    |     FI      | Helsinki         |
| iperf3 -c speedtest.cinia.fi                           |     -R      |          |     FI      | Oul              |
| iperf3 -c 138.199.14.66                                |     -R      |   2x10   |     FR      | Marseille        |
| iperf3 -c iperf.par2.as49434.net -p 9200-9240          |     -R      |    40    |     FR      | Paris            |
| iperf3 -c proof.ovh.net -p 5201-5210                   |    -R,-6    |    10    |     FR      | Paris            |
| iperf3 -c 185.93.2.193                                 |     -R      |   2x10   |     FR      | Paris            |
| iperf3 -c iperf3.moji.fr -p 5200-5240                  |    -R,-6    |   100    |     FR      | Paris            |
| iperf3 -c ping-90ms.online.net -p 5200-5209            |    -R,-6    |   100    |     FR      | Paris            |
| iperf3 -c iperf.online.net -p 5200-5209                |    -R,-6    |   100    |     FR      | Vienna           |
| iperf3 -c scaleway.testdebit.info -p 5200-5209         |    -R,-6    |    10    |     FR      | Vitry-sur-Seine  |
| iperf3 -c ping.online.net -p 5200-5209                 |    -R,-6    |   100    |     FR      | Vitry-sur-Seine  |
| iperf3 -c ping6.online.net -p 5200-5209                |    -R,-6    |   100    |     FR      | Vitry-sur-Seine  |
| iperf3 -c speedtest-london.its-tg.net                  |     -R      |          |     GB      | London           |
| iperf3 -c iperf.as42831.net -p 5300-5400               |     -R      |          |     GB      | London           |
| iperf3 -c speedtest.lon1.uk.leaseweb.net -p 5201-5210  |    -R,-6    |    10    |     GB      | London           |
| iperf3 -c speedtest.lon12.uk.leaseweb.net -p 5201-5210 |    -R,-6    |    10    |     GB      | London           |
| iperf3 -c lon.speedtest.clouvider.net -p 5200-5209     |    -R,-6    |    10    |     GB      | London           |
| iperf3 -c 169.150.252.2                                |     -R      |   2x10   |     GR      | Athens           |
| iperf3 -c 169.150.242.129                              |     -R      |   2x10   |     HR      | Zagreb           |
| iperf3 -c speedtest1.vodafone.hu                       |     -R      |    1     |     HU      | Budapest         |
| iperf3 -c spd-icsrv.hostkey.com -p 5201                |     -R      |    10    |     IC      | Reykjavik        |
| iperf3 -c 87.249.137.8                                 |     -R      |   2x10   |     IR      | Dublin           |
| iperf3 -c it1.speedtest.aruba.it                       |     -R      |          |     IT      | Arezzo           |
| iperf3 -c speed.itgate.net -p 5201-5202                |    -R,-6    |          |     IT      | Gerbido          |
| iperf3 -c 84.17.59.129                                 |     -R      |   2x10   |     IT      | Milan            |
| iperf3 -c 217.61.40.96                                 |     -R      |          |     IT      | Ponte San Pietro |
| iperf3 -c 80.92.72.3                                   |     -R      |          |     LU      | Bettembourg      |
| iperf3 -c speedtest.lu.buyvm.net                       |    -R,-6    |          |     LU      | Bissen           |
| iperf3 -c speedtest.ams1.nl.leaseweb.net -p 5201-5210  |    -R,-6    |    10    |     NL      | Amsterdam        |
| iperf3 -c speedtest.ams2.nl.leaseweb.net -p 5201-5210  |    -R,-6    |    10    |     NL      | Amsterdam        |
| iperf3 -c ams.speedtest.clouvider.net -p 5200-5209     |    -R,-6    |    10    |     NL      | Amsterdam        |
| iperf3 -c ping-ams1.online.net -p 5200-5209            |     -R      |    10    |     NL      | Amsterdam        |
| iperf3 -c a204.speedtest.wobcom.de                     |    -R,-6    |   2x25   |     NL      | Amsterdam        |
| iperf3 -c speedtest.ams1.novogara.net -p 5200-5209     |    -R,-6    |    20    |     NL      | Amsterdam        |
| iperf3 -c lg.ams-nl.terrahost.com -p 9201-9240         |    -R,-6    |          |     NL      | Amsterdam        |
| iperf3 -c 185.102.218.1                                |     -R      |   2x10   |     NL      | Amsterdam        |
| iperf3 -c speedtest.novoserve.com -p 5201-5206         |    -R,-6    |    40    |     NL      | Amsterdam        |
| iperf3 -c speedtest.nl3.mirhosting.net -p 5201-5209    |    -R,-6    |    40    |     NL      | Amsterdam        |
| iperf3 -c spt01.sdhd.hosting                           |     -R      |    10    |     NL      | Dronten          |
| iperf3 -c lg-drn.liteserver.nl -p 5200-5240            |     -R      |    1     |     NL      | Dronten          |
| iperf3 -c speedtest.nl1.mirhosting.net -p 5201-5209    |    -R,-6    |  2x 10   |     NL      | Dronten          |
| iperf3 -c iperf.worldstream.nl                         |    -R,-6    |    10    |     NL      | Naaldwijk        |
| iperf3 -c lg.terrahost.com -p 9200-9240                |    -R,-6    |    10    |     NO      | Sandefjord       |
| iperf3 -c speedtest.midiko.pl                          |     -R      |          |     PL      | Katowice         |
| iperf3 -c speedtest-w5-rnp.play.pl                     |     -R      |          |     PL      | Warsaw           |
| iperf3 -c 185.246.208.67                               |     -R      |   2x10   |     PL      | Warsaw           |
| iperf3 -c 109.61.94.65                                 |     -R      |   2x10   |     PT      | Lisbon           |
| iperf3 -c 95.95.252.87                                 |     -R      |          |     PT      | Lissabon         |
| iperf3 -c lisboa.speedtest.net.zon.pt -p 5201-5209     |    -R,-6    |    10    |     PT      | Lissabon         |
| iperf3 -c 185.102.217.170                              |     -R      |   2x10   |     RO      | Bucharest        |
| iperf3 -c speedtest.kamel.network -p 5201-5205         |    -R,-6    |    1     |     SE      | Kista            |
| iperf3 -c speedtest.ownit.se                           |     -R      |    1     |     SE      | Stockholm        |
| iperf3 -c speedtestv6.ownit.se                         |    -R,-6    |    1     |     SE      | Stockholm        |
| iperf3 -c 185.76.9.135                                 |     -R      |   2x10   |     SE      | Stockholm        |
| iperf3 -c se-speedt01.fre.nis.telia.net -p 5201-5210   |    -R,-6    |    1     |     SE      | Viken            |
| iperf3 -c 156.146.40.65                                |     -R      |   2x10   |     SK      | Bratislava       |
| iperf3 -c 37.19.218.65                                 |     -R      |   2x10   |     UA      | Kyiv             |
| iperf3 -c speedtest.solver.net.ua                      |     -R      |          |     UA      | Poltava          |
| iperf3 -c speedtest-london.its-tg.net                  |     -R      |          |     UK      | London           |
| iperf3 -c 185.59.221.51                                |     -R      |   2x10   |     UK      | London           |

:small_blue_diamond: speedtest.wobcom.de connects to the nearest *.speedtest.wobcom.de server.

### LATIN AMERICA
| **COMMAND**                                         | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE**   |
| :-------------------------------------------------- | :---------: | :------: | :---------: | :--------- |
| iperf3 -c speedtest.sao1.edgoo.net -p 9204-9240     |    -R,-6    |          |     BR      | São Paulo  |
| iperf3 -c 138.199.4.1                               |     -R      |   2x10   |     BR      | São Paulo  |
| iperf3 -c sp11.wom.cl                               |             |          |     CL      | Santiago   |
| iperf3 -c 79.127.209.1                              |     -R      |   2x10   |     CL      | Santiago   |
| iperf3 -c  speedtest-cncp.grupogtd.com -p 5201-5205 |    -R,-6    |    10    |     CL      | Valdivia   |
| iperf3 -c 169.150.228.129                           |     -R      |   2x10   |     CO      | Bogotá     |
| iperf3 -c 156.146.53.53                             |     -R      |   2x10   |     CR      | San Jose   |
| iperf3 -c speedtest.masnet.ec -p 5201-5209          |    -R,-6    |    1     |     EC      | Santa Ana  |
| iperf3 -c 121.127.43.65                             |     -R      |   2x10   |     MX      | Querétaro  |
| iperf3 -c  200.2.166.166 -p 5201-5213               |     -R      |          |     SR      | Paramaribo |

### NORTH AMERICA

| **COMMAND**                                            | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE**      |
| :----------------------------------------------------- | :---------: | :------: | :---------: | :------------ |
| iperf3 -c bhs.proof.ovh.ca -p 5201-5210                |    -R,-6    |    10    |     CA      | Beauharnois   |
| iperf3 -c speedtest-west.eastlink.ca                   |     -R      |    10    |     CA      | Chestermere   |
| iperf3 -c  speedtest.switch.ca                         |     -R      |    10    |     CA      | Edmonton      |
| iperf3 -c speedtest.mtl2.ca.leaseweb.net -p 5201-5210  |    -R,-6    |    10    |     CA      | Montreal      |
| iperf3 -c  as21723.goco.ca -p 9200-9240                |     -R      |          |     CA      | Montréal      |
| iperf3 -c 138.199.57.129                               |     -R      |   2x10   |     CA      | Toronto       |
| iperf3 -c speedtest-west.eastlink.ca -p 5201           |    -R,-6    |          |     CA      | Wetaskiwin    |
| iperf3 -c ash.speedtest.clouvider.net -p 5200-5209     |    -R,-6    |    10    |     US      | Ashburn       |
| iperf3 -c 37.19.206.20                                 |     -R      |   2x10   |     US      | Ashburn       |
| iperf3 -c atl.speedtest.clouvider.net -p 5200-5209     |    -R,-6    |    10    |     US      | Atlanta       |
| iperf3 -c 185.152.66.67                                |     -R      |   2x10   |     US      | Atlanta       |
| iperf3 -c 109.61.86.65                                 |     -R      |   2x10   |     US      | Boston        |
| iperf3 -c speedtest13.suddenlink.net                   |     -R      |    10    |     US      | Charleston    |
| iperf3 -c speedtest15.suddenlink.net                   |     -R      |    10    |     US      | Charleston    |
| iperf3 -c speedtest.chi11.us.leaseweb.net -p 5201-5210 |    -R,-6    |    10    |     US      | Chicago       |
| iperf3 -c 185.93.1.65                                  |     -R      |   2x10   |     US      | Chicago       |
| iperf3 -c speedtest.dal13.us.leaseweb.net -p 5201-5210 |    -R,-6    |    10    |     US      | Dallas        |
| iperf3 -c dal.speedtest.clouvider.net -p 5200-5209     |     -R      |    10    |     US      | Dallas        |
| iperf3 -c 89.187.164.1                                 |     -R      |   2x10   |     US      | Dallas        |
| iperf3 -c 84.17.63.68                                  |     -R      |   2x10   |     US      | Denver        |
| iperf3 -c 37.19.216.1                                  |     -R      |   2x10   |     US      | Houston       |
| iperf3 -c la.speedtest.clouvider.net -p 5200-5209      |     -R      |    10    |     US      | Los Angeles   |
| iperf3 -c speedtest.lax12.us.leaseweb.net -p 5201-5210 |    -R,-6    |    10    |     US      | Los Angeles   |
| iperf3 -c 185.152.67.2                                 |     -R      |   2x10   |     US      | Los Angeles   |
| iperf3 -c speedtest.tds.net                            |     -R      |          |     US      | Madison       |
| iperf3 -c speedtest.mia11.us.leaseweb.net -p 5201-5210 |    -R,-6    |    10    |     US      | Miami         |
| iperf3 -c 195.181.162.195                              |     -R      |   2x10   |     US      | Miami         |
| iperf3 -c spd-uswb.hostkey.com -p 5201-5202            |     -R      |    10    |     US      | New York      |
| iperf3 -c 185.59.223.8                                 |     -R      |   2x10   |     US      | New York      |
| iperf3 -c nyc.speedtest.clouvider.net -p 5200-5209     |     -R      |    10    |     US      | New York City |
| iperf3 -c speedtest.nyc1.us.leaseweb.net -p 5201-5210  |    -R,-6    |    10    |     US      | New York City |
| iperf3 -c speedtest.phx1.us.leaseweb.net -p 5201-5210  |    -R,-6    |    10    |     US      | Phoenix       |
| iperf3 -c speedtest.sfo12.us.leaseweb.net -p 5201-5210 |    -R,-6    |    10    |     US      | San Francisco |
| iperf3 -c speedtest.sea11.us.leaseweb.net -p 5201-5210 |    -R,-6    |    10    |     US      | Seattle       |
| iperf3 -c 84.17.41.11                                  |     -R      |   2x10   |     US      | Seattle       |
| iperf3 -c speedtest.wdc2.us.leaseweb.net -p 5201-5210  |    -R,-6    |    10    |     US      | Washington    |

### OCEANIA
| **COMMAND**                                            | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE**     |
| :----------------------------------------------------- | :---------: | :------: | :---------: | :----------- |
| iperf3 -c speedtest.optusnet.com.au -p 5201-5203       |     -R      |          |     AU      |              |
| iperf3 -c speed.per.swoop.com.au                       |     -R      |    10    |     AU      | Perth        |
| iperf3 -c speedtest.syd12.au.leaseweb.net -p 5201-5210 |    -R,-6    |    10    |     AU      | Sydney       |
| iperf3 -c 198.142.237.72                               |     -R      |          |     AU      | Sydney       |
| iperf3 -c 198.142.237.97                               |     -R      |          |     AU      | Sydney       |
| iperf3 -c techspeedtest.bla.optusnet.com.au            |     -R      |          |     AU      | Sydney       |
| iperf3 -c 143.244.63.144                               |     -R      |   2x10   |     AU      | Sydney       |
| iperf3 -c syd.proof.ovh.net -p 5201-5210               |    -R,-6    |    1     |     AU      | Sydney       |
| iperf3 -c akl.linetest.nz -p 5300-5309                 |     -R      |    10    |     NZ      | Auckland     |
| iperf3 -c  chch.linetest.nz -p 5300-5309               |     -R      |    10    |     NZ      | Christchurch |
| iperf3 -c 154.81.51.4                                  |     -R      |   2x10   |     PG      | Port Moresby |

## Export
| CONTINENT     | .CSV                                                          | NocoDB       |
| :------------ | :------------------------------------------------------------ | :----------- |
| AFRICA        | [AFRICA-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/87b6c8dc-6f9e-4c90-bb7e-ef1c1259fc48/rows/export/csv) | [Shared View](https://db.iperf3serverlist.net/dashboard/#/nc/view/87b6c8dc-6f9e-4c90-bb7e-ef1c1259fc48) |
| ASIA          | [ASIA-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/82110281-21c3-47ce-b96a-7d6bcecb51c3/rows/export/csv) | [Shared View](https://db.iperf3serverlist.net/dashboard/#/nc/view/82110281-21c3-47ce-b96a-7d6bcecb51c3) |
| EUROPE        | [EUROPE-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/3c231f8c-ea62-42ce-84a0-cf05af10720d/rows/export/csv) | [Shared View](https://db.iperf3serverlist.net/dashboard/#/nc/view/3c231f8c-ea62-42ce-84a0-cf05af10720d) |
| LATIN AMERICA | [LATIN AMERICA-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/fda8bba6-da07-48f9-a1ea-2f8d6195ba42/rows/export/csv) | [Shared View](https://db.iperf3serverlist.net/dashboard/#/nc/view/fda8bba6-da07-48f9-a1ea-2f8d6195ba42) |
| NORTH AMERICA | [NORTH AMERICA-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/23cf33ca-3e09-4487-ac57-3de09aae6e6b/rows/export/csv) | [Shared View](https://db.iperf3serverlist.net/dashboard/#/nc/view/23cf33ca-3e09-4487-ac57-3de09aae6e6b) |
| OCEANIA       | [OCEANIA-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/4606c864-71f8-4c53-9d55-cf9c38ddb0a5/rows/export/csv) | [Shared View](https://db.iperf3serverlist.net/dashboard/#/nc/view/4606c864-71f8-4c53-9d55-cf9c38ddb0a5) |
| ALL SERVERS   | [ALL SERVERS-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/e4c7de35-dd8f-42d3-82f8-0a855f937e10/rows/export/csv) | [Shared View](https://db.iperf3serverlist.net/dashboard/#/nc/view/e4c7de35-dd8f-42d3-82f8-0a855f937e10) |

## Contact
Contact me via e-mail - r0gger[at]iperf3serverlist.net
