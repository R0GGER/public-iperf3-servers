# Public iPerf3 Serverlist

<p align="center"><br/>
  <a href="https://iperf3serverlist.net" target="_blank"><img src="iperf3serverlist_256.png" width="150"></a><br/>  
  <b><a href="https://iperf3serverlist.net" target="_blank">iperf3serverlist.net</a></b><br/>
  <br/>
  <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-green.svg?color=0066ff&style=for-the-badge&label=License&logoColor=000000&labelColor=ececec" alt="License: MIT"></a> <br>
   <a href="https://stand-with-ukraine.pp.ua"><img src="https://raw.githubusercontent.com/vshymanskyy/StandWithUkraine/main/badges/StandWithUkraineFlat.svg" alt="#StandWithUkraine" /></a>
<h3 align="center">A list of public iPERF3 servers to perform bandwidth and speedtests across different geographical regions.</h3> 
  <p align="center">
  <a href="https://up.iperf3serverlist.net"><img src="https://30d-uptime.iperf3serverlist.net/badge.svg?v=2" alt="Uptime"></a>
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
* [Export to .JSON, .CSV, .XLSX](#export)
* [Apps](#apps)
* [Links](#links)
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
| **COMMAND** | **OPTIONS** | **GB/S** | **CONTINENT** | **COUNTRY** | **SITE** |
|:------------|:-----------:|:--------:|:-------------:|:-----------:|:---------|
| iperf3 -c 160.242.19.254 -p 9205-9240 | -R, -u |  | Africa | AO \| ![ao](https://flagcdn.com/16x12/ao.png) | Luanda |
| iperf3 -c 41.110.39.130 -p 5201 | -R, -u | 10 | Africa | DZ \| ![dz](https://flagcdn.com/16x12/dz.png) | Algiers |
| iperf3 -c 213.158.175.240 | -R, -u | 10 | Africa | EG \| ![eg](https://flagcdn.com/16x12/eg.png) | Cairo |
| iperf3 -c 102.214.66.19 | -R, -u | 2x10 | Africa | GH \| ![gh](https://flagcdn.com/16x12/gh.png) | Accra |
| iperf3 -c 102.214.66.39 | -R, -u | 2x10 | Africa | GH \| ![gh](https://flagcdn.com/16x12/gh.png) | Accra |
| iperf3 -c 212.60.92.134 -p 60001-60003 | -R |  | Africa | GM \| ![gm](https://flagcdn.com/16x12/gm.png) | Banjul |
| iperf3 -c 105.235.237.2 -p 5201-5209 | -R |  | Africa | GQ \| ![gq](https://flagcdn.com/16x12/gq.png) | Bata |
| iperf3 -c gw1.malabo.guineanet.net -p 5201-5209 | -R |  | Africa | GQ \| ![gq](https://flagcdn.com/16x12/gq.png) | Bata |
| iperf3 -c speed.mymanga.pro -p 9202-9240 | -R |  | Africa | KE \| ![ke](https://flagcdn.com/16x12/ke.png) | Nairobi |
| iperf3 -c 197.227.12.18 -p 5201-5209 | -R |  | Africa | MU \| ![mu](https://flagcdn.com/16x12/mu.png) | Floreal |
| iperf3 -c speedtestfl.telecom.mu -p 5201-5209 | -R, -u |  | Africa | MU \| ![mu](https://flagcdn.com/16x12/mu.png) | Floreal |
| iperf3 -c 41.226.22.119 -p 9201-9240 | -R, -u |  | Africa | TN \| ![tn](https://flagcdn.com/16x12/tn.png) | Tunis |
| iperf3 -c 41.210.185.162 | -R, -u | 2x10 | Africa | UG \| ![ug](https://flagcdn.com/16x12/ug.png) | Kampala |
| iperf3 -c 69.48.239.124 -p 30003-30009 | -R | 10 | Africa | ZA \| ![za](https://flagcdn.com/16x12/za.png) | Johannesburg |


### ASIA
| **COMMAND** | **OPTIONS** | **GB/S** | **CONTINENT** | **COUNTRY** | **SITE** |
|:------------|:-----------:|:--------:|:-------------:|:-----------:|:---------|
| iperf3 -c 23.249.55.42 -p 30001-30009 | -R | 10 | Asia | AE \| ![ae](https://flagcdn.com/16x12/ae.png) | Dubai |
| iperf3 -c 69.48.238.200 -p 30001-30009 | -R | 10 | Asia | AE \| ![ae](https://flagcdn.com/16x12/ae.png) | Dubai |
| iperf3 -c 23.249.58.14 -p 30000-30009 | -R | 10 | Asia | HK \| ![hk](https://flagcdn.com/16x12/hk.png) | Hong Kong |
| iperf3 -c 84.17.57.129 | -R, -u | 2x10 | Asia | HK \| ![hk](https://flagcdn.com/16x12/hk.png) | Hong Kong |
| iperf3 -c speedtest.hkg12.hk.leaseweb.net -p 5201-5210 | -R, -6 | 10 | Asia | HK \| ![hk](https://flagcdn.com/16x12/hk.png) | Hong Kong |
| iperf3 -c  iperf.scbd.net.id -p 5201-5209 | -R, -6 | 1 | Asia | ID \| ![id](https://flagcdn.com/16x12/id.png) | Curug |
| iperf3 -c speedtest.tangerang2.myrepublic.net.id -p 9200-9240 | -R, -u |  | Asia | ID \| ![id](https://flagcdn.com/16x12/id.png) | Kediri |
| iperf3 -c speed.netfiber.net.il | -R, -u | 1 | Asia | IL \| ![il](https://flagcdn.com/16x12/il.png) | Jerusalem |
| iperf3 -c speed.rimon.net.il | -R, -6 | 1 | Asia | IL \| ![il](https://flagcdn.com/16x12/il.png) | Jerusalem |
| iperf3 -c 169.150.202.193 | -R, -u | 2x10 | Asia | IL \| ![il](https://flagcdn.com/16x12/il.png) | Tel Aviv |
| iperf3 -c 23.249.61.122 -p 30001-30009 | -R | 10 | Asia | IN \| ![in](https://flagcdn.com/16x12/in.png) | Bangalore |
| iperf3 -c 49.205.75.2 -p 5008-5020 | -R, -u |  | Asia | IN \| ![in](https://flagcdn.com/16x12/in.png) | Bengaluru |
| iperf3 -c 69.48.236.198 -p 30001-30009 | -R | 10 | Asia | IN \| ![in](https://flagcdn.com/16x12/in.png) | Pune |
| iperf3 -c 23.249.60.154 -p 30001-30009 | -R | 10 | Asia | JP \| ![jp](https://flagcdn.com/16x12/jp.png) | Komagome |
| iperf3 -c 66.35.31.81 -p 30001-30009 | -R | 10 | Asia | JP \| ![jp](https://flagcdn.com/16x12/jp.png) | Tokyo |
| iperf3 -c 89.187.160.1 | -R, -u | 2x10 | Asia | JP \| ![jp](https://flagcdn.com/16x12/jp.png) | Tokyo |
| iperf3 -c speedtest.tyo11.jp.leaseweb.net -p 5201-5210 | -R, -6 | 10 | Asia | JP \| ![jp](https://flagcdn.com/16x12/jp.png) | Tokyo |
| iperf3 -c coverage1.mobicom.mn -p 5201-5202 | -R, -u |  | Asia | MN \| ![mn](https://flagcdn.com/16x12/mn.png) | Ulaanbaatar |
| iperf3 -c 89.187.162.1 | -R, -u | 2x10 | Asia | SG \| ![sg](https://flagcdn.com/16x12/sg.png) | Singapore |
| iperf3 -c 96.45.38.22 -p 30001-30009 | -R | 10 | Asia | SG \| ![sg](https://flagcdn.com/16x12/sg.png) | Singapore |
| iperf3 -c sgp.proof.ovh.net -p 5201-5210 | -R, -6, -u | 1 | Asia | SG \| ![sg](https://flagcdn.com/16x12/sg.png) | Singapore |
| iperf3 -c speedtest.sin1.sg.leaseweb.net -p 5201-5210 | -R, -6 | 10 | Asia | SG \| ![sg](https://flagcdn.com/16x12/sg.png) | Singapore |
| iperf3 -c iperf.pendc.com -p 5201-5209 | -R, -6 | 10 | Asia | TR \| ![tr](https://flagcdn.com/16x12/tr.png) | Bursa |
| iperf3 -c 156.146.52.1 | -R, -u | 2x10 | Asia | TR \| ![tr](https://flagcdn.com/16x12/tr.png) | Istanbul |
| iperf3 -c 69.48.237.66 -p 30001-30009 | -R | 10 | Asia | TR \| ![tr](https://flagcdn.com/16x12/tr.png) | Istanbul |
| iperf3 -c speedtest.uztelecom.uz -p 5200-5209 | -R, -6, -u | 10 | Asia | UZ \| ![uz](https://flagcdn.com/16x12/uz.png) | Tashkent |


### EUROPE
| **COMMAND** | **OPTIONS** | **GB/S** | **CONTINENT** | **COUNTRY** | **SITE** |
|:------------|:-----------:|:--------:|:-------------:|:-----------:|:---------|
| iperf3 -c 185.180.12.40 | -R, -u | 2x10 | Europe | AT \| ![at](https://flagcdn.com/16x12/at.png) | Vienna |
| iperf3 -c iperf3-vie-at.alwyzon.net -p 5201-5210 | -R, -6, -u | 2x100 | Europe | AT \| ![at](https://flagcdn.com/16x12/at.png) | Vienna |
| iperf3 -c 207.211.214.65 | -R, -u | 2x10 | Europe | BE \| ![be](https://flagcdn.com/16x12/be.png) | Brussels |
| iperf3 -c 185.3.160.57 -p 5201-5240 | -R |  | Europe | BE \| ![be](https://flagcdn.com/16x12/be.png) | Liège |
| iperf3 -c 37.19.203.1 | -R, -u | 2x10 | Europe | BG \| ![bg](https://flagcdn.com/16x12/bg.png) | Sofia |
| iperf3 -c speedtest.shinternet.ch -p 5200-5209 | -R, -6, -u | 10 | Europe | CH \| ![ch](https://flagcdn.com/16x12/ch.png) | Schaffhausen |
| iperf3 -c speedtest.init7.net -p 5201-5204 | -R, -6, -u | 20 | Europe | CH \| ![ch](https://flagcdn.com/16x12/ch.png) | Winterthur |
| iperf3 -c 89.187.165.1 | -R, -u | 2x10 | Europe | CH \| ![ch](https://flagcdn.com/16x12/ch.png) | Zürich |
| iperf3 -c speedtest.iway.ch | -R, -6, -u | 10 | Europe | CH \| ![ch](https://flagcdn.com/16x12/ch.png) | Zürich |
| iperf3 -c t5.cscs.ch -p 5201-5203 | -R, -6 | 100 | Europe | CH \| ![ch](https://flagcdn.com/16x12/ch.png) | Zürich |
| iperf3 -c 185.152.65.113 | -R, -u | 2x10 | Europe | CZ \| ![cz](https://flagcdn.com/16x12/cz.png) | Prague |
| iperf3 -c a110.speedtest.wobcom.de | -R, -6 | 2x25 | Europe | DE \| ![de](https://flagcdn.com/16x12/de.png) | Berlin |
| iperf3 -c a209.speedtest.wobcom.de | -R, -6 | 2x25 | Europe | DE \| ![de](https://flagcdn.com/16x12/de.png) | Berlin |
| iperf3 -c a208.speedtest.wobcom.de | -R, -6 | 2x25 | Europe | DE \| ![de](https://flagcdn.com/16x12/de.png) | Düsseldorf |
| iperf3 -c 178.215.228.109 -p 9203-9240 | -R, -u |  | Europe | DE \| ![de](https://flagcdn.com/16x12/de.png) | Frankfurt |
| iperf3 -c 185.102.219.93 | -R, -u | 2x10 | Europe | DE \| ![de](https://flagcdn.com/16x12/de.png) | Frankfurt |
| iperf3 -c 96.45.39.38 -p 30001-30009 | -R | 10 | Europe | DE \| ![de](https://flagcdn.com/16x12/de.png) | Frankfurt |
| iperf3 -c a205.speedtest.wobcom.de | -R, -6 | 2x25 | Europe | DE \| ![de](https://flagcdn.com/16x12/de.png) | Frankfurt |
| iperf3 -c a210.speedtest.wobcom.de | -R, -6 | 2x25 | Europe | DE \| ![de](https://flagcdn.com/16x12/de.png) | Frankfurt |
| iperf3 -c fra.speedtest.clouvider.net -p 5200-5209 | -R, -6, -u | 10 | Europe | DE \| ![de](https://flagcdn.com/16x12/de.png) | Frankfurt |
| iperf3 -c spd-desrv.hostkey.com -p 5201-5209 | -R | 10 | Europe | DE \| ![de](https://flagcdn.com/16x12/de.png) | Frankfurt |
| iperf3 -c speedtest.fra1.de.leaseweb.net -p 5201-5210 | -R, -6 | 10 | Europe | DE \| ![de](https://flagcdn.com/16x12/de.png) | Frankfurt |
| iperf3 -c speedtest.ip-projects.de | -R, -6, -u | 10 | Europe | DE \| ![de](https://flagcdn.com/16x12/de.png) | Frankfurt |
| iperf3 -c speedtest.level66.services -p 5201-5205 | -R, -6, -u | 10 | Europe | DE \| ![de](https://flagcdn.com/16x12/de.png) | Frankfurt |
| iperf3 -c speedtest.wtnet.de -p 5200-5209 | -R, -6, -u | 40 | Europe | DE \| ![de](https://flagcdn.com/16x12/de.png) | Norderstedt |
| iperf3 -c a400.speedtest.wobcom.de | -R, -6 | 2x25 | Europe | DE \| ![de](https://flagcdn.com/16x12/de.png) | Wolfsburg |
| iperf3 -c speedtest.wobcom.de | -R, -6 | 2x25 | Europe | DE \| ![de](https://flagcdn.com/16x12/de.png) | Wolfsburg |
| iperf3 -c speed1.fiberby.dk -p 9201-9240 | -R, -6, -u | 25 | Europe | DK \| ![dk](https://flagcdn.com/16x12/dk.png) | Copenhagen |
| iperf3 -c speed2.fiberby.dk -p 9201-9240 | -R, -6, -u | 25 | Europe | DK \| ![dk](https://flagcdn.com/16x12/dk.png) | Copenhagen |
| iperf3 -c speedtest.hiper.dk -p 5201-5205 | -R, -6, -u |  | Europe | DK \| ![dk](https://flagcdn.com/16x12/dk.png) | Copenhagen |
| iperf3 -c bwtest.linxtelecom.com -p 5201-5209 | -R, -6 | 1 | Europe | EE \| ![ee](https://flagcdn.com/16x12/ee.png) | Tallinn |
| iperf3 -c 148.230.45.213 -p 30001-30009 | -R | 10 | Europe | ES \| ![es](https://flagcdn.com/16x12/es.png) | Madrid |
| iperf3 -c 185.93.3.50 -p 5201 | -R, -u | 2x10 | Europe | ES \| ![es](https://flagcdn.com/16x12/es.png) | Madrid |
| iperf3 -c spd-fisrv.hostkey.com -p 5201-5209 | -R | 10 | Europe | FI \| ![fi](https://flagcdn.com/16x12/fi.png) | Helsinki |
| iperf3 -c speedtest.milkywan.fr -p 9200-9240 |  | 40 | Europe | FR \| ![fr](https://flagcdn.com/16x12/fr.png) | Croissy-Beaubourg |
| iperf3 -c 138.199.14.66 | -R, -u | 2x10 | Europe | FR \| ![fr](https://flagcdn.com/16x12/fr.png) | Marseille |
| iperf3 -c 185.93.2.193 | -R, -u | 2x10 | Europe | FR \| ![fr](https://flagcdn.com/16x12/fr.png) | Paris |
| iperf3 -c 96.45.42.156 -p 30001-30009 | -R | 10 | Europe | FR \| ![fr](https://flagcdn.com/16x12/fr.png) | Paris |
| iperf3 -c iperf.online.net -p 5200-5209 | -R, -6, -u | 100 | Europe | FR \| ![fr](https://flagcdn.com/16x12/fr.png) | Paris |
| iperf3 -c iperf3.moji.fr -p 5200-5240 | -R, -6 | 100 | Europe | FR \| ![fr](https://flagcdn.com/16x12/fr.png) | Paris |
| iperf3 -c ping-90ms.online.net -p 5200-5209 | -R | 100 | Europe | FR \| ![fr](https://flagcdn.com/16x12/fr.png) | Paris |
| iperf3 -c 96.45.41.167 -p 30001-30009 | -R | 10 | Europe | FR \| ![fr](https://flagcdn.com/16x12/fr.png) | Valbonne |
| iperf3 -c ping.online.net -p 5200-5209 | -R, -u | 100 | Europe | FR \| ![fr](https://flagcdn.com/16x12/fr.png) | Vitry-sur-Seine |
| iperf3 -c speedtestb.quickline.co.uk -p 5201-5250 | -R | 10 | Europe | GB \| ![gb](https://flagcdn.com/16x12/gb.png) | Doncaster |
| iperf3 -c 185.59.221.51 | -R, -u | 2x10 | Europe | GB \| ![gb](https://flagcdn.com/16x12/gb.png) | London |
| iperf3 -c 96.45.40.45 -p 30001-30009 | -R | 10 | Europe | GB \| ![gb](https://flagcdn.com/16x12/gb.png) | London |
| iperf3 -c iperf.as42831.net -p 5300-5400 | -R, -6, -u |  | Europe | GB \| ![gb](https://flagcdn.com/16x12/gb.png) | London |
| iperf3 -c lon.speedtest.clouvider.net -p 5200-5208 | -R, -6 | 10 | Europe | GB \| ![gb](https://flagcdn.com/16x12/gb.png) | London |
| iperf3 -c speedtest.lon1.uk.leaseweb.net -p 5202-5210 | -R, -6 | 10 | Europe | GB \| ![gb](https://flagcdn.com/16x12/gb.png) | London |
| iperf3 -c speedtest.lon12.uk.leaseweb.net -p 5201-5210 | -R, -6 | 10 | Europe | GB \| ![gb](https://flagcdn.com/16x12/gb.png) | London |
| iperf3 -c speedtest2.lightningfibre.net.uk -p 4000-4007 | -R, -6, -u | 10 | Europe | GB \| ![gb](https://flagcdn.com/16x12/gb.png) | London |
| iperf3 -c speedtest.rapidswitch.com -p 5201-5209 | -R | 1 | Europe | GB \| ![gb](https://flagcdn.com/16x12/gb.png) | Maidenhead |
| iperf3 -c man.speedtest.clouvider.net -p 5200-5209 | -R, -6 | 10 | Europe | GB \| ![gb](https://flagcdn.com/16x12/gb.png) | Manchester |
| iperf3 -c 169.150.252.2 | -R, -u | 2x10 | Europe | GR \| ![gr](https://flagcdn.com/16x12/gr.png) | Athens |
| iperf3 -c 169.150.242.129 | -R, -u | 2x10 | Europe | HR \| ![hr](https://flagcdn.com/16x12/hr.png) | Zagreb |
| iperf3 -c 87.249.137.8 | -R, -u | 2x10 | Europe | IE \| ![ie](https://flagcdn.com/16x12/ie.png) | Dublin |
| iperf3 -c spd-icsrv.hostkey.com -p 5201-5209 | -R, -6 | 10 | Europe | IS \| ![is](https://flagcdn.com/16x12/is.png) | Reykjavik |
| iperf3 -c it1.speedtest.aruba.it | -R, -u |  | Europe | IT \| ![it](https://flagcdn.com/16x12/it.png) | Arezzo |
| iperf3 -c 84.17.59.129 | -R, -u | 2x10 | Europe | IT \| ![it](https://flagcdn.com/16x12/it.png) | Milan |
| iperf3 -c 217.61.40.96 | -R |  | Europe | IT \| ![it](https://flagcdn.com/16x12/it.png) | Ponte San Pietro |
| iperf3 -c speed-cb.dimensione.com -p 5201-5209 | -R, -6 | 10 | Europe | IT \| ![it](https://flagcdn.com/16x12/it.png) | Rome |
| iperf3 -c speedtestlondon.telecom.mu -p 5201-5209 | -R |  | Europe | MU \| ![mu](https://flagcdn.com/16x12/mu.png) | London |
| iperf3 -c 185.102.218.1 | -R, -u | 2x10 | Europe | NL \| ![nl](https://flagcdn.com/16x12/nl.png) | Amsterdam |
| iperf3 -c a204.speedtest.wobcom.de | -R, -6 | 2x25 | Europe | NL \| ![nl](https://flagcdn.com/16x12/nl.png) | Amsterdam |
| iperf3 -c ams.speedtest.clouvider.net -p 5200-5209 | -R, -6, -u | 10 | Europe | NL \| ![nl](https://flagcdn.com/16x12/nl.png) | Amsterdam |
| iperf3 -c iperf-ams-nl.eranium.net -p 5201-5210 | -R, -6, -u | 100 | Europe | NL \| ![nl](https://flagcdn.com/16x12/nl.png) | Amsterdam |
| iperf3 -c lg.ams-nl.gigahost.no -p 9201-9240 | -R, -6, -u | 100 | Europe | NL \| ![nl](https://flagcdn.com/16x12/nl.png) | Amsterdam |
| iperf3 -c ping-ams1.online.net -p 5201-5209 | -R, -u | 10 | Europe | NL \| ![nl](https://flagcdn.com/16x12/nl.png) | Amsterdam |
| iperf3 -c speedtest.ams1.nl.leaseweb.net -p 5201-5210 | -R, -6 | 10 | Europe | NL \| ![nl](https://flagcdn.com/16x12/nl.png) | Amsterdam |
| iperf3 -c speedtest.ams2.nl.leaseweb.net -p 5201-5210 | -R, -6 | 10 | Europe | NL \| ![nl](https://flagcdn.com/16x12/nl.png) | Amsterdam |
| iperf3 -c speedtest.netone.nl -p 5201 | -R, -6, -u | 10 | Europe | NL \| ![nl](https://flagcdn.com/16x12/nl.png) | Amsterdam |
| iperf3 -c nl.speed.vps1.net -p 5201-5210 | -R |  | Europe | NL \| ![nl](https://flagcdn.com/16x12/nl.png) | Dronten |
| iperf3 -c speedtest.nl1.mirhosting.net -p 5201-5210 | -R, -6 | 20 | Europe | NL \| ![nl](https://flagcdn.com/16x12/nl.png) | Dronten |
| iperf3 -c iperf1.surfwireless.nl -p 5201-5220 | -R, -6 |  | Europe | NL \| ![nl](https://flagcdn.com/16x12/nl.png) | Lelystad |
| iperf3 -c iperf.worldstream.nl -p 5201-5205 | -R | 10 | Europe | NL \| ![nl](https://flagcdn.com/16x12/nl.png) | Naaldwijk |
| iperf3 -c lg.gigahost.no -p 9201-9240 | -R, -u, -6 | 100 | Europe | NO \| ![no](https://flagcdn.com/16x12/no.png) | Sandefjord |
| iperf3 -c speedsrv.multinet24.pl -p 5301-5310 | -R | 1 | Europe | PL \| ![pl](https://flagcdn.com/16x12/pl.png) | Debica |
| iperf3 -c 185.246.208.67 | -R, -u | 2x10 | Europe | PL \| ![pl](https://flagcdn.com/16x12/pl.png) | Warsaw |
| iperf3 -c 109.61.94.65 | -R, -u | 2x10 | Europe | PT \| ![pt](https://flagcdn.com/16x12/pt.png) | Lisbon |
| iperf3 -c lisboa.speedtest.net.zon.pt -p 5201-5209 | -R, -6, -u | 10 | Europe | PT \| ![pt](https://flagcdn.com/16x12/pt.png) | Lisbon |
| iperf3 -c porto.speedtest.net.zon.pt -p 5201-5209 | -R, -6, -u | 10 | Europe | PT \| ![pt](https://flagcdn.com/16x12/pt.png) | Porto |
| iperf3 -c 185.102.217.170 | -R, -u | 2x10 | Europe | RO \| ![ro](https://flagcdn.com/16x12/ro.png) | Bucharest |
| iperf3 -c speedtest1.sox.rs -p 9202-9240 | -R, -6 | 10 | Europe | RS \| ![rs](https://flagcdn.com/16x12/rs.png) | Belgrade |
| iperf3 -c iperf.fegis.nu -p 5201-5207 | -R | 10 | Europe | SE \| ![se](https://flagcdn.com/16x12/se.png) | Alvsjo |
| iperf3 -c speedtest.kamel.network -p 5201-5205 | -R, -6 | 1 | Europe | SE \| ![se](https://flagcdn.com/16x12/se.png) | Kista |
| iperf3 -c 185.76.9.135 | -R, -u | 2x10 | Europe | SE \| ![se](https://flagcdn.com/16x12/se.png) | Stockholm |
| iperf3 -c 156.146.40.65 | -R, -u | 2x10 | Europe | SK \| ![sk](https://flagcdn.com/16x12/sk.png) | Bratislava |
| iperf3 -c 37.19.218.65 | -R, -u | 2x10 | Europe | UA \| ![ua](https://flagcdn.com/16x12/ua.png) | Kyiv |
| iperf3 -c speed.cosmonova.net -p 5201-5209 | -R | 40 | Europe | UA \| ![ua](https://flagcdn.com/16x12/ua.png) | Kyiv |


### LATIN AMERICA
| **COMMAND** | **OPTIONS** | **GB/S** | **CONTINENT** | **COUNTRY** | **SITE** |
|:------------|:-----------:|:--------:|:-------------:|:-----------:|:---------|
| iperf3 -c 148.230.60.200 -p 30001-30009 | -R | 10 | Latin America | BR \| ![br](https://flagcdn.com/16x12/br.png) | Sao Paulo |
| iperf3 -c 138.199.4.1 | -R, -u | 2x10 | Latin America | BR \| ![br](https://flagcdn.com/16x12/br.png) | São Paulo |
| iperf3 -c 79.127.209.1 | -R, -u | 2x10 | Latin America | CL \| ![cl](https://flagcdn.com/16x12/cl.png) | Santiago |
| iperf3 -c 156.146.53.53 | -R, -u | 2x10 | Latin America | CR \| ![cr](https://flagcdn.com/16x12/cr.png) | San Jose |
| iperf3 -c speedtest.masnet.ec -p 5201-5209 | -R, -6 | 1 | Latin America | EC \| ![ec](https://flagcdn.com/16x12/ec.png) | Santa Ana |
| iperf3 -c speedtest1.flowjamaica.com -p 5506-5520 | -R, -u | 1 | Latin America | JM \| ![jm](https://flagcdn.com/16x12/jm.png) | Portmore |
| iperf3 -c 121.127.43.65 | -R, -u | 2x10 | Latin America | MX \| ![mx](https://flagcdn.com/16x12/mx.png) | Querétaro |
| iperf3 -c speedtest1.cwpanama.net -p 5505-5509 | -R, -u | 1 | Latin America | PA \| ![pa](https://flagcdn.com/16x12/pa.png) | Colón |
| iperf3 -c speedtest6.cwpanama.net -p 5505-5509 | -R, -u | 1 | Latin America | PA \| ![pa](https://flagcdn.com/16x12/pa.png) | Panamá |


### NORTH AMERICA
| **COMMAND** | **OPTIONS** | **GB/S** | **CONTINENT** | **COUNTRY** | **SITE** |
|:------------|:-----------:|:--------:|:-------------:|:-----------:|:---------|
| iperf3 -c speedtest.goco.ca -p 9203-9240 | -R | 10 | North America | CA \| ![ca](https://flagcdn.com/16x12/ca.png) | Montreal |
| iperf3 -c speedtest.mtl2.ca.leaseweb.net -p 5201-5210 | -R, -6 | 10 | North America | CA \| ![ca](https://flagcdn.com/16x12/ca.png) | Montreal |
| iperf3 -c 173.243.131.29 -p 30001-30009 | -R | 10 | North America | CA \| ![ca](https://flagcdn.com/16x12/ca.png) | Ottawa |
| iperf3 -c 138.199.57.129 | -R, -u | 2x10 | North America | CA \| ![ca](https://flagcdn.com/16x12/ca.png) | Toronto |
| iperf3 -c 96.45.43.6 -p 30001-30009 | -R | 10 | North America | CA \| ![ca](https://flagcdn.com/16x12/ca.png) | Toronto |
| iperf3 -c 66.35.30.9 -p 30001-30009 | -R | 10 | North America | CA \| ![ca](https://flagcdn.com/16x12/ca.png) | Vancouver |
| iperf3 -c speed.couch.ca -p 15201-15210 | -R | 1 | North America | CA \| ![ca](https://flagcdn.com/16x12/ca.png) | Victoria |
| iperf3 -c yyc-speedtest.xplore.ca -p 8070-8099 | -R, -6 |  | North America | CA \| ![ca](https://flagcdn.com/16x12/ca.png) | Woodstock |
| iperf3 -c 37.19.206.20 | -R, -u | 2x10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | Ashburn |
| iperf3 -c 66.35.22.79 -p 30001-30009 | -R | 10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | Ashburn |
| iperf3 -c ash.speedtest.clouvider.net -p 5200-5209 | -R, -6, -u | 10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | Ashburn |
| iperf3 -c 185.152.66.67 | -R, -u | 2x10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | Atlanta |
| iperf3 -c atl.speedtest.clouvider.net -p 5200-5209 | -R, -6, -u | 10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | Atlanta |
| iperf3 -c 109.61.86.65 | -R, -u | 2x10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | Boston |
| iperf3 -c 185.93.1.65 | -R, -u | 2x10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | Chicago |
| iperf3 -c chi.speedtest.clouvider.net -p 5200-5209 | -R, -6 | 10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | Chicago |
| iperf3 -c speedtest.chi11.us.leaseweb.net -p 5201-5210 | -R, -6 | 10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | Chicago |
| iperf3 -c 66.35.27.207 -p 30001-30009 | -R | 10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | Dallas |
| iperf3 -c 89.187.164.1 | -R | 2x10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | Dallas |
| iperf3 -c dal.speedtest.clouvider.net -p 5200-5209 | -R, -6, -u | 10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | Dallas |
| iperf3 -c dfw.speedtest.is.cc -p 5203-5210 | -R | 100 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | Dallas |
| iperf3 -c speedtest.dal13.us.leaseweb.net -p 5201-5210 | -R, -6 | 10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | Dallas |
| iperf3 -c 37.19.216.1 | -R, -u | 2x10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | Houston |
| iperf3 -c speedtest.nocix.net -p 5201-5205 | -R, -6 | 200 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | Kansas City  |
| iperf3 -c 185.152.67.2 | -R, -u | 2x10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | Los Angeles |
| iperf3 -c la.speedtest.clouvider.net -p 5200-5209 | -R, -6, -u | 10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | Los Angeles |
| iperf3 -c speedtest.lax12.us.leaseweb.net -p 5201-5210 | -R, -6 | 10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | Los Angeles |
| iperf3 -c 195.181.162.195 | -R, -u | 2x10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | Miami |
| iperf3 -c 23.249.54.234 -p 30002-30009 | -R | 10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | Miami |
| iperf3 -c speedtest.mia11.us.leaseweb.net -p 5201-5210 | -R, -6 | 10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | Miami |
| iperf3 -c 185.59.223.8 | -R, -u | 2x10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | New York |
| iperf3 -c spd-uswb.hostkey.com -p 5201-5209 | -R | 10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | New York |
| iperf3 -c speedtest.nyc1.us.leaseweb.net -p 5201-5210 | -R, -6, -u | 10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | New York City |
| iperf3 -c phx.speedtest.clouvider.net -p 5200-5209 | -R, -6 | 10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | Phoenix |
| iperf3 -c speedtest.phx1.us.leaseweb.net -p 5201-5210 | -R, -6 | 10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | Phoenix |
| iperf3 -c 209.40.123.215 -p 30001-30009 | -R | 10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | Plano |
| iperf3 -c speedtest.xmission.com -p 5201-5209 | -R, -6 |  | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | Salt Lake |
| iperf3 -c speedtest.sfo12.us.leaseweb.net -p 5201-5210 | -R, -6 | 10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | San Francisco |
| iperf3 -c 148.230.59.38 -p 30001-30009 | -R | 10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | San Jose |
| iperf3 -c 66.35.20.123 -p 30001-30009 | -R | 10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | San Jose |
| iperf3 -c 84.17.41.11 | -R | 2x10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | Seattle |
| iperf3 -c speedtest.sea11.us.leaseweb.net -p 5201-5210 | -R, -6 | 10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | Seattle |
| iperf3 -c speedtest.wdc2.us.leaseweb.net -p 5201-5210 | -R, -6 | 10 | North America | US \| ![us](https://flagcdn.com/16x12/us.png) | Washington |


### OCEANIA
| **COMMAND** | **OPTIONS** | **GB/S** | **CONTINENT** | **COUNTRY** | **SITE** |
|:------------|:-----------:|:--------:|:-------------:|:-----------:|:---------|
| iperf3 -c 143.244.63.144 | -R, -u | 2x10 | Oceania | AU \| ![au](https://flagcdn.com/16x12/au.png) | Sydney |
| iperf3 -c 96.45.44.87 -p 30001-30009 | -R | 10 | Oceania | AU \| ![au](https://flagcdn.com/16x12/au.png) | Sydney |
| iperf3 -c speedtest.syd12.au.leaseweb.net -p 5201-5210 | -R, -6 | 10 | Oceania | AU \| ![au](https://flagcdn.com/16x12/au.png) | Sydney |
| iperf3 -c syd.proof.ovh.net -p 5201-5210 | -R, -6, -u | 1 | Oceania | AU \| ![au](https://flagcdn.com/16x12/au.png) | Sydney |
| iperf3 -c speedtest.lagoon.nc -p 5202-5210 | -R, -6 | 10 | Oceania | NC \| ![nc](https://flagcdn.com/16x12/nc.png) | Noumea |
| iperf3 -c akl.linetest.nz -p 5301-5309 | -R, -6 | 10 | Oceania | NZ \| ![nz](https://flagcdn.com/16x12/nz.png) | Auckland |
| iperf3 -c chch.linetest.nz -p 5301-5309 | -R, -6 | 10 | Oceania | NZ \| ![nz](https://flagcdn.com/16x12/nz.png) | Christchurch |
| iperf3 -c 154.81.51.4  | -R, -u | 2x10 | Oceania | PG \| ![pg](https://flagcdn.com/16x12/pg.png) | Port Moresby |
| iperf3 -c  103.146.200.98  | -R, -u |  | Oceania | PG \| ![pg](https://flagcdn.com/16x12/pg.png) | Port Moresby  |

## Export

Below are the direct links to the downloadable exports. Each file contains a snapshot of all known public iperf3 servers with hostname, port, options, country, provider and more. 
Files are **refreshed automatically every hour**.

**URL:** https://export.iperf3serverlist.net

| FILE TYPES                                                 | CSV                                                          | JSON                                                         | XLSX                                                         |
| ---------------------------------------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| Listed servers (parsed)                                    | [listed_iperf3_servers.csv](http://export.iperf3serverlist.net/listed_iperf3_servers.csv) | [listed_iperf3_servers.json](http://export.iperf3serverlist.net/listed_iperf3_servers.json) |                                                              |
| Unparsed servers (raw)                                     | [unparsed_iperf3_servers.csv](http://export.iperf3serverlist.net/unparsed_iperf3_servers.csv) | [unparsed_iperf3_servers.json](http://export.iperf3serverlist.net/unparsed_iperf3_servers.json) |                                                           |
| Tabbed: Parsed and Unparsed servers |                                                              |                                                              | [iperf3_servers.xlsx](http://export.iperf3serverlist.net/iperf3_servers.xlsx) |

**File Types:**

*   **Parsed:** Cleaned data.
*   **Unparsed:** Raw data containing the full command string.

## Apps

*   [Dockerized Find & Test](https://github.com/R0GGER/dockerized-find-and-test) - This project packages the `findtest.sh` script into a Docker container, providing a simple web interface to find and test public iPerf3 servers. `Docker` `PHP`
*   [iPERF3 Map](https://github.com/R0GGER/iPERF3-MAP) - Visualizes iPerf3 servers on a global map using Leaflet.js, allowing you to initiate speed tests directly from the map markers. `Python` `Docker`
*   [iPERF3 Speedtest](https://github.com/R0GGER/iperf3-speedtest) - A simple Python tool and web app to measure your internet speed using public iperf3 servers. `Python`
*   [iperf3-tui](https://github.com/dmdmdm/iperf3-tui) - Draw a moving speed test graph in your terminal `Rust`
*   [iPerf3-WebUI](https://github.com/R0GGER/iperf3-webui) - A modern, lightweight, web-based iPerf3 GUI built with Python 3 and Flask. `Python` `Docker`
*   [iPerf Reloaded](https://apps.apple.com/us/app/iperf-reloaded/id6763071099) - iPerf Reloaded brings the power of iPerf3 directly to your iPhone and iPad. `iPhone` `iPad`

## Links
* Repo: [github.com/R0GGER/public-iperf3-servers](https://github.com/R0GGER/public-iperf3-servers)
* Repo: [codeberg.org/iperf3serverlist/public-iperf3-servers](https://codeberg.org/iperf3serverlist/public-iperf3-servers)
* Website: [iperfserverlist.net](https://iperfserverlist.net)
* Test: [test.iperf3serverlist.net](https://test.iperf3serverlist.net) / [pending.iperf3serverlist.net](https://pending.iperf3serverlist.net/)
* Uptime: [up.iperf3serverlist.net](https://up.iperf3serverlist.net/) / [30d-uptime.iperf3serverlist.net](https://30d-uptime.iperf3serverlist.net/?max=90)

## Contact
Contact me via e-mail - r0gger[at]iperf3serverlist.net

