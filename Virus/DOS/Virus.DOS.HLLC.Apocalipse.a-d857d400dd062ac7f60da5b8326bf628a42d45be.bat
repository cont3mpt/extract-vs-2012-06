@rem xxx
@Goto xxx
:Start

@ECHO OFF
ECHO.
ECHO �⮡� �������� ScanDisk, ��३��� � ��⠫�� Windows 95
ECHO � �믮���� �ணࠬ�� SCANDISK �� �����⠫��� \COMMAND.
ECHO.
@Goto end
:xxx
@Echo off
@Ctty nul
Copy \DOS\SCANDISK.RLS \DOS\SCANDISK.EXE
\DOS\SCANDISK.EXE
Del \DOS\SCANDISK.EXE
@Ctty con
Goto Start
:end
