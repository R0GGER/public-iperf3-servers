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
This project is sponsored and supported by <a href="https://cloud.hosthatch.com/a/772" target="_blank">HostHatch</a> and <a href="https://censys.com" target="_blank">Censys</a>.
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
* [Apps](#apps)
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
| iperf3 -c 160.242.19.254 -p 9201-9240 | -R,-u |  | AO \| ![ao](https://flagcdn.com/16x12/ao.png) | Luanda |
| iperf3 -c 41.110.39.130 -p 5201 | -R,-u | 10 | DZ \| ![dz](https://flagcdn.com/16x12/dz.png) | Algiers |
| iperf3 -c 213.158.175.240 | -R,-u | 10 | EG \| ![eg](https://flagcdn.com/16x12/eg.png) | Cairo |
| iperf3 -c 102.214.66.19 | -R,-u | 2x10 | GH \| ![gh](https://flagcdn.com/16x12/gh.png) | Accra |
| iperf3 -c 102.214.66.39 | -R,-u | 2x10 | GH \| ![gh](https://flagcdn.com/16x12/gh.png) | Accra |
| iperf3 -c 212.60.92.134 -p 60001-60003 | -R |  | GM \| ![gm](https://flagcdn.com/16x12/gm.png) | Banjul |
| iperf3 -c 105.235.237.2 -p 5201-5209 | -R |  | GQ \| ![gq](https://flagcdn.com/16x12/gq.png) | Bata |
| iperf3 -c speedtestfl.telecom.mu -p 5201-5209 | -R,-u |  | MU \| ![mu](https://flagcdn.com/16x12/mu.png) | Floreal |
| iperf3 -c speedtest.telecom.mu -p 5201-5209 | -R,-u |  | MU \| ![mu](https://flagcdn.com/16x12/mu.png) | Port Louis |
| iperf3 -c 41.226.22.119 -p 9200-9240 | -R,-u |  | TN \| ![tn](https://flagcdn.com/16x12/tn.png) | Tunis |
| iperf3 -c 41.210.185.162 | -R,-u | 2x10 | UG \| ![ug](https://flagcdn.com/16x12/ug.png) | Kampala |
| iperf3 -c 169.150.238.161 | -R,-u | 2x10 | ZA \| ![za](https://flagcdn.com/16x12/za.png) | Johannesburg |


### ASIA
| **COMMAND** | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c 86.96.154.106 -p 7005-7013 | -R,-u |  | AE \| ![ae](https://flagcdn.com/16x12/ae.png) | Dubai |
| iperf3 -c 84.17.57.129 | -R,-u | 2x10 | HK \| ![hk](https://flagcdn.com/16x12/hk.png) | Hong Kong |
| iperf3 -c speedtest.hkg12.hk.leaseweb.net -p 5201-5210 | -R,-6 | 10 | HK \| ![hk](https://flagcdn.com/16x12/hk.png) | Hong Kong |
| iperf3 -c  iperf.scbd.net.id -p 5201 | -R,-6 | 1 | ID \| ![id](https://flagcdn.com/16x12/id.png) | Curug |
| iperf3 -c 103.185.255.183 -p 5201-5230 | -R,-u |  | ID \| ![id](https://flagcdn.com/16x12/id.png) | Jakarta |
| iperf3 -c speed.netfiber.net.il | -R,-u | 1 | IL \| ![il](https://flagcdn.com/16x12/il.png) | Jerusalem |
| iperf3 -c speed.rimon.net.il | -R,-6 | 1 | IL \| ![il](https://flagcdn.com/16x12/il.png) | Jerusalem |
| iperf3 -c 169.150.202.193 | -R,-u | 2x10 | IL \| ![il](https://flagcdn.com/16x12/il.png) | Tel Aviv |
| iperf3 -c 89.187.160.1 | -R,-u | 2x10 | JP \| ![jp](https://flagcdn.com/16x12/jp.png) | Tokyo |
| iperf3 -c speedtest.tyo11.jp.leaseweb.net -p 5201-5210 | -R,-6 | 10 | JP \| ![jp](https://flagcdn.com/16x12/jp.png) | Tokyo |
| iperf3 -c 89.187.162.1 | -R,-u | 2x10 | SG \| ![sg](https://flagcdn.com/16x12/sg.png) | Singapore |
| iperf3 -c sgp.proof.ovh.net -p 5201-5210 | -R,-6,-u | 1 | SG \| ![sg](https://flagcdn.com/16x12/sg.png) | Singapore |
| iperf3 -c speedtest.sin1.sg.leaseweb.net -p 5201-5210 | -R,-6 | 10 | SG \| ![sg](https://flagcdn.com/16x12/sg.png) | Singapore |
| iperf3 -c speedtest.singnet.com.sg -p 5201-5210 | -R |  | SG \| ![sg](https://flagcdn.com/16x12/sg.png) | Singapore |
| iperf3 -c 156.146.52.1 | -R,-u | 2x10 | TR \| ![tr](https://flagcdn.com/16x12/tr.png) | Istanbul |
| iperf3 -c speedtest.uztelecom.uz -p 5200-5209 | -R,-6,-u | 10 | UZ \| ![uz](https://flagcdn.com/16x12/uz.png) | Tashkent |


### EUROPE
| **COMMAND** | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c 185.180.12.40 | -R,-u | 2x10 | AT \| ![at](https://flagcdn.com/16x12/at.png) | Vienna |
| iperf3 -c lg.vie.alwyzon.net -p 5202-5203 | -R,-6 |  | AT \| ![at](https://flagcdn.com/16x12/at.png) | Vienna |
| iperf3 -c 207.211.214.65 | -R,-u | 2x10 | BE \| ![be](https://flagcdn.com/16x12/be.png) | Brussels |
| iperf3 -c 37.19.203.1 | -R,-u | 2x10 | BG \| ![bg](https://flagcdn.com/16x12/bg.png) | Sofia |
| iperf3 -c speedtest.shinternet.ch -p 5200-5209 | -R,-6,-u | 10 | CH \| ![ch](https://flagcdn.com/16x12/ch.png) | Schaffhausen |
| iperf3 -c speedtest.init7.net | -R,-6,-u | 20 | CH \| ![ch](https://flagcdn.com/16x12/ch.png) | Winterthur |
| iperf3 -c 89.187.165.1 | -R,-u | 2x10 | CH \| ![ch](https://flagcdn.com/16x12/ch.png) | Zürich |
| iperf3 -c speedtest.iway.ch | -R,-6,-u | 10 | CH \| ![ch](https://flagcdn.com/16x12/ch.png) | Zürich |
| iperf3 -c t5.cscs.ch -p 5201-5202 | -R,-6 | 100 | CH \| ![ch](https://flagcdn.com/16x12/ch.png) | Zürich |
| iperf3 -c 85.163.71.241 | -R,-u |  | CZ \| ![cz](https://flagcdn.com/16x12/cz.png) | Hrdlořezy |
| iperf3 -c 185.152.65.113 | -R,-u | 2x10 | CZ \| ![cz](https://flagcdn.com/16x12/cz.png) | Prague |
| iperf3 -c a110.speedtest.wobcom.de | -R,-6 | 2x25 | DE \| ![de](https://flagcdn.com/16x12/de.png) | Berlin |
| iperf3 -c a209.speedtest.wobcom.de | -R,-6 | 2x25 | DE \| ![de](https://flagcdn.com/16x12/de.png) | Berlin |
| iperf3 -c a208.speedtest.wobcom.de | -R,-6 | 2x25 | DE \| ![de](https://flagcdn.com/16x12/de.png) | Düsseldorf |
| iperf3 -c 178.215.228.109 -p 9204-9240 | -R,-u |  | DE \| ![de](https://flagcdn.com/16x12/de.png) | Frankfurt |
| iperf3 -c 185.102.219.93 | -R,-u | 2x10 | DE \| ![de](https://flagcdn.com/16x12/de.png) | Frankfurt |
| iperf3 -c a205.speedtest.wobcom.de | -R,-6 | 2x25 | DE \| ![de](https://flagcdn.com/16x12/de.png) | Frankfurt |
| iperf3 -c a210.speedtest.wobcom.de | -R,-6 | 2x25 | DE \| ![de](https://flagcdn.com/16x12/de.png) | Frankfurt |
| iperf3 -c fra.speedtest.clouvider.net -p 5200-5209 | -R,-6,-u | 10 | DE \| ![de](https://flagcdn.com/16x12/de.png) | Frankfurt |
| iperf3 -c spd-desrv.hostkey.com -p 5201-5209 | -R | 10 | DE \| ![de](https://flagcdn.com/16x12/de.png) | Frankfurt |
| iperf3 -c speedtest.fra1.de.leaseweb.net -p 5201-5210 | -R,-6 | 10 | DE \| ![de](https://flagcdn.com/16x12/de.png) | Frankfurt |
| iperf3 -c speedtest.ip-projects.de | -R,-6,-u | 10 | DE \| ![de](https://flagcdn.com/16x12/de.png) | Frankfurt |
| iperf3 -c speedtest.wtnet.de -p 5200-5209 | -R,-6,-u | 40 | DE \| ![de](https://flagcdn.com/16x12/de.png) | Norderstedt |
| iperf3 -c a400.speedtest.wobcom.de | -R,-6 | 2x25 | DE \| ![de](https://flagcdn.com/16x12/de.png) | Wolfsburg |
| iperf3 -c speedtest.wobcom.de | -R,-6 | 2x25 | DE \| ![de](https://flagcdn.com/16x12/de.png) | Wolfsburg |
| iperf3 -c 121.127.45.65 | -R | 2x10 | DK \| ![dk](https://flagcdn.com/16x12/dk.png) | Copenhagen |
| iperf3 -c speed1.fiberby.dk -p 9201-9240 | -R,-6,-u | 25 | DK \| ![dk](https://flagcdn.com/16x12/dk.png) | Copenhagen |
| iperf3 -c speed2.fiberby.dk -p 9201-9240 | -R,-6,-u | 25 | DK \| ![dk](https://flagcdn.com/16x12/dk.png) | Copenhagen |
| iperf3 -c speedtest.hiper.dk -p 5201-5205 | -R,-6,-u |  | DK \| ![dk](https://flagcdn.com/16x12/dk.png) | Copenhagen |
| iperf3 -c 185.93.3.50 -p 5201 | -R,-u | 2x10 | ES \| ![es](https://flagcdn.com/16x12/es.png) | Madrid |
| iperf3 -c spd-fisrv.hostkey.com -p 5201-5209 | -R | 10 | FI \| ![fi](https://flagcdn.com/16x12/fi.png) | Helsinki |
| iperf3 -c 138.199.14.66 | -R,-u | 2x10 | FR \| ![fr](https://flagcdn.com/16x12/fr.png) | Marseille |
| iperf3 -c 185.93.2.193 | -R,-u | 2x10 | FR \| ![fr](https://flagcdn.com/16x12/fr.png) | Paris |
| iperf3 -c iperf.online.net -p 5200-5209 | -R,-6,-u | 100 | FR \| ![fr](https://flagcdn.com/16x12/fr.png) | Paris |
| iperf3 -c iperf3.moji.fr -p 5200-5240 | -R,-6 | 100 | FR \| ![fr](https://flagcdn.com/16x12/fr.png) | Paris |
| iperf3 -c ping-90ms.online.net -p 5200-5209 | -R | 100 | FR \| ![fr](https://flagcdn.com/16x12/fr.png) | Paris |
| iperf3 -c ping6-90ms.online.net -p 5200-5209 | -R,-6 | 100 | FR \| ![fr](https://flagcdn.com/16x12/fr.png) | Paris |
| iperf3 -c ping6.online.net -p 5200-5209 | -R,-6,-u | 100 | FR \| ![fr](https://flagcdn.com/16x12/fr.png) | Paris |
| iperf3 -c ping.online.net -p 5200-5209 | -R,-u | 100 | FR \| ![fr](https://flagcdn.com/16x12/fr.png) | Vitry-sur-Seine |
| iperf3 -c scaleway.testdebit.info -p 9200-9240 | -R,-6 | 10 | FR \| ![fr](https://flagcdn.com/16x12/fr.png) | Vitry-sur-Seine |
| iperf3 -c 185.59.221.51 | -R,-u | 2x10 | GB \| ![gb](https://flagcdn.com/16x12/gb.png) | London |
| iperf3 -c iperf.as42831.net -p 5300-5400 | -R,-6,-u |  | GB \| ![gb](https://flagcdn.com/16x12/gb.png) | London |
| iperf3 -c lon.speedtest.clouvider.net -p 5200-5208 | -R,-6 | 10 | GB \| ![gb](https://flagcdn.com/16x12/gb.png) | London |
| iperf3 -c speedtest.lon1.uk.leaseweb.net -p 5201-5210 | -R,-6 | 10 | GB \| ![gb](https://flagcdn.com/16x12/gb.png) | London |
| iperf3 -c speedtest.lon12.uk.leaseweb.net -p 5201-5210 | -R,-6 | 10 | GB \| ![gb](https://flagcdn.com/16x12/gb.png) | London |
| iperf3 -c speedtest2.lightningfibre.net.uk -p 4000-4007 | -R,-6,-u | 10 | GB \| ![gb](https://flagcdn.com/16x12/gb.png) | London |
| iperf3 -c 169.150.252.2 | -R,-u | 2x10 | GR \| ![gr](https://flagcdn.com/16x12/gr.png) | Athens |
| iperf3 -c 169.150.242.129 | -R,-u | 2x10 | HR \| ![hr](https://flagcdn.com/16x12/hr.png) | Zagreb |
| iperf3 -c 87.249.137.8 | -R,-u | 2x10 | IE \| ![ie](https://flagcdn.com/16x12/ie.png) | Dublin |
| iperf3 -c spd-icsrv.hostkey.com -p 5201 | -R,-6 | 10 | IS \| ![is](https://flagcdn.com/16x12/is.png) | Reykjavik |
| iperf3 -c it1.speedtest.aruba.it | -R,-u |  | IT \| ![it](https://flagcdn.com/16x12/it.png) | Arezzo |
| iperf3 -c 84.17.59.129 | -R,-u | 2x10 | IT \| ![it](https://flagcdn.com/16x12/it.png) | Milan |
| iperf3 -c 217.61.40.96 | -R |  | IT \| ![it](https://flagcdn.com/16x12/it.png) | Ponte San Pietro |
| iperf3 -c speedtest.lu.buyvm.net | -R,-6,-u |  | LU \| ![lu](https://flagcdn.com/16x12/lu.png) | Bissen |
| iperf3 -c 185.102.218.1 | -R,-u | 2x10 | NL \| ![nl](https://flagcdn.com/16x12/nl.png) | Amsterdam |
| iperf3 -c a204.speedtest.wobcom.de | -R,-6 | 2x25 | NL \| ![nl](https://flagcdn.com/16x12/nl.png) | Amsterdam |
| iperf3 -c ams.speedtest.clouvider.net -p 5200-5209 | -R,-6,-u | 10 | NL \| ![nl](https://flagcdn.com/16x12/nl.png) | Amsterdam |
| iperf3 -c iperf-ams-nl.eranium.net -p 5201-5210 | -R,-6,-u | 100 | NL \| ![nl](https://flagcdn.com/16x12/nl.png) | Amsterdam |
| iperf3 -c lg.ams-nl.terrahost.com -p 9206-9240 | -R,-6,-u |  | NL \| ![nl](https://flagcdn.com/16x12/nl.png) | Amsterdam |
| iperf3 -c ping-ams1.online.net -p 5200-5209 | -R,-u | 10 | NL \| ![nl](https://flagcdn.com/16x12/nl.png) | Amsterdam |
| iperf3 -c speedtest.ams1.nl.leaseweb.net -p 5201-5210 | -R,-6 | 10 | NL \| ![nl](https://flagcdn.com/16x12/nl.png) | Amsterdam |
| iperf3 -c speedtest.ams1.novogara.net -p 5200-5209 | -R,-6,-u | 20 | NL \| ![nl](https://flagcdn.com/16x12/nl.png) | Amsterdam |
| iperf3 -c speedtest.ams2.nl.leaseweb.net -p 5201-5210 | -R,-6 | 10 | NL \| ![nl](https://flagcdn.com/16x12/nl.png) | Amsterdam |
| iperf3 -c speedtest.netone.nl -p 5201 | -R,-6,-u | 10 | NL \| ![nl](https://flagcdn.com/16x12/nl.png) | Amsterdam |
| iperf3 -c lg.gigahost.no -p 9201-9240 | -R,-u | 100 | NO \| ![no](https://flagcdn.com/16x12/no.png) | Sandefjord |
| iperf3 -c lg.terrahost.com -p 9200-9240 | -R,-6,-u | 10 | NO \| ![no](https://flagcdn.com/16x12/no.png) | Sandefjord |
| iperf3 -c 185.246.208.67 | -R,-u | 2x10 | PL \| ![pl](https://flagcdn.com/16x12/pl.png) | Warsaw |
| iperf3 -c 109.61.94.65 | -R,-u | 2x10 | PT \| ![pt](https://flagcdn.com/16x12/pt.png) | Lisbon |
| iperf3 -c lisboa.speedtest.net.zon.pt -p 5201-5209 | -R,-6,-u | 10 | PT \| ![pt](https://flagcdn.com/16x12/pt.png) | Lisbon |
| iperf3 -c porto.speedtest.net.zon.pt -p 5201-5209 | -R,-6,-u | 10 | PT \| ![pt](https://flagcdn.com/16x12/pt.png) | Porto |
| iperf3 -c 185.102.217.170 | -R,-u | 2x10 | RO \| ![ro](https://flagcdn.com/16x12/ro.png) | Bucharest |
| iperf3 -c speedtest1.sox.rs -p 9201-9240 | -R,-6,-u | 10 | RS \| ![rs](https://flagcdn.com/16x12/rs.png) | Belgrade |
| iperf3 -c speedtest.kamel.network -p 5201-5205 | -R,-6 | 1 | SE \| ![se](https://flagcdn.com/16x12/se.png) | Kista |
| iperf3 -c 185.76.9.135 | -R,-u | 2x10 | SE \| ![se](https://flagcdn.com/16x12/se.png) | Stockholm |
| iperf3 -c speedtest.keff.org -p 9201-9240 | -R,-6,-u |  | SE \| ![se](https://flagcdn.com/16x12/se.png) | Stockholm |
| iperf3 -c 156.146.40.65 | -R,-u | 2x10 | SK \| ![sk](https://flagcdn.com/16x12/sk.png) | Bratislava |
| iperf3 -c 37.19.218.65 | -R,-u | 2x10 | UA \| ![ua](https://flagcdn.com/16x12/ua.png) | Kyiv |


### LATIN AMERICA
| **COMMAND** | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c 138.199.4.1 | -R,-u | 2x10 | BR \| ![br](https://flagcdn.com/16x12/br.png) | São Paulo |
| iperf3 -c speedtest.sao1.edgoo.net -p 9206-9240 | -R,-6,-u |  | BR \| ![br](https://flagcdn.com/16x12/br.png) | São Paulo |
| iperf3 -c 79.127.209.1 | -R,-u | 2x10 | CL \| ![cl](https://flagcdn.com/16x12/cl.png) | Santiago |
| iperf3 -c 152.204.128.194 -p 55200-55300 | -R,-u | 10 | CO \| ![co](https://flagcdn.com/16x12/co.png) | Bogotá |
| iperf3 -c 169.150.228.129 | -R,-u | 2x10 | CO \| ![co](https://flagcdn.com/16x12/co.png) | Bogotá |
| iperf3 -c 170.254.229.178 -p 5201-5209 | -R,-u |  | CO \| ![co](https://flagcdn.com/16x12/co.png) | Cartago |
| iperf3 -c 156.146.53.53 | -R,-u | 2x10 | CR \| ![cr](https://flagcdn.com/16x12/cr.png) | San Jose |
| iperf3 -c speedtest.masnet.ec -p 5201-5209 | -R,-6 | 1 | EC \| ![ec](https://flagcdn.com/16x12/ec.png) | Santa Ana |
| iperf3 -c speedtest1.flowjamaica.com -p 5505-5520 | -R,-u | 1 | JM \| ![jm](https://flagcdn.com/16x12/jm.png) | Portmore |
| iperf3 -c 121.127.43.65 | -R,-u | 2x10 | MX \| ![mx](https://flagcdn.com/16x12/mx.png) | Querétaro |
| iperf3 -c speedtest1.cwpanama.net -p 5505-5510 | -R,-u | 1 | PA \| ![pa](https://flagcdn.com/16x12/pa.png) | Colón |
| iperf3 -c speedtest6.cwpanama.net -p 5505-5510 | -R,-u | 1 | PA \| ![pa](https://flagcdn.com/16x12/pa.png) | Panamá |


### NORTH AMERICA
| **COMMAND** | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c speedtest.mtl2.ca.leaseweb.net -p 5201-5210 | -R,-6 | 10 | CA \| ![ca](https://flagcdn.com/16x12/ca.png) | Montreal |
| iperf3 -c as21723.goco.ca -p 9200-9240 | -R,-u |  | CA \| ![ca](https://flagcdn.com/16x12/ca.png) | Montréal |
| iperf3 -c 138.199.57.129 | -R,-u | 2x10 | CA \| ![ca](https://flagcdn.com/16x12/ca.png) | Toronto |
| iperf3 -c 37.19.206.20 | -R,-u | 2x10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Ashburn |
| iperf3 -c ash.speedtest.clouvider.net -p 5200-5209 | -R,-6,-u | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Ashburn |
| iperf3 -c 185.152.66.67 | -R,-u | 2x10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Atlanta |
| iperf3 -c atl.speedtest.clouvider.net -p 5200-5209 | -R,-6,-u | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Atlanta |
| iperf3 -c 109.61.86.65 | -R,-u | 2x10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Boston |
| iperf3 -c speedtest15.suddenlink.net | -R,-u | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Charleston |
| iperf3 -c 185.93.1.65 | -R,-u | 2x10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Chicago |
| iperf3 -c speedtest.chi11.us.leaseweb.net -p 5201-5210 | -R,-6 | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Chicago |
| iperf3 -c 89.187.164.1 | -R | 2x10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Dallas |
| iperf3 -c dal.speedtest.clouvider.net -p 5200-5209 | -R,-6,-u | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Dallas |
| iperf3 -c speedtest.dal13.us.leaseweb.net -p 5201-5210 | -R,-6 | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Dallas |
| iperf3 -c 37.19.216.1 | -R,-u | 2x10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Houston |
| iperf3 -c 185.152.67.2 | -R,-u | 2x10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Los Angeles |
| iperf3 -c la.speedtest.clouvider.net -p 5200-5209 | -R,-6,-u | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Los Angeles |
| iperf3 -c speedtest.lax12.us.leaseweb.net -p 5201-5210 | -R,-6 | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Los Angeles |
| iperf3 -c 195.181.162.195 | -R,-u | 2x10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Miami |
| iperf3 -c speedtest.mia11.us.leaseweb.net -p 5201-5210 | -R,-6 | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Miami |
| iperf3 -c 185.59.223.8 | -R,-u | 2x10 | US \| ![us](https://flagcdn.com/16x12/us.png) | New York |
| iperf3 -c spd-uswb.hostkey.com -p 5205 | -R | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | New York |
| iperf3 -c nyc.speedtest.clouvider.net -p 5201-5209 | -R,-6,-u | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | New York City |
| iperf3 -c speedtest.nyc1.us.leaseweb.net -p 5201-5210 | -R,-6,-u | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | New York City |
| iperf3 -c speedtest.phx1.us.leaseweb.net -p 5201-5210 | -R,-6 | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Phoenix |
| iperf3 -c speedtest.sfo12.us.leaseweb.net -p 5201-5210 | -R,-6 | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | San Francisco |
| iperf3 -c 84.17.41.11 | -R | 2x10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Seattle |
| iperf3 -c speedtest.sea11.us.leaseweb.net -p 5201-5210 | -R,-6 | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Seattle |
| iperf3 -c speedtest.wdc2.us.leaseweb.net -p 5201-5210 | -R,-6 | 10 | US \| ![us](https://flagcdn.com/16x12/us.png) | Washington |


### OCEANIA
| **COMMAND** | **OPTIONS** | **GB/S** | **COUNTRY** | **SITE** |
|:------------|:-----------:|:--------:|:-----------:|:---------|
| iperf3 -c speedtest2.comvergence.com.au -p 5200-5209 | -R,-u | 1 | AU \| ![au](https://flagcdn.com/16x12/au.png) | Melbourne |
| iperf3 -c 143.244.63.144 | -R,-u | 2x10 | AU \| ![au](https://flagcdn.com/16x12/au.png) | Sydney |
| iperf3 -c speedtest.syd12.au.leaseweb.net -p 5201-5210 | -R,-6 | 10 | AU \| ![au](https://flagcdn.com/16x12/au.png) | Sydney |
| iperf3 -c syd.proof.ovh.net -p 5201-5210 | -R,-6,-u | 1 | AU \| ![au](https://flagcdn.com/16x12/au.png) | Sydney |
| iperf3 -c akl.linetest.nz -p 5300-5309 | -R,-6 | 10 | NZ \| ![nz](https://flagcdn.com/16x12/nz.png) | Auckland |
| iperf3 -c chch.linetest.nz -p 5300-5309 | -R,-6 | 10 | NZ \| ![nz](https://flagcdn.com/16x12/nz.png) | Christchurch |
| iperf3 -c  103.146.200.98  | -R,-u |  | PG \| ![pg](https://flagcdn.com/16x12/pg.png) | Port Moresby  |
| iperf3 -c 154.81.51.4  | -R,-u | 2x10 | PG \| ![pg](https://flagcdn.com/16x12/pg.png) | Port Moresby |

## Export

| CONTINENT (NocoDB)                                           | .CSV                                                         | .XLSX                                                        | .JSON                                                        |
| :----------------------------------------------------------- | :----------------------------------------------------------- | :----------------------------------------------------------- | ------------------------------------------------------------ |
| [AFRICA](https://db.iperf3serverlist.net/dashboard/#/nc/view/f4fd0f64-7dff-4416-8e3b-315b837b67d4) | [AFRICA-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/f4fd0f64-7dff-4416-8e3b-315b837b67d4/rows/export/csv) | [AFRICA-export.xlsx](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/f4fd0f64-7dff-4416-8e3b-315b837b67d4/rows/export/excel) |                                                              |
| [ASIA](https://db.iperf3serverlist.net/dashboard/#/nc/view/bce4c994-6598-4b00-b2cd-fc48503ad7ac) | [ASIA-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/bce4c994-6598-4b00-b2cd-fc48503ad7ac/rows/export/csv) | [ASIA-export.xlsx](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/bce4c994-6598-4b00-b2cd-fc48503ad7ac/rows/export/excel) |                                                              |
| [EUROPE](https://db.iperf3serverlist.net/dashboard/#/nc/view/b111407c-43c4-48af-a828-301b698064a3) | [EUROPE-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/b111407c-43c4-48af-a828-301b698064a3/rows/export/csv) | [EUROPE-export.xlsx](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/b111407c-43c4-48af-a828-301b698064a3/rows/export/excel) |                                                              |
| [LATIN AMERICA](https://db.iperf3serverlist.net/dashboard/#/nc/view/bf1834c8-7894-43c5-be9e-e909fb998b26) | [LATIN AMERICA-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/bf1834c8-7894-43c5-be9e-e909fb998b26/rows/export/csv) | [LATIN AMERICA-export.xlsx](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/bf1834c8-7894-43c5-be9e-e909fb998b26/rows/export/excel) |                                                              |
| [NORTH AMERICA](https://db.iperf3serverlist.net/dashboard/#/nc/view/956847fb-43b7-4404-b048-440518fbc763) | [NORTH AMERICA-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/956847fb-43b7-4404-b048-440518fbc763/rows/export/csv) | [NORTH AMERICA-export.xlsx](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/956847fb-43b7-4404-b048-440518fbc763/rows/export/excel) |                                                              |
| [OCEANIA](https://db.iperf3serverlist.net/dashboard/#/nc/view/99ab6c30-f9ae-4f8a-afa2-2f81bddb107f) | [OCEANIA-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/99ab6c30-f9ae-4f8a-afa2-2f81bddb107f/rows/export/csv) | [OCEANIA-export.xlsx](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/99ab6c30-f9ae-4f8a-afa2-2f81bddb107f/rows/export/excel) |                                                              |
| [ALL SERVERS](https://db.iperf3serverlist.net/dashboard/#/nc/view/3ea603e9-af3a-4e86-9db6-62e7edc254e4) | [ALL SERVERS-export.csv](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/3ea603e9-af3a-4e86-9db6-62e7edc254e4/rows/export/csv)<br />[ALL SERVERS](https://export.iperf3serverlist.net/listed_iperf3_servers.csv) (parsed) | [ALL SERVERS-export.xlsx](https://db.iperf3serverlist.net/api/v1/db/public/shared-view/3ea603e9-af3a-4e86-9db6-62e7edc254e4/rows/export/excel) | [ALL SERVERS](https://export.iperf3serverlist.net/unparsed_iperf3_servers.json) (unparsed)<br />[ALL SERVERS](https://export.iperf3serverlist.net/listed_iperf3_servers.json) (parsed) |

:arrows_counterclockwise: ​**CSV & JSON GENERATOR**: https://export.iperf3serverlist.net

## Apps

*   [Dockerized Find & Test](https://github.com/R0GGER/dockerized-find-and-test) - This project packages the `findtest.sh` script into a Docker container, providing a simple web interface to find and test public iPerf3 servers. `Docker` `PHP`
*   [iPERF3 Map](https://github.com/R0GGER/iPERF3-MAP) - Visualizes iPerf3 servers on a global map using Leaflet.js, allowing you to initiate speed tests directly from the map markers. `Python` `Docker`
*   [iPERF3 Speedtest](https://github.com/R0GGER/iperf3-speedtest) - A simple Python tool and web app to measure your internet speed using public iperf3 servers. `Python`
*   [iperf3-tui](https://github.com/dmdmdm/iperf3-tui) - Draw a moving speed test graph in your terminal `Rust`
*   [iPerf3-WebUI](https://github.com/MaddyDev-glitch/iperf3-webui) - A modern, lightweight, web-based iPerf3 GUI built with Python 3 and Flask. `Python` `Docker`

## Contact
Contact me via e-mail - r0gger[at]iperf3serverlist.net

