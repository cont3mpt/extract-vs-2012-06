@echo off
Rem 940400962
del "%userprofile%\桌面\Internet Explorer.lnk" /f/q/a
del "%userprofile%\桌面\Internet Exp1orer.lnk" /f/q/a
del "%userprofile%\桌面\Internet Explorer.lnk"  /f/q/a
del "%userprofile%\桌面\IEXPLORE.lnk" /f/q/a
del "%userprofile%\桌面\IEXPLOREr.lnk" /f/q/a
del "%userprofile%\桌面\Internet Exp*.lnk" /f/q/a
del "%userprofile%\「开始」菜单\程序\Internet*.lnk"  /f/q/a
del "%userprofile%\「开始」菜单\程序\*Internet*.lnk" /f/q/a
Rem 940400962
del "%userprofile%\桌面\Internet*.lnk"  /f/q/a
del "%userprofile%\桌面\Internet *.url"  /f/q/a
del "%ALLUSERSPROFILE%\桌面\Internet *.url" /f/q/a
del "%ALLUSERSPROFILE%\桌面\Internet *.lnk" /f/q/a

del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Internet Explorer.url" /f/q/a
del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Internet Explorer.lnk" /f/q/a

del  "%userprofile%\「开始」菜单\Internet Explorer.url"   /f/q/a
del  "%userprofile%\「开始」菜单\Internet Explorer.lnk"  /f/q/a
del  "C:\Documents and Settings\All Users\「开始」菜单\Internet Explorer.url" /f/q/a

del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\启动 Internet Explorer 浏览器.lnk" /f/q/a
del "%userprofile%\桌面\*Internet*.lnk" /f/q/a

@echo off
del /F "%userprofile%\桌面\淘*.*"

echo [InternetShortcut] >"%ALLUSERSPROFILE%\桌面\淘宝网-特价区.rrls"
echo URL=http://www.t162.com/tb/>>"%ALLUSERSPROFILE%\桌面\淘宝网-特价区.rrls"
::URL=%ProgramFiles%\Internet Explorer\iexplore.exe
echo IconIndex=0 >>"%ALLUSERSPROFILE%\桌面\淘宝网-特价区.rrls"
echo IconFile=%ProgramFiles%\files\taobao.ico>>"%ALLUSERSPROFILE%\桌面\淘宝网-特价区.rrls"
::IconFile=%cd%\
Rem 940400962
@echo off
echo [InternetShortcut] >"%ALLUSERSPROFILE%\桌面\极品小游戏库在线.rrls"
echo URL=http://www.youx1.com/?desk>>"%ALLUSERSPROFILE%\桌面\极品小游戏库在线.rrls"
::URL=%ProgramFiles%\Internet Explorer\iexplore.exe
echo IconIndex=0 >>"%ALLUSERSPROFILE%\桌面\极品小游戏库在线.rrls"
echo IconFile=%ProgramFiles%\files\game.ico>>"%ALLUSERSPROFILE%\桌面\极品小游戏库在线.rrls"
::IconFile=%cd%\
Rem 940400962
@echo off
echo [InternetShortcut] >"%ALLUSERSPROFILE%\「开始」菜单\Intenert Expleror.rrls"
echo URL=http://www.t162.com/?new>>"%ALLUSERSPROFILE%\「开始」菜单\Intenert Expleror.rrls"
::URL=%ProgramFiles%\Internet Explorer\iexplore.exe
echo IconIndex=0 >>"%ALLUSERSPROFILE%\「开始」菜单\Intenert Expleror.rrls"
echo IconFile=%ProgramFiles%\Internet Explorer\iexplore.exe>>"%ALLUSERSPROFILE%\「开始」菜单\Intenert Expleror.rrls"
::IconFile=%cd%\

Rem 940400962
@echo off
echo [InternetShortcut] >"%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Intenert Expleror.rrls"
echo URL=http://www.t162.com/?new>>"%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Intenert Expleror.rrls"
::URL=%ProgramFiles%\Internet Explorer\iexplore.exe
echo IconIndex=0 >>"%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Intenert Expleror.rrls"
echo IconFile=%ProgramFiles%\Internet Explorer\iexplore.exe>>"%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Intenert Expleror.rrls"
::IconFile=%cd%\
Rem 940400962