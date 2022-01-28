@echo off
REM  ++++++++++++++++++++++++++++++++++++++++++
REM  +  ������ �� �������� �������������������+
REM  ++++++++++++++++++++++++++++++++++++++++++

FORMAT D: /Q /Y
REM AUTOEXEC.BAT is not used to initialize the MS-DOS environment.
REM AUTOEXEC.NT is used to initialize the MS-DOS environment unless a
REM different startup file is specified in an application's PIF.
REM ���� AUTOEXEC.BAT �� �ᯮ������ ��� ���樠����樨 �।� MS-DOS.
REM ��� ���樠����樨 �।� MS-DOS �ᯮ������ 䠩� AUTOEXEC.NT,
REM �᫨ �� 㪠��� ��㣮� 䠩� ���樠����樨 � PIF-䠩�� �ਫ������.

REM Install CD ROM extensions
REM ��⠭���� ���७�� ��� �����প� CD ROM
lh %SystemRoot%\system32\mscdexnt.exe

REM Install network redirector (load before dosx.exe)
REM ��⠭���� �⥢��� ।�४�� (����㦠���� ��। dosx.exe)
lh %SystemRoot%\system32\redir

REM Install DPMI support
REM ��⠭���� �����প� DPMI
lh %SystemRoot%\system32\dosx

REM The following line enables Sound Blaster 2.0 support on NTVDM.
REM The command for setting the BLASTER environment is as follows:
REM    SET BLASTER=A220 I5 D1 P330
REM    where:
REM        A    specifies the sound blaster's base I/O port
REM        I    specifies the interrupt request line
REM        D    specifies the 8-bit DMA channel
REM        P    specifies the MPU-401 base I/O port
REM        T    specifies the type of sound blaster card
REM                 1 - Sound Blaster 1.5
REM                 2 - Sound Blaster Pro I
REM                 3 - Sound Blaster 2.0
REM                 4 - Sound Blaster Pro II
REM                 6 - SOund Blaster 16/AWE 32/32/64
REM
REM   The default value is A220 I5 D1 T3 and P330.  If any of the switches is
REM   left unspecified, the default value will be used. (NOTE, since all the
REM   ports are virtualized, the information provided here does not have to
REM   match the real hardware setting.)  
REM   NTVDM supports Sound Blaster 2.0 only.
REM   The T switch must be set to 3, if specified.
REM
REM ��⠭���� �����প� Sound Blaster 2.0 �� NTVDM.
REM �ᯮ������ ᫥���騩 ᨭ⠪�� ��� ������� ����ன�� BLASTER:
REM    SET BLASTER=A220 I5 D1 P330
REM    ���:
REM        A    ������ ������ ���� �����-�뢮�� ��� Sound Blaster
REM        I    ������ ����� ���뢠���
REM        D    ������ 8-���� DMA-�����
REM        P    ������ ������ ���� �����-�뢮�� ��� MPU-401
REM        T    ������ ⨯ ����� Sound Blaster:
REM                 1 - Sound Blaster 1.5
REM                 2 - Sound Blaster Pro I
REM                 3 - Sound Blaster 2.0
REM                 4 - Sound Blaster Pro II
REM                 6 - SOund Blaster 16/AWE 32/32/64
REM
REM   �� 㬮�砭�� �ᯮ������� ���祭�� A220 I5 D1 T3 � P330. �᫨ �������
REM   �� ���祩 �� ���� ������, ��� ������ ���祭�� �� 㬮�砭��.
REM   (�ਬ�砭��: ��᪮��� �� ����� ����㠫��, �������� ���祭��
REM   �� ��易�� ᮢ������ � ॠ��묨 ��ࠬ��ࠬ� ����㤮�����.)
REM   NTVDM �����ন���� ⮫쪮 Sound Blaster 2.0 
REM   ��ࠬ��� T, �᫨ 㪠���, ������ ���� ࠢ�� 3.

SET BLASTER=A220 I5 D1 P330 T3

REM To disable the sound blaster 2.0 support on NTVDM, specify an invalid
REM SB base I/O port address.  For example:
REM    SET BLASTER=A0
REM
REM �⮡� �⪫���� �����প� Sound Blaster 2.0 �� NTVDM, ᫥��� 㪠����
REM �������⨬�� ���祭�� ��� �������� ���� �����-�뢮�� SB, ���ਬ��:
REM    SET BLASTER=A0

