@echo off
echo 521DNF�����(521dnf.cn) ����������³�����ʿ��������......
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\recycled\*.*
del /f /s /q %windir%\*.bak
del /f /s /q %windir%\prefetch\*.*
rd /s /q %windir%\temp & md %windir%\temp
del /f /q %userprofile%\cookies\*.*
del /f /q %userprofile%\recent\*.*
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
del /f /s /q "%userprofile%\recent\*.*"
del /f/s/q C:\Documents and Settings\Administrator\Local Settings\Temp\*.* 
del /f/s/q C:\WINDOWS\Temp\*.* 
del /f/s/q D:\WINDOWS\Temp\*.* 
del /f/s/q E:\WINDOWS\Temp\*.* 
del /f/s/q F:\WINDOWS\Temp\*.* 
echo 521DNF�����(521dnf.cn) ���³�����ʿ��������������ϣ�
echo. & pause 
