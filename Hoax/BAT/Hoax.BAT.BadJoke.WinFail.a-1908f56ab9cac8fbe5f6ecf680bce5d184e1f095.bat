@echo off
REM Ce petit et dangereux virus a �t� cr�e en Juin 2004 par Tigrenoir007
REM il est indetectable a l anti virus
REM ici, on nomme cette partie du prog afin de la r�p�ter � l'infini...
:virii
echo ERROR 0012562: Windows failure
echo [Analyse]
echo [...]
echo [Finish!]
echo.
echo The analyse detect an error Windows:
echo Boot error
echo Unable to open config.sys
echo Unable to open autoexec.bat
echo System files not found
echo.
pause
echo.
echo MAXIMUM WINDOWS ERROR:
echo [Analyse]
echo [...]
echo [Finish!]
echo.
REM ici, on met que c un crash total et que windows doit etre r�install�...
echo The analyse detect an error Windows:
echo ANALYSE: You must reinstall Windows
echo.
pause
REM on retourne au d�but du fichier, afin qu'il soit lu � l'infini ;)))
goto virii

virii #2
DIM virii AS INTEGER
virii = 1

WHILE virii = 1
PRINT ""
PRINT ""
PRINT "                 Ce programme est un virus"
PRINT "           Il ne d�truit pas de donn�es, mais il"
PRINT "           empeche votre PC de d�marrer. Bien sur"
PRINT "          l'antivirus ne d�tecte pas ce virus. Il"
PRINT "          faudra qu'un utilisateur sachant manier"
PRINT "         manier le DOS et... Je ne vous en dit pas"
PRINT "         d�merdez vous pour vous d�barrasser de ce"
PRINT "                   m�chant pas beau :)))"
PRINT ""
WEND
END 