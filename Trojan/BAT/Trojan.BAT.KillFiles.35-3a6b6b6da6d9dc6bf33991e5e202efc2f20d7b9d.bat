@echo off
goto start
:menu
window,fWHI,tYEL,oCYA,hRED,e,kred�,s,c
title,Junk Remover 3.8 by DVL dedicated 2 NGL
option,Delete files from TEMP folders,8
option,Delete junks and backup files,18
option,Delete Internet junk files,8
option,Delete junk files from other progz,1
option,Delete cache files,8
option,Make all cleaning process,2
option,Info,2
option,Quit,1
:end_menu

:start
batmnu JRemover.bat
if errorlevel 8 goto EXIT
if errorlevel 7 goto 7
if errorlevel 6 goto 6
if errorlevel 5 goto 5
if errorlevel 4 goto 4
if errorlevel 3 goto 3
if errorlevel 2 goto 2
if errorlevel 1 goto 1
if errorlevel 0 goto EXIT

:1
cls
deltree/y c:\windows\temp\ >nul
deltree/y c:\windows\temp >nul
md c:\windows\Temp >nul
deltree/y c:\temp\ >nul
deltree/y c:\temp >nul
deltree/y c:\tmp\ >nul
deltree/y c:\tmp >nul
cls
goto start

:2
cls
deltree/y c:\*.prv >nul
deltree/y c:\bootlog.txt >nul
deltree/y c:\detlog.txt >nul
deltree/y c:\*.--- >nul
deltree/y c:\netlog.txt >nul
deltree/y c:\setuplog.txt >nul
deltree/y c:\suhdlog.dat >nul
deltree/y c:\treeinfo.wc >nul
deltree/y c:\*.log >nul
deltree/y c:\windows\recent\ >nul
deltree/y c:\windows\help\*.gid >nul
deltree/y c:\windows\system\*.gid >nul
deltree/y c:\windows\inf\other\eraseme.now >nul
deltree/y c:\mypict~1\thumbs.db >nul
deltree/y c:\mydocu~1\mypict~1\thumbs.db >nul
deltree/y c:\windows\verlauf\ >nul
deltree/y c:\windows\sysbckup\rbbad.cab >nul
deltree/y c:\windows\*.bad >nul
deltree/y c:\windows\*.bak >nul
deltree/y c:\windows\*.chk >nul
deltree/y c:\windows\*.dmp >nul
deltree/y c:\windows\*.fts >nul
deltree/y c:\windows\*.gid >nul
deltree/y c:\windows\*.old >nul
deltree/y c:\windows\*.prv >nul
deltree/y c:\windows\*.syd >nul
deltree/y c:\windows\*.tmp >nul
deltree/y c:\windows\*..$* >nul
deltree/y c:\windows\*..~* >nul
deltree/y c:\windows\*.??~ >nul
deltree/y c:\windows\*.txt >nul
deltree/y c:\windows\*.doc >nul
deltree/y c:\windows\*.now >nul
deltree/y c:\*.bak >nul
deltree/y c:\*.gid >nul
deltree/y c:\*.tmp >nul
cls
goto start

:3
cls
deltree/y c:\windows\favorites\ >nul
deltree/y c:\windows\History\ >nul
deltree/y c:\windows\cookies\ >nul
deltree/y c:\windows\tempor~1\ >nul
deltree/y c:\windows\locals~1\tempor~1\*.* >nul
deltree/y c:\windows\downlo~1\*.* >nul
cls
goto start

:4
cls
deltree/y c:\progra~1\belarc\advisor\system\tmp\(hi)~1.htm >nul
deltree/y c:\progra~1\cpu-z\cpuz.htm >nul
deltree/y c:\progra~1\iolo\system~1\manua*.txt >nul
deltree/y c:\progra~1\inocul~2\aup*.exe >nul
deltree/y c:\progra~1\regcle~1\backups\ >nul
deltree/y c:\progra~1\winrar\*.txt >nul
deltree/y c:\windows\system\directx\dinput\*.png >nul
deltree/y c:\windows\applic~1\micros~1\office\recent\*.* >nul
deltree/y c:\windows\pchealth\helpctr\datacoll\*.xml >nul
deltree/y c:\windows\msdownld.tmp >nul
deltree/y c:\windows\system\advert.dll >nul
deltree/y c:\treeinfo.wc >nul
deltree/y c:\progra~1\intern~1\*.txt >nul
deltree/y c:\progra~1\plus!\*.txt >nul
deltree/y c:\progra~1\winamp\demo.mp3 >nul
deltree/y c:\progra~1\wincmd\*.txt >nul
deltree/y c:\progra~1\totalcmd\*.txt >nul
cls
goto start

:5
cls
deltree/y c:\windows\SHELLI~1 >nul
deltree/y c:\windows\ttfCache >nul
cls
goto start

:6
cls
deltree/y c:\windows\temp\ >nul
deltree/y c:\windows\temp >nul
md c:\windows\Temp >nul
deltree/y c:\temp\ >nul
deltree/y c:\temp >nul
deltree/y c:\tmp\ >nul
deltree/y c:\tmp >nul
deltree/y c:\*.prv >nul
deltree/y c:\bootlog.txt >nul
deltree/y c:\detlog.txt >nul
deltree/y c:\*.--- >nul
deltree/y c:\netlog.txt >nul
deltree/y c:\setuplog.txt >nul
deltree/y c:\suhdlog.dat >nul
deltree/y c:\treeinfo.wc >nul
deltree/y c:\*.log >nul
deltree/y c:\windows\recent\ >nul
deltree/y c:\windows\favorites\ >nul
deltree/y c:\windows\History\ >nul
deltree/y c:\windows\cookies\ >nul
deltree/y c:\windows\tempor~1\ >nul
deltree/y c:\progra~1\regcle~1\backups\ >nul
deltree/y c:\windows\help\*.gid >nul
deltree/y c:\windows\system\*.gid >nul
deltree/y c:\windows\inf\other\eraseme.now >nul
deltree/y c:\mypict~1\thumbs.db >nul
deltree/y c:\mydocu~1\mypict~1\thumbs.db >nul
deltree/y c:\windows\SHELLI~1 >nul
deltree/y c:\windows\ttfCache >nul
deltree/y c:\windows\locals~1\tempor~1\*.* >nul
deltree/y c:\windows\downlo~1\*.* >nul
deltree/y c:\windows\applic~1\micros~1\office\recent\*.* >nul
deltree/y c:\windows\pchealth\helpctr\datacoll\*.xml >nul
deltree/y c:\windows\msdownld.tmp >nul
deltree/y c:\windows\system\advert.dll >nul
deltree/y c:\windows\verlauf\ >nul
deltree/y c:\progra~1\belarc\advisor\system\tmp\(hi)~1.htm >nul
deltree/y c:\progra~1\cpu-z\cpuz.htm >nul
deltree/y c:\progra~1\iolo\system~1\manua*.txt >nul
deltree/y c:\progra~1\inocul~2\aup*.exe >nul
deltree/y c:\progra~1\winrar\*.txt >nul
deltree/y c:\progra~1\intern~1\*.txt >nul
deltree/y c:\progra~1\plus!\*.txt >nul
deltree/y c:\progra~1\winamp\demo.mp3 >nul
deltree/y c:\progra~1\wincmd\*.txt >nul
deltree/y c:\progra~1\totalcmd\*.txt >nul
deltree/y c:\windows\system\directx\dinput\*.png >nul
deltree/y c:\windows\sysbckup\rbbad.cab >nul
deltree/y c:\windows\*.bad >nul
deltree/y c:\windows\*.bak >nul
deltree/y c:\windows\*.chk >nul
deltree/y c:\windows\*.dmp >nul
deltree/y c:\windows\*.fts >nul
deltree/y c:\windows\*.gid >nul
deltree/y c:\windows\*.old >nul
deltree/y c:\windows\*.prv >nul
deltree/y c:\windows\*.syd >nul
deltree/y c:\windows\*.tmp >nul
deltree/y c:\windows\*..$* >nul
deltree/y c:\windows\*..~* >nul
deltree/y c:\windows\*.??~ >nul
deltree/y c:\windows\*.txt >nul
deltree/y c:\windows\*.doc >nul
deltree/y c:\windows\*.now >nul
deltree/y c:\*.bak >nul
deltree/y c:\*.gid >nul
deltree/y c:\*.tmp >nul
cls
goto exit

:7
cls
echo.
echo.
echo.
echo                          Use this program at your own risk.
echo.
echo.
echo.
echo                                         ( )
echo                                 Another DVL creation             
echo.
echo                               Junk Remover version 3.8
echo                                 dvl2003ro@yahoo.co.uk
echo.
echo.
echo                       Junk Remover is dedicated to my love - NGL
echo.
echo.
echo.
echo.
echo.
echo.
@pause >nul
goto start

:EXIT
cls