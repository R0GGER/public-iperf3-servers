# Public iPerf3 Serverlist

<p align="center"><br/>
  <a href="https://iperf3serverlist.net" target="_blank"><img src="iperf3serverlist_256.png" width="150"></a><br/>  
  <b><a href="https://iperf3serverlist.net" target="_blank">iperf3serverlist.net</a></b><br/>
  <br/>
  <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-green.svg?color=0066ff&style=for-the-badge&label=License&logoColor=000000&labelColor=ececec" alt="License: MIT"></a> <br/>
   <a href="https://stand-with-ukraine.pp.ua"><img src="https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/badges/StandWithUkraineFlat.svg" alt="#StandWithUkraine" /></a>
<h3 align="center">A list of public iPERF3 servers to perform bandwidth and speedtests across different geographical regions.</h3>  
  </a>
</p>
<p align="center">
This project is sponsored and supported by <a href="https://cloud.hosthatch.com/a/772" target="_blank">HostHatch</a> and <a href="https://censys.com" target="_blank">Censys</a>
</p>

## Table of Contents

* [Documentation](https://github.com/R0GGER/public-iperf3-servers/blob/main/docs.md#iperf3)
  * [Installation](https://github.com/R0GGER/public-iperf3-servers/blob/main/docs.md#installation)
  * [Basic Usage](https://github.com/R0GGER/public-iperf3-servers/blob/main/docs.md#basic-usage)
  * [Test Scenarios & Protocol Differences](https://github.com/R0GGER/public-iperf3-servers/blob/main/docs.md#test-scenarios--protocol-differences)
  * [Advanced Usage & Tips](https://github.com/R0GGER/public-iperf3-servers/blob/main/docs.md#advanced-usage--tips)

* [Testing & Monitoring](https://github.com/R0GGER/public-iperf3-servers/blob/main/testing_process.md)
* [Servers per continent](#servers-per-continent)
* [Export to .CSV, .XLSX, JSON](#export)
* [Contact](#contact)

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
| **COMMAND** | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c 41.110.39.130 -p 5200-5201 | -R,-6 | 10 | DZ \| :algeria: | Algiers |
| iperf3 -c 213.158.175.240 | -R,-6 | 10 | EG \| :egypt: | Cairo |
| iperf3 -c 102.214.66.19 | -R,-6 | 2x10 | GN \| :guinea: | Accra |
| iperf3 -c 102.214.66.39 | -R,-6 | 2x10 | GN \| :guinea: | Accra |
| iperf3 -c 105.235.237.2 -p 5201-5209 | -R |  | GQ \| :equatorial_guinea: | Bata |
| iperf3 -c speedtestfl.telecom.mu -p 5201-5209 | -R |  | MU \| :mauritius: | Floreal |
| iperf3 -c speedtest.telecom.mu -p 5201-5209 | -R |  | MU \| :mauritius: | Port Louis |
| iperf3 -c 197.26.19.243 -p 9200-9240 | -R |  | TN \| :tunisia: | Tunis |
| iperf3 -c 41.226.22.119 -p 9202-9240 | -R |  | TN \| :tunisia: | Tunis |
| iperf3 -c 41.210.185.162 | -R,-6 | 2x10 | UG \| :uganda: | Kampala |
| iperf3 -c 169.150.238.161 | -R | 2x10 | ZA \| :south_africa: | Johannesburg |


### ASIA
| **COMMAND** | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c 84.17.57.129 | -R | 2x10 | HK \| :hong_kong: | Hong Kong |
| iperf3 -c speedtest.hkg12.hk.leaseweb.net -p 5201-5210 | -R,-6 | 10 | HK \| :hong_kong: | Hong Kong |
| iperf3 -c 103.185.255.183 -p 5201-5230 | -R |  | ID \| :indonesia: | Jakarta |
| iperf3 -c speedtest.myrepublic.net.id -p 9200-9240 | -R |  | ID \| :indonesia: | Jakarta |
| iperf3 -c speed.netfiber.net.il | -R | 1 | IL \| :israel: | Jerusalem |
| iperf3 -c speed.rimon.net.il | -R | 1 | IL \| :israel: | Jerusalem |
| iperf3 -c 169.150.202.193 | -R | 2x10 | IL \| :israel: | Tel Aviv |
| iperf3 -c forough.iperf3.ir -o 5201-5209 | -R | 10 | IR \| :iran: | Shiraz |
| iperf3 -c bamdad.iperf3.ir -p 5200-5209 | -R,-6 | 10 | IR \| :iran: | Teheran |
| iperf3 -c shahriar.iperf3.ir -p 5200-5209 | -R,-6 | 10 | IR \| :iran: | Teheran |
| iperf3 -c 89.187.160.1 | -R | 2x10 | JP \| :jp: | Tokyo |
| iperf3 -c speedtest.tyo11.jp.leaseweb.net -p 5201-5210 | -R,-6 | 10 | JP \| :jp: | Tokyo |
| iperf3 -c 91.185.23.98 -p 5201-5205 | -R |  | KZ \| :kazakhstan: | Aktau |
| iperf3 -c iperf.myren.net.my -p 5201-5210 | -R |  | MY \| :malaysia: | Kuala Lumpur |
| iperf3 -c 89.187.162.1 | -R | 2x10 | SG \| :singapore: | Singapore |
| iperf3 -c sgp.proof.ovh.net -p 5201-5210 | -R,-6 | 1 | SG \| :singapore: | Singapore |
| iperf3 -c speedtest.sin1.sg.leaseweb.net -p 5201-5210 | -R,-6 | 10 | SG \| :singapore: | Singapore |
| iperf3 -c speedtest.singnet.com.sg -p 5201-5210 | -R |  | SG \| :singapore: | Singapore |
| iperf3 -c 202.29.80.9 -p 9200-9240 | -R |  | TH \| :thailand: | Phitsanulok |
| iperf3 -c 58.64.45.56 -p 9200-9240 | -R |  | TH \| :thailand: | Phitsanulok |
| iperf3 -c 156.146.52.1 | -R | 2x10 | TR \| :tr: | Istanbul |
| iperf3 -c speedtest.uztelecom.uz -p 5200-5209 | -R,-6 | 10 | UZ \| :uzbekistan: | Tashkent |


### EUROPE
| **COMMAND** | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c 185.180.12.40 | -R | 2x10 | AT \| :austria: | Vienna |
| iperf3 -c lg.vie.alwyzon.net -p 5202-5203 | -R |  | AT \| :austria: | Vienna |
| iperf3 -c 207.211.214.65 | -R | 2x10 | BE \| :belgium: | Brussels |
| iperf3 -c 37.19.203.1 | -R | 2x10 | BG \| :bulgaria: | Sofia |
| iperf3 -c speedtest.shinternet.ch -p 5200-5209 | -R,-6 | 10 | CH \| :switzerland: | Schaffhausen |
| iperf3 -c speedtest.init7.net | -R,-6 | 20 | CH \| :switzerland: | Winterthur |
| iperf3 -c 89.187.165.1 | -R | 2x10 | CH \| :switzerland: | Zürich |
| iperf3 -c speedtest.iway.ch | -R,-6 | 10 | CH \| :switzerland: | Zürich |
| iperf3 -c rychlost.poda.cz -p 5203-5205 | -R |  | CZ \| :czech_republic: | Mikulov |
| iperf3 -c 185.152.65.113 | -R | 2x10 | CZ \| :czech_republic: | Prague |
| iperf3 -c a110.speedtest.wobcom.de | -R,-6 | 2x25 | DE \| :de: | Berlin |
| iperf3 -c a209.speedtest.wobcom.de | -R,-6 | 2x25 | DE \| :de: | Berlin |
| iperf3 -c a208.speedtest.wobcom.de | -R,-6 | 2x25 | DE \| :de: | Düsseldorf |
| iperf3 -c 178.215.228.109 -p 9201-9240 | -R |  | DE \| :de: | Frankfurt |
| iperf3 -c 185.102.219.93 | -R | 2x10 | DE \| :de: | Frankfurt |
| iperf3 -c a205.speedtest.wobcom.de | -R,-6 | 2x25 | DE \| :de: | Frankfurt |
| iperf3 -c a210.speedtest.wobcom.de | -R,-6 | 2x25 | DE \| :de: | Frankfurt |
| iperf3 -c fra.speedtest.clouvider.net -p 5200-5209 | -R,-6 | 10 | DE \| :de: | Frankfurt |
| iperf3 -c spd-desrv.hostkey.com -p 5201 | -R | 10 | DE \| :de: | Frankfurt |
| iperf3 -c speedtest.fra1.de.leaseweb.net -p 5201-5210 | -R,-6 | 10 | DE \| :de: | Frankfurt |
| iperf3 -c speedtest.ip-projects.de | -R,-6 | 10 | DE \| :de: | Frankfurt |
| iperf3 -c speedtest.wtnet.de -p 5200-5209 | -R,-6 | 40 | DE \| :de: | Norderstedt |
| iperf3 -c a400.speedtest.wobcom.de | -R,-6 | 2x25 | DE \| :de: | Wolfsburg |
| iperf3 -c speedtest.wobcom.de | -R,-6 | 2x25 | DE \| :de: | Wolfsburg |
| iperf3 -c 121.127.45.65 | -R | 2x10 | DK \| :denmark: | Copenhagen |
| iperf3 -c speedtest.hiper.dk -p 5201-5203 | -R,-6 |  | DK \| :denmark: | Copenhagen |
| iperf3 -c 185.93.3.50 -p 5200-5201 | -R | 2x10 | ES \| :es: | Madrid |
| iperf3 -c spd-fisrv.hostkey.com -p 5201 | -R | 10 | FI \| :finland: | Helsinki |
| iperf3 -c 138.199.14.66 | -R | 2x10 | FR \| :fr: | Marseille |
| iperf3 -c 185.93.2.193 | -R | 2x10 | FR \| :fr: | Paris |
| iperf3 -c iperf.online.net -p 5200-5209 | -R,-6 | 100 | FR \| :fr: | Paris |
| iperf3 -c iperf3.moji.fr -p 5200-5240 | -R,-6 | 100 | FR \| :fr: | Paris |
| iperf3 -c ping-90ms.online.net -p 5200-5209 | -R,-6 | 100 | FR \| :fr: | Paris |
| iperf3 -c proof.ovh.net -p 5201-5210 | -R,-6 | 10 | FR \| :fr: | Paris |
| iperf3 -c ping.online.net -p 5200-5209 | -R,-6 | 100 | FR \| :fr: | Vitry-sur-Seine |
| iperf3 -c scaleway.testdebit.info -p 9200-9240 | -R,-6 | 10 | FR \| :fr: | Vitry-sur-Seine |
| iperf3 -c 185.59.221.51 | -R | 2x10 | GB \| :gb: | London |
| iperf3 -c iperf.as42831.net -p 5300-5400 | -R |  | GB \| :gb: | London |
| iperf3 -c lon.speedtest.clouvider.net -p 5200-5209 | -R,-6 | 10 | GB \| :gb: | London |
| iperf3 -c speedtest.lon1.uk.leaseweb.net -p 5201-5210 | -R,-6 | 10 | GB \| :gb: | London |
| iperf3 -c speedtest.lon12.uk.leaseweb.net -p 5201-5210 | -R,-6 | 10 | GB \| :gb: | London |
| iperf3 -c 169.150.252.2 | -R | 2x10 | GR \| :greece: | Athens |
| iperf3 -c 169.150.242.129 | -R | 2x10 | HR \| :croatia: | Zagreb |
| iperf3 -c 87.249.137.8 | -R | 2x10 | IR \| :iran: | Dublin |
| iperf3 -c spd-icsrv.hostkey.com -p 5201 | -R | 10 | IS \| :iceland: | Reykjavik |
| iperf3 -c it1.speedtest.aruba.it | -R |  | IT \| :it: | Arezzo |
| iperf3 -c speed.itgate.net -p 5201-5202 | -R,-6 |  | IT \| :it: | Gerbido |
| iperf3 -c 84.17.59.129 | -R | 2x10 | IT \| :it: | Milan |
| iperf3 -c 217.61.40.96 | -R |  | IT \| :it: | Ponte San Pietro |
| iperf3 -c speedtest.lu.buyvm.net | -R,-6 |  | LU \| :luxembourg: | Bissen |
| iperf3 -c 185.102.218.1 | -R | 2x10 | NL \| :netherlands: | Amsterdam |
| iperf3 -c a204.speedtest.wobcom.de | -R,-6 | 2x25 | NL \| :netherlands: | Amsterdam |
| iperf3 -c ams.speedtest.clouvider.net -p 5200-5209 | -R,-6 | 10 | NL \| :netherlands: | Amsterdam |
| iperf3 -c iperf-ams-nl.eranium.net -p 5201-5210 | -R,-6 | 100 | NL \| :netherlands: | Amsterdam |
| iperf3 -c lg.ams-nl.terrahost.com -p 9201-9240 | -R,-6 |  | NL \| :netherlands: | Amsterdam |
| iperf3 -c ping-ams1.online.net -p 5200-5209 | -R | 10 | NL \| :netherlands: | Amsterdam |
| iperf3 -c speedtest.ams1.nl.leaseweb.net -p 5201-5210 | -R,-6 | 10 | NL \| :netherlands: | Amsterdam |
| iperf3 -c speedtest.ams1.novogara.net -p 5200-5209 | -R,-6 | 20 | NL \| :netherlands: | Amsterdam |
| iperf3 -c speedtest.ams2.nl.leaseweb.net -p 5201-5210 | -R,-6 | 10 | NL \| :netherlands: | Amsterdam |
| iperf3 -c speedtest.nl3.mirhosting.net -p 5201-5209 | -R,-6 | 40 | NL \| :netherlands: | Amsterdam |
| iperf3 -c lg-drn.liteserver.nl -p 5200-5240 | -R | 1 | NL \| :netherlands: | Dronten |
| iperf3 -c speedtest.nl1.mirhosting.net -p 5201-5209 | -R,-6 | 40 | NL \| :netherlands: | Dronten |
| iperf3 -c iperf.worldstream.nl | -R,-6 | 10 | NL \| :netherlands: | Naaldwijk |
| iperf3 -c lg.gigahost.no -p 9201-9240 | -R,-6 | 100 | NO \| :norway: | Sandefjord |
| iperf3 -c lg.terrahost.com -p 9200-9240 | -R,-6 | 10 | NO \| :norway: | Sandefjord |
| iperf3 -c 185.246.208.67 | -R | 2x10 | PL \| :poland: | Warsaw |
| iperf3 -c 109.61.94.65 | -R | 2x10 | PT \| :portugal: | Lisbon |
| iperf3 -c lisboa.speedtest.net.zon.pt -p 5201-5209 | -R,-6 | 10 | PT \| :portugal: | Lisbon |
| iperf3 -c porto.speedtest.net.zon.pt -p 5201-5209 | -R,-6 | 10 | PT \| :portugal: | Porto |
| iperf3 -c 185.102.217.170 | -R | 2x10 | RO \| :romania: | Bucharest |
| iperf3 -c speedtest1.sox.rs -p 9201-9240 | -R,-6 | 10 | RS \| :serbia: | Belgrade |
| iperf3 -c speedtest.kamel.network -p 5201-5205 | -R,-6 | 1 | SE \| :sweden: | Kista |
|  iperf3 -c speedtest.cityhost.se -p 5201 | -R,-6 | 100 | SE \| :sweden: | Stockholm |
| iperf3 -c 185.76.9.135 | -R | 2x10 | SE \| :sweden: | Stockholm |
| iperf3 -c speedtest.ownit.se | -R | 1 | SE \| :sweden: | Stockholm |
| iperf3 -c 156.146.40.65 | -R | 2x10 | SK \| :slovakia: | Bratislava |
| iperf3 -c 37.19.218.65 | -R | 2x10 | UA \| :ukraine: | Kyiv |
| iperf3 -c speedtest.solver.net.ua | -R |  | UA \| :ukraine: | Poltava |


### LATIN AMERICA
| **COMMAND** | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c 138.199.4.1 | -R | 2x10 | BR \| :brazil: | São Paulo |
| iperf3 -c speedtest.sao1.edgoo.net -p 9204-9240 | -R,-6 |  | BR \| :brazil: | São Paulo |
| iperf3 -c 79.127.209.1 | -R | 2x10 | CL \| :chile: | Santiago |
| iperf3 -c 152.204.128.194 -p 55200-55300 | -R | 10 | CO \| :colombia: | Bogotá |
| iperf3 -c 169.150.228.129 | -R | 2x10 | CO \| :colombia: | Bogotá |
| iperf3 -c 156.146.53.53 | -R | 2x10 | CR \| :costa_rica: | San Jose |
| iperf3 -c speedtest.masnet.ec -p 5201-5209 | -R,-6 | 1 | EC \| :ecuador: | Santa Ana |
| iperf3 -c 121.127.43.65 | -R | 2x10 | MX \| :mexico: | Querétaro |
| iperf3 -c 200.2.166.166 -p 5201-5213 | -R |  | SR \| :suriname: | Paramaribo |


### NORTH AMERICA
| **COMMAND** | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c bhs.proof.ovh.ca -p 5201-5210 | -R,-6 | 10 | CA \| :canada: | Beauharnois |
| iperf3 -c speedtest.mtl2.ca.leaseweb.net -p 5201-5210 | -R,-6 | 10 | CA \| :canada: | Montreal |
| iperf3 -c as21723.goco.ca -p 9200-9240 | -R |  | CA \| :canada: | Montréal |
| iperf3 -c 138.199.57.129 | -R | 2x10 | CA \| :canada: | Toronto |
| iperf3 -c 37.19.206.20 | -R | 2x10 | US \| :us: | Ashburn |
| iperf3 -c ash.speedtest.clouvider.net -p 5200-5209 | -R,-6 | 10 | US \| :us: | Ashburn |
| iperf3 -c 185.152.66.67 | -R | 2x10 | US \| :us: | Atlanta |
| iperf3 -c atl.speedtest.clouvider.net -p 5200-5209 | -R,-6 | 10 | US \| :us: | Atlanta |
| iperf3 -c 109.61.86.65 | -R | 2x10 | US \| :us: | Boston |
| iperf3 -c speedtest15.suddenlink.net | -R | 10 | US \| :us: | Charleston |
| iperf3 -c 185.93.1.65 | -R | 2x10 | US \| :us: | Chicago |
| iperf3 -c speedtest.chi11.us.leaseweb.net -p 5201-5210 | -R,-6 | 10 | US \| :us: | Chicago |
| iperf3 -c dal.speedtest.clouvider.net -p 5200-5209 | -R | 10 | US \| :us: | Dallas |
| iperf3 -c speedtest.dal13.us.leaseweb.net -p 5201-5210 | -R,-6 | 10 | US \| :us: | Dallas |
| iperf3 -c 84.17.63.68 | -R | 2x10 | US \| :us: | Denver |
| iperf3 -c 37.19.216.1 | -R | 2x10 | US \| :us: | Houston |
| iperf3 -c 185.152.67.2 | -R | 2x10 | US \| :us: | Los Angeles |
| iperf3 -c la.speedtest.clouvider.net -p 5200-5209 | -R | 10 | US \| :us: | Los Angeles |
| iperf3 -c speedtest.lax12.us.leaseweb.net -p 5201-5210 | -R,-6 | 10 | US \| :us: | Los Angeles |
| iperf3 -c 195.181.162.195 | -R | 2x10 | US \| :us: | Miami |
| iperf3 -c speedtest.mia11.us.leaseweb.net -p 5201-5210 | -R,-6 | 10 | US \| :us: | Miami |
| iperf3 -c 185.59.223.8 | -R | 2x10 | US \| :us: | New York |
| iperf3 -c spd-uswb.hostkey.com -p 5201-5202 | -R | 10 | US \| :us: | New York |
| iperf3 -c nyc.speedtest.clouvider.net -p 5200-5209 | -R | 10 | US \| :us: | New York City |
| iperf3 -c speedtest.nyc1.us.leaseweb.net -p 5201-5210 | -R,-6 | 10 | US \| :us: | New York City |
| iperf3 -c speedtest.phx1.us.leaseweb.net -p 5201-5210 | -R,-6 | 10 | US \| :us: | Phoenix |
| iperf3 -c speedtest.sfo12.us.leaseweb.net -p 5201-5210 | -R,-6 | 10 | US \| :us: | San Francisco |
| iperf3 -c 84.17.41.11 | -R | 2x10 | US \| :us: | Seattle |
| iperf3 -c speedtest.sea11.us.leaseweb.net -p 5201-5210 | -R,-6 | 10 | US \| :us: | Seattle |
| iperf3 -c speedtest.is.cc -p 5201-5209 | -R,-6 | 40 | US \| :us: | Secaucus |
| iperf3 -c speedtest.wdc2.us.leaseweb.net -p 5201-5210 | -R,-6 | 10 | US \| :us: | Washington |


### OCEANIA
| **COMMAND** | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c 143.244.63.144 | -R | 2x10 | AU \| :australia: | Sydney |
| iperf3 -c 198.142.237.72 -p 5202 | -R |  | AU \| :australia: | Sydney |
| iperf3 -c 198.142.237.97 -p 5202 | -R |  | AU \| :australia: | Sydney |
| iperf3 -c speedtest.syd12.au.leaseweb.net -p 5201-5210 | -R,-6 | 10 | AU \| :australia: | Sydney |
| iperf3 -c syd.proof.ovh.net -p 5201-5210 | -R,-6 | 1 | AU \| :australia: | Sydney |
| iperf3 -c techspeedtest.bla.optusnet.com.au -p 5202-5203 | -R |  | AU \| :australia: | Sydney |
| iperf3 -c akl.linetest.nz -p 5300-5309 | -R | 10 | NZ \| :new_zealand: | Auckland |
| iperf3 -c chch.linetest.nz -p 5300-5309 | -R | 10 | NZ \| :new_zealand: | Christchurch |
| iperf3 -c 154.81.51.4  | -R | 2x10 | PG \| :papua_new_guinea: | Port Moresby |




## Export
:bulb: ​More export options at [iperf3serverlist.net](https://iperf3serverlist.net/)

| CONTINENT (NocoDB) | .CSV                                                          | .XLSX  | .JSON |
| :------------ | :------------------------------------------------------------ | :------| -------|
| [AFRICA](https://db.iperf3serverlist.net/dashboard/#/nc/view/f4fd0f64-7dff-4416-8e3b-315b837b67d4) | [AFRICA-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/f4fd0f64-7dff-4416-8e3b-315b837b67d4/rows/export/csv) | | |
| [ASIA](https://db.iperf3serverlist.net/dashboard/#/nc/view/bce4c994-6598-4b00-b2cd-fc48503ad7ac) | [ASIA-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/bce4c994-6598-4b00-b2cd-fc48503ad7ac/rows/export/csv) | | |
| [EUROPE](https://db.iperf3serverlist.net/dashboard/#/nc/view/b111407c-43c4-48af-a828-301b698064a3) | [EUROPE-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/b111407c-43c4-48af-a828-301b698064a3/rows/export/csv) | | |
| [LATIN AMERICA](https://db.iperf3serverlist.net/dashboard/#/nc/view/bf1834c8-7894-43c5-be9e-e909fb998b26) | [LATIN AMERICA-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/bf1834c8-7894-43c5-be9e-e909fb998b26/rows/export/csv) | | |
| [NORTH AMERICA](https://db.iperf3serverlist.net/dashboard/#/nc/view/956847fb-43b7-4404-b048-440518fbc763) | [NORTH AMERICA-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/956847fb-43b7-4404-b048-440518fbc763/rows/export/csv) | | |
| [OCEANIA](https://db.iperf3serverlist.net/dashboard/#/nc/view/99ab6c30-f9ae-4f8a-afa2-2f81bddb107f) | [OCEANIA-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/99ab6c30-f9ae-4f8a-afa2-2f81bddb107f/rows/export/csv) | | |
| [ALL SERVERS](https://db.iperf3serverlist.net/dashboard/#/nc/view/3ea603e9-af3a-4e86-9db6-62e7edc254e4) | [ALL SERVERS-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/3ea603e9-af3a-4e86-9db6-62e7edc254e4/rows/export/csv) | [ALL SERVERS-export.xlsx](https://export.iperf3serverlist.net/xlsx.php) | [View](https://export.iperf3serverlist.net/json.php?action=view) \| [Download](https://export.iperf3serverlist.net/json.php?action=download) |

## Contact
Contact me via e-mail - r0gger[at]iperf3serverlist.net

