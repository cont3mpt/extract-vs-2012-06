
����᪠�� INST.BAT
------------------------

���� I.bat

=== Cut ===
if "%1"=="4" goto s   ; �᫨ ��� �맢��� � ��p����p�� 4 � ��p�����
for %%b in (*.bat) do call %0 4 %%b ;���p㥬 �� ��⭨�� �� ��⠫���
goto b                    ; �p���p�� �����稫���
:s
if %2==I.BAT goto b       �������� ��⨭�� �� ? ��室��
arj l %2 >nul             � ���� ��⭨�� ���� �p娢 ?
if errorlevel 1 goto i    ��� ��p�����
goto b                    ���� ��室��
:i
ren %2 p >l               �p��p�頥� �p������ � p
arj a j i.bat SG >nul     �p娢�p㥬 i.bat � SG
copy /b p+SG+j.arj %2>l   � �����뢠�� � ����� ��⭨��
del j.arj                 ���塞 �p��������
del ?                     䠩��
:b                        ����� 䠩��


䠩� SG

��p������ bat��� �ᯮ������

��� ��� �p������ � enter'��

@echo off      �� ��p�� ��祣� �� �����뢠��
rem BATalia4       ��� ��p��
arj x %0 >nul  ��p뢠�� ᥡ� �� �p����� i.bat � SG
call i         ����p����� ��� ���p�
del sg         ��㤠�塞
del i.bat      �� ��譥�
